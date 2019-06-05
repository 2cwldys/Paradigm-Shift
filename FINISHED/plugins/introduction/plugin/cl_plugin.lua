local PLUGIN = PLUGIN;

-- A function to perform the introduction.
function PLUGIN:PerformIntro()
	local introTextSmallFont = Clockwork.option:GetFont("intro_text_small");
	local informationColor = Clockwork.option:GetColor("information");
	local colorWhite = Clockwork.option:GetColor("white");
	local smallTextFont = Clockwork.option:GetFont("menu_text_small");
	local scrH = ScrH();
	local scrW = ScrW();

	if (!self.soundObj) then
		self.soundObj = CreateSound(Clockwork.Client, "music/introtheme.mp3");
		self.soundObj:Play();

		self.button = vgui.Create("cwLabelButton");
		self.button:SetFont(smallTextFont);
		self.button:SetText("CONTINUE");
		self.button:SizeToContents();
		self.button:SetCallback(function()
			self.pos = nil;
			self.ready = true;
			self.soundObj:FadeOut(4);
			self.soundObj = nil;
			self.button:Remove();
			self.button = nil;
			gui.EnableScreenClicker = EnableScreenClicker;
			EnableScreenClicker = nil;
		end);
		self.button:SetPos(scrW * 0.9, scrH - 50);
		self.button:SetMouseInputEnabled(true);

		gui.EnableScreenClicker(true);
		EnableScreenClicker = gui.EnableScreenClicker;
			
		function gui.EnableScreenClicker() end;
	end;

	if (self.realText) then
		self.pos = self.pos or scrH;
			draw.DrawText(self.realText, introTextSmallFont, (scrW * 0.2), self.pos - 1, colorWhite, TEXT_ALIGN_LEFT);
		self.pos = self.pos - 0.06;
	end;
end;

-- A function to wrap the text.
function PLUGIN:WrapText()
	local realText = "";
	local scrW = ScrW();
	local scrH = ScrH();

	surface.SetFont(Clockwork.option:GetFont("intro_text_small"));

	for k, v in pairs(string.Explode(" ", self.text)) do
		local width;

		for k2, v2 in pairs(string.Explode("\n", realText)) do
			width = surface.GetTextSize(v2);
		end;

		if (width <= (scrW * 0.6)) then
			if (realText == "") then
				realText = realText..v;
			else
				realText = realText.." "..v;
			end;
		else
			realText = realText.."\r\n"..v;
		end;
	end;

	self.realText = realText;
end;