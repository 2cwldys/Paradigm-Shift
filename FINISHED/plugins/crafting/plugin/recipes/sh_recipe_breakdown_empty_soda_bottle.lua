local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Soda Bottle";
RECIPE.uniqueID = "recipe_breakdown_empty_soda_bottle";
RECIPE.model = "models/props_junk/garbage_plasticbottle003a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By tearing apart a Soda Bottle you could receive some chunks of plastic.";
RECIPE.ingredients = {["empty_soda_bottle"] = 3};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();