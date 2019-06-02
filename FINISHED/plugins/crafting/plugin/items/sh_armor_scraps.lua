local ITEM = Clockwork.item:New();
ITEM.name = "Armor Scraps";
ITEM.uniqueID = "armor_scraps";
ITEM.value = 8;
ITEM.type = "crafting";
ITEM.model = "models/gibs/scanner_gib02.mdl";
ITEM.weight = 1;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "Scraps from various armor parts. Can be used to repair most armors.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();