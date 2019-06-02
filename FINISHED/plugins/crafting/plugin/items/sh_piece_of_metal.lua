local ITEM = Clockwork.item:New();
ITEM.name = "Piece of Metal";
ITEM.uniqueID = "piece_of_metal";
ITEM.value = 30;
ITEM.type = "crafting";
ITEM.model = "models/gibs/manhack_gib01.mdl";
ITEM.weight = 0.25;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A small piece of metal.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();