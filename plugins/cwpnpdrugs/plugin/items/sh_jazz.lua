--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Jazz";
ITEM.cost = 12;
ITEM.model = "models/props_c17/TrapPropeller_Lever.mdl";
ITEM.weight = 0.1;
ITEM.access = "v";
ITEM.useText = "Inject";
ITEM.category = "Drugs";
ITEM.business = false;
ITEM.description = "Originally developed for combat pilots, Jazz has moved to the streets. A moderate and common injectable drug, makes you feel good and ready to rock. With no side effects, this is commonly used by solos to try and counter the stresses of an upcoming combat and stay alert during the fight.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

-- Called when the item's functions should be edited.
function ITEM:OnEditFunctions(functions)
	if (Schema:PlayerIsCombine(Clockwork.Client, false)) then
		for k, v in pairs(functions) do
			if (v == "Drink") then functions[k] = nil; end;
		end;
	end;
end;

ITEM:Register();