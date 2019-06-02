local ITEM = Clockwork.item:New();
ITEM.name = "Baseball Bat";
ITEM.uniqueID = "melee_weapon_bat";
ITEM.model = "models/weapons/w_batty_t.mdl";
ITEM.value = 1;
ITEM.isRare = true;
ITEM.category = "Melee";
ITEM.business = false;
ITEM.description = "A metalic bat.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();