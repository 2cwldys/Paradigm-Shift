-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Aquamarine Storm Rifle";

    ITEM.cost = 30000;

    ITEM.model = "models/weapons/w_irifle.mdl";

    ITEM.weight = 8;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_aquamarine";

    ITEM.business = true;

    ITEM.description = "An aquamarine storm rifle, used commonly by mid-threat protocol SHEPHERD bots. Manufactured by the Guinan Corporation.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();