whitelist = {
  ["STEAM_0:1:33635060"] = true,
}

function cwWhitelist:SaveWhiteList()
  print("whitelist being saved")
  local data = util.TableToJSON(whitelist) --Turn our table to a JSON string to be stored.

  file.Write("whitelist.json", data)
  print("whitelist saved")
end

function cwWhitelist:LoadWhiteList()
  local data = file.Read("whitelist.json", "DATA")

  if data then
    whitelist = util.JSONToTable(data)
  else
    file.Write("whitelist.json", "{}")
  end
end

function cwWhitelist:AddSteamID(steamid)
  whitelist[steamid] = true
end

function cwWhitelist:RemoveSteamID(steamid)
  whitelist[steamid] = nil
end
