local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Medical Vial";
RECIPE.uniqueID = "recipe_health_vial";
RECIPE.model = "models/healthvial.mdl";
RECIPE.category = "Crafting";
RECIPE.description = "Combine medical chemicals together in a bottle to make medical vial.";
RECIPE.ingredients = {["uu_beer"] = 2};
RECIPE.result = {["health_vial"] = 1};
RECIPE.station = "workbench";

RECIPE:Register();