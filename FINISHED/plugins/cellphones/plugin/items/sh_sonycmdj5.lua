local ITEM = Clockwork.item:New();
ITEM.name = "Cell Phone";
ITEM.cost = 15;
ITEM.uniqueID = "sony";
ITEM.model = "models/gibs/shield_scanner_gib1.mdl";
ITEM.weight = 0.8;
ITEM.access = "1";
ITEM.category = "Communication";
ITEM.business = true;
ITEM.description = "A celluar device that allows communication.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();