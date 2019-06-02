local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Sewing: Bag";
RECIPE.uniqueID = "recipe_bag";
RECIPE.model = "models/props_junk/garbage_bag001a.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "Stitching together cloth, you can create a bag for holding storage.";
RECIPE.ingredients = {["cloth_scraps"] = 3};
RECIPE.tools = {"sewing_kit"};
RECIPE.result = {["bag"] = 1};

RECIPE:Register();