local ITEM = Clockwork.item:New();
ITEM.name = "Electronic Scrap";
ITEM.uniqueID = "scrap_electronic";
ITEM.value = 20;
ITEM.type = "crafting";
ITEM.cost = 0;
ITEM.model = "models/props_lab/reciever01d.mdl";
ITEM.weight = 0.2;
ITEM.spawnValue = 4;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "Electronical parts.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
