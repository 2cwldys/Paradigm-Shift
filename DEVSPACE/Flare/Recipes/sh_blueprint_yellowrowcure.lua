local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Yellow Rot Cure";
RECIPE.uniqueID = "yellow_rot_cure";
RECIPE.model = "models/props_c17/TrapPropeller_Lever.mdl";
RECIPE.skin = 0;
RECIPE.category = "Weapon Blueprints";
RECIPE.description = "The cure to the yellow plague of doom";
RECIPE.ingredients = {["cloth"] = 1 , ["backpack"] = 1};
RECIPE.result = {["yellow_rot_cure"] = 1};
RECIPE.hidden = false;

RECIPE:Register();