local PLUGIN = PLUGIN;

local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("rw");
COMMAND.tip = "Whispers a radio message out to other characters.";
COMMAND.text = "<string Text>";
COMMAND.flags = bit.bor(CMD_DEFAULT, CMD_DEATHCODE, CMD_FALLENOVER);
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	PLUGIN:SayRadio(player, table.concat(arguments, " "), true);
end;

COMMAND:Register();