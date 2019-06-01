--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Yellow Rot Disease";
ITEM.cost = 0;
ITEM.model = "models/props_c17/TrapPropeller_Lever.mdl";
ITEM.weight = 0.1;
ITEM.access = "v";
ITEM.useText = "Contract";
ITEM.category = "Disease";
ITEM.business = false;
ITEM.description = "A disease bringing both painful pus-filled sores and an incredibly itchy rash in the infected area. Transferred by even the most basic of physical contact (The sores release the infectious yellow pus), this disease leaks through clothes and will spread across the entire body in just 42 hours. An area infected with the disease will cause severe and constant pain when constantly chaffed against clothes. Use “/disease” to prove you have the disease (or that you do not).";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:UpdateAttribute(ATB_YELLOWROT, 1);
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