local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Notepad";
RECIPE.uniqueID = "recipe_notepad";
RECIPE.model = "models/props_lab/clipboard.mdl";
RECIPE.category = "Crafting";
RECIPE.description = "Fabricate a notepad from paper.";
RECIPE.ingredients = {["paper"] = 2};
RECIPE.result = {["notepad"] = 1};
RECIPE.hidden = false;

RECIPE:Register();