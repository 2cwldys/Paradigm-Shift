local ITEM = Clockwork.item:New();
ITEM.name = "Water Filter";
ITEM.cost = 0;
ITEM.model = "models/props_c17/FurnitureBoiler001a.mdl";
ITEM.uniqueID = "water_filter";
ITEM.craftingStation = true;
ITEM.weight = 45;
ITEM.category = "Crafting Station";
ITEM.business = false;
ITEM.description = "A water filtration system.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:CanPickup(player, bQuickUse, entity)
	return false;
end;

ITEM:Register();