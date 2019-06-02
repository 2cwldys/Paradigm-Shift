local ITEM = Clockwork.item:New();
ITEM.name = "Katana";
ITEM.uniqueID = "melee_weapon_katana";
ITEM.model = "models/weapons/w_katana.mdl";
ITEM.value = 1;
ITEM.isRare = true;
ITEM.category = "Melee";
ITEM.business = false;
ITEM.description = "A deadly katana with a sharp blade.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();