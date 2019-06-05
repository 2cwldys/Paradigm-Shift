local PLUGIN = PLUGIN
local Clockwork = Clockwork

PLUGIN:SetGlobalAlias("cwWhitelist")

Clockwork.kernel:IncludePrefixed("sv_plugin.lua");
Clockwork.kernel:IncludePrefixed("sv_hooks.lua")
