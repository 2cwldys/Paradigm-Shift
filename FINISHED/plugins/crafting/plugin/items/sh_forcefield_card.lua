local ITEM = Clockwork.item:New();
ITEM.name = "Forcefield Card";
ITEM.uniqueID = "forcefield_card";
ITEM.type = "crafting";
ITEM.model = "models/dorado/tarjeta1.mdl";
ITEM.weight = 0.1;
ITEM.category = "Eletricity";
ITEM.business = false;
ITEM.description = "Gives the acess though the forcefields.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();