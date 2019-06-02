-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Energy Supply Orb";

    ITEM.cost = 250;

    ITEM.model = "models/Items/combine_rifle_ammo01.mdl";

    ITEM.weight = 0.5;

    ITEM.access = "V";

    ITEM.type = "Ammo";

    ITEM.uniqueID = "sfi_supplies";

    ITEM.business = true;

    ITEM.description = "A packaged energy supply orb. Manufactured by the Guinan Corporation.";

    ITEM.isAttachment = false;

    ITEM.hasFlashlight = false;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 5, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, -10, -175);

    ITEM.attachmentOffsetVector = Vector(-2, 5, 10);

ITEM:Register();