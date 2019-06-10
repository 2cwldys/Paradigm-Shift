-- ITEM.name = "Small Suitcase"
-- ITEM.description = "A small suitcase."
-- ITEM.model = Model("models/weapons/w_suitcase_passenger.mdl")

local ITEMS = {}

ITEMS.small_suitcase = {
    ["name"] = "Small Suitcase",
    ["model"] = "models/weapons/w_suitcase_passenger.mdl",
    ["description"] = "A small suitcase.",
    ["width"] = 1,
    ["height"] = 1,
    ["invWidth"] = 2,
    ["invHeight"] = 2,
    ["price"] = 75
}

ITEMS.medium_suitcase = {
    ["name"] = "Medium Suitcase",
    ["model"] = "models/weapons/w_suitcase_passenger.mdl",
    ["description"] = "A Medium suitcase.",
    ["width"] = 1,
    ["height"] = 1,
    ["invWidth"] = 4,
    ["invHeight"] = 4,
    ["price"] = 50
}

for k, v in pairs(ITEMS) do
    local ITEM = ix.item.Register(k, "base_bags", false, nil, true)
    ITEM.name = v.name
    ITEM.model = Model(v.model)
    ITEM.description = v.description
    ITEM.category = "Crafting"
    ITEM.width = v.width or 1
    ITEM.height = v.height or 1
    ITEM.invWidth = v.invWidth or 2
    ITEM.invHeight = v.invHeight or 2
    ITEM.price = v.price or 0
    ITEM.isBag = true
end
