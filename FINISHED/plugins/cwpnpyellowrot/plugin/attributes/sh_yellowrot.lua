--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ATTRIBUTE = Clockwork.attribute:New();
	ATTRIBUTE.name = "Yellow Rot";
	ATTRIBUTE.maximum = 10;
	ATTRIBUTE.uniqueID = "yellowrot";
	ATTRIBUTE.description = "Determines whether or not you have Yellow Rot";
	ATTRIBUTE.isOnCharScreen = false;
ATB_YELLOWROT = Clockwork.attribute:Register(ATTRIBUTE);