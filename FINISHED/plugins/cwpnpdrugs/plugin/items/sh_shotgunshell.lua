--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Shotgun Shell";
ITEM.cost = 10;
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.weight = 0.1;
ITEM.access = "v";
ITEM.useText = "Consume";
ITEM.category = "Drugs";
ITEM.business = false;
ITEM.description = "[Illegal] A shotgun shell filled with a special mix of powder drugs instead of buckshot. Users feel energised, confident, and horny. Sane people unscrew the top and inhale the powder, but you're not a pussy are you? Load it into a shotgun of your choice and fire it down your throat choombata.";

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