--[[
        � 2016 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
ITEM.name = "Cigarette";
ITEM.cost = 10;
ITEM.model = "models/mordeciga/mordes/pachkacig.mdl";
ITEM.weight = 0.2;
ITEM.uniqueID = "weapon_ciga_cheap";
ITEM.description = "A small pack of cigarettes.'";
ITEM.isAttachment = true;
ITEM.hasFlashlight = false;
		
ITEM.loweredOrigin = Vector(3, 0, -4);
ITEM.loweredAngles = Angle(0, 45, 0);
ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
ITEM.attachmentOffsetVector = Vector(-4, 4, 4);

ITEM:Register();