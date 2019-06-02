local ITEM = Clockwork.item:New();
ITEM.name = "Electronic Battery";
ITEM.uniqueID = "electronic_battery";
ITEM.value = 30;
ITEM.isRare = true;
ITEM.cost = 0;
ITEM.model = "models/items/battery.mdl";
ITEM.weight = 0.25;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "A shining battery.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;


ITEM:Register();


