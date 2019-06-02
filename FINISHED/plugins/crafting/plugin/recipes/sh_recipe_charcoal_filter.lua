local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Charcoal Filter";
RECIPE.uniqueID = "recipe_charcoal_filter";
RECIPE.model = "models/teebeutel/metro/objects/gasmask_filter.mdl";
RECIPE.category = "Crafting";
RECIPE.description = "Create a filter used to protect you from dangerous gasses.";
RECIPE.ingredients = {["chunk_of_plastic"] = 2, ["paper"] = 2, ["metal_parts"] = 3, ["charcoal"] = 1};
RECIPE.result = {["charcoal_filter"] = 1};
RECIPE.hidden = false;

RECIPE:Register();