local cwHacks = cwHacks;

function PLUGIN:PlayerCharacterLoaded(player)
	-- This is to make sure MPF whom connect/change chars don't get attacked by Manhacks that have been deployed.
	for k, v in ipairs( ents.FindByClass("npc_manhack") ) do
		if (Schema:PlayerIsCombine(player) or  player:GetFaction() == FACTION_ADMIN) then
			v:AddEntityRelationship(player, D_LI, 99 )
		else
			v:AddEntityRelationship(player, D_HT, 99 )
		end;
	end;
end;