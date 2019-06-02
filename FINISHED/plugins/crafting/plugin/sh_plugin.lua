local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

Clockwork.kernel:IncludePrefixed("cl_hooks.lua");
Clockwork.kernel:IncludePrefixed("cl_plugin.lua");
Clockwork.kernel:IncludePrefixed("sv_hooks.lua");
Clockwork.kernel:IncludePrefixed("sv_plugin.lua");

Clockwork.option:SetKey("name_crafting", "Crafting");
Clockwork.option:SetKey("description_crafting", "Combine various items to make new items.");

Clockwork.config:ShareKey("crafting_menu");