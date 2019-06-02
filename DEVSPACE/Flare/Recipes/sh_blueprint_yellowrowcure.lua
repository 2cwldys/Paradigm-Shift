local BLUEPRINT = Clockwork.item:New("blueprint_base");

BLUEPRINT.name = "Yellow Rot Cure";
BLUEPRINT.model = "models/props_c17/TrapPropeller_Lever.mdl";
BLUEPRINT.weight = 0.5;

BLUEPRINT.category = "Weapon Blueprints";
BLUEPRINT.crafting = true;

-- A function to check for the required materials for a craft.
function BLUEPRINT:HasMaterials(player)
	return
	{
		{"Backpack", 1},
		{"Cloth", 2}
	}
end;

-- A function to take the required materials for a craft.
function BLUEPRINT:TakeMaterials(player)
	return
	{
		{"Backpack", 1},
		{"Cloth", 2},
	}
end;

-- A function to give a player a crafted item.
function BLUEPRINT:GiveCraft(player)
	return
	{
		{"yellow_rot_cure", 1}
	}
end;

BLUEPRINT:Register();
