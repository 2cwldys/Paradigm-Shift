--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New();
ITEM.name = "Heavy Armor Sleeves";
ITEM.cost = 350;
ITEM.model = "models/weapons/w_suitcase_passenger.mdl";
ITEM.weight = 0.2;
ITEM.category = "Armor";
ITEM.business = false;
ITEM.description = "Defense [3] Protects [Shoulder/Upperarm, Elbow/Forearm] against [9mm, 10mm, 5.56mm, 7.76mm] [Non-concealable] [Illegal]";
 -- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;
ITEM:Register();