local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Rationing Pack for Standard Citizens";
RECIPE.uniqueID = "recipe_breakdown_empty_pack_ration_citizen_stand";
RECIPE.model = "models/weapons/w_packatc.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you tear apart a empty bag.";
RECIPE.ingredients = {["empty_pack_ration_citizen_stand"] = 2};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();