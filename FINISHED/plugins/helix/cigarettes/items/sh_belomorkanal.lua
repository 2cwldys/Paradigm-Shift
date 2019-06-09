ITEM.name = "Cigarette"
ITEM.price = 10
ITEM.model = "models/mordeciga/mordes/pachkacig.mdl"
ITEM.width = 1
ITEM.height = 1
--ITEM.noBusiness = true

function ITEM:GetDescription()
	return "A small pack of cigarettes."
end

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
