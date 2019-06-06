-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "HS24-K1 'Pandemic' Yellow-Rot Caster";

    ITEM.cost = 15000;

    ITEM.model = "models/weapons/w_irifle.mdl";

    ITEM.weight = 9;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "sfw_pandemic";

    ITEM.business = true;

    ITEM.description = "A rifle favored by Junkies and Underground Sects, spreading Yellow Rot, a highly corrosive disease spreading to anyone it touches. Renown for it's incredible easy use and upkeep. This one is not manufactured by the Guinan Corporation.";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();