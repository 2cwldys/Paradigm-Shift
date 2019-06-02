local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Gear: Makeshift Filter";
RECIPE.uniqueID = "recipe_makeshift_filter";
RECIPE.model = "models/teebeutel/metro/objects/gasmask_filter.mdl";
RECIPE.category = "Gear";
RECIPE.description = "Combines a few materials to make a makeshift filter.";
RECIPE.ingredients = {["chunk_of_plastic"] = 2, ["piece_of_metal"] = 4, ["hammer"] = 1, ["zip_tie"] = 2, ["charcoal"] = 2};
RECIPE.result = {["makeshift_filter"] = 1, ["hammer"] = 1};
RECIPE.station = "workbench";

RECIPE:Register();