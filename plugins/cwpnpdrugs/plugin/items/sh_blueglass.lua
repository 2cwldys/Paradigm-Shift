--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Blue Glass";
ITEM.cost = 10;
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.weight = 0.1;
ITEM.access = "v";
ITEM.useText = "Consume";
ITEM.category = "Drugs";
ITEM.business = false;
ITEM.description = "[Illegal] Originally developed as a biological weapon, the recreational drug Blue Glass became a hit on the street for it's strong hallucinogenic and paranoia inducing properties. Comes in a marked inhaler filled with a blue mist.";

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