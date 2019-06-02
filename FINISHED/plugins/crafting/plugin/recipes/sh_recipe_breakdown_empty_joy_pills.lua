local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Joy Pills";
RECIPE.uniqueID = "recipe_breakdown_empty_joy_pills";
RECIPE.model = "models/props_junk/garbage_metalcan001a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "By using a furnace you smelt the can into metal.";
RECIPE.ingredients = {["empty_metal_can"] = 3};
RECIPE.result = {["piece_of_metal"] = 1};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();