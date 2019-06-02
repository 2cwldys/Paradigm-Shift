--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New();
ITEM.name = "One-Shot special";
ITEM.cost = 150;
ITEM.model = "models/Items/battery.mdl";
ITEM.weight = 0;
ITEM.useText = "Activate";
ITEM.category = "C-Cyber Fingers";
ITEM.business = false;
ITEM.description = "[Illegal] Bruising [1] This weapon can be fired alongside another action (such as drawing a weapon). Chambered in 5mm, it can be cracked open and reloaded. No you cannot fire 10 of these at a time like a shotgun.";
 
-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
        if (player:Alive() and !player:IsRagdolled()) then
                if (!self.CanPlayerWear or self:CanPlayerWear(player, itemEntity) != false) then
                        player:WearAccessory(self);
                        return true;
                end;
        else
                Clockwork.player:Notify(player, "You cannot do this action at the moment!");
        end;
       
        return false;
end;
 
-- Called when a player wears the accessory.
function ITEM:OnWearAccessory(player, bIsWearing)
        if (bIsWearing) then
        else
        end;
end;
 
-- Called to get whether a player has the item equipped.
function ITEM:HasPlayerEquipped(player, bIsValidWeapon)
        if (CLIENT) then
                return Clockwork.player:IsWearingAccessory(self);
        else
                return player:IsWearingAccessory(self);
        end;
end;
 
-- Called when a player has unequipped the item.
function ITEM:OnPlayerUnequipped(player, extraData)
        player:RemoveAccessory(self);
end;
 
-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
        if (player:IsWearingAccessory(self)) then
                Clockwork.player:Notify(player, "You cannot drop this while you are wearing it!");
                return false;
        end;
end;
 
ITEM:Register();

local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("OneShotSpecial");
COMMAND.tip = "Rolls 1d10 + your Firearms stat. -20% Accuracy. This can be used alongside another action such as drawing a weapon, but not alongside another attack. Requires: One-Shot Special";

-- Called when the command has been run.
function COMMAND:OnRun(player)
 
				bParts = {}
                bParts[1] = "Left Hand/Wrist"
                bParts[2] = "Left Elbow/Forearm"
                bParts[3] = "Left Shoulder/Upper Arm"
                bParts[4] = "Left Hip/Thigh"
                bParts[5] = "Left Knee/Lower Leg"
                bParts[6] = "Left Ankle/Foot"
                bParts[7] = "Head/Neck"
                bParts[8] = "Upper Chest"
                bParts[9] = "Left Center Chest"
                bParts[10] = "Right Center Chest"
                bParts[11] = "Upper Abdomen"
                bParts[12] = "Lower Abdomen"
                bParts[13] = "Right Hand/Wrist"
                bParts[14] = "Right Elbow/Forearm"
                bParts[15] = "Right Shoulder/Upper Arm"
                bParts[16] = "Right Hip/Thigh"
                bParts[17] = "Right Knee/Lower Leg"
                bParts[18] = "Right Ankle/Foot"
				
		local number = 10;
		local attribute = Clockwork.attributes:Fraction(player, ATB_FIREARMS, 10);
		local cyberware = Clockwork.attributes:Fraction(player, ATB_CFIREARMS, 10)
		Clockwork.chatBox:AddInRadius(player, "roll", " has rolled ".. math.ceil((math.random(1, number) + attribute + cyberware)*0.80) .. " for One-Shot Special at " .. bParts[math.random(1, 18)], 
			player:GetPos(), Clockwork.config:Get("talk_radius"):Get() * 2)
end

COMMAND:Register();