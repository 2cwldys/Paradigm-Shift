local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Arsenal: Manufactured Pistol";
RECIPE.uniqueID = "recipe_manufactured_pistol";
RECIPE.model = "models/weapons/w_pistol.mdl";
RECIPE.category = "Arsenal";
RECIPE.description = "With excellent skills in handcrafting, one can make a pistol if correct components are in tact.";
RECIPE.ingredients = {["steel_bar"] = 2, ["metal_bar"] = 20, ["hammer"] = 1, ["wrench"] = 1};
RECIPE.result = {["rcs_uspmatch"] = 1, ["hammer"] = 1, ["wrench"] = 1};
RECIPE.station = "furnace";

RECIPE:Register();
