-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "SWS M24 Sniper";

    ITEM.cost = 10000;

    ITEM.model = "models/weapons/w_snip_m24_6.mdl";

    ITEM.weight = 12;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "m9k_m24";

    ITEM.business = true;

    ITEM.description = "A Sniper that uses 7.62×51mm NATO Ammunition, A Military grade rifle to long and medium range. ";

    ITEM.isAttachment = true;

    ITEM.hasFlashlight = true;

    ITEM.loweredOrigin = Vector(11.12, 0, -4);

    ITEM.loweredAngles = Angle(0, 45, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0.99, 333.15, 271.49);

    ITEM.attachmentOffsetVector = Vector(-1.41, 6.36, 4);

ITEM:Register();