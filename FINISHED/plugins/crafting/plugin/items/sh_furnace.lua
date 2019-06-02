local ITEM = Clockwork.item:New();
ITEM.name = "Furnace";
ITEM.cost = 0;
ITEM.model = "models/props_wasteland/kitchen_stove001a.mdl";
ITEM.uniqueID = "furnace";
ITEM.craftingStation = true;
ITEM.weight = 45;
ITEM.category = "Crafting Station";
ITEM.business = false;
ITEM.description = "A furnace with an oven.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:CanPickup(player, bQuickUse, entity)
	return false;
end;

ITEM:Register();