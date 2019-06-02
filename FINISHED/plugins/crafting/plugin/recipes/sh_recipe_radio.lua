-----------------------------------------------------

local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Communication: Handheld Radio";
RECIPE.uniqueID = "recipe_radio";
RECIPE.model = "models/deadbodies/dead_male_civilian_radio.mdl";
RECIPE.category = "Communication";
RECIPE.description = "You can put the battery in between of metallic bars and then add plastic cover to engineer it in to a radio.";
RECIPE.ingredients = {["metal_bar"] = 2, ["electronic_battery"] = 1, ["chunk_of_plastic"] = 4, ["wrench"] = 1};
RECIPE.result = {["handh_radio"] = 1, ["wrench"] = 1};
RECIPE.station = "workbench";
RECIPE.hidden = false;

RECIPE:Register();
