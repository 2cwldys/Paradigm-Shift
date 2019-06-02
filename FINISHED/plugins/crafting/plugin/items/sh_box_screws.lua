local ITEM = Clockwork.item:New();
ITEM.name = "Box of Screws";
ITEM.uniqueID = "box_screws";
ITEM.value = 11;
ITEM.type = "crafting";
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.weight = 0.25;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A tiny box containing small screws. Probably used for making something.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();