local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Jar";
RECIPE.uniqueID = "recipe_breakdown_empty_jar";
RECIPE.model = "models/props_lab/jar01b.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Breaking and denting jars, you can create a chunk of plastic.";
RECIPE.ingredients = {["empty_jar"] = 2};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();