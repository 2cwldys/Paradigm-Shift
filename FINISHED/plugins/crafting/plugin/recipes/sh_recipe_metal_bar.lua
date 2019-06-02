local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Metal Bar";
RECIPE.uniqueID = "recipe_metal_bar";
RECIPE.model = "models/gibs/metal_gib2.mdl";
RECIPE.category = "Crafting";
RECIPE.description = "Adding lots of metal, you can create a single metal bar.";
RECIPE.ingredients = {["piece_of_metal"] = 6};
RECIPE.result = {["metal_bar"] = 1};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();