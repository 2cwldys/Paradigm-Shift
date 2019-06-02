local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Can of UU Sardines";
RECIPE.uniqueID = "recipe_breakdown_empty_uu_sardine";
RECIPE.model = "models/bioshockinfinite/cardine_can_open.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using a furnace you smelt the can into metal.";
RECIPE.ingredients = {["empty_uu_sardine"] = 3};
RECIPE.result = {["piece_of_metal"] = 1};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();