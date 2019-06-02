local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Can";
RECIPE.uniqueID = "recipe_breakdown_empty_can";
RECIPE.model = "models/props_junk/PopCan01a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By smelting some cans, you can create pieces of metal used for things.";
RECIPE.ingredients = {["empty_can"] = 3};
RECIPE.result = {["piece_of_metal"] = 1};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();