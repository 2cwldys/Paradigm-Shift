local OWSFixes = OWSFixes
local Clockwork = Clockwork

function OWSFixes:Initialize()
	local CLASS = Clockwork.class:FindByID(CLASS_OWS)
	if CLASS then
		CLASS.isDefault = true
	end
end