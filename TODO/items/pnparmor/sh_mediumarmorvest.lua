--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New();
ITEM.name = "Medium Armor Vest";
ITEM.cost = 150;
ITEM.model = "models/weapons/w_suitcase_passenger.mdl";
ITEM.weight = 0.2;
ITEM.category = "Armor";
ITEM.business = false;
ITEM.description = "Defense [2] Protects [Chest, Abdomen] against [9mm, 10mm, 5.5mm] [Non-concealable] [Legal: C-1]";
 -- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;
ITEM:Register();