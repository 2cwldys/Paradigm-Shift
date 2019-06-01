--[[
        � 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New();
ITEM.name = "Rosario Mace Sprayer";
ITEM.cost = 75;
ITEM.model = "models/Items/battery.mdl";
ITEM.weight = 0;
ITEM.useText = "Activate";
ITEM.category = "C-Cyber Fingers";
ITEM.business = false;
ITEM.description = "[Legal: C-1] Once per combat, single target. User's finger sprays mace to blind the opponent. Note: Requires respiratory filters to be blocked, not cyberoptics.";
 
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

local COMMAND = Clockwork.command:New("MaceSprayer");
COMMAND.tip = "Rolls 1d10 + the average of your Melee and Firearm stats, on hit: Stream of mace spray hits the targets face. Requires: Mace Sprayer";

-- Called when the command has been run.
function COMMAND:OnRun(player)
	local number = 10;
	local attribute = Clockwork.attributes:Fraction(player, ATB_MELEE, 10) / 2;
	local attribute1 = Clockwork.attributes:Fraction(player, ATB_FIREARMS, 10) / 2;
	local cyberware = Clockwork.attributes:Fraction(player, ATB_CMELEE, 10) / 2;
	local cyberware1 = Clockwork.attributes:Fraction(player, ATB_CFIREARMS, 10) / 2;
	Clockwork.chatBox:AddInRadius(player, "roll", "has rolled ".. math.ceil((math.random(1, number) + attribute + attribute1 + cyberware + cyberware1)*1.25) .." for Mace Sprayer. ",
		player:GetPos(), Clockwork.config:Get("talk_radius"):Get() * 2);
end;

COMMAND:Register();