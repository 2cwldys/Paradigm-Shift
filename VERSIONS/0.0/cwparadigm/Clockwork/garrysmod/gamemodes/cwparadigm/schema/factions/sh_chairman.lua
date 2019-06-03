--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Guinan Corporation Chairman");

FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.material = "paradigmrp/factions/GuinanCorporation";
FACTION.models = {
	male = {
		"models/suits/male_01_closed_coat_tie.mdl",
		"models/suits/male_02_closed_coat_tie.mdl",
		"models/suits/male_03_closed_coat_tie.mdl",
		"models/suits/male_04_closed_coat_tie.mdl",
		"models/suits/male_05_closed_coat_tie.mdl",
		"models/suits/male_06_closed_coat_tie.mdl",
		"models/suits/male_08_closed_coat_tie.mdl",
		"models/suits/male_09_closed_coat_tie.mdl",
		"models/suits/male_07_closed_coat_tie.mdl"
	};
};

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (faction.name != FACTION_CIVILIAN) then
		return false;
	end;
end;

FACTION_CHAIRMAN = FACTION:Register();