local ITEM = Clockwork.item:New();
ITEM.name = "Nails";
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.weight = 1;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A small box of nails.";
ITEM.value = 20;
ITEM.type = "crafting";

function ITEM:OnDrop(player, position) end;

ITEM:Register();