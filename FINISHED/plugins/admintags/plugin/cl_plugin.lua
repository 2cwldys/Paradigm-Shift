local PLUGIN = PLUGIN;

--Disables ability to see IC and LOOC chat when in ghost mode to prevent metagaming.
function PLUGIN:ChatBoxAdjustInfo(info)
	local adminTable = {
		["operator"] = "[O]", ["admin"] = "[A]", ["superadmin"] = "[SA]"
	}
	if (info.class == "looc" or info.class == "ooc") then
		for k, v in pairs (adminTable) do	
			if (info.speaker:IsUserGroup(k)) then
				info.name = v.." "..info.name;
			end;
		end;
	end;
end;