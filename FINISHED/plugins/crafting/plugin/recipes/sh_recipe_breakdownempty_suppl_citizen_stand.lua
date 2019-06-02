local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Citizen Supplement Pocket";
RECIPE.uniqueID = "recipe_breakdown_empty_citizen_supp";
RECIPE.model = "models/mres/consumables/tag_mre.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you tear apart the bag.";
RECIPE.ingredients = {["empty_citizen_supp"] = 3};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();