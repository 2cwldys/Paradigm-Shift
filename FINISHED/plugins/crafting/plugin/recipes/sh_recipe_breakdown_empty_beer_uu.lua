local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Bottle of UU Beer";
RECIPE.uniqueID = "recipe_breakdown_empty_uu_beer";
RECIPE.model = "models/bioshockinfinite/hext_bottle_lager.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you tear smash a empty beer bottle.";
RECIPE.ingredients = {["empty_uu_beer"] = 2};
RECIPE.result = {["scrap_glass"] = 1};
RECIPE.hidden = false;

RECIPE:Register();