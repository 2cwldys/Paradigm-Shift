local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Gear: Apocalypse Filter";
RECIPE.uniqueID = "recipe_apocalypse_filter";
RECIPE.model = "models/teebeutel/metro/objects/gasmask_filter.mdl";
RECIPE.category = "Gear";
RECIPE.description = "Melting hardened plastic on top of metal that has been refined carefully, and extremely good quality filter can be made.";
RECIPE.ingredients = {["chunk_of_plastic"] = 50, ["metal_bar"] = 20, ["hammer"] = 1, ["zip_tie"] = 40, ["charcoal"] = 40};
RECIPE.result = {["apocalypse_filter"] = 1, ["hammer"] = 1};
RECIPE.station = "workbench";

RECIPE:Register();
