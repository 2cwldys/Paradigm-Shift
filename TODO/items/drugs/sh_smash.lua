--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Smash";
ITEM.cost = 8;
ITEM.model = "models/props_junk/PopCan01a.mdl";
ITEM.weight = 0.1;
ITEM.access = "v";
ITEM.useText = "Drink";
ITEM.category = "Drugs";
ITEM.business = false;
ITEM.description = "A fizzy yellow liquid in a can that makes you feel good and ready to party. Like alcohol, but better.";

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