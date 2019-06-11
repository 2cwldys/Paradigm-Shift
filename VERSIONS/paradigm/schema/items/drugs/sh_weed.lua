ITEM.name = "Weed"
ITEM.model = "models/props_lab/box01a.mdl"
ITEM.desc = "Dank Joints that will make your eye high"
ITEM.duration = 100
ITEM.price = 200
ITEM.attribBoosts = {
	["end"] = 5,
	["stm"] = 3,
}

local effectText = {
	"As soon as you inhale the smoke from the weed, You feels something happened to your body.",
	"You realizes you are actually cool. Because you're smoking weed.",
}
ITEM:Hook("Use", function(item)
	item.player:EmitSound("items/battery_pickup.wav")
	item.player:ChatPrint(table.Random(effectText))
end)
