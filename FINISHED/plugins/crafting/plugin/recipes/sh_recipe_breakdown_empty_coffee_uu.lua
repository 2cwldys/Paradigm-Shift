local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Can of UU Coffee";
RECIPE.uniqueID = "recipe_breakdown_empty_uu_coffee";
RECIPE.model = "models/bioshockinfinite/xoffee_mug_closed.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using a furnace you smelt the can into metal.";
RECIPE.ingredients = {["empty_uu_coffee"] = 3};
RECIPE.result = {["piece_of_metal"] = 1};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();