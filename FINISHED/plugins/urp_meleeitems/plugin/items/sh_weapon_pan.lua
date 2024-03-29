--[[
	Screw your green text!
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Pan";
	ITEM.cost = 200;
	ITEM.model = "models/weapons/hl2meleepack/w_pan.mdl";
	ITEM.weight = 2;
	ITEM.access = "I";
	ITEM.uniqueID = "weapon_hl2pan";
	ITEM.business = true;
	ITEM.isMeleeWeapon = true;
	ITEM.description = "A rusty old pan.";
	ITEM.category = "Melee";
	ITEM.spawncategory = 7;
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();