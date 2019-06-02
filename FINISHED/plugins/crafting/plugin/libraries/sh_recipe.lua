
local Clockwork = Clockwork;
local PLUGIN = PLUGIN;

PLUGIN.recipe = Clockwork.kernel:NewLibrary("Recipe");
PLUGIN.recipe.stored = PLUGIN.recipe.stored or {};

--[[
	Begin defining the recipe class base for other recipe's to inherit from.
--]]

--[[ Set the __index meta function of the class. --]]
local CLASS_TABLE = {__index = CLASS_TABLE};

CLASS_TABLE.name = "Recipe Base";
CLASS_TABLE.uniqueID = "recipe_base";
CLASS_TABLE.skin = 0;
CLASS_TABLE.model = "models/error.mdl";
CLASS_TABLE.category = "Other";
CLASS_TABLE.description = "A recipe with no description.";
CLASS_TABLE.ingredients = {};
CLASS_TABLE.result = {};

-- Called when the recipe is converted to a string.
function CLASS_TABLE:__tostring()
	return "RECIPE["..self.name.."]";
end;

--[[
	A function to override an recipe's base data. This is
	just a nicer way to set a value to go along with
	the method of querying.
--]]
function CLASS_TABLE:Override(varName, value)
	self[varName] = value;
end;

-- A function to register a new recipe.
function CLASS_TABLE:Register()
	return PLUGIN.recipe:Register(self);
end;

function CLASS_TABLE:PlayerCanCraftRecipe(player)
	return PLUGIN.recipe:PlayerCanCraftRecipe(self, player);
end;

-- Adds uniqueID to the list of needed tools
function CLASS_TABLE:AddTool(uniqueID)
	self.tools = self.tools or {};
	table.insert(self.tools, uniqueID);
end;

-- Adds uniqueID to the list of ingredients with amount (int) the needed amount
-- If uniqueID is already on the table, it will add amount to the current amount
function CLASS_TABLE:AddIngredient(uniqueID, amount)
	self.ingredients = self.ingredients or {};
	if (!self.ingredients[uniqueID]) then
		self.ingredients[uniqueID] = amount;
	else
		self.ingredients[uniqueID] = self.ingredients[uniqueID] + amount;
	end;
end;
-- Sets the needed crafting station to uniqueID
function CLASS_TABLE:AddStation(uniqueID)
	self.station = uniqueID;
