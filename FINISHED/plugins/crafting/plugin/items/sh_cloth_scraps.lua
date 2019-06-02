local ITEM = Clockwork.item:New();
ITEM.name = "Cloth Scraps";
ITEM.uniqueID = "cloth_scraps";
ITEM.value = 30;
ITEM.type = "crafting";
ITEM.cost = 0;
ITEM.model = "models/props_debris/concrete_chunk04a.mdl";
ITEM.weight = 0.125;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "Some cloth ripped from some apparel.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/props_c17/FurnitureFabric003a");
	end;
ITEM:Register();