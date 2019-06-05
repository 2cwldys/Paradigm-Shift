local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

-- Called just after the background blurs have been drawn.
function PLUGIN:PostDrawBackgroundBlurs()
	if (!self.ready) then		
		self:PerformIntro();
	end;
end;

-- Called when the score board should be drawn.
function PLUGIN:ShouldCharacterMenuBeCreated()
	if (!self.ready) then
		return false;
	end;
end;