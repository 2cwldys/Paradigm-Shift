local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Gear: Standard Filter";
RECIPE.uniqueID = "recipe_standard_filter";
RECIPE.model = "models/teebeutel/metro/objects/gasmask_filter.mdl";
RECIPE.category = "Gear";
RECIPE.description = "Combines carefully attached metal and plastic pieces to make a standard, decent filter.";
RECIPE.ingredients = {["chunk_of_plastic"] = 6, ["piece_of_metal"] = 12, ["hammer"] = 1, ["zip_tie"] = 8, ["charcoal"] = 8};
RECIPE.result = {["standard_filter"] = 1, ["hammer"] = 1};
RECIPE.station = "workbench";

RECIPE:Register();
