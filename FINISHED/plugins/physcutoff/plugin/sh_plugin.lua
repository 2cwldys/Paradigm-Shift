local PLUGIN = PLUGIN;

-- A function to modify a physical description.
function Clockwork.kernel:ModifyPhysDesc(description)
	if ( string.find(description, "|") ) then
		description = string.gsub(description, "|", "/");
	end;
	return description;
end;