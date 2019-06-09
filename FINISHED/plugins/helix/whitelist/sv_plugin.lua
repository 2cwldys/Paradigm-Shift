local PLUGIN = PLUGIN

wlPlayers = {
  ["STEAM_0:0:5003092"] = true, --Wishbone
  ["STEAM_0:1:33635060"] = true, --2c
  ["STEAM_0:0:37156032"] = true, --Hotaru
  ["STEAM_0:1:48196871"] = true, --CodeFlare
}

function PLUGIN:SaveWhitelist()
  local data = util.TableToJSON(wlPlayers)
  file.Write("whitelist.txt", data)
end

function PLUGIN:LoadWhitelist()
  local data = file.Read("whitelist.txt", "DATA")

  if data then
    wlPlayers = util.JSONToTable(data)
  else
    file.Write("whitelist.txt", "{}")
  end
end

function PLUGIN:WLAddSteamID(steamid)
  wlPlayers[steamid] = true
end

function PLUGIN:WLRemoveSteamID(steamid)
  wlPlayers[steamid] = nil
end
