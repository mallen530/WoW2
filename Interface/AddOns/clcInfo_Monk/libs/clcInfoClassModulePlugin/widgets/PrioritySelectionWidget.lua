------------------------------------------------------------------------------
-- $Id$
------------------------------------------------------------------------------
--                            PrioritySelectionWidget.lua
--
--    Copyright (C) 2012 Geminior
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU Lesser General Public License as published
--  by the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU Lesser General Public License
--  along with this program.  If not, see <http://www.gnu.org/licenses/>.
------------------------------------------------------------------------------
-- Author:
--      Geminior (@ Earthen Ring)
------------------------------------------------------------------------------
-- Description:
--   Priority selection widget enabling the rearrangement of priorities by clicks
--------------------------------------------------------------------------------
local widgetType = "CLCCMP_Priorities"
local widgetVersion = 2
	
local AceGUI = LibStub("AceGUI-3.0")
if not AceGUI or (AceGUI:GetWidgetVersion(widgetType) or 0) >= widgetVersion then return end

local L = LibStub("AceLocale-3.0"):GetLocale("clcInfoClassModulePlugin")

do
	local priorityFrameCache = {}
	local function PrioRecycle(self)
		self:ClearAllPoints()
		self:Hide()
		self:SetParent(nil)
		table.insert(priorityFrameCache, self)
	end

	local placementFrameCache = {}
	local function PlacementRecycle(self)
		self:ClearAllPoints()
		self:Hide()
		self:SetParent(nil)
		table.insert(placementFrameCache, self)
	end

	local function SetSelectedAction(self, action)
		-- update dipslay for current selected action
		if self.selectedAction then
			self.selectedAction.selectedTexture:Hide()
		end

		local b
		local disabledCount = #self.disabledActions

		if action then
			local selected = action
			if type(action) == "string" then
				for i,v in ipairs(self.prioFrames) do
					if v.val == action then
						selected = v
						break
					end
				end
			end

			self.selectedAction = selected
			selected.selectedTexture:Show()

			for i=1,#self.prioFrames - disabledCount do
				b = self.prioFrames[i]
				if b ~= selected then
					b:Disable()
				end
			end
			
			for i=1,#self.placementFrames - disabledCount do
				b = self.placementFrames[i]
				if b.pos ~= selected.pos and b.pos ~= selected.pos + 1 then
					b:Enable()
				end
			end
		else
			self.selectedAction = nil

			for i=1,#self.prioFrames - disabledCount do
				self.prioFrames[i]:Enable()
			end
			
			for i=1,#self.placementFrames - disabledCount do
				b = self.placementFrames[i]
				b:Disable()
			end
		end
	end

	local function MovePriority(self, from, to, val)
		-- remove from one
		for i=#from,1,-1 do
			if from[i] == val then
				table.remove(from, i)
				break
			end
		end
			
		-- insert as last item in the other
		table.insert(to, val)
			
		-- update the button state
		self:UpdatePrioDisplay()
	end

	local function EnableToggle_OnClick(self)
		local enable = self:GetChecked()
		local prioBtn = self:GetParent()
		local w = prioBtn.obj

		if enable then
			local newSelected = prioBtn.val -- since moving prio will reassign vals, we have to get it before doing that
			MovePriority(w, w.disabledActions, w.prioList, prioBtn.val)
			w:SetSelectedAction(newSelected)
		else
			MovePriority(w, w.prioList, w.disabledActions, prioBtn.val)
		end

		-- we need to update the queue for the class module in case this is not a max level char
		-- but since the priolist is directly modified its a waste to raise the changed event, instead just update the queue directly
		--w:Fire("OnValueChanged", "tdb") 
		w.mod:UpdatePrioQueue()
	end

	local function EnableToggle_OnEnter(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
		if self:GetChecked() then
			GameTooltip:SetText(L["Click to disable this ability."], 1, 1, 1, 1)
		else
			GameTooltip:SetText(L["Click to enable this ability."], 1, 1, 1, 1)
		end
		GameTooltip:Show()
	end

	local function EnableToggle_OnLeave(self)
		GameTooltip:Hide()
	end

	local function Priority_OnClick(self, button, down)
		local w = self.obj
		if w.selectedAction then
			if w.selectedAction == self or button == "RightButton" then
				w:SetSelectedAction(nil)
			end
		elseif button == "LeftButton" then
			w:SetSelectedAction(self)
		end
	end

	local function Placement_OnClick(self, button, down)
		local w = self.obj
		if not w.selectedAction then return	end

		local val = table.remove(w.prioList, w.selectedAction.pos)
		local newPos = self.pos < w.selectedAction.pos and self.pos or self.pos - 1
		table.insert(w.prioList, newPos, val)

		-- we need to update the queue for the class module in case this is not a max level char
		-- but since the priolist is directly modified its a waste to raise the changed event, instead just update the queue directly
		--w:Fire("OnValueChanged", "tdb") 
		w.mod:UpdatePrioQueue()
		w:UpdatePrioDisplay()
	end

	local function GetPriorityFrame()
		local frame
		if next(priorityFrameCache) then
			frame = table.remove(priorityFrameCache)
		else
			frame = CreateFrame("Button", nil, UIParent, "CLCMPrioritySelectButtonTemplate")
			frame:SetScript("OnClick", Priority_OnClick)
			frame.chk:SetScript("OnClick", EnableToggle_OnClick)
			frame.chk:SetScript("OnEnter", EnableToggle_OnEnter)
			frame.chk:SetScript("OnLeave", EnableToggle_OnLeave)
			frame.Recycle = PrioRecycle
		end
		frame:Show()
		return frame
	end

	local function GetPlacementFrame()
		local frame
		if next(placementFrameCache) then
			frame = table.remove(placementFrameCache)
		else
			frame = CreateFrame("Button", nil, UIParent, "CLCMPriorityPlaceButtonTemplate")
			frame:SetScript("OnClick", Placement_OnClick)
			frame.Recycle = PlacementRecycle
		end
		frame:Disable()
		frame:Show()
		return frame
	end
	
	local function RecycleFrames(frames)
		if not frames then return end
		for i, frame in ipairs(frames) do
			frame:Recycle()
		end
		wipe(frames)
	end

	-- Creates the priorty and placement buttons if they have not been created
	local function EnsureFrames(self)
		if next(self.prioFrames) then return end

		-- create the prio frames
		local posIdx = 1
		for k, v in pairs(self.actionList) do
			if v then
				local f = GetPriorityFrame()
				f.obj = self
				f.pos = posIdx
				f.textIndex:SetText(tostring(posIdx))
				f:SetParent(self.frame)
				table.insert(self.prioFrames, f)

				posIdx = posIdx + 1
			end
		end

		-- create the placement frames
		for i=1,#self.prioFrames + 1 do
			local f = GetPlacementFrame()
			f.obj = self
			f.pos = i
			f:SetParent(self.frame)
			table.insert(self.placementFrames, f)
		end
	end

		-- updates the list of disabled actions
	local function UpdateDisabledList(self)
		if not (self.actionList and self.prioList) then return end

		wipe(self.disabledActions)
		for k,a in pairs(self.actionList) do
			if a then
				local found = false
				for _,v in ipairs(self.prioList) do
					if k == v then
						found = true
					end
				end

				if not found then
					table.insert(self.disabledActions, k)
				end
			end
		end
	end

	-- Updates the text and value of the priority buttons based on the current priority list
	local function UpdatePrioDisplay(self)
		if not (self.actionList and self.prioList) then return end
		
		EnsureFrames(self)

		if self.selectedAction then
			self:SetSelectedAction(nil)
		end

		for i,v in ipairs(self.prioList) do
			local a = self.actionList[v]
			local b = self.prioFrames[i]
			b.val = v
			b.text:SetTextColor(1,1,1)
			b.text:SetText(a.Info)
			b.textIndex:Show()
			b.chk:SetChecked(true)
			b:Enable()
		end

		local enabledCount = #self.prioList
		for i,v in ipairs(self.disabledActions) do
			local a = self.actionList[v]
			local b = self.prioFrames[i+enabledCount]
			b.val = v
			b.text:SetTextColor(.5,.5,.5)
			b.text:SetText(a.Info)
			b.textIndex:Hide()
			b.chk:SetChecked(false)
			b:Disable()

			b = self.placementFrames[i+enabledCount+1]
			b:Disable()
		end
	end


	-- Performs layout of the buttons according to parent frame width
	local function LayoutPrios(self)
		if not (self.actionList and next(self.actionList)) then return end

		EnsureFrames(self)

		-- layout the frames
		local numPrios = #self.prioFrames
		local frameWidth = self.frame.width or self.frame:GetWidth() or 0
		if frameWidth == 0 then return end -- for some reason this sometimes evaluates to 0, although only briefly

		local columns = math.floor(frameWidth / self.prioFrames[1]:GetWidth())
		local rows = math.ceil(numPrios / columns)

		-- set the height of the parent frame. If number of prios completely fill out the rows, we space for the last placement frame added
		local frameHeight = (self.prioFrames[1]:GetHeight() + self.placementFrames[1]:GetHeight()) * rows
		if  math.fmod(numPrios, rows) == 0 then
			frameHeight = frameHeight + self.placementFrames[1]:GetHeight() 		
		end
		self:SetHeight(frameHeight)

		-- loop through the frames and position them in relation to each other
		local fidx = 1
		local refFrame = self.frame
		local refAnchor = "TOPLEFT"
		for i=1,columns do
			for j=1,rows do
				-- on the start of each column after the first we need to place relative to the first item in the previous column
				if i > 1 and j == 1 then
					refFrame = self.placementFrames[((i - 2) * rows + 1)]
					refAnchor = "TOPRIGHT"
				end
				local pf = self.placementFrames[fidx]
				pf:ClearAllPoints()
				pf:SetPoint("TOPLEFT", refFrame, refAnchor)

				refFrame = self.prioFrames[fidx]
				refFrame:ClearAllPoints()
				refFrame:SetPoint("TOPLEFT", pf, "BOTTOMLEFT")

				fidx = fidx + 1
				refAnchor = "BOTTOMLEFT"
				if fidx > numPrios then break end
			end
		end

		-- place the last placement frame
		local last = self.placementFrames[#self.placementFrames]
		last:ClearAllPoints()
		last:SetPoint("TOPLEFT", refFrame, "BOTTOMLEFT")
	end

	-- Widget functions
	local function OnAcquire(self)
		self:SetFullWidth(true)
	end

	local function OnRelease(self)
		self:SetDisabled(false)

		self.prioList = nil
		self.actionList = nil
		self.mod = nil

		if self.selectedAction then
			self.selectedAction.selectedTexture:Hide()
			self.selectedAction = nil
		end

		RecycleFrames(self.prioFrames)
		RecycleFrames(self.placementFrames)
		wipe(self.disabledActions)

		self.frame:ClearAllPoints()
		self.frame:Hide()
	end

	-- Set the value. The value will be the current template db
	local function SetValue(self, value)
		self.prioList = self.mod[value].PriorityList

		UpdateDisabledList(self)
		self:UpdatePrioDisplay()
	end

	local function GetValue(self)
		return self.prioList
	end

	-- Set the list of possible actions
	local function SetList(self, list)
		self.mod = list -- this is the module, since the way aceconfig works it wont allow values that are not in the list...
		self.actionList = list.Actions
		LayoutPrios(self)
	end

	-- When the width changes we need to redo the button layout
	local lastWidth
	local function OnWidthSet(self, width)
		if lastWidth == width then return end
		lastWidth = width
		LayoutPrios(self)
	end

	-- NOOP, required by AceConfigDialog, but this control does not have its own label
	local function SetLabel(self, text) end

	-- Disable the widget.
	local function SetDisabled(self, disabled) 
		if self.disabled == disabled then return end

		self.disabled = disabled
		if disabled then
			for _, b in ipairs(self.prioFrames) do
				b:Disable()
			end
			for _, b in ipairs(self.placementFrames) do
				b:Disable()
			end
		else
			self:SetSelectedAction(self.selectedAction)
		end
	end

	local function ClearFocus(self)
		if self.selectedAction then
			self:SetSelectedAction(nil)
		end
	end

	local function Constructor()
		local frame = CreateFrame("Frame", nil, UIParent)
		
		--setting height and width just in case list is empty since that will lock wow
		frame:SetHeight(50)
		frame:SetWidth(729)
		frame:SetPoint("CENTER", UIParent, "CENTER")

		local self = {}

		self.type = widgetType
		self.frame = frame
		self.disabled = false

		self.prioFrames = {}
		self.placementFrames = {}
		self.disabledActions = {}
		self.selectedAction = nil
		
		frame.obj = self

		self.OnRelease = OnRelease
		self.OnAcquire = OnAcquire
		self.ClearFocus = ClearFocus

		self.SetValue = SetValue
		self.GetValue = GetValue
		self.SetList = SetList
		self.SetLabel = SetLabel
		self.SetDisabled = SetDisabled

		self.OnWidthSet = OnWidthSet
		self.SetSelectedAction = SetSelectedAction
		self.UpdatePrioDisplay = UpdatePrioDisplay

		AceGUI:RegisterAsWidget(self)
		return self
	end

	AceGUI:RegisterWidgetType(widgetType, Constructor, widgetVersion)
end
