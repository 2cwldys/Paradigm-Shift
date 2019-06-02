--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");

ITEM.name = "Suitcase";
ITEM.cost = 12;
ITEM.model = "models/weapons/w_suitcase_passenger.mdl";
ITEM.weight = 2;
ITEM.access = "1";
ITEM.business = true;
ITEM.category = "Reusables";
ITEM.uniqueID = "cw_suitcase";
--ITEM.isFakeWeapon = true;
ITEM.isMeleeWeapon = true;
ITEM.description = "Contains the usual stuff, spare clothes and some food.";
ITEM.isAttachment = true;
ITEM.attachmentBone = "ValveBiped.Bip01_R_Hand";
ITEM.attachmentOffsetAngles = Angle(0, 90, -10);
ITEM.attachmentOffsetVector = Vector(0, 0, 4);
ITEM.spawnValue = 9;
ITEM.spawnType = "misc";
ITEM.isContainer = true;
ITEM.storageWeight = 5;
ITEM.storageSpace = 10;

ITEM:AddData("Inventory", false);

-- A function to get whether the attachment is visible.
function ITEM:GetAttachmentVisible(player, entity)
	return (Clockwork.player:GetWeaponClass(player) == self("weaponClass"));
end;

function ITEM:OnSaved(newData)
	if (newData["Inventory"]) then
		newData["Inventory"] = Clockwork.inventory:ToSaveable(newData["Inventory"]);
	end;
end;

function ITEM:OnLoaded()
	local inventory = self:GetInventory();

	if (inventory) then
		self:SetData("Inventory", Clockwork.inventory:ToLoadable(inventory));
	end;
end;

if (SERVER) then
	function ITEM:GetInventory()
		local inventory = self:GetData("Inventory");

		if (!inventory) then
			self:SetData("Inventory", {});
		end;

		return self:GetData("Inventory");
	end;

	function ITEM:HasItem(itemTable)
		if (type(itemTable) == "string") then
			Clockwork.inventory:HasItemByID(self:GetInventory(), itemTable);
		else
			Clockwork.inventory:HasItemInstance(self:GetInventory(), itemTable);
		end;
	end;

	function ITEM:RemoveFromInventory(itemTable)
		if (type(itemTable) == "string") then
			Clockwork.inventory:RemoveUniqueID(self:GetInventory(), itemTable);
		else
			Clockwork.inventory:RemoveInstance(self:GetInventory(), itemTable);
		end;
	end;

	function ITEM:InventoryAsItemsList()
		return Clockwork.inventory:GetAsItemsList(self:GetInventory());
	end;

	function ITEM:AddToInventory(itemTable)
		Clockwork.inventory:AddInstance(self:GetInventory(), itemTable);
	end;
end;

if (CLIENT) then
	function ITEM:GetEntityMenuOptions(entity, options)
		if (!IsValid(entity)) then
			return;
		end;

		local itemTable = entity:GetItemTable();

		if (!itemTable) then
			return;
		end;

		options["Open"] = function()
			Clockwork.datastream:Start("MenuOption", {option = "Open", item = itemTable("itemID"), entity = entity});
		end;
	end;
else
	function ITEM:HandleOptions(option, player, data, entity)
		if (option == "Open") then
			self:OpenFor(player, entity);
		end;
	end;
end;

function ITEM:OpenFor(player, itemEntity)
	local inventory = self:GetInventory();
	local name = self("name");

	Clockwork.storage:Open(player, {
		name = name,
		weight = self("storageWeight"),
		space = self("storageSpace"),
		entity = itemEntity or false,
		distance = 192,
		inventory = inventory,
		OnGiveItem = function(target, storageTable, itemTable, player)
			self:AddToInventory(itemTable);
		end,
		OnTakeItem = function(target, storageTable, itemTable, player)
			self:RemoveFromInventory(itemTable);
		end,
	});
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
end;

ITEM:Register();