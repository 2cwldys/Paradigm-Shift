-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "HS107 'Phoenix' Sniper Rifle";

    ITEM.cost = 40000;

    ITEM.model = "models/weapons/w_irifle.mdl";

    ITEM.weight = 15;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_phoenix";

    ITEM.business = true;

    ITEM.description = "A sniper energy rifle that has devastating blow at long to medium range. Manufactured by the Guinan Corporation.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 45, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, 0, 0);

    ITEM.attachmentOffsetVector = Vector(-3.96, 4.95, -2.97);

ITEM:Register();