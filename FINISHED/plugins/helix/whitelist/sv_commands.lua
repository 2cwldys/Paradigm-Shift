local PLUGIN = PLUGIN

ix.command.Add("WLAdd", {
	description = "Add someone to via whitelist",
	adminOnly = true,
	arguments = ix.type.text,
	OnRun = function(self, client, steamid)
    PLUGIN:WLAddSteamID(steamid)
    return "Added SteamID "..steamid.." to the whitelist."
  end
})

ix.command.Add("WLRemove", {
	description = "Remove someone from via whitelist",
	adminOnly = true,
	arguments = ix.type.text,
	OnRun = function(self, client, steamid)
    PLUGIN:WLRemoveSteamID(steamid)
    return "Removed SteamID "..steamid.." from the whitelist."
  end
})

ix.command.Add("WLSave", {
	description = "Save the whitelist.",
	adminOnly = true,
	OnRun = function(self, client, arguments)
    PLUGIN:SaveWhitelist()
    return "Saved whitelist"
  end
})
