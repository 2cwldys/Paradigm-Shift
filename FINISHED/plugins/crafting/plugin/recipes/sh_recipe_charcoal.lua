local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Charcoal";
RECIPE.uniqueID = "recipe_charcoal";
RECIPE.model = "models/props_c17/TrapPropeller_Lever.mdl";
RECIPE.category = "Crafting";
RECIPE.description = "Using a furnace, you can create charcoal from wood.";
RECIPE.ingredients = {["wooden_parts"] = 3};
RECIPE.result = {["charcoal"] = 1};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();