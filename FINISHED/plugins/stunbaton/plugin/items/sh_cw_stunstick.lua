--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Stun Baton";
	ITEM.cost = 150;
	ITEM.model = "models/weapons/w_stunbaton.mdl";
	ITEM.weight = 0.3;
	ITEM.access = "V";
	ITEM.uniqueID = "cw_stunstick";
	ITEM.business = false;
	ITEM.description = "A standard issue stunbaton, with electric prods at each corner, issued to the most common of Civil Protection. It has a voltage dial.";
    ITEM.IsMeleeWeapon = function() return true end;
	ITEM.attachment = true;
ITEM:Register();