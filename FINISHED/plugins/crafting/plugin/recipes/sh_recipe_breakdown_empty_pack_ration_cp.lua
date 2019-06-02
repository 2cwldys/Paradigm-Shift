local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Civil Protection Rationing Pack";
RECIPE.uniqueID = "recipe_breakdown_empty_pack_ration_cp";
RECIPE.model = "models/weapons/w_packatm.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you tear apart a empty bag.";
RECIPE.ingredients = {["empty_pack_ration_cp"] = 2};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();