local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Gear: Makeshift Gasmask Suit";
RECIPE.uniqueID = "recipe_makeshift_gasmask";
RECIPE.model = "models/industrial_uniforms/industrial_uniform2.mdl";
RECIPE.category = "Gear";
RECIPE.description = "Combines a few materials to make a makeshift gasmask.";
RECIPE.ingredients = {["chunk_of_plastic"] = 2, ["piece_of_metal"] = 8, ["hammer"] = 1, ["zip_tie"] = 2, ["cloth_scraps"] = 1};
RECIPE.result = {["makeshift_gasmask"] = 1, ["hammer"] = 1};
RECIPE.station = "workbench";
RECIPE.tools = {"sewing_kit"};

RECIPE:Register();