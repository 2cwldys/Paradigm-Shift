function PLUGIN:OnContextMenuOpen()
	local config = Clockwork.config:Get("context_menu_always");
	local configValue = config:Get();

	if (configValue) then
		Clockwork.BaseClass:OnContextMenuOpen();

		return true;
	end;
end;

function PLUGIN:OnContextMenuClose()
	local config = Clockwork.config:Get("context_menu_always");
	local configValue = config:Get();

	if (configValue) then
		Clockwork.BaseClass:OnContextMenuClose();

		return true;
	end;
end;
