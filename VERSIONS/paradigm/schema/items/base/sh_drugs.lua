--By rebel1324 from CityRP for Nutscript 1.1
ITEM.name = "Drugs Base"
ITEM.model = "models/healthvial.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.desc = "Makes you love dank memes"
ITEM.category = "Illegal"
ITEM.duration = 30

-- sorry, for name order.
ITEM.functions.Use = {
	name = "Use",
	tip = "useTip",
	icon = "icon16/bug.png",

	OnRun = function(item)
		local client = item.player
		local char = client:GetCharacter()
    local charID = char:GetID()

		if (char and client:Alive()) then
			if (item.attribBoosts) then
				for k, v in pairs(item.attribBoosts) do
					char:AddBoost(item.uniqueID, k, v)
				end
			end

			local name = item.name

			timer.Create("DrugEffect_" .. item.uniqueID .. "_" .. client:EntIndex(), item.duration, 1, function()
				if (client and IsValid(client)) then
					local curChar = client:GetCharacter()
					if (curChar and curChar:GetID() == charID) then
						client:NotifyLocalized(Format("%s has worn out.", name))

						if (item.attribBoosts) then
							for k, v in pairs(item.attribBoosts) do
								char:RemoveBoost(item.uniqueID, k)
							end
						end
					end
				end
			end)

			return true
		end

		return false
	end,

	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}
