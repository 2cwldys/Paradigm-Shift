local ITEM = Clockwork.item:New();
ITEM.name = "Chunk of Plastic";
ITEM.uniqueID = "chunk_of_plastic";
ITEM.value = 30;
ITEM.type = "crafting";
ITEM.model = "models/props_c17/canisterchunk01a.mdl";
ITEM.weight = 0.2;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "A medium sized chunk of plastic.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();