-- initialize the ItemIcon class (inherit from a dummy frame)
ItemIcon = inheritsFrom(ItemTooltipFrame)

-- item icon contructor
function ItemIcon:new(name, parent)
	-- create a new frame (if one isn't supplied)
	local o = ItemTooltipFrame:new(name, parent)

	-- use the ItemIcon class
	setmetatable(o, { __index = ItemIcon })

	-- the item icon
	o.itemIcon = o:CreateTexture(nil, "BACKGROUND")
	o.itemIcon:SetPoint("TOPLEFT")
	o.itemIcon:SetPoint("BOTTOMRIGHT")

	-- return the instance of the ItemIcon
	return o
end

function ItemIcon:SetRoundBorder()
	self:SetBackdrop({edgeFile = "Interface\\AddOns\\AskMrRobot\\Media\\round-edge", edgeSize = 8})
end

function ItemIcon:SetSquareBorder()
	self:SetBackdrop({edgeFile = "Interface\\AddOns\\AskMrRobot\\Media\\square-edge", edgeSize = 8})
end

-- set the item icon and tooltip from the specified item link
function ItemIcon:SetItemLink(link)
	ItemTooltipFrame.SetItemLink(self, link)
	if link then
		self.itemIcon:SetTexture(GetItemIcon(getItemIdFromLink(link)))
		self.itemIcon:SetTexCoord(0, 1, 0, 1)
	else
		self.itemIcon:SetTexture(nil)
	end
end
