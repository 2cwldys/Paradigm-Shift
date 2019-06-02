local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Conversion: Electronic Scrap to Electronic Battery";
RECIPE.uniqueID = "recipe_conversion_electronic_scrap_electronic_battery";
RECIPE.model = "models/items/battery.mdl";
RECIPE.category = "Conversion";
RECIPE.description = "Using electronic scrap, you can tinker it into a battery.";
RECIPE.ingredients = {["scrap_electronic"] = 3};
RECIPE.result = {["electronic_battery"] = 1};
RECIPE.station = "workbench";
RECIPE.hidden = false;

RECIPE:Register();
