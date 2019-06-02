function PLUGIN:ClockworkInitialized()
	if (Clockwork.database:Escape("'") != "''") then
		return;
	end;

	Clockwork.database.oldEscape = Clockwork.database.Escape;

	function Clockwork.database:Escape(text)
		local initialEscapedString = Clockwork.database:oldEscape(text);
		
		if (self.liteSql) then
			return initialEscapedString:Replace("''", "'");
		end;
		
		return initialEscapedString;
	end;
end;
