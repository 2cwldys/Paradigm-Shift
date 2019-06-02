local ITEM = Clockwork.item:New();
ITEM.name = "Steel Bar";
ITEM.uniqueID = "steel_bar";
ITEM.value = 1000;
ITEM.isRare = true;
ITEM.model = "models/gibs/furniture_gibs/furniturewooddrawer003a_chunk04.mdl";
ITEM.weight = 2;
ITEM.category = "Crafting Resource";
ITEM.business = true;
ITEM.description = "A refined metal bar, extremely rare and sold only by blackmarket.";
ITEM.access = "V";
ITEM.cost = 1000;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/gibs/metalgibs/metal_gibs");
	end;
ITEM:Register();


