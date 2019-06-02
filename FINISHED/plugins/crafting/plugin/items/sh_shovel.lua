local ITEM = Clockwork.item:New();
ITEM.name = "Shovel";
ITEM.uniqueID = "melee_weapon_shovel";
ITEM.model = "models/weapons/w_shovel.mdl";
ITEM.value = 1;
ITEM.isRare = true;
ITEM.category = "Melee";
ITEM.business = false;
ITEM.description = "A basic shovel.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();