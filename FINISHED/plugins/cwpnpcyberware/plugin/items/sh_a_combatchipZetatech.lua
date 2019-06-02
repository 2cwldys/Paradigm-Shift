--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Zetatech Combat Chip";
ITEM.cost = 75;
ITEM.model = "models/Items/battery.mdl";
ITEM.weight = 0;
ITEM.useText = "Activate";
ITEM.category = "C-Generic Implants";
ITEM.business = false;
ITEM.description = "[Illegal] +1 Firearms, chipware to artificially enhance combat ability and simulate training.";

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
	player:BoostAttribute(self.name, ATB_CFIREARMS, 1); 
	else 
	player:BoostAttribute(self.name, ATB_CFIREARMS, 0);
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