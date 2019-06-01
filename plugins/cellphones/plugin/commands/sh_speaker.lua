local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("Speaker");
COMMAND.tip = "Toggle speakerphone on your cellphone during a call.";
COMMAND.flags = CMD_DEFAULT;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (player:HasItemByID("nokia") or player:HasItemByID("motorola") or player:HasItemByID("sony")) then
		if (player:GetCharacterData("PhoneCall")) then
			if (!player:GetNWBool("speakerphone", true)) then
				player:SetNWBool("speakerphone", true)
				Clockwork.player:Notify(player, "You turned on the speakerphone on your cellphone!");
			else
				player:SetNWBool("speakerphone", false)
				Clockwork.player:Notify(player, "You turned off the speakerphone on your cellphone!");
			end;
		else
			Clockwork.player:Notify(player, "You are not in a call right now!");
		end;
	else
		Clockwork.player:Notify(player, "You do not have a cellphone!");
	end;
end;

COMMAND:Register();