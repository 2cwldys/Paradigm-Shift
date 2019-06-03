-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Grinder Rifle";

    ITEM.cost = 15000;

    ITEM.model = "models/weapons/w_smg1.mdl";

    ITEM.weight = 5;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_grinder";

    ITEM.business = true;

    ITEM.description = "A makeshift heavy Submachine-Gun with a high-rate of gun fire. It fires chunks of bits and screws.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 45, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, 0, 0);

    ITEM.attachmentOffsetVector = Vector(-3.96, 4.95, -2.97);

ITEM:Register();