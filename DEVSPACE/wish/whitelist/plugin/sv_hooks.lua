--Server init
function cwWhitelist:ClockworkInitialized()
  cwWhitelist:LoadWhiteList()
end

--Server shutdown
function cwWhitelist:ShutDown()
  cwWhitelist:SaveWhiteList()
end

--Whitelist function
function cwWhitelist:CheckPassword(steamid)
  local steamid32 = util.SteamIDFrom64(steamid)
  local check = whitelist[steamid32]

  if check == true then
    return true
  else
    return false, "Sorry this is a whitelist only server. You can apply at https://discord.gg/vqbmUdp"
  end
end
