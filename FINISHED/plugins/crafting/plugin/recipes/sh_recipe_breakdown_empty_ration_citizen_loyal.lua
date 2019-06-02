local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Ration Pouch of Loyalist Citizen";
RECIPE.uniqueID = "recipe_breakdown_empty_raton_citizen_loyal";
RECIPE.model = "models/pg_plops/pg_food/pg_tortellinap.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you tear apart the bag.";
RECIPE.ingredients = {["empty_ration_citizen_loyal"] = 3};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();