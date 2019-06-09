local PLUGIN = PLUGIN
PLUGIN.name = "Whitelist"
PLUGIN.author = "Wishbone"
PLUGIN.desc = "Whitelist for your server."

ix.config.Add("wlActive", true, "Toggles whitelist on or off.", nil, {
	category = "Whitelist"
})

ix.util.Include("sv_plugin.lua")
ix.util.Include("sv_hooks.lua")
ix.util.Include("sv_commands.lua")
