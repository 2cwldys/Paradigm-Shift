--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Guinan Corporation Bots");

FACTION.isCombineFaction = true;
FACTION.whitelist = true;
FACTION.material = "paradigmrp/factions/GuinanCorporation";
FACTION.models = {
	female = {"models/blacklight/mars_f.mdl"},
	male = {"models/blacklight/mars_f.mdl"}
};

-- Called when a player's name should be assigned for the faction.
function FACTION:GetName(player, character)
	local unitID = math.random(1, 99999);
	
	return "GC:ENFORCER-"..Clockwork.kernel:ZeroNumberToDigits(unitID, 5);
end;

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
	if (faction.name == FACTION_GCCOP) then
		Clockwork.player:SetName(player, string.gsub(player:QueryCharacter("name"), ".+(%d%d%d%d%d)", "OTA-ECHO.OWS-%1"), true);
	else
		Clockwork.player:SetName(player, self:GetName( player, player:GetCharacter() ), true);
	end;
	
	if (player:QueryCharacter("gender") == GENDER_MALE) then
		player:SetCharacterData("model", self.models.male[1], true);
	else
		player:SetCharacterData("model", self.models.female[1], true);
	end;
end;

FACTION_GCBOT = FACTION:Register();