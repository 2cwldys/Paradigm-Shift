--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Hypercoagulin";
ITEM.cost = 25;
ITEM.model = "models/props_c17/TrapPropeller_Lever.mdl";
ITEM.weight = 0.1;
ITEM.access = "v";
ITEM.useText = "Inject";
ITEM.category = "Drugs";
ITEM.business = false;
ITEM.description = "Injected into a patient with a bleeding wound,causing instant coagulation and a cessation of bleeding within seconds.";

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