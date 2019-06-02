
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Zip Tie";
RECIPE.uniqueID = "recipe_zip_tie";
RECIPE.model = "models/Items/CrossbowRounds.mdl";
RECIPE.category = "Crafting";
RECIPE.description = "Being careful and cunning, you can create a zip tie from cables.";
RECIPE.ingredients = {["chunk_of_plastic"] = 2};
RECIPE.result = {["zip_tie"] = 1};
RECIPE.station = "furnace";

RECIPE:Register();