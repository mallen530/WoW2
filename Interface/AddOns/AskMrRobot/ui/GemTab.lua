-- function printtable(table, indent)

--   indent = indent or 0;

--   local keys = {};

--   for k in pairs(table) do
--     keys[#keys+1] = k;
--     table.sort(keys, function(a, b)
--       local ta, tb = type(a), type(b);
--       if (ta ~= tb) then
--         return ta < tb;
--       else
--         return a < b;
--       end
--     end);
--   end

--   print(string.rep('  ', indent)..'{');
--   indent = indent + 1;
--   for k, v in pairs(table) do

--     local key = k;
--     if (type(key) == 'string') then
--       if not (string.match(key, '^[A-Za-z_][0-9A-Za-z_]*$')) then
--         key = "['"..key.."']";
--       end
--     elseif (type(key) == 'number') then
--       key = "["..key.."]";
--     end

--     if (type(v) == 'table') then
--       if (next(v)) then
--         printf("%s%s =", string.rep('  ', indent), tostring(key));
--         printtable(v, indent);
--       else
--         printf("%s%s = {},", string.rep('  ', indent), tostring(key));
--       end 
--     elseif (type(v) == 'string') then
--       printf("%s%s = %s,", string.rep('  ', indent), tostring(key), "'"..v.."'");
--     else
--       printf("%s%s = %s,", string.rep('  ', indent), tostring(key), tostring(v));
--     end
--   end
--   indent = indent - 1;
--   print(string.rep('  ', indent)..'}');
-- end

-- initialize the GemTab class
GemTab = inheritsFrom(Frame)

local MAX_SLOTS = 4

-- GemTab contructor
function GemTab:new(name, parent)
	-- create a new frame (if one isn't supplied)
	local tab = Frame:new(name, parent)
	tab:SetPoint("TOPLEFT")
	tab:SetPoint("BOTTOMRIGHT")
	-- use the GemTab class
	setmetatable(tab, { __index = GemTab })
	tab:Hide()

	local text = tab:CreateFontString("AmrGemsText1", "ARTWORK", "GameFontNormalLarge")
	text:SetPoint("TOPLEFT", 0, -5)
	text:SetText("Gems")

	tab.stamp = RobotStamp:new(nil, tab)
	tab.stamp:Hide()
	tab.stamp.smallText:SetText("Your gems are 100% optimal! You are truly, truly outrageous.")
	tab.stamp:SetPoint("TOPLEFT", text, "BOTTOMLEFT", 2, -15)
	tab.stamp:SetPoint("RIGHT", tab, "RIGHT", -20, 0)

	text = tab:CreateFontString("AmrGemsText2", "ARTWORK", "GameFontWhite")
	text:SetText("You have X gems to optimize")
	text:SetPoint("TOPLEFT", "AmrGemsText1", "BOTTOMLEFT", 0, -20)
	text:SetWidth(200)
	text:SetJustifyH("LEFT")
	tab.gemsTextToOptimize = text


	tab.gemSlotHeader = tab:CreateFontString("AmrBadGemSlot0", "ARTWORK", "GameFontNormal")
	tab.gemSlotHeader:SetPoint("TOPLEFT", "AmrGemsText2", "BOTTOMLEFT", 0, -20)
	tab.gemSlotHeader:SetText("Slot")
	tab.gemSlotHeader:SetWidth(90)
	tab.gemSlotHeader:SetJustifyH("LEFT")
	tab.gemSlotHeader:Hide()
	tab.gemCurrentHeader = tab:CreateFontString("AmrBadGemCurrent0_1", "ARTWORK", "GameFontNormal")
	tab.gemCurrentHeader:SetPoint("TOPLEFT", "AmrBadGemSlot0", "TOPLEFT", 88, 0)
	tab.gemCurrentHeader:SetWidth(110)
	tab.gemCurrentHeader:SetText("Current")
	tab.gemCurrentHeader:SetJustifyH("LEFT")
	tab.gemCurrentHeader:Hide()
	tab.gemOptimizedHeader = tab:CreateFontString("AmrBadGemOptimized0_1", "ARTWORK", "GameFontNormal")
	tab.gemOptimizedHeader:SetPoint("TOPLEFT", "AmrBadGemCurrent0_1", "TOPLEFT", 70, 0)
	tab.gemOptimizedHeader:SetPoint("RIGHT", -30, 0)
	tab.gemOptimizedHeader:SetText("Optimized")
	tab.gemOptimizedHeader:SetJustifyH("LEFT")
	tab.gemOptimizedHeader:Hide()

	tab.fauxScroll = CreateFrame("ScrollFrame", "testme", tab, "FauxScrollFrameTemplate")
	tab.fauxScroll:SetPoint("BOTTOMRIGHT", -40, 15)
	tab.fauxScroll:SetPoint("TOPLEFT", "AmrBadGemSlot0", "BOTTOMLEFT", -12, -5)
	tab.fauxScroll.parent = tab
	tab.fauxScroll:SetScript("OnVerticalScroll", GemTab_OnVerticalScroll)

	tab.jewelPanels = {}
	for i = 1, MAX_SLOTS do

		tab.jewelPanels[i] = JewelPanel:new("AmrBadGemSlot" .. i, tab)
		if i == 1 then
			tab.jewelPanels[i]:SetPoint("TOPLEFT", "AmrBadGemSlot" .. (i-1), "BOTTOMLEFT", -12, -5)
			--tab.jewelPanels[i]:SetPoint("TOPLEFT")
		else
			tab.jewelPanels[i]:SetPoint("TOPLEFT", "AmrBadGemSlot" .. (i-1), "BOTTOMLEFT", 0, -5)
		end
		tab.jewelPanels[i]:SetPoint("RIGHT", -40, 0)
	end

	return tab
end

function GemTab:showBadGems()
	self.count = 0

	local i = 1
	local badGemTotal = 0

	if itemDiffs.gems then
		for slotNum, badGems in sortSlots(itemDiffs.gems) do
			--print('slot ' .. slotNames[slotNum])
			self.count = self.count + 1
			if i <= MAX_SLOTS then
				self.jewelPanels[i]:Show()
			end
			for j = 1, #badGems.badGems do
				if badGems.badGems[j] then
					--print('has bad gem')
					badGemTotal = badGemTotal + 1
				end
			end
			i = i + 1
		end
	end

	self.gemsTextToOptimize:SetFormattedText("You have %d \1244gem:gems; to optimize", badGemTotal)

	--hide/show the headers, depending on if we have any bad gems
	if self.count == 0 then
		self.gemSlotHeader:Hide()
		self.gemCurrentHeader:Hide()
		self.gemOptimizedHeader:Hide()
		self.gemsTextToOptimize:Hide()
		self.stamp:Show()
	else
		self.gemSlotHeader:Show()
		self.gemCurrentHeader:Show()
		self.gemOptimizedHeader:Show()
		self.gemsTextToOptimize:Show()
		self.stamp:Hide()
	end	

	for i = self.count + 1, MAX_SLOTS do
		self.jewelPanels[i]:Hide()
		i = i + 1
	end

	GemTab_OnUpdate(self.fauxScroll, self.count, #self.jewelPanels, self.jewelPanels[1]:GetHeight())
end

function GemTab_OnVerticalScroll(scrollframe, offset)
	local self = scrollframe.parent
	FauxScrollFrame_OnVerticalScroll(self.fauxScroll, offset, self.jewelPanels[1]:GetHeight(), GemTab_OnUpdate)
end

function GemTab_OnUpdate(scrollframe)	

	--print('ON UPDATE')
	if itemDiffs.gems then
		for slotNum, badGems in sortSlots(itemDiffs.gems) do
			--print('slot ' .. slotNum .. slotNames[slotNum])
			for j = 1, #badGems.badGems do
				if badGems.badGems[j] then
					--print('has bad gem')
				end
			end
			i = i + 1
		end
	end
	--print('------------------')

	local self = scrollframe.parent
	FauxScrollFrame_Update(self.fauxScroll, self.count, #self.jewelPanels, self.jewelPanels[1]:GetHeight())
	local offset = FauxScrollFrame_GetOffset(scrollframe)

	local i = 1
	for slotNum, badGems in sortSlots(itemDiffs.gems) do
		if offset > 0 then
			offset = offset - 1
		else

			if i > MAX_SLOTS then
				break
			end

			self.jewelPanels[i]:SetItemLink(_G[strupper(slotNames[slotNum])], badGems.current.link )
			if slotNum == 11 then
				--print('badgems')
				--printtable(badGems, 2)
				if badGems.optimized then
					--print('has optimized')
					if #badGems.optimized == 0 then
						--print('but empty')
					else
						for j = 1, #badGems.optimized do
							--print(badGems.optimized[j].id)
						end
					end
				end
				if badGems.badGems then
					--print('has badGems')
					if #badGems.badGems == 0 then
						--print('but empty')
					else
						for j = 1, #badGems.badGems do
							if badGems.badGems[j] then
								--print('true')
							else
								--print('false')
							end
						end

					end
				end
			end
			self.jewelPanels[i]:SetOptimizedGems(badGems.optimized, badGems.badGems)
			i = i + 1
		end
	end
end