local PLUGIN = PLUGIN;

local Clockwork = Clockwork;

-- A function to make a player say text as a radio broadcast.
function PLUGIN:SayRadio(player, text, check, noEavesdrop)
	local eavesdroppers = {};
	local listeners = {};
	local canRadio = true;
	local info = {listeners = {}, noEavesdrop = noEavesdrop, text = text};
	
	Clockwork.plugin:Call("PlayerAdjustRadioInfo", player, info);
	
	for k, v in pairs(info.listeners) do
		if (type(k) == "Player") then
			listeners[k] = k;
		elseif (type(v) == "Player") then
			listeners[v] = v;
		end;
	end;
	
	if (!info.noEavesdrop) then
		for k, v in pairs(cwPlayer.GetAll()) do
			if (v:HasInitialized() and !listeners[v]) then
				if (v:GetShootPos():Distance(player:GetShootPos()) <= math.min(Clockwork.config:Get("talk_radius"):Get() / 3, 80)) then
					eavesdroppers[v] = v;
				end;
			end;
		end;
	end;
	
	if (check) then
		canRadio = Clockwork.plugin:Call("PlayerCanRadio", player, info.text, listeners, eavesdroppers);
	end;
	
	if (canRadio) then
		info = Clockwork.chatBox:Add(listeners, player, "radio", info.text);
		
		if (info and IsValid(info.speaker)) then
			Clockwork.chatBox:Add(eavesdroppers, info.speaker, "radio_eavesdrop", info.text);
			
			Clockwork.plugin:Call("PlayerRadioUsed", player, info.text, listeners, eavesdroppers);
		end;
	end;
end;