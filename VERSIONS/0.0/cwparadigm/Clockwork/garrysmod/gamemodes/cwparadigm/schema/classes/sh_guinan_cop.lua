--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Mecklenburg Police");
	CLASS.color = Color(50, 100, 150, 255);
	CLASS.wages = 20;
	CLASS.factions = {FACTION_GCCOP};
	CLASS.isDefault = true;
	CLASS.wagesName = "Supplies";
	CLASS.description = "A mecklenburg police unit serving as local Civil Protection.";
	CLASS.defaultPhysDesc = "Wearing a metropolice hardsuit, with radio and stunbaton.";
CLASS_MPU = CLASS:Register();