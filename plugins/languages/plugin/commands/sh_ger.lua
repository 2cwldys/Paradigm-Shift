--[[
	Made by Cinder.  March 2016.
	Do not re-distribute as your own or modify without the permission of the creator.
]]

local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("Ger");
COMMAND.tip = "Speak in German.";
COMMAND.text = "<string speech>";
COMMAND.flags = bit.bor(CMD_DEFAULT);
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (Clockwork.player:HasFlags(player, "L")) then
		local speech = arguments[1]

		for k,v in pairs(_player.GetAll()) do
			local distance = v:GetPos():Distance(player:GetPos());
			if (math.floor(distance) <= Clockwork.config:Get("talk_radius"):Get()) then
				if (Clockwork.player:HasFlags(v, "L")) then			
				Clockwork.chatBox:SendColored(v, Color(102, 205, 170, 255), "[German] "..player:Name()..": "..speech)
			else
				Clockwork.chatBox:SendColored(v, Color(102, 205, 170, 255), player:Name().." speaks in a language you cannot understand.")
				end;
			end;
		end;
	else
		Clockwork.player:Notify(player, "You do not speak German!")
	end;
end;

COMMAND:Register();