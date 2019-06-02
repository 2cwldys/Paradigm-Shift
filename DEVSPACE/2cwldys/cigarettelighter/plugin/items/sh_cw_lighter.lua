-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Makeshift Cigarette Lighter";

    ITEM.cost = 5;

    ITEM.model = "models/Items/battery.mdl";

    ITEM.weight = 0.2;

    ITEM.access = "v";

    ITEM.type = "Main";

    ITEM.business = true;

    ITEM.description = "A modified high-voltage battery utilized as a makeshift cigarette lighter, a tweaker's dream come true. It omits a blue flame.";

    ITEM.isAttachment = false;

    ITEM.hasFlashlight = false;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();