--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Black Lace";
ITEM.cost = 50;
ITEM.model = "models/props_c17/TrapPropeller_Lever.mdl";
ITEM.weight = 0.1;
ITEM.access = "v";
ITEM.useText = "Inject";
ITEM.category = "Drugs";
ITEM.business = false;
ITEM.description = "[Illegal] A high powered version of Dorph. The user feels absolutely no pain but is calm, cool and collected. Like temporary psychopathy mixed with painkillers to turn anyone into a confident cold-blooded killer. Euphoric effects mean the user believes they can win any fight. After every use, the user gets that much closer to permanent psychopathy.";

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