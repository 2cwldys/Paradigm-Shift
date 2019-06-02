local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Arsenal: Handcrafted Axe";
RECIPE.uniqueID = "recipe_handcrafted_axe";
RECIPE.model = "models/props_forest/axe.mdl";
RECIPE.category = "Arsenal";
RECIPE.description = "The regular axe, a bit odd looking due to handcrafting.";
RECIPE.ingredients = {["metal_bar"] = 2, ["steel_bar"] = 1, ["hammer"] = 1};
RECIPE.result = {["cw_woodaxe"] = 1, ["hammer"] = 1};
RECIPE.station = "workbench";

RECIPE:Register();
