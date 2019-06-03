-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Gold Coin";

    ITEM.cost = 5000;

    ITEM.model = "models/stevencz/other/coin/c009.mdl";

    ITEM.weight = 0.1;

    ITEM.access = "v";

    ITEM.type = "Main";

    ITEM.business = true;

    ITEM.description = "A gold-pressed coin, it has an image of a scarab in the middle. It seems to be worth an INCREDIBLE amount of money.";

    ITEM.isAttachment = false;

    ITEM.hasFlashlight = false;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();