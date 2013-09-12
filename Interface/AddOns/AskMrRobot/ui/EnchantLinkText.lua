EnchantLinkText = inheritsFrom(ItemTooltipFrame)

function EnchantLinkText:new(name, parent)
	local o = ItemTooltipFrame:new(name, parent)

	-- use the ItemLinkText class
	setmetatable(o, { __index = EnchantLinkText })

	-- the item text
	o.itemText = FontString:new(o, nil, "ARTWORK", "GameFontWhite")
	o.itemText:SetPoint("TOPLEFT")
	o.itemText:SetPoint("BOTTOMRIGHT")
	o.itemText:SetJustifyH("LEFT")

	return o
end

function EnchantLinkText:SetEnchantId(enchantId)
	self.itemName = nil
	if enchantId then
		local spellId = getEnchantSpellid(enchantId)
		local link = nil
		if spellId then
			link = 'enchant:' .. spellId
		end
		self:SetItemLink(link)
		if self.useSpellName then
			local spellId = getEnchantSpellid(enchantId)				
			local spellName = spellId and select(1, GetSpellInfo(spellId))
			self.itemText:SetText(spellName)
			self.itemName = spellName
		else
			self.itemName = getEnchantName(enchantId)
			self.itemText:SetText(self.itemName)
		end
	else
		self:SetItemLink(nil)
		self.itemText:SetText('')
	end
end

function EnchantLinkText:SetFontSize(fontSize)
	self.itemText:SetFontSize(fontSize)
end

function EnchantLinkText:UseSpellName()
	self.useSpellName = true
end

EnchantLinkIconAndText = inheritsFrom(EnchantLinkText)

function EnchantLinkIconAndText:new(name, parent)
	local o = EnchantLinkText:new(name, parent)

	-- use the EnchantLinkIconAndText class
	setmetatable(o, { __index = EnchantLinkIconAndText })

	o.iconFrame = Frame:new(nil, o)
	o.iconFrame:SetPoint("TOPLEFT", 0, 5)
	o.iconFrame:SetWidth(24)
	o.iconFrame:SetHeight(24)

	o.icon = o.iconFrame:CreateTexture(nil, "BACKGROUND")
	o.icon:SetPoint("TOPLEFT")
	o.icon:SetPoint("BOTTOMRIGHT")

	o.itemText:SetPoint("TOPLEFT", o.iconFrame, "TOPRIGHT", 4, -5)

	o:SetRoundBorder()

	return o
end

function EnchantLinkIconAndText:SetRoundBorder()
	self.iconFrame:SetBackdrop({edgeFile = "Interface\\AddOns\\AskMrRobot\\Media\\round-edge", edgeSize = 8})
end

function EnchantLinkIconAndText:SetSquareBorder()
	self.iconFrame:SetBackdrop({edgeFile = "Interface\\AddOns\\AskMrRobot\\Media\\square-edge", edgeSize = 8})
end

function EnchantLinkIconAndText:SetEnchantId(enchantId)
	EnchantLinkText.SetEnchantId(self, enchantId)
	if enchantId then
		local texture = getEnchantIcon(enchantId)
		self.icon:SetTexture('Interface/Icons/' .. texture)
		self.iconFrame:Show()
	else
		self.iconFrame:Hide()
	end
end

function EnchantLinkIconAndText:SetFontSize(fontSize)
	self.itemText:SetFontSize(fontSize)
end