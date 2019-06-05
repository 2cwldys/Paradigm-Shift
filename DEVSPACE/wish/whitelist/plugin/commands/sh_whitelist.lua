local Clockwork = Clockwork
local COMMAND = Clockwork.command:New("whitelist");

COMMAND.tip = "Add a SteamID 32 to the server whitelist."
COMMAND.text = "<string steamid32>"
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "a"
COMMAND.arguments = 1

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
  cwWhitelist:AddSteamID(arguments[1])
end

COMMAND:Register()
