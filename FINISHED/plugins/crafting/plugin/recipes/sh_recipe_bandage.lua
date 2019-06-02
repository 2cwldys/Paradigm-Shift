local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Bandage";
RECIPE.uniqueID = "recipe_bandage";
RECIPE.model = "models/props_wasteland/prison_toiletchunk01f.mdl";
RECIPE.category = "Crafting";
RECIPE.description = "Just knot the cloth tight and together...";
RECIPE.ingredients = {["cloth_scraps"] = 1};
RECIPE.result = {["bandage"] = 1};

RECIPE:Register();