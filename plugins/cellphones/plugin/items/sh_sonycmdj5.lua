local ITEM = Clockwork.item:New();
ITEM.name = "Union Communication Device";
ITEM.cost = 15;
ITEM.uniqueID = "sony";
ITEM.model = "models/gibs/shield_scanner_gib1.mdl";
ITEM.weight = 0.8;
ITEM.access = "1";
ITEM.category = "Communication";
ITEM.business = true;
ITEM.description = "An Universal Union approved communication device, allowing small conversation from long distances.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();