local ITEM = Clockwork.item:New();
ITEM.name = "Crude Hammer";
ITEM.uniqueID = "hammer";
ITEM.model = "models/props_wasteland/prison_pipefaucet001a.mdl";
ITEM.weight = 1;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "A crude metal hammer.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();