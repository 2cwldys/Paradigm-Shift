local ITEM = Clockwork.item:New();
ITEM.name = "Cables";
ITEM.uniqueID = "cables";
ITEM.value = 10;
ITEM.type = "crafting";
ITEM.model = "models/Items/CrossbowRounds.mdl";
ITEM.weight = 0.1;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A bundle of cables.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();