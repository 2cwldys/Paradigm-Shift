local PLUGIN = PLUGIN

ix.command.Add("Answer", {
	description = "Answer phone call.",
	OnRun = function(self, client, arguments)
  --   if (player:HasItemByID("nokia") or player:HasItemByID("motorola") or player:HasItemByID("sony")) then
  -- 		if (player:GetCharacterData("PhoneCall")) then
  -- 			return "You're already in a call!"
  --
  -- 		else
  -- 			if (player:GetCharacterData("PhoneRinging")) then
  -- 				local target = Clockwork.player:FindByID(player:GetCharacterData("PhoneRinging"))
  -- 				player:SetCharacterData("PhoneCall", target:GetName())
  -- 				target:SetCharacterData("PhoneCall", player:GetName())
  --
  -- 				player:SetCharacterData("PhoneRinging", nil)
  -- 				target:SetCharacterData("PhoneCalling", nil)
  --
  -- 				player:SetNWBool("speakerphone", false)
  -- 				target:SetNWBool("speakerphone", false)
  --
  -- 				player:EmitSound("buttons/button9.wav", 50)
  -- 				target:EmitSound("buttons/button9.wav", 50)
  --
  -- 				Clockwork.player:Notify(player, "You answered "..target:GetName().."!")
  -- 				Clockwork.player:Notify(target, player:GetName().." answered you!")
  --
  -- 			else
  -- 				if (player:GetCharacterData("PhoneCalling")) then
  -- 					return "You can't answer when you're calling someone!"
  -- 				else
  -- 					return "Your cell phone isn't ringing."
  -- 				end
  -- 			end
  -- 		end
  --
  -- 	else
  -- 		return "You do not have a cell phone."
  -- 	end
  -- end
})

ix.command.Add("Call", {
	description = "Remove someone from via whitelist",
	arguments = ix.type.text,
	OnRun = function(self, client, steamid)

  end
})

ix.command.Add("Hangup", {
	description = "Remove someone from via whitelist",
	arguments = ix.type.text,
	OnRun = function(self, client, steamid)

  end
})

ix.command.Add("Speaker", {
	description = "Remove someone from via whitelist",
	arguments = ix.type.text,
	OnRun = function(self, client, steamid)

  end
})
