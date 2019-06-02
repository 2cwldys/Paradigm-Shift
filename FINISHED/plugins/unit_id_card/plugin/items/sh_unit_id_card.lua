local ITEM = Clockwork.item:New();

ITEM.name = "Unit ID Card";
ITEM.cost = 500;
ITEM.access = "m";
ITEM.model = "models/gibs/metal_gib4.mdl";
ITEM.weight = 0.1;
ITEM.business = false;
ITEM.description = "A card with a unit's digits and rank enscribed on it.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();
