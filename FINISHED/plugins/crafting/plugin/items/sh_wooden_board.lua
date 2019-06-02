local ITEM = Clockwork.item:New();
ITEM.name = "Wooden Board";
ITEM.uniqueID = "wooden_board";
ITEM.value = 12;
ITEM.type = "crafting";
ITEM.model = "models/props_debris/wood_board06a.mdl";
ITEM.weight = 1;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A wooden board.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();