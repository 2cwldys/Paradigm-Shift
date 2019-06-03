-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "CS-S Vectra";

    ITEM.cost = 25000;

    ITEM.model = "models/weapons/w_irifle.mdl";

    ITEM.weight = 10;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_vectra";

    ITEM.business = true;

    ITEM.description = "Energy weapon made for short to medium combat. Manufactured by the Guinan Corporation.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 45, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, 0, 0);

    ITEM.attachmentOffsetVector = Vector(-3.96, 4.95, -2.97);

ITEM:Register();