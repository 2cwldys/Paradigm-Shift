function PLUGIN:EntityEmitSound(soundData)
	if (!soundData.Entity:IsPlayer()) then
		return;
	end;

	local soundName = soundData.OriginalSoundName;
	local blockedSuffixes = { ".stepleft", ".stepright" };
	
	for k, v in pairs(blockedSuffixes) do
		if (soundName:sub(-#v) == v) then
			return false;
		end;
	end;
end;
