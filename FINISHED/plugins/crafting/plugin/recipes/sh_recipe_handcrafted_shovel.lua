local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Arsenal: Handcrafted Shovel";
RECIPE.uniqueID = "recipe_handcrafted_shovel";
RECIPE.model = "models/props_junk/shovel01a.mdl";
RECIPE.category = "Arsenal";
RECIPE.description = "Clip a bit from both sides of the wooden board, attach a metal edge on it and tada! A shovel!.";
RECIPE.ingredients = {["wooden_board"] = 1, ["piece_of_metal"] = 3, ["hammer"] = 1};
RECIPE.result = {["cw_shovel"] = 1, ["hammer"] = 1};
RECIPE.station = "workbench";

RECIPE:Register();