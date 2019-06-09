--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");
ITEM.name = "Beer";
ITEM.uniqueID = "roofie_b";
ITEM.cost = 7;
ITEM.model = "models/props_junk/garbage_glassbottle003a.mdl";
ITEM.weight = 0.7;
ITEM.business = false;
ITEM.attributes = {Strength = 2};
ITEM.description = "A glass bottle filled with liquid, it has a funny smell.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:GiveItem(Clockwork.item:CreateInstance("empty_bottle"));
	Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 180);
	Clockwork.player:Notify(player, "You have been drugged!");
end;

ITEM:Register();