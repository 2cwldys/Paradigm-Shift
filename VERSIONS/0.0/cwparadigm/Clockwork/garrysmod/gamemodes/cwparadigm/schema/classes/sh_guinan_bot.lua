--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Guinan Bot");
	CLASS.color = Color(150, 50, 50, 255);
	CLASS.wages = 40;
	CLASS.factions = {FACTION_GCBOT};
	CLASS.wagesName = "Supplies";
	CLASS.description = "A bipedal service drone to the Guinan Corporation.";
	CLASS.defaultPhysDesc = "Single rectical, wearing kevlar vest.";
CLASS_OWS = CLASS:Register();