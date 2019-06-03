--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Mecklenburg Police");

FACTION.isCombineFaction = true;
FACTION.whitelist = true;
FACTION.material = "paradigmrp/factions/GuinanCorporation";
FACTION.models = {
	female = {"models/dpfilms/metropolice/c08cop_female.mdl"},
	male = {"models/dpfilms/metropolice/c08cop.mdl"}
};

-- Called when a player's model should be assigned for the faction.
function FACTION:GetModel(player, character)
	if (character.gender == GENDER_MALE) then
		return self.models.male[1];
	else
		return self.models.female[1];
	end;
end;

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
		Clockwork.player:SetName( player, self:GetName( player, player:GetCharacter() ) );
	end;
	
	if (player:QueryCharacter("gender") == GENDER_MALE) then
		player:SetCharacterData("model", self.models.male[1], true);
	else
		player:SetCharacterData("model", self.models.female[1], true);
	end;
end;

FACTION_GCCOP = FACTION:Register();