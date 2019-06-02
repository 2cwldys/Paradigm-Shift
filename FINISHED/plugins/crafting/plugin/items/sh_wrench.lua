local ITEM = Clockwork.item:New();
ITEM.name = "Wrench";
ITEM.uniqueID = "wrench";
ITEM.model = "models/props_c17/tools_wrench01a.mdl";
ITEM.value = 1;
ITEM.isRare = true;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "A heavy metal wrench.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();