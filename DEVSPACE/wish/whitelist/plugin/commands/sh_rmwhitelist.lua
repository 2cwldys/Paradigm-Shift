local Clockwork = Clockwork
local COMMAND = Clockwork.command:New("rmwhitelist");

COMMAND.tip = "Remove a steamid from the server whitelist."
COMMAND.text = "<string steamid32>"
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "a"
COMMAND.arguments = 1

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
  cwWhitelist:RemoveSteamID(arguments[1])
end

COMMAND:Register()
