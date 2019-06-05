local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

Clockwork.kernel:IncludePrefixed("cl_intro.lua");
Clockwork.kernel:IncludePrefixed("cl_plugin.lua");
Clockwork.kernel:IncludePrefixed("cl_hooks.lua");

if (SERVER) then
	Clockwork.config:Add("intro_sound", "music/logotune.mp3", true);
else
	Clockwork.config:AddToSystem("Introduction sound", "intro_sound", "The sound to play during the custom introduction.");
	PLUGIN:WrapText();
end;

if (CLIENT) then
    -- Called when the menu's items should be destroyed.
    function PLUGIN:MenuItemsDestroy(menuItems)
        menuItems:Destroy("Plugin Center");
        menuItems:Destroy("Community");
    end;
end;