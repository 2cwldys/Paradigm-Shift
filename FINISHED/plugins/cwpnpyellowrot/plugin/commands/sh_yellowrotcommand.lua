--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]
local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("YellowRot");
COMMAND.tip = "Proves that you either have or do not have Yellow Rot to nearby players.";

-- Called when the command has been run.
function COMMAND:OnRun(player)
	local attribute = Clockwork.attributes:Fraction(player, ATB_YELLOWROT, 10);
	Clockwork.chatBox:AddInRadius(player, "roll", "has yellow rot: ".. attribute .." 1=Yes, 0=No ",
		player:GetPos(), Clockwork.config:Get("talk_radius"):Get() );
end;

COMMAND:Register();