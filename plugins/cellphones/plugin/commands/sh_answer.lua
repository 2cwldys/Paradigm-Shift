local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("Answer");
COMMAND.tip = "Answer a phonecall.";
COMMAND.flags = CMD_DEFAULT;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (player:HasItemByID("nokia") or player:HasItemByID("motorola") or player:HasItemByID("sony")) then
		if (player:GetCharacterData("PhoneCall")) then
			Clockwork.player:Notify(player, "You are already in a call!");
		else
			if (player:GetCharacterData("PhoneRinging")) then
				local target = Clockwork.player:FindByID(player:GetCharacterData("PhoneRinging"));
				player:SetCharacterData("PhoneCall", target:GetName())
				target:SetCharacterData("PhoneCall", player:GetName())
				player:SetCharacterData("PhoneRinging", nil)
				target:SetCharacterData("PhoneCalling", nil)
				player:SetNWBool("speakerphone", false)
				target:SetNWBool("speakerphone", false)
				player:EmitSound("buttons/button9.wav", 50)
				target:EmitSound("buttons/button9.wav", 50)
				Clockwork.player:Notify(player, "You answered "..target:GetName().."!");
				Clockwork.player:Notify(target, player:GetName().." answered you!");
			else
				if (player:GetCharacterData("PhoneCalling")) then
					Clockwork.player:Notify(player, "You can't answer when you're calling someone!");
				else
					Clockwork.player:Notify(player, "Your phone isn't ringing!");
				end;
			end;
		end;
	else
		Clockwork.player:Notify(player, "You do not have a cellphone!");
	end;
end;

COMMAND:Register();