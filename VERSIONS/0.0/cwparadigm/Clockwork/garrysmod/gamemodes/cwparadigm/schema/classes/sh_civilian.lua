--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Civilian");
	CLASS.color = Color(150, 125, 100, 255);
	CLASS.factions = {FACTION_CIVILIAN};
	CLASS.isDefault = true;
	CLASS.wagesName = "Wages";
	CLASS.description = "An anyday, ordinary civilian.";
	CLASS.defaultPhysDesc = "Wearing casual clothes.";
CLASS_CITIZEN = CLASS:Register();