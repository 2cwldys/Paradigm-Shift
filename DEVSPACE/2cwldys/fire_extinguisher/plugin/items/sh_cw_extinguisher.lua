-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Fire Extinguisher";

    ITEM.cost = 11000;

    ITEM.model = "models/weapons/w_fire_extinguisher.mdl";

    ITEM.weight = 3;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "weapon_extinguisher";

    ITEM.business = true;

    ITEM.description = "This red extinguisher has a warning label on its side.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();