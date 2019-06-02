local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Rationing Pack for Citizens";
RECIPE.uniqueID = "recipe_breakdown_empty_pack_ration_citizen";
RECIPE.model = "models/weapons/w_packate.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you tear apart the bag.";
RECIPE.ingredients = {["empty_pack_ration_citizen"] = 3};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();

