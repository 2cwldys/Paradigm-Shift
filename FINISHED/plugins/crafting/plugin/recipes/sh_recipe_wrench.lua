local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Wrench";
RECIPE.uniqueID = "recipe_wrench";
RECIPE.model = "models/props_c17/tools_wrench01a.mdl";
RECIPE.category = "Tools";
RECIPE.description = "Create a wrench from metal used for creating powerful items.";
RECIPE.ingredients = {["piece_of_metal"] = 3};
RECIPE.result = {["wrench"] = 1};
RECIPE.tools = {"hammer"};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();