end;
-- Adds uniqueID to the result table with amount (int or a table of int's) as possible amounts
-- If uniqueID already is on the table, it will add amount to the existing possibile amounts
function CLASS_TABLE:AddResult(uniqueID, amount)
	self.result = self.result or {};
	if (self.result[uniqueID]) then
		if (type(self.result[uniqueID]) != "table") then
			self.result[uniqueID] = {self.result[uniqueID]};
		end;

		if (type(amount) == "table") then
			for k, v in pairs(amount) do
				table.insert(self.result[uniqueID], v);
			end;
		else
			table.insert(self.result[uniqueID], amount);
		end;
	else
		self.result[uniqueID] = amount;
	end;
end;

--[[
	End defining the base recipe class.
	Begin defining the recipe utility functions.
--]]

-- A function to get all recipes.
function PLUGIN.recipe:GetAll()
	return self.stored;
end;

-- A function to get a new recipe.
function PLUGIN.recipe:New(recipe)
	local object = Clockwork.kernel:NewMetaTable(CLASS_TABLE);
	return object;
end;

-- A function to register a new recipe.
function PLUGIN.recipe:Register(recipe)
	recipe.uniqueID = string.lower(string.gsub(recipe.uniqueID or string.gsub(recipe.name, "%s", "_"), "['%.]", ""));

	self.stored[recipe.uniqueID] = recipe;
	
	if (recipe.model) then
		util.PrecacheModel(recipe.model);
		
		if (SERVER) then
			Clockwork.kernel:AddFile(recipe.model);
		end;
	end;
end;

-- A function to get an recipe by its name.
function PLUGIN.recipe:FindByID(identifier)
	if (identifier and identifier != 0 and type(identifier) != "boolean") then
		if (self.stored[identifier]) then
			return self.stored[identifier];
		end;
		
		local lowerName = string.lower(identifier);
		local recipe = nil;
		
		for k, v in pairs(self.stored) do
			local recipeName = v.name;
			
			if (string.find(string.lower(recipeName), lowerName)
			and (!recipe or string.len(recipeName) < string.len(recipe.name))) then
				recipe = v;
			end;
		end;
		
		return recipe;
	end;
end;

function PLUGIN.recipe:Initialize()
	local recipes = self:GetAll();

	for k, recipe in pairs(recipes) do
		local item = nil;

		if (recipe.station) then
			item = Clockwork.item:FindByID(recipe.station);
			if (!item) then
				if (SERVER) then
					ErrorNoHalt("[Clockwork] Recipe "..recipe.name.." has an unexisting station "..recipe.station.."!\n");
				end;
				recipe.stationName = recipe.station.." (item does not exist)";
			else
				recipe.stationName = item("name");
			end;
		end;

		if (recipe.ingredients) then
			recipe.ingredientNames = {};
			for ingredient, amount in pairs(recipe.ingredients) do
				item = Clockwork.item:FindByID(ingredient);
				if (!item) then
					if (SERVER) then
						ErrorNoHalt("[Clockwork] Recipe "..recipe.name.." has an unexisting ingredient "..ingredient.."!\n");
					end;
					recipe.ingredientNames[ingredient] = ingredient.." (item does not exist)";
				else
					recipe.ingredientNames[ingredient] = item("name");
				end;
			end;
		else
			recipe.ingredients = {};
		end;

		if (recipe.tools) then
			recipe.toolNames = {};
			for _k, tool in pairs(recipe.tools) do
				item = Clockwork.item:FindByID(tool);
				if (!item) then
					if (SERVER) then
						ErrorNoHalt("[Clockwork] Recipe "..recipe.name.." has an unexisting tool "..tool.."!\n");
					end;
					recipe.toolNames[tool] = tool.." (item does not exist)";
				else
					recipe.toolNames[tool] = item("name");
				end;
			end;
		end;

		if (recipe.result) then
			recipe.resultNames = {};
			for result, _v in pairs(recipe.result) do
				item = Clockwork.item:FindByID(result)
				if (!item) then
					if (SERVER) then
						ErrorNoHalt("[Clockwork] Recipe "..recipe.name.." has an unexisting result "..result.."!\n");
					end;
					recipe.resultNames[result] = result.." (item does not exist)";
				else
					recipe.resultNames[result] = item("name");
				end;
			end;
		else
			recipe.result = {};
		end;

		for result, amountTable in pairs(recipe.result) do
			if (type(amountTable) == "table") then
				table.sort(amountTable);
			end;
		end;

		if (recipe.OnSetup) then 
			recipe:OnSetup(); 
		end;
		
		Clockwork.plugin:Call("ClockworkRecipeInitialized", recipe);
	end;
end;

-- Called when a player attempts to craft an item.
function PLUGIN.recipe:PlayerCanCraftRecipe(recipe, player, inventory)
	-- Check if the player has all the needed flags
	if (recipe.flag and !Clockwork.player:HasFlags(player, recipe.flag)) then
		return false, "You do not have the "..recipe.flag.." flag.";
	end;

	local inventory = inventory or player:GetInventory();
	-- Check if the player has all the needed tools if there are any needed
	if (recipe.tools) then
		for k, tool in pairs(recipe.tools) do
			if (!inventory[tool] or table.Count(inventory[tool]) == 0) then
				return false, "You do not have a "..recipe.toolNames[tool]..".";
			end;
		end;
	end;
	-- Check for the ingredients
	if (recipe.ingredients) then
		for ingredient, amount in pairs(recipe.ingredients) do
			if (!inventory[ingredient] or table.Count(inventory[ingredient]) == 0) then
				return false, "You do not have any "..recipe.ingredientNames[ingredient]..".";
			elseif (table.Count(Clockwork.inventory:GetItemsByID(inventory, ingredient)) < amount) then
				local name = recipe.ingredientNames[ingredient];
				name = Clockwork.kernel:Pluralize(name);
				return false, "You need at least "..tostring(amount).." "..name..".";
			end;
		end;
	end;
	-- Check if player is near a crafting station if needed
	if (recipe.station) then
		-- Find the entity the player is looking at
		local entity = player:GetEyeTraceNoCursor().Entity;
		local failReason = "You need to be near and looking at a "..recipe.stationName;
		
		if (!entity or entity:GetClass() != "cw_item") then
			return false, failReason;
		else
			local itemTable = entity:GetItemTable();
			if (!itemTable or itemTable("uniqueID") != recipe.station) then
				return false, failReason;
			end;
			if (player:GetShootPos():Distance(entity:GetPos()) > 100) then
				return false, failReason;
			end;
		end;
	end;
	
	return true;
end;

if (CLIENT) then
	function PLUGIN.recipe:GetIconInfo(recipe)
		local model = recipe.model or "models/error.mdl";
		local skin = recipe.skin;
		
		return model, skin;
	end;
	
	-- A function to get an recipe's markup tooltip.
	function PLUGIN.recipe:GetMarkupToolTip(recipe)
		local informationColor = Clockwork.option:GetColor("information");

		local toolTipTitle = "["..recipe.name.."]";
		
		toolTipTitle = Clockwork.kernel:MarkupTextWithColor(toolTipTitle, informationColor);
		
		toolTipTitle = toolTipTitle.."\n"..Clockwork.config:Parse(recipe.description);

		toolTipTitle = toolTipTitle.."\n"..Clockwork.kernel:MarkupTextWithColor("[Requirements]", informationColor);

		-- Add needed tools
		if (recipe.tools) then
			for k, item in pairs(recipe.tools) do
				toolTipTitle = toolTipTitle.."\n-"..recipe.toolNames[item];
			end;
		end;
		-- Add needed crafting station
		if (recipe.station) then
			toolTipTitle = toolTipTitle.."\n-"..recipe.stationName;
		end;
		-- Add ingredients
		for item, amount in pairs(recipe.ingredients) do
			toolTipTitle = toolTipTitle.."\n"..amount.."x "..recipe.ingredientNames[item];
		end;

		toolTipTitle = toolTipTitle.."\n"..Clockwork.kernel:MarkupTextWithColor("[Result]", informationColor);
		-- Add ingredients
		for item, amount in pairs(recipe.result) do
			local amountText = "";
			if (type(amount) == "table") then
				amountText = amount[1].."-"..amount[#amount];
			else
				amountText = amount;
			end;

			toolTipTitle = toolTipTitle.."\n"..amountText.."x "..recipe.resultNames[item];
		end;
		
		toolTipTitle = toolTipTitle.."\n"..Clockwork.kernel:MarkupTextWithColor("[Category]", informationColor);
		toolTipTitle = toolTipTitle.."\n"..recipe.category;
		
		return toolTipTitle;
	end;

	function PLUGIN.recipe:CanPlayerSeeRecipe(recipe)
		if (recipe.flag and !Clockwork.player:HasFlags(Clockwork.Client, recipe.flag)) then
			return false;
		end;

		return true;
	end;
else
	function PLUGIN.recipe:PlayerCraftRecipe(recipe, player)
		-- This assumes that PLUGIN.recipe:PlayerCanCraftRecipe(recipe, player) returned true
		-- Take all the ingredients
		local item = nil;
		for ingredient, amount in pairs(recipe.ingredients) do
			for i = 1, amount do
				item = player:FindItemByID(ingredient);
				if (item) then player:TakeItem(item); else break; end;
			end;
		end;
		-- Give the result
		for result, amount in pairs(recipe.result) do
			local actualAmount;
			if (type(amount) == "table") then
				actualAmount = amount[math.random(1, #amount)];
			else
				actualAmount = amount;
			end;

			for i = 1, actualAmount do
				item = Clockwork.item:CreateInstance(result);
				if (item) then player:GiveItem(item, true); else break; end;
			end;
		end;
		-- Set the player's next crafting time
		player.cwNextCraftTime = CurTime() + 2;
		Clockwork.datastream:Start(player, "CraftTime", player.cwNextCraftTime);
		-- Print log
		Clockwork.kernel:PrintLog(LOGTYPE_MINOR, player:Name().." has crafted the "..recipe.name.." recipe.");
	end;
end;

for k, v in pairs(file.Find(Clockwork.kernel:GetSchemaFolder().."/plugins/crafting/plugin/recipes/*.lua", "LUA", "namedesc")) do
	Clockwork.kernel:IncludePrefixed(Clockwork.kernel:GetSchemaFolder().."/plugins/crafting/plugin/recipes/"..v);
end;