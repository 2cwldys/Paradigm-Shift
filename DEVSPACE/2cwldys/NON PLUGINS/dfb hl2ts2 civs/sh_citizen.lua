--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Citizen");

FACTION.useFullName = true;
FACTION.models = {
	female = {
		"models/humans/rajio/female_01.mdl",
		"models/humans/rajio/female_02.mdl",
		"models/humans/rajio/female_03.mdl",
		"models/humans/rajio/female_04.mdl",
		"models/humans/rajio/female_05.mdl",
		"models/humans/rajio/female_06.mdl",
		"models/humans/rajio/female_07.mdl",
		"models/humans/rajio/female_08.mdl",
		"models/humans/rajio/female_09.mdl",
		"models/humans/rajio/female_10.mdl",
		"models/humans/rajio/female_11.mdl",
		"models/humans/rajio/female_12.mdl",
		"models/humans/rajio/female_13.mdl",
		"models/humans/rajio/female_14.mdl",
		"models/humans/rajio/female_16.mdl",
		"models/humans/rajio/female_17.mdl",
		"models/humans/rajio/female_18.mdl",
		"models/humans/rajio/female_19.mdl",
		"models/humans/rajio/female_20.mdl",
		"models/humans/rajio/female_21.mdl",
	},
	male = {
		"models/humans/rajio/male_01.mdl",
		"models/humans/rajio/male_02.mdl",
		"models/humans/rajio/male_03.mdl",
		"models/humans/rajio/male_04.mdl",
		"models/humans/rajio/male_05.mdl",
		"models/humans/rajio/male_06.mdl",
		"models/humans/rajio/male_07.mdl",
		"models/humans/rajio/male_08.mdl",
		"models/humans/rajio/male_09.mdl",
		"models/humans/rajio/male_10.mdl",
		"models/humans/rajio/male_11.mdl",
		"models/humans/rajio/male_12.mdl",
		"models/humans/rajio/male_13.mdl",
		"models/humans/rajio/male_14.mdl",
		"models/humans/rajio/male_15.mdl",
		"models/humans/rajio/male_16.mdl",
		"models/humans/rajio/male_18.mdl",
		"models/humans/rajio/male_19.mdl",
		"models/humans/rajio/male_20.mdl",
		"models/humans/rajio/male_21.mdl",
		"models/humans/rajio/male_22.mdl",
		"models/humans/rajio/male_23.mdl",
		"models/humans/rajio/male_26.mdl",
	};
};

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (Schema:PlayerIsCombine(player)) then
		if (name) then
			local models = self.models[ string.lower( player:QueryCharacter("gender") ) ];
			
			if (models) then
				player:SetCharacterData("model", models[ math.random(#models) ], true);
				
				Clockwork.player:SetName(player, name, true);
			end;
		else
			return false, "You need to specify a name as the third argument!";
		end;
	end;
end;

FACTION_CITIZEN = FACTION:Register();