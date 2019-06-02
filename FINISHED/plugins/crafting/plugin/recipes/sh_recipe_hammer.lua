local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Hammer";
RECIPE.uniqueID = "recipe_hammer";
RECIPE.model = "models/props_wasteland/prison_pipefaucet001a.mdl";
RECIPE.category = "Tools";
RECIPE.description = "Create a hammer inferior for fighting, but exceptional as a crafting tool.";
RECIPE.ingredients = {["wooden_parts"] = 3, ["piece_of_metal"] = 1};
RECIPE.result = {["hammer"] = 1};
RECIPE.hidden = false;

RECIPE:Register();