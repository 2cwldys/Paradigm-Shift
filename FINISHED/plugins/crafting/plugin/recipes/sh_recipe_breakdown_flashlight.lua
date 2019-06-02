local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Flashlight";
RECIPE.uniqueID = "recipe_breakdown_flashlight ";
RECIPE.model = "models/lagmite/lagmite.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Disassemble the flashlight by salvaging electronical parts from it with wrench.";
RECIPE.ingredients = {["cw_flashlight"] = 1};
RECIPE.result = {["scrap_electronic"] = 1};
RECIPE.station = "workbench";
RECIPE.tools = {"wrench"};
RECIPE.hidden = false;

RECIPE:Register();
