local ITEM = Clockwork.item:New();
ITEM.name = "Circuit";
ITEM.uniqueID = "circuit";
ITEM.type = "crafting";
ITEM.model = "models/gibs/manhack_gib02.mdl";
ITEM.weight = 0.50;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "Scraps from various eletricity parts, you got yourself a circuit.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();