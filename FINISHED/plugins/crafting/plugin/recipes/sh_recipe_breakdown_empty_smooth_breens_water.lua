local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Smooth Water Can";
RECIPE.skin = 1;
RECIPE.uniqueID = "recipe_breakdown_empty_s_breen_water";
RECIPE.model = "models/props_lunk/popcan01a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using a furnace you smelt the can into metal.";
RECIPE.ingredients = {["empty_s_breen_water"] = 3};
RECIPE.result = {["piece_of_metal"] = 1};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();