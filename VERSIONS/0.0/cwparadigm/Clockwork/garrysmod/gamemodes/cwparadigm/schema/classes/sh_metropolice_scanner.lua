--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Guinan Scanner");
	CLASS.color = Color(50, 100, 150, 255);
	CLASS.factions = {FACTION_GCCOP};
	CLASS.description = "A guinan city scanner, it does the recon work so you don't have to.";
	CLASS.defaultPhysDesc = "Making beeping sounds";
CLASS_MPS = CLASS:Register();