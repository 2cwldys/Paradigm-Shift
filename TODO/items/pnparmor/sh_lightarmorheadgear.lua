--[[
        � 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New();
ITEM.name = "Light Armor Headgear";
ITEM.cost = 50;
ITEM.model = "models/weapons/w_suitcase_passenger.mdl";
ITEM.weight = 0.2;
ITEM.category = "Armor";
ITEM.business = false;
ITEM.description = "Defense [1] Protects [Head] against [9mm] [Concealable] [Legal]";
 -- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;
ITEM:Register();