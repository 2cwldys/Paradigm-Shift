-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Energy Revitalizing Orb";

    ITEM.cost = 500;

    ITEM.model = "models/Items/combine_rifle_ammo01.mdl";

    ITEM.weight = 0.5;

    ITEM.access = "V";

    ITEM.type = "Medical";

    ITEM.uniqueID = "sfi_health";

    ITEM.business = true;

    ITEM.description = "A packaged energy revitalizing orb. Highly expensive, utilized for extreme immediate medical purposes. Manufactured by the Guinan Corporation.";

    ITEM.isAttachment = false;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();