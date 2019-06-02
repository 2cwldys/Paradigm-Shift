local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Supplement";
RECIPE.uniqueID = "recipe_breakdown_empty_supplement";
RECIPE.model = "models/pg_plops/pg_food/pg_tortellinar.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using your hands you tear apart the bag.";
RECIPE.ingredients = {["empty_supplements"] = 3};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();