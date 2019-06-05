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
  local check = cwWhitelist:CheckSteamID(steamid)

  if not check then
    return false, "Sorry this is a whitelist only server. You can apply at https://discord.gg/vqbmUdp"
  end
end
