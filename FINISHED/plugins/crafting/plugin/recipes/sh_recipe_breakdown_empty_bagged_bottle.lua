local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Bagged Bottle";
RECIPE.uniqueID = "recipe_breakdown_empty_bagged_bottle";
RECIPE.model = "models/props_junk/garbage_glassbottle002a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By smashing the bagged bottle you receive some scrap glass.";
RECIPE.ingredients = {["empty_bagged_bottle"] = 3};
RECIPE.result = {["scrap_glass"] = 1};
RECIPE.hidden = false;

RECIPE:Register();