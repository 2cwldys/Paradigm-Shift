local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Suitcase";
RECIPE.uniqueID = "recipe_breakdown_suitcase";
RECIPE.model = "models/props_c17/SuitCase_Passenger_Physics.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Using the remaining strength of what you have as a malnourished citizen, you can acquire some cloth from breaking suitcases.";
RECIPE.ingredients = {["cw_suitcase"] = 1};
RECIPE.result = {["cloth_scraps"] = 1};
RECIPE.hidden = false;

RECIPE:Register();