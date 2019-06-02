-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Lapis Pulse Pistol";

    ITEM.cost = 11000;

    ITEM.model = "models/Items/battery.mdl";

    ITEM.weight = 8;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_lapis";

    ITEM.business = true;

    ITEM.description = "A packaged Lapis pulse pistol, commonly manufactured and bought for self protection uses. Manufactured by the Guinan Corporation.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();