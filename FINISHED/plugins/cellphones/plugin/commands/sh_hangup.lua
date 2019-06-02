local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("Hangup");
COMMAND.tip = "Ends a call with someone or stops your phone from ringing.";
COMMAND.flags = CMD_DEFAULT;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (player:HasItemByID("nokia") or player:HasItemByID("motorola") or player:HasItemByID("sony")) then
		if (player:GetCharacterData("PhoneCall")) then
			local target = Clockwork.player:FindByID(player:GetCharacterData("PhoneCall"));
			player:SetCharacterData("PhoneCall", nil);
			target:SetCharacterData("PhoneCall", nil);
			player:SetNWBool("speakerphone", false)
			target:SetNWBool("speakerphone", false)
			player:EmitSound("buttons/button10.wav", 50)
			target:EmitSound("buttons/button10.wav", 50)
			Clockwork.player:Notify(player, "You have ended your call with "..target:GetName().."!");
			Clockwork.player:Notify(target, player:GetName().." has ended the call with you!");
		else
			if (player:GetCharacterData("PhoneRinging") or player:GetCharacterData("PhoneCalling")) then
				local target
				if (player:GetCharacterData("PhoneRinging")) then
					target = Clockwork.player:FindByID(player:GetCharacterData("PhoneRinging"))
					player:SetCharacterData("PhoneRinging", nil)
					target:SetCharacterData("PhoneCalling", nil)
				elseif (player:GetCharacterData("PhoneCalling")) then
					target = Clockwork.player:FindByID(player:GetCharacterData("PhoneCalling"))
					player:SetCharacterData("PhoneCalling", nil)
					target:SetCharacterData("PhoneRinging", nil)
				end;					
				player:EmitSound("buttons/button10.wav", 50)
				target:EmitSound("buttons/button10.wav", 50)
				Clockwork.player:Notify(player, "You missed a call from "..target:GetName().."!");
				Clockwork.player:Notify(target, player:GetName().." didn't answer your call!");
			else
				Clockwork.player:Notify(player, "You are not in a call right now!");
			end;
		end;
	else
		Clockwork.player:Notify(player, "You do not have a cellphone!");
	end;
end;

COMMAND:Register();