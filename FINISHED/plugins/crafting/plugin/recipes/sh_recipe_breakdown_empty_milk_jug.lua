local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Milk Jug";
RECIPE.uniqueID = "recipe_breakdown_empty_milk_jug";
RECIPE.model = "models/props_junk/garbage_milkcarton001a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By tearing apart some milk jugs, you receive some plastic chunks.";
RECIPE.ingredients = {["empty_milk_jug"] = 3};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();