--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Mecklenburg Police");

FACTION.isCombineFaction = true;
FACTION.whitelist = true;
FACTION.material = "paradigmrp/factions/GuinanCorporation";
FACTION.models = {
	female = {"models/player/kerry/thalia_sheriff_02.mdl, models/player/kerry/f_sheriff_04.mdl, models/player/kerry/f_sheriff_03.mdl"},
	male = {"models/kerry/detective/male_09.mdl, models/kerry/detective/male_08.mdl, models/kerry/detective/male_07.mdl, models/kerry/detective/male_06.mdl, models/kerry/detective/male_05.mdl, models/kerry/detective/male_04.mdl, models/kerry/detective/male_03.mdl, models/kerry/detective/male_02.mdl, models/kerry/detective/male_01.mdl"}
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