local PLUGIN = PLUGIN
PLUGIN.name = "Whitelist"
PLUGIN.author = "Wishbone"
PLUGIN.desc = "Whitelist for your server."

wlPlayers = {}

nut.config.add("wlActive", true, "Toggles whitelist on or off.", nil, {
	category = "Whitelist"
})

nut.command.add("wladd", {
	onRun = function(client, arguments)
    WLAddSteamID(arguments[1])
    client:notifyLocalized("Added SteamID")
  end
})

nut.command.add("wlremove", {
	onRun = function(client, arguments)
    WLRemoveSteamID(arguments[1])
    client:notifyLocalized("Removed SteamID")
  end
})

nut.command.add("wlsave", {
	onRun = function(client, arguments)
    SaveWhitelist()
    client:notifyLocalized("Saved Whitelist")
  end
})

function SaveWhitelist()
  local data = util.TableToJSON(wlPlayers)
  file.Write("whitelist.json", data)
end

function LoadWhitelist()
  local data = file.Read("whitelist.json", "DATA")

  if data then
    wlPlayers = util.JSONToTable(data)
  else
    file.Write("whitelist.json", "{}")
  end
end

function WLAddSteamID(steamid)
  wlPlayers[steamid] = true
end

function WLRemoveSteamID(steamid)
  wlPlayers[steamid] = nil
end

function PLUGIN:Initialize()
  LoadWhitelist()
end

function PLUGIN:ShutDown()
  SaveWhitelist()
end

function PLUGIN:CheckPassword()
  local steamid32 = util.SteamIDFrom64(steamid)
  local check = wlPlayers[steamid32]

  if check == true then
    return true
  else
    return false, "Sorry this is a whitelist only server. You can apply at https://discord.gg/vqbmUdp"
  end
end
