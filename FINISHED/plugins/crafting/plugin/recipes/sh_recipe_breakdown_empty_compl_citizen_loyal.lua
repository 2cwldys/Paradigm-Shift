local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Bag of Loyalist Citizen Complements";
RECIPE.uniqueID = "recipe_breakdown_empty_compl_citizen_loyal";
RECIPE.model = "models/foodnhouseholdaaaaa/combirationc.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you rip apart a empty bag.";
RECIPE.ingredients = {["empty_compl_citizen_loyal"] = 3};
RECIPE.result = {["chunk_of_plastic"] = 1};
-- RECIPE.result = {["chunk_of_plastic"] = {0, 1, 1, 1, 1, 2}};
RECIPE.hidden = false;

RECIPE:Register();