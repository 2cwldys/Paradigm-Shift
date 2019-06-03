--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local COMMAND = Clockwork.command:New("ViewData");
COMMAND.tip = "View data about a given character.";
COMMAND.text = "<string Name>";
COMMAND.flags = CMD_DEFAULT;
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (Schema:PlayerIsCombine(player)) then
		local target = Clockwork.player:FindByID( arguments[1] );
		
		if (target) then
			if (player != target) then
				Clockwork.datastream:Start( player, "EditData", { target, target:GetCharacterData("combinedata") } );
				
				player.editDataAuthorised = target;
			else
				Clockwork.player:Notify(player, "You cannot view or edit your own data!");
			end;
		else
			Clockwork.player:Notify(player, arguments[1].." is not a valid character!");
		end;
	else
		Clockwork.player:Notify(player, "You are not the Combine!");
	end;
end;

COMMAND:Register();