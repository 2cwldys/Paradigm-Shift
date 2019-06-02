local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Conversion: Metal Bar to Metal Pieces";
RECIPE.uniqueID = "recipe_conversion_metal_bar_piece_of_metal";
RECIPE.model = "models/gibs/metal_gib4.mdl";
RECIPE.category = "Conversion";
RECIPE.description = "Using a metal bar, you can smelt it into smaller pieces of metal.";
RECIPE.ingredients = {["metal_bar"] = 1};
RECIPE.result = {["piece_of_metal"] = 1};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();