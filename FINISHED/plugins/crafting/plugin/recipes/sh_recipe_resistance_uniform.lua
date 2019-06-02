local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Sewing: Resistance Uniform";
RECIPE.uniqueID = "recipe_resistance_uniform";
RECIPE.model = "models/Humans/Group03m/male_02.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "With your extended knowledge, you can create armored clothing.";
RECIPE.ingredients = {["cloth_scraps"] = 2, ["kevlar_vest"] = 1, ["bag"] = 1, ["armor_scraps"] = 1};
RECIPE.result = {["resistance_uniform"] = 1};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;
RECIPE.flag = "A";

RECIPE:Register();