local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Sewing Kit";
RECIPE.uniqueID = "recipe_sewing_kit";
RECIPE.model = "models/bioshockinfinite/loot_lockbox_closed.mdl";
RECIPE.category = "Tools";
RECIPE.description = "Create a sewing kit containing all sorts of things for creating and cutting apparel.";
RECIPE.ingredients = {["piece_of_metal"] = 1, ["box_of_needles"] = 1, ["cloth_scraps"] = 1};
RECIPE.result = {["sewing_kit"] = 1};
RECIPE.hidden = false;

RECIPE:Register();