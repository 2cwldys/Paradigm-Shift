local PLUGIN = PLUGIN
local allowed = {
    [""] = true,
    [""] = true,
    [""] = true,
}

function PLUGIN:CheckPassword(steamid)
  if not allowed[steamid] then
    return false, "#GameUI_ServerRejectLANRestrict"
  end
end
