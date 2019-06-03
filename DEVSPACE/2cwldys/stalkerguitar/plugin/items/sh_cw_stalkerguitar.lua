-----------------------------------------------------
--[[

    © 2013 CloudSixteen.com do not share, re-distribute or modify

    without permission of its author (kurozael@gmail.com).

--]]



local ITEM = Clockwork.item:New("weapon_base");

    ITEM.name = "Aged Guitar";

    ITEM.cost = 11000;

    ITEM.model = "models/custom/guitar/m_d_45.mdl";

    ITEM.weight = 3;

    ITEM.access = "V";

    ITEM.type = "Main";

    ITEM.uniqueID = "guitar_stalker";

    ITEM.business = true;

    ITEM.description = "A guitar, it's strings are slightly oxide rusted, the wood is aged and chipped, but it can manage at campfire sits, group gatherings, and at down moments.";

    ITEM.isAttachment = true;

    ITEM.loweredOrigin = Vector(3, 0, -4);

    ITEM.loweredAngles = Angle(0, 45, 0);

    ITEM.attachmentBone = "ValveBiped.Bip01_Spine";

    ITEM.attachmentOffsetAngles = Angle(0, 269.5, 0);

    ITEM.attachmentOffsetVector = Vector(0, 5.66, -7.07);

ITEM:Register();