--[[
	© 2011 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Manhack";
	ITEM.cost = 120;
	ITEM.classes = {CLASS_EMP, CLASS_EOW};
	ITEM.category = "Deployables";
	ITEM.model = "models/manhack.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "cw_hax";
	ITEM.weaponClass = "cw_hax";
	ITEM.business = true;
	ITEM.description = "A small robotic device, it has several sharp blades on it.";
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 90, -90);
	ITEM.attachmentOffsetVector = Vector(-5, 5, 12);
	
	-- A function to get whether the attachment is visible.
	function ITEM:GetAttachmentVisible(player, entity)
		if player:HasWeapon(self("weaponClass")) then
			return true;
		end;
	end;
ITEM:Register();