--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");
ITEM.name = "Whiskey";
ITEM.uniqueID = "roofie_w";
ITEM.cost = 14;
ITEM.model = "models/props_junk/garbage_glassbottle002a.mdl";
ITEM.weight = 1.3;
ITEM.business = false;
ITEM.attributes = {Stamina = 2};
ITEM.description = "A brown colored whiskey bottle, be careful!";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:GiveItem(Clockwork.item:CreateInstance("empty_bagged_bottle"));
	Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 180);
	Clockwork.player:Notify(player, "You have been drugged!");
end;

ITEM:Register();