--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local COMMAND = Clockwork.command:New("Broadcast");
COMMAND.tip = "Broadcast a message to all characters.";
COMMAND.text = "<string Text>";
COMMAND.flags = bit.bor(CMD_DEFAULT, CMD_FALLENOVER);
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (player:GetFaction() == FACTION_CHAIRMAN) then
		local text = table.concat(arguments, " ");
		
		if (text == "") then
			Clockwork.player:Notify(player, "You did not specify enough text!");
			
			return;
		end;
		
		Schema:SayBroadcast(player, text);
	else
		Clockwork.player:Notify(player, "You are not a chairman!");
	end;
end;

COMMAND:Register();