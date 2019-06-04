-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Flamethrower";

    ITEM.cost = 11000;

    ITEM.model = "models/weapons/vfirethrower/w_flamethrower.mdl";

    ITEM.weight = 8;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "weapon_vfirethrower";

    ITEM.business = true;

    ITEM.description = "A long-barreled automatic military firearm. It has a quad-rail RIS handguard and has a carryhandle. It is chambered in 5.56mm NATO and is made by FN Herstal.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();