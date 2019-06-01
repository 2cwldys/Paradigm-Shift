function PLUGIN:PlayerCanUseDoor(player, door)
	if (player:GetSharedVar("tied") == 0 and player:HasItemByID("unit_id_card")) then
		return true;
	end;
end;

function PLUGIN:GetPlayerDefaultInventory(player, character, inventory)
	if (Schema:PlayerIsCombine(player) and !player:HasItemByID("unit_id_card")) then
		player:GiveItem(Clockwork.item:CreateInstance("unit_id_card"), true);
	end;
end;

scripted_ents.GetStored("cw_combinelock").t.ToggleWithChecks = function(lock, activator)
	local currentTime = CurTime();
	
	if (lock.nextUse and currentTime < lock.nextUse) then
		return;
	end;
	
	if (currentTime <= lock:GetDTFloat(1)) then
		return;
	end;
	
	if (currentTime <= lock:GetDTFloat(0)) then
		return;
	end;
	
	lock.nextUse = currentTime + 3;
	
	if (Schema:PlayerIsCombine(activator) or activator:GetFaction() == FACTION_ADMIN or activator:HasItemByID("unit_id_card")) then
		lock:Toggle();
	else
		lock:SetFlashDuration(3);
	end;
end;
