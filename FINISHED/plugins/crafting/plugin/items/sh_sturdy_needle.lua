local ITEM = Clockwork.item:New();
ITEM.name = "Sturdy Needle";
ITEM.uniqueID = "sturdy_needle";
ITEM.model = "models/props_c17/trappropeller_lever.mdl";
ITEM.value = 8;
ITEM.type = "misc";
ITEM.weight = 0.1;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "A sturdy metal needle.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();