local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Water Can";
RECIPE.uniqueID = "recipe_breakdown_empty_uu_breens_water";
RECIPE.model = "models/props_lunk/popcan01a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using a furnace you smelt the can into metal.";
RECIPE.ingredients = {["empty_uu_breens_water"] = 3};
RECIPE.result = {["piece_of_metal"] = 1};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();