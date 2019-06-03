-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Thunderbolt Arc Emitter";

    ITEM.cost = 40000;

    ITEM.model = "models/weapons/w_irifle.mdl";

    ITEM.weight = 10;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_thunderbolt";

    ITEM.business = true;

    ITEM.description = "An electricity arc, utilizing humidity in the air to create particle energy, Manufactured by the Guinan Corporation.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();