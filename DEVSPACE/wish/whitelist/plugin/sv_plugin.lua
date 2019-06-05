local whitelist = {}

function cwWhitelist:SaveWhiteList()
  local data = util.TableToJSON(whitelist) --Turn our table to a JSON string to be stored.

  file.Write("whitelist.txt", data)
end

function cwWhitelist:LoadWhiteList()
  local data = file.Read("whitelist.txt", "DATA")

  if data then
    whitelist = util.JSONToTable(data)
  else
    file.Write("whitelist.txt", "placeholder")
  end
end

function cwWhitelist:AddSteamID(steamid)
  whitelist[steamid] = true
end

function cwWhitelist:RemoveSteamID(steamid)
  whitelist[steamid] = nil
end

function cwWhitelist:CheckSteamID(steamid)
  local steamid32 = util.SteamIDFrom64(steamid)
  local check = whitelist[steamid32]

  return check --This will return a boolean value.
end
