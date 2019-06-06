local Clockwork = Clockwork
local COMMAND = Clockwork.command:New("wlsave");

COMMAND.tip = "Save the whitelist."
COMMAND.text = ""
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "a"
COMMAND.arguments = 0

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
  cwWhitelist:SaveWhiteList()
end

COMMAND:Register()
