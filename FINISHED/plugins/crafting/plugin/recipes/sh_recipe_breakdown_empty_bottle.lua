local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Glass Bottle";
RECIPE.uniqueID = "recipe_breakdown_empty_bottle";
RECIPE.model = "models/props_junk/garbage_glassbottle002a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Smash glass bottles for glass shards useful for many things.";
RECIPE.ingredients = {["empty_bottle"] = 1};
RECIPE.result = {["scrap_glass"] = 1};
RECIPE.hidden = false;

RECIPE:Register();