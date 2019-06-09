ITEM.name = "Cigarette";
ITEM.description = "A cigarette."
ITEM.cost = 10;
ITEM.model = "models/mordeciga/mordes/pachkacig.mdl";
ITEM.description = "A small pack of cigarettes.'";
ITEM.width = 1;
ITEM.height = 1;
--ITEM.noBusiness = true

--this needs fixing.
ITEM.iconCam = {
    pos = Vector(0, 200, 1),
    ang = Angle(0, 270, 0),
    fov = 0
}

ITEM.functions.Use = {
  OnRun = function(item)
    local client = item.player

    client:Give("weapon_ciga_cheap", false)
  end
}
