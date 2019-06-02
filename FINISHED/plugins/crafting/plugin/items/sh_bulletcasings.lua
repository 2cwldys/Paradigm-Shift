local ITEM = Clockwork.item:New();
ITEM.name = "Bullet Casings";
ITEM.uniqueID = "bulletcasings";
ITEM.cost = 0;
ITEM.value = 10;
ITEM.type = "crafting";
ITEM.model = "models/props_junk/cardboard_box004a.mdl";
ITEM.weight = 0.2;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "A small box filled with various bullet casings.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();