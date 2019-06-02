local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Jar of UU Pickles";
RECIPE.uniqueID = "recipe_breakdown_empty_uu_pickles";
RECIPE.model = "models/bioshockinfinite/dickle_jar.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you smash a empty jar.";
RECIPE.ingredients = {["empty_uu_pickles"] = 2};
RECIPE.result = {["scrap_glass"] = 1};
RECIPE.hidden = false;

RECIPE:Register();