ItemLinkText = inheritsFrom(ItemTooltipFrame)

function ItemLinkText:new(name, parent)
	local o = ItemTooltipFrame:new(name, parent)

	-- use the ItemLinkText class
	setmetatable(o, { __index = ItemLinkText })

	-- the item text
	o.itemText = FontString:new(o, nil, "ARTWORK", "GameFontWhite")
	o.itemText:SetPoint("TOPLEFT")
	o.itemText:SetPoint("BOTTOMRIGHT")
	o.itemText:SetJustifyH("LEFT")

	return o
end

function ItemLinkText:SetFormat(formatText)
	self.formatText = formatText
end

function ItemLinkText:SetItemId(itemId, upgradeId, suffixId)
	ItemTooltipFrame.SetItemLink(self, link)
	self.itemName = nil
	if itemId then
		local linkTemplate = "item:%d:0:0:0:0:0:%d:0:%d:0:%d"
		local itemName, itemLink = GetItemInfo(linkTemplate:format(itemId, suffixId, UnitLevel("player"), upgradeId))
		self:SetItemLink(itemLink)
		if itemLink then
			self.itemName = itemName
			if self.formatText then
				self.itemText:SetFormattedText(self.formatText, itemLink:gsub("%[", ""):gsub("%]", ""))
			else
				self.itemText:SetText(itemLink:gsub("%[", ""):gsub("%]", ""))
			end
		else
			self.itemText:SetFormattedText("unknown (%d)", itemId)
			self.itemText:SetTextColor(1,1,1)
			RegisterItemInfoCallback(itemId, function(name, itemLink2)
				if self.formatText then
					self.itemText:SetFormattedText(self.formatText, itemLink2:gsub("%[", ""):gsub("%]", ""))
				else
					self.itemText:SetText(itemLink2:gsub("%[", ""):gsub("%]", ""))
				end
				self:SetItemLink(itemLink2)
				self.itemName = name
			end)
		end
	else
		self.itemText:SetText("empty")
		self.itemText:SetTextColor(0.5,0.5,0.5)
		self:SetItemLink(nil)
	end
end

function ItemLinkText:SetFontSize(fontSize)
	self.itemText:SetFontSize(fontSize)
end