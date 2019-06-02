-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Sapphire Light Rifle";

    ITEM.cost = 20000;

    ITEM.model = "models/weapons/w_irifle.mdl";

    ITEM.weight = 10;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_saphyre";

    ITEM.business = true;

    ITEM.description = "A light rifle with a burst fire mechanism, commonly used by the 'Enforcers'.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 45, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, 0, 0);

    ITEM.attachmentOffsetVector = Vector(-3.96, 4.95, -2.97);

ITEM:Register();