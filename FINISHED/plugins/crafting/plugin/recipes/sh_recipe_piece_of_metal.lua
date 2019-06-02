local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Conversion: Metal Parts to Pieces of Metal";
RECIPE.uniqueID = "recipe_piece_of_metal";
RECIPE.model = "models/gibs/metal_gib4.mdl";
RECIPE.category = "Conversion";
RECIPE.description = "Using a furnace, you can create metal pieces from parts.";
RECIPE.ingredients = {["metal_parts"] = 1};
RECIPE.result = {["piece_of_metal"] = 2};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();