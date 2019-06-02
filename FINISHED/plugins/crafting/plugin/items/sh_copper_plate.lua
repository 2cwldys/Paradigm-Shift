local ITEM = Clockwork.item:New();
ITEM.name = "Copper Plate";
ITEM.uniqueID = "copper_plate";
ITEM.value = 5;
ITEM.type = "crafting";
ITEM.model = "models/props_vents/vent_large_grill001.mdl";
ITEM.weight = 0.1;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "A fairly small sized copper plate.";

function ITEM:OnDrop(player, position) end;

-- Called when the item entity has spawned. This is used to set the material.
function ITEM:OnEntitySpawned(entity)
	entity:SetMaterial("models/props_pipes/GutterMetal01a");
end;

ITEM:Register();