local ITEM = Clockwork.item:New();
ITEM.name = "Union Card";
ITEM.cost = 6;
ITEM.model = "models/gibs/metal_gib4.mdl";
ITEM.weight = 0.1;
ITEM.classes = {CLASS_EMP, CLASS_EOW};
ITEM.business = true;
ITEM.description = "A card with the word 'Union' enscribed on it.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();