--[[
	Screw your green text!
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Hook";
	ITEM.cost = 200;
	ITEM.model = "models/weapons/hl2meleepack/w_hook.mdl";
	ITEM.weight = 2;
	ITEM.access = "I";
	ITEM.uniqueID = "weapon_hl2hook";
	ITEM.business = true;
	ITEM.isMeleeWeapon = true;
	ITEM.description = "A rusty old hook.";
	ITEM.category = "Melee";
	ITEM.spawncategory = 7;
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();