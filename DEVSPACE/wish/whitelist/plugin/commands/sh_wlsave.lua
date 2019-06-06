local Clockwork = Clockwork
local COMMAND = Clockwork.command:New("wlsave");

COMMAND.tip = "Save the whitelist."
COMMAND.text = "<string steamid32>"
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "a"
COMMAND.arguments = 1

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
  cwWhitelist:SaveWhiteList()
end

COMMAND:Register()
