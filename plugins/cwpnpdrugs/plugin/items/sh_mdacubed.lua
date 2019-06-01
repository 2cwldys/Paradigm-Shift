--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "MDA Cubed";
ITEM.cost = 8;
ITEM.model = "models/props_lab/jar01b.mdl";
ITEM.weight = 0.1;
ITEM.access = "v";
ITEM.useText = "Consume";
ITEM.category = "Drugs";
ITEM.business = false;
ITEM.description = "[Illegal] A bitter pink-white pill. This euphoria inducing aphrodisiac causes the user to feel a one-ness for all things, an overwhelming love for life, a rejection of conventional sexual mores, and a blissful desire to copulate with the nearest object/person. Users are known to have no regard for sexual orientation and make love to everything from family to furniture.";

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