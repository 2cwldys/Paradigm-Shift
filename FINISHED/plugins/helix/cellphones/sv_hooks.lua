local PLUGIN = PLUGIN

function PLUGIN:PostPlayerSpawn(player, lightSpawn, changeClass, firstSpawn)
	player:SetCharacterData("PhoneRinging", nil)
	player:SetCharacterData("PhoneCalling", nil)
	player:SetCharacterData("PhoneCall", nil)
	player:SetNWBool("speakerphone", false)
end

function PLUGIN:Tick()
	for k, v in ipairs( _player.GetAll() ) do
    if (v:GetCharacterData("PhoneRinging") or v:GetCharacterData("PhoneCalling")) then
      local curTime = CurTime()

      if (!self.nextRingEmit) then
        self.nextRingEmit = curTime + 1
      end

      if ( (curTime >= self.nextRingEmit) ) then
        self.nextRingEmit = nil
        
        if (v:GetCharacterData("PhoneRinging")) then
          v:EmitSound("buttons/button3.wav", 50)
        else
          v:EmitSound("buttons/button16.wav", 50)
        end
      end
    end
	end
end
