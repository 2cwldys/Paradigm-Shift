-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "MTM 'Neutrino' Cannon";

    ITEM.cost = 60000;

    ITEM.model = "models/weapons/w_irifle.mdl";

    ITEM.weight = 8;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_neutrino";

    ITEM.business = true;

    ITEM.description = "A highly unpredictable weapon of mass destruction, anyone touched by the green beam it emits has their cells immediately disrupted, often exploding their targets. This one is not manufactured by the Guinan Corporation.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();