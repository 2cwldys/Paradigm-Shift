local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Arsenal: Handcrafted Katana";
RECIPE.uniqueID = "recipe_handcrafted_katana";
RECIPE.model = "models/weapons/v_katana.mdl";
RECIPE.category = "Arsenal";
RECIPE.description = "Unlike the crafting something uneffective, the katana would be a good use.";
RECIPE.ingredients = {["hammer"] = 1, ["metal_bar"] = 1};
RECIPE.result = {["cw_katana"] = 1, ["hammer"] = 1};
RECIPE.station = "workbench";

RECIPE:Register();