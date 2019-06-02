local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

Clockwork.config:Add("crafting_menu", false, true);

Clockwork.datastream:Hook("CraftRecipe", function(player, data)
	local recipe = data;

	local bPlayerCanCraft, err = PLUGIN:PlayerCanCraft(player);
	if (!bPlayerCanCraft) then
		if (!err) then
			err = "You cannot craft right now (but a Dev forgot to add in why)!";
		end;
		Clockwork.player:Notify(player, err);
		return false;
	end;

	local bCanCraftRecipe, err = PLUGIN.recipe:PlayerCanCraftRecipe(recipe, player);
	if (!bCanCraftRecipe) then
		if (!err) then
			err = "You cannot craft this (but a Dev forgot to add in why)!";
		end;
		Clockwork.player:Notify(player, err);
		return false;
	end;

	PLUGIN.recipe:PlayerCraftRecipe(recipe, player);
end);

function PLUGIN:PlayerCanCraft(player)
	-- Check if the player has waited long enough for the next craft time
	local curTime = CurTime();
	if (player.cwNextCraftTime and curTime < player.cwNextCraftTime) then
		return false, "You need to wait "..tostring(player.cwNextCraftTime - curTime).." seconds.";
	end;

	return true;
end;