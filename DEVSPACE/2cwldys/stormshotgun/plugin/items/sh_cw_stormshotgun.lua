-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "ASR-5 'Storm' Shotgun";

    ITEM.cost = 15000;

    ITEM.model = "models/weapons/w_shotgun.mdl";

    ITEM.weight = 9;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_storm";

    ITEM.business = true;

    ITEM.description = "A pulse shotgun renown for it's additional burst fire mode. This one is manufactured by the Guinan Corporation.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();