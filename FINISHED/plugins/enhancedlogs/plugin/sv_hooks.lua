local PLUGIN = PLUGIN;

-- Called when chat box info should be adjusted.
function PLUGIN:ChatBoxAdjustInfo(info)
	if (info.class == "ic") then
		Clockwork.kernel:PrintLog(LOGTYPE_GENERIC, info.speaker:Name().." says: \""..info.text.."\"");
	elseif (info.class == "looc") then
		Clockwork.kernel:PrintLog(LOGTYPE_GENERIC, "[LOOC] "..info.speaker:Name()..": "..info.text);
	end;
end;