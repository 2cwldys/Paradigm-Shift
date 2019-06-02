local ITEM = Clockwork.item:New();
ITEM.name = "Metal Parts";
ITEM.uniqueID = "metal_parts";
ITEM.value = 10;
ITEM.type = "crafting";
ITEM.cost = 0;
ITEM.model = "models/props_junk/vent001_chunk4.mdl";
ITEM.weight = 0.25;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "Assorted metal parts used for various things.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();