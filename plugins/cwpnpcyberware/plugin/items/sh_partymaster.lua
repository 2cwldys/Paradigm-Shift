--[[
        � 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New();
ITEM.name = "Nu-Tek Partymaster";
ITEM.cost = 50;
ITEM.model = "models/Items/battery.mdl";
ITEM.weight = 0;
ITEM.useText = "Activate";
ITEM.category = "C-Implants";
ITEM.business = false;
ITEM.description = "Nullifies the effects of alcohol and reduces the effects of most drugs, medicines, and poisons to be nothing more than a subtle irregularity. Alcohol is toggled off and on seperate from the other resistances which are grouped together in a single toggle.";
 
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