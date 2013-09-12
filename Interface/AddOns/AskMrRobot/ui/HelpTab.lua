-- initialize the HelpTab class
HelpTab = inheritsFrom(Frame)

function HelpTab:new(parent)

	local tab = Frame:new(nil, parent)
	setmetatable(tab, { __index = HelpTab })
	tab:SetPoint("TOPLEFT")
	tab:SetPoint("BOTTOMRIGHT")
	tab:Hide()

	local text = tab:CreateFontString("AmrHelpText1", "ARTWORK", "GameFontNormalLarge")
	text:SetPoint("TOPLEFT", 0, -5)
	text:SetText("Help")
	return tab
end