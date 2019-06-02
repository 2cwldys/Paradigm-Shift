local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Request Device";
RECIPE.uniqueID = "recipe_breakdown_requestdevice";
RECIPE.model = "models/gibs/shield_scanner_gib1.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Disassemble the request device by salvaging electronical parts from it with wrench.";
RECIPE.ingredients = {["request_device"] = 1};
RECIPE.result = {["scrap_electronic"] = 1};
RECIPE.station = "workbench";
RECIPE.tools = {"wrench"};
RECIPE.hidden = false;

RECIPE:Register();
