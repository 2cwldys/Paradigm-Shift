local PLUGIN = PLUGIN;

-- Called when a chat box message has been added.
function PLUGIN:ChatBoxMessageAdded(info)
	if (info.class == "ic") then
		local talkRadius = Clockwork.config:Get("talk_radius"):Get();
		local players = _player.GetAll();
		local listeners = {};
		
		--This checks to see if the speaker is near a person on a call.
		for k, v in ipairs(players) do
			if (v:GetCharacterData("PhoneCall")) then
				if (info.speaker:GetPos():Distance( v:GetPos() ) <= talkRadius) then
					local isNear = true
					local phoneHolder = v
					local hearingPhone = Clockwork.player:FindByID(v:GetCharacterData("PhoneCall"))
					if (isNear) then
						if (hearingPhone:GetNWBool("speakerphone", true)) then
							for k2, v2 in ipairs(players) do
								if (v2:HasInitialized() and v2:Alive()) then
									--if (info.speaker == v2 or phoneHolder == v2) then
										--listeners[#listeners + 1] = v2;
									if (v2:GetPos():Distance( phoneHolder:GetPos() ) <= talkRadius) then
										listeners[#listeners + 1] = v2;
									end;
								end;
							end;
						else
							listeners[#listeners + 1] = phoneHolder
						end;
						
						--Sends the message to players.
						if table.Count(listeners) > 0 then
							local speakerName;
							local noRecognizeSpeaker = true;
							local noRecognizeHolder = true;
							for k3, v3 in ipairs (listeners) do
								if (Clockwork.player:DoesRecognise(v3, info.speaker) or v3 == info.speaker) then
									speakerName = info.speaker:GetName()
									noRecognizeSpeaker = nil
								elseif (Clockwork.player:DoesRecognise(v3, info.speaker) or v3 == info.speaker) then
									holderName = phoneHolder:GetName()
									noRecognizeHolder = nil
								end;
								
								if (noRecognizeSpeaker) then
									local unrecognisedName, usedPhysDesc = Clockwork.player:GetUnrecognisedName(info.speaker);						
									if (usedPhysDesc and string.len(unrecognisedName) > 24) then
										unrecognisedName = string.sub(unrecognisedName, 1, 21).."..."
									end;						
									speakerName = "["..unrecognisedName.."]";
								end;
								
								if (noRecognizeHolder) then
									local unrecognisedName, usedPhysDesc = Clockwork.player:GetUnrecognisedName(phoneHolder);						
									if (usedPhysDesc and string.len(unrecognisedName) > 24) then
										unrecognisedName = string.sub(unrecognisedName, 1, 21).."..."
									end;						
									holderName = "["..unrecognisedName.."]"
								end;
								if (!v3 == phoneHolder) then
									Clockwork.chatBox:SendColored(v3, Color(0, 230, 255, 255), "[SPEAKER: "..holderName.."] "..speakerName..": "..info.text)
								else
									Clockwork.chatBox:SendColored(hearingPhone, Color(0, 230, 255, 255), "[PHONE] "..speakerName..": "..info.text)
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;

-- Called after a player spawns.
function PLUGIN:PostPlayerSpawn(player, lightSpawn, changeClass, firstSpawn)
	player:SetCharacterData("PhoneRinging", nil)
	player:SetCharacterData("PhoneCalling", nil)
	player:SetCharacterData("PhoneCall", nil)
	player:SetNWBool("speakerphone", false)
end;

-- Called each tick.
function PLUGIN:Tick()
	for k, v in ipairs( _player.GetAll() ) do
		if (v:GetCharacterData("PhoneRinging") or v:GetCharacterData("PhoneCalling")) then
			local curTime = CurTime();
			
			if (!self.nextRingEmit) then
				self.nextRingEmit = curTime + 1;
			end;
			
			if ( (curTime >= self.nextRingEmit) ) then
				self.nextRingEmit = nil;
				if (v:GetCharacterData("PhoneRinging")) then
					v:EmitSound("buttons/button3.wav", 50)
				else
					v:EmitSound("buttons/button16.wav", 50)
				end;
			end;
		end;
	end;
end;