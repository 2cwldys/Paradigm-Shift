local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Bottle of UU Jin";
RECIPE.uniqueID = "recipe_breakdown_empty_uu_jin";
RECIPE.model = "models/bioshockinfinite/jin_bottle.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you smash a empty bottle.";
RECIPE.ingredients = {["empty_uu_jin"] = 2};
RECIPE.result = {["scrap_glass"] = 1};
RECIPE.hidden = false;

RECIPE:Register();