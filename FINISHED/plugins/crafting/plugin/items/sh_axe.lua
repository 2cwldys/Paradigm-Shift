local ITEM = Clockwork.item:New();
ITEM.name = "Axe";
ITEM.uniqueID = "melee_weapon_axe";
ITEM.model = "models/props_forest/axe.mdl";
ITEM.value = 1;
ITEM.isRare = true;
ITEM.category = "Melee";
ITEM.business = false;
ITEM.description = "A basic axe.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();