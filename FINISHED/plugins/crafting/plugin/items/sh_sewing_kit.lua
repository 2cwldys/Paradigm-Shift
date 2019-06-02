local ITEM = Clockwork.item:New();
ITEM.name = "Sewing Kit";
ITEM.uniqueID = "sewing_kit";
ITEM.model = "models/bioshockinfinite/loot_lockbox_closed.mdl";
ITEM.value = 1;
ITEM.isRare = true;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "A box containing sewing needles, thread and other things for professional tailoring.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();