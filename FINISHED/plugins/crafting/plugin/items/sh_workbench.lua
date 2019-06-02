local ITEM = Clockwork.item:New();
ITEM.name = "Workbench";
ITEM.cost = 0;
ITEM.model = "models/props_wasteland/controlroom_desk001a.mdl";
ITEM.uniqueID = "workbench";
ITEM.craftingStation = true;
ITEM.weight = 45;
ITEM.category = "Crafting Station";
ITEM.business = false;
ITEM.description = "A workbench fit for creating tools and other useful items.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:CanPickup(player, bQuickUse, entity)
	return false;
end;

ITEM:Register();