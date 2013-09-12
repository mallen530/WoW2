-- initialize the ItemLink class
ItemTooltipFrame = inheritsFrom(Frame)

-- item link contructor
function ItemTooltipFrame:new(name, parent)
	-- create a new frame
	local o = Frame:new(name, parent)

	-- use the ItemTooltipFrame class
	setmetatable(o, { __index = ItemTooltipFrame })

	o.tooltipShown = false

	-- initialize the enter/leave scripts for showing the tooltips
	o:SetScript("OnEnter", ItemTooltipFrame.OnEnterTooltipFrame)
	o:SetScript("OnLeave", ItemTooltipFrame.OnLeaveTooltipFrame)

	-- return the instance of the ItemTooltipFrame
	return o
end

function ItemTooltipFrame:OnEnterTooltipFrame()
	if self.itemLink then
		GameTooltip:SetOwner(self, "ANCHOR_CURSOR")

		GameTooltip:SetHyperlink(self.itemLink)

		GameTooltip:Show()
		self.tooltipShown = true
	end
end

function ItemTooltipFrame:OnLeaveTooltipFrame()
	GameTooltip:Hide()
	self.tooltipShown = false
end

-- set the tooltip from the specified item link
function ItemTooltipFrame:SetItemLink(link)
	if self.tooltipShown then
		GameTooltip.Hide()
	end
	self.itemLink = link
end
