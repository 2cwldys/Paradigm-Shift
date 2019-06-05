--put your steamid64 here.
local allowed = {
    [""] = true,
    [""] = true,
    [""] = true,
}

hook.Add( "CheckPassword", "SERVER_WHITELIST", function( steamID64 )
    if not allowed[steamID64] then
        return false, "#GameUI_ServerRejectLANRestrict"
    end
end )
