local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Rationing Pack for Minimal Citizens";
RECIPE.uniqueID = "recipe_breakdown_empty_pack_ration_citizen_mini";
RECIPE.model = "models/weapons/w_packati.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you tear apart a empty bag.";
RECIPE.ingredients = {["empty_pack_ration_citizen_mini"] = 2};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();