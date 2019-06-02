local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Gear: Standard Gasmask Suit";
RECIPE.uniqueID = "recipe_standard_gasmask";
RECIPE.model = "models/industrial_uniforms/industrial_uniform.mdl";
RECIPE.category = "Gear";
RECIPE.description = "Tailors a gasmask suit that has decent protective armor against melee attacks.";
RECIPE.ingredients = {["chunk_of_plastic"] = 6, ["metal_bar"] = 5, ["hammer"] = 1, ["zip_tie"] = 6, ["armor_scraps"] = 3};
RECIPE.result = {["standard_gasmask"] = 1, ["hammer"] = 1};
RECIPE.station = "workbench";

RECIPE:Register();