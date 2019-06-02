local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty UU Absinthe Bottle";
RECIPE.uniqueID = "recipe_breakdown_empty_uu_absinthe";
RECIPE.model = "models/bioshockinfinite/ebsinthebottle.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you tear smash a empty absinthe bottle.";
RECIPE.ingredients = {["empty_uu_absinthe"] = 2};
RECIPE.result = {["scrap_glass"] = 1};
RECIPE.hidden = false;

RECIPE:Register();