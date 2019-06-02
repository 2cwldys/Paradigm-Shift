local ITEM = Clockwork.item:New();
ITEM.name = "Box of Needles";
ITEM.uniqueID = "box_of_needles";
ITEM.value = 20;
ITEM.type = "crafting";
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.weight = 0.1;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A tiny box containing needles fit for sewing.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();