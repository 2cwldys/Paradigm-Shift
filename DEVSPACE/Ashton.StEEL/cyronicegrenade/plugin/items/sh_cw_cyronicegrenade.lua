-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "T3i 'Cryon' ice grenade";

    ITEM.cost = 5000;

    ITEM.model = "models/items/grenadeammo.mdl";

    ITEM.weight = 5;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_cryon";

    ITEM.business = true;

    ITEM.description = "Freezes people within blast radius. Manufactured by the Guinan Corporation.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(10, 0, -10);

    ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";

    ITEM.attachmentOffsetAngles = Angle(90, 0, 0);

    ITEM.attachmentOffsetVector = Vector(0, 6.55, 8.72);

ITEM:Register();