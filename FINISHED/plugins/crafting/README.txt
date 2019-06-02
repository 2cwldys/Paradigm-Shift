Example recipe: 
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Example Recipe"; -- Name
RECIPE.uniqueID = "recipe_example"; -- Unique ID (mandatory!)
RECIPE.model = "models/props_junk/cardboard_box004a.mdl"; -- Model for the spawn icon
RECIPE.skin = 0; -- Number for the skin in the spawn icon
RECIPE.category = "Storage Blueprints"; -- Category
RECIPE.description = "Just attach the cables to the cloth..."; -- Description
RECIPE.ingredients = {["cloth"] = 2, ["cables"] = 1}; -- Ingredients (will be consumed), ["<uniqueID>"] = <amount>, separated by ','
RECIPE.result = {["bag"] = 1, ["stuff"] = {0, 1, 2}}; -- Result (will be given), ["<uniqueID>"] = <amount>, separated by ','
RECIPE.tools = {"hammer", "wrench"}; -- Tools (needed but not consumed), "<uniqueID>", separated by ','
RECIPE.station = "furnace"; -- Player has to look at it and be close, won't be consumed, "<uniqueID>"
RECIPE.flag = "1"; -- Sets which flag is needed to see/craft this (flag is a single character (letter/number) as a string!)

RECIPE:Register();

Notes:
You can also use RECIPE:AddTool(uniqueID), RECIPE:AddIngredient(uniqueID, amount),
RECIPE:AddStation(uniqueID) and RECIPE:AddResult(uniqueID, amount) to set these.
Eg.
RECIPE:AddTool("hammer");
RECIPE:AddIngredient("cloth", 2);
RECIPE:AddStation("furnace");
RECIPE:AddResult("bag", {0, 0, 1, 2});

Every recipe should have at least one ingredient and one result!
Tools and station are optional.

All uniqueID's should be a string.
If it can't find an item with the given uniqueID, it will print an error saying so when the server starts.
Players examining the item will see an (item not found) behind the item name in the tooltip.
Unexisting items will make a recipe uncraftable, but outside of that of that does not influence anything else.
So be sure to either check the server console or check the tooltips of newly added recipes to ensure you don't have typos.

Calling AddStation more than once will overwrite the previous setting. A recipe can only have one station.
You can prevent this by adding 'ITEM.craftingStation = true;' to the station's file to prevent destruction.
'function ITEM:CanPickup(player, bQuickUse, entity) return false; end;' will prevent it from being picked up.

The amount in AddIngredient should be an integer. You can add the same uniqueID multiple times, it will sum the amounts.

The amount for AddResult can be an integer or a table with integers. The same amount can occur more than once.
AddResult can be called multiple times with the same uniqueID, it'll nicely add everything together instead of overwriting things.
When an item is crafted, it will pick a random entry from the amount table to use.
This allows for varying results and other things like a specific chance that a recipe will fail.
E.g. {0, 0, 0, 0, 1} as an amountTable will have an 80% chance to fail, 20% chance to work

--[[ Empty recipe
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "";
RECIPE.uniqueID = "";
RECIPE.model = "";
RECIPE.skin = ;
RECIPE.category = "";
RECIPE.description = "";
RECIPE.ingredients = {[""] = , [""] = };
RECIPE.result = {[""] = , [""] = { , }};
RECIPE.tools = {"", ""};
RECIPE.station = "";
RECIPE.hidden = false;
RECIPE.flag = "";

RECIPE:Register();
--]]