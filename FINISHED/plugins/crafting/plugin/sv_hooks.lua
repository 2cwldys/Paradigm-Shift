
local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

function PLUGIN:EntityTakeDamage(entity, damgeInfo)
	if (entity:GetClass() == "cw_item") then
		local itemTable = entity:GetItemTable();
		if (itemTable and itemTable("craftingStation")) then
			damageInfo:ScaleDamage(0);
		end;
	end;
end;

function PLUGIN:ClockworkInitialized()
	self.recipe:Initialize();
end;