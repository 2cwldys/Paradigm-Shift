--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Sin";
ITEM.cost = 8;
ITEM.model = "models/props_lab/jar01b.mdl";
ITEM.weight = 0.1;
ITEM.access = "v";
ITEM.useText = "Consume";
ITEM.category = "Drugs";
ITEM.business = false;
ITEM.description = "[Illegal] Euphoric, horny, and energized all in one pill with no hangover... 20% chance to go on a psychotic killing frenzy and kill the first person you see without hesitation. Comes in small red gel pills";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	local number = 10;
	Clockwork.chatBox:AddInRadius(player, "roll", "has rolled ".. math.random(1, number) .." for taking sin. 1-2 causes rampage",
		player:GetPos(), Clockwork.config:Get("talk_radius"):Get() * 2);
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