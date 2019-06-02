local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Bleach Jug";
RECIPE.uniqueID = "recipe_breakdown_empty_bleach_jug";
RECIPE.model = "models/props_junk/garbage_plasticbottle001a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By smelting some cans, you can create pieces of metal used for things.";
RECIPE.ingredients = {["empty_bleach_jug"] = 3};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();