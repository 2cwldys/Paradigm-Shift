local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("Call");
COMMAND.tip = "Call a friend with a phone.";
COMMAND.text = "<string name> <string Msg>";
COMMAND.flags = bit.bor(CMD_DEFAULT, CMD_DEATHCODE, CMD_FALLENOVER);
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (player:HasItemByID("nokia") or player:HasItemByID("motorola") or player:HasItemByID("sony")) then
		if (player:GetCharacterData("PhoneCall") or player:GetCharacterData("PhoneRinging")
		or player:GetCharacterData("PhoneCalling")) then
			Clockwork.player:Notify(player, "You are already on a call with someone!");
		else
			local target = Clockwork.player:FindByID( arguments[1] );
			if (target) then
				if (target == player) then
					Clockwork.player:Notify(player, "You cannot call yourself!");
				else
					if (target:HasItemByID("nokia") or target:HasItemByID("motorola") or target:HasItemByID("sony")) then
						if (target:GetCharacterData("PhoneCall") or target:GetCharacterData("PhoneRinging") 
						or target:GetCharacterData("PhoneCalling")) then
							Clockwork.player:Notify(player, "They are on a call with someone else!");
						else
							player:SetCharacterData("PhoneCalling", target:GetName())
							target:SetCharacterData("PhoneRinging", player:GetName())
							Clockwork.player:Notify(player, "Calling "..target:GetName().."!");
							Clockwork.player:Notify(target, player:GetName().." is calling you!");
						end;
					else
						Clockwork.player:Notify(player, "They do not have a cellphone!");
					end;
				end;
			else
				Clockwork.player:Notify(player, "That player could not be found!");
			end;
		end;
	else
		Clockwork.player:Notify(player, "You do not have a cellphone!");
	end;
end;

COMMAND:Register();