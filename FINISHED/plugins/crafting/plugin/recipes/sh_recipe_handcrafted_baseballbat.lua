local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Arsenal: Handcrafted Baseball bat";
RECIPE.uniqueID = "recipe_handcrafted_bat";
RECIPE.model = "models/weapons/w_batty_t.mdl";
RECIPE.category = "Arsenal";
RECIPE.description = "Melting metal together and then sharpening it with workbench, you can make a bat.";
RECIPE.ingredients = {["piece_of_metal"] = 5, ["hammer"] = 1};
RECIPE.result = {["cw_baseballbat"] = 1, ["hammer"] = 1};
RECIPE.station = "workbench";

RECIPE:Register();