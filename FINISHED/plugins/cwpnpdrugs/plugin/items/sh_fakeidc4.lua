--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New();
ITEM.name = "Fake Citcard C-4";
ITEM.cost = 250;
ITEM.model = "models/props_lab/clipboard.mdl";
ITEM.weight = 0.2;
ITEM.category = "Citcard";
ITEM.business = false;
ITEM.description = "A fake Citcard with a C-4 citizenship rank. You may choose the name and/or residence.";
 -- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;
ITEM:Register();