--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Allen Driver";
ITEM.model = "models/props_c17/trappropeller_lever.mdl";
ITEM.uniqueID = "allen_driver";
ITEM.weight = 0.2;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "A beautiful Screwdriver.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();