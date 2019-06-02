local ITEM = Clockwork.item:New();
ITEM.name = "Sledge Hammer";
ITEM.uniqueID = "melee_weapon_sledgehammer";
ITEM.model = "models/weapons/w_sledgehammer.mdl";
ITEM.value = 1;
ITEM.isRare = true;
ITEM.category = "Melee";
ITEM.business = false;
ITEM.description = "A heavy tool, mainly used for workers.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();