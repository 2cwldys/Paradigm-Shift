--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New();
ITEM.name = "Spikehand";
ITEM.cost = 150;
ITEM.model = "models/Items/battery.mdl";
ITEM.weight = 0;
ITEM.useText = "Activate";
ITEM.category = "C-Cyberlimb Upgrades";
ITEM.business = false;
ITEM.description = "[Illegal] Destroying [4] A 8-inch spike deployable from the user's palm.";
 
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

local COMMAND = Clockwork.command:New("Spikehand");
COMMAND.tip = "Rolls 1d10 + your Melee stat. -25% Accuracy Requires: Spikehand";

-- Called when the command has been run.
function COMMAND:OnRun(player)

				bParts = {}
                bParts[1] = "Left Hand/Wrist"
                bParts[2] = "Left Elbow/Forearm"
                bParts[3] = "Left Shoulder/Upper Arm"
                bParts[4] = "Left Hip/Thigh"
                bParts[5] = "Left Elbow/Forearm"
                bParts[6] = "Right Elbow/Forearm"
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
                bParts[17] = "Lower Abdomen"
                bParts[18] = "Upper Abdomen"

				
	local number = 10;
	local attribute = Clockwork.attributes:Fraction(player, ATB_MELEE, 10);
	local cyberware = Clockwork.attributes:Fraction(player, ATB_CMELEE, 10)
	Clockwork.chatBox:AddInRadius(player, "roll", "has rolled "..math.ceil(math.random(1, number)*0.75 + attribute*0.75 + cyberware*0.75) .." for Spikehand at " .. bParts[math.random(1, 18)],
		player:GetPos(), Clockwork.config:Get("talk_radius"):Get() * 2);
end;

COMMAND:Register();