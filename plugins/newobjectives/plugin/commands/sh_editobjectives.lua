local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("EditObjectives");
COMMAND.tip = "Edit the Civil Protection objectives.";
COMMAND.flags = CMD_DEFAULT;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if ( Schema:PlayerIsCombine(player) or player:IsSuperAdmin() ) then
		
		-- These are the specifications for users that are allowed to edit objectives.
		if ( Schema:IsPlayerCombineRank( player, {"DvL", "SeC"} ) or (player:GetFaction() == FACTION_OTA) or player:IsSuperAdmin() ) then
			Clockwork.datastream:Start(player, "EditObjectives", PLUGIN.combineObjectives);
			player.editObjectivesAuthorised = true;
		else
			Clockwork.player:Notify(player, "<:: Access Denied ::>");
		end;
	else
		Clockwork.player:Notify(player, "You are not the Combine!");
	end;
end;

COMMAND:Register();