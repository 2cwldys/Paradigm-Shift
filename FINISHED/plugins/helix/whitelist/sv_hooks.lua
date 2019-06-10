local PLUGIN = PLUGIN

function PLUGIN:Initialize()
  PLUGIN:LoadWhitelist()
end

function PLUGIN:ShutDown()
  PLUGIN:SaveWhitelist()
end

function PLUGIN:CheckPassword(steamid)
  local steamid32 = util.SteamIDFrom64(steamid)
  local check = wlPlayers[steamid32]
  
  print("SteamID " .. util.SteamIDFrom64(steamid) .. " Tried to connect" )
  
  if check == true then
    return true
  else
    return false, "Sorry this is a whitelist only server. You can apply @ https://discord.gg/vqbmUdp"
  end
end
