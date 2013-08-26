------------------------------------------------------------------------------
-- $Id$
------------------------------------------------------------------------------
--                            clcInfoClassModulePlugin.lua
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
--
--  This file is used to create class module plugins for clcInfo by abija.
--
--  abija has distributed clcInfo All Rights Reserved.  For more information
--  go to: http://wow.curseforge.com/addons/clctracker/
--
------------------------------------------------------------------------------
-- Author:
--      Geminior (@ Earthen Ring)
------------------------------------------------------------------------------
local clcInfoPlugin = LibStub("clcInfoClassModulePlugin")
if not clcInfoPlugin then return end

local _, parent = ...
if parent.clcInfoClassModulePluginLoaded then
	parent = nil
	return
end
parent = nil

local L = LibStub("AceLocale-3.0"):GetLocale("clcInfoClassModulePlugin")

---------------------------------- LOCAL VERSIONS OF API FUNCTIONS AND OTHER EXTERNALS ---------------------------------
local clcEnv = clcInfo.env
local IsSpellKnown = IsSpellKnown
local GetSpellInfo = GetSpellInfo
local GetGlyphSocketInfo  = GetGlyphSocketInfo
local GetSpecialization = GetSpecialization
local GetSpecializationInfo = GetSpecializationInfo
local GetMaxPlayerLevel = GetMaxPlayerLevel
local GetTime = GetTime
local GetSpellCooldown = GetSpellCooldown
local UnitAura = UnitAura
local UnitLevel = UnitLevel
local min, max = min, max
local pairs, ipairs, wipe = pairs, ipairs, wipe

--------------------------------------------- LOCAL STATE VARS ---------------------------------------------------------
local activeSpecModule
local activeResources, activeTdb, activeActions, activeQ
local gcdSpellId
local rangeCheck
------------------------------------------ LOCAL UTILITY FUNCTIONS -----------------------------------------------------
-- Gets the specIdx and name of the currently active template in clcInfo if any
local function GetActiveTemplateSpec()
	if not (clcInfo.activeTemplate and clcInfo.activeTemplate.spec) then
		return nil, nil
	end

	return clcInfo.activeTemplate.spec.primary, clcInfo.activeTemplate.options.udLabel
end

local function CleanPriorities(prioList, actions)
	local check = {}
	for i=#prioList,1,-1 do
		local value = prioList[i]
		if check[value] or not actions[value] then
			table.remove(prioList, i)
		else
			check[value] = value
		end
	end
end

local function OnTemplateGlyphOrTalentChangeInternal(specModule)

	if specModule.OnGlyphOrTalentChange then specModule:OnGlyphOrTalentChange() end
		
	CleanPriorities(specModule.Tdb.PriorityList, specModule.Actions)

	specModule:UpdatePrioQueue()
end

local function CmdLine(specModule, args)
	local activeTemplateSpec = GetActiveTemplateSpec()

	if activeTemplateSpec ~= specModule.SpecIdx then
		if activeTemplateSpec == nil then
			specModule:OutputMessage(L["There is no active template, commandline option %s is not available."]:format(specModule.CmdPrioArg), "warn")
		elseif activeTemplateSpec == GetSpecialization() then
			local _, activeSpecName = GetSpecializationInfo(GetSpecialization())
			specModule:OutputMessage(L["The currently active template is for %s, commandline option %s is not available."]:format(activeSpecName, specModule.CmdPrioArg), "warn")
		else
			local _, templateSpecName = GetSpecializationInfo(activeTemplateSpec)
			specModule:OutputMessage(L["The currently active template is for %s, commandline option %s is not available."]:format(templateSpecName..L[" (forced)"], specModule.CmdPrioArg), "warn")
		end
		return
	end

	local actions = specModule.Actions
	local prioList = specModule.Tdb.PriorityList

    -- check number of args
	local maxPriorities = 0
	for key, action in pairs(actions) do
        maxPriorities = maxPriorities + 1
    end

	if #args > maxPriorities then
		specModule:OutputMessage(L["Too many cmdLine priorities. Max is: "] .. maxPriorities, 'err')
		return
	end

	-- add args to options
	wipe(prioList)
    for i, arg in ipairs(args) do
        prioList[i] = arg
    end

	CleanPriorities(prioList, actions)
    
    -- redo queue
    specModule:UpdatePrioQueue()
    clcInfo:UpdateOptions()

	specModule:OutputMessage(L["%s priority changed."]:format(specModule.SpecName))
end

local function RegisterBehavior(name, behavior)
	clcInfoPlugin:RegisterBehavior(name, behavior)
end

local function AddBehaviorTemplate(specIdx, nameOrSpell, behavior, elementType)
	if not clcInfo_Options then return end

    local templates = clcInfo_Options.templates
	
	local category = specIdx and "CLASS_"..tostring(specIdx) or "CLASS"
	local name = (type(nameOrSpell) == "table" and nameOrSpell.Name or nameOrSpell)
	behavior = behavior or format([[return IconSpell("%s")]], name)
	behavior = gsub(behavior,"\t", "") --removing tabs since they mess up the display in the options, the text is not visible
	elementType = elementType or "icons"
	
	templates:Add(elementType, templates.defs[category], name, behavior)
end

------------------------------------------ SPEC MODULE FUNCTIONS -----------------------------------------------------
local function OutputMessageSpecMod(self, msg, outlevel)
	self.ParentClassModule:OutputMessage(msg, outlevel)
end

local function RegisterSpecModEvent(self, event, handler)
	local frame = self.ParentClassModule.SpecEventFrame
	if not frame:IsEventRegistered(event) then
		frame:RegisterEvent(event)
		
		if handler then
			self[event] = handler
		end
	end
end

local function UnregisterSpecModEvent(self, event)
	local frame = self.ParentClassModule.SpecEventFrame
	frame:UnregisterEvent(event)
end

local function EnsureInitialized(self)
	if not self.Initilized then
		self:OnInitialize()
	end
end

local function OnInitializeSpecMod(self)
	local _, specializationName = GetSpecializationInfo(self.SpecIdx)
	
	self.CmdPrioArg = string.lower(specializationName) .. "prio"
	self.ModuleName = string.lower(specializationName)
	self.SpecName = specializationName
	
	clcInfo.cmdList[self.CmdPrioArg] = function(args) CmdLine(self, args) end
	
	self.Initialized = true
end

local function OnTemplatesUpdateSpecMod(self)
	local tdbDefault = self:GetDefaultTemplateDB()
	tdbDefault.Version = self.Version
	tdbDefault.RangePerSkill = tdbDefault.RangePerSkill or false
	tdbDefault.LatencyAdjust = tdbDefault.LatencyAdjust or 0.2

    local tdb = clcInfo:RegisterClassModuleTDB(self.ModuleName, tdbDefault)
	self.Tdb = tdb
	
    if tdb then
        if not tdb.Version or tdb.Version < self.Version then
            -- fix stuff
            clcInfo.AdaptConfigAndClean(self.ModuleName, tdb, tdbDefault)
            tdb.Version = self.Version
        end

		--when templates change its often as a result of a talent or glyph change
		--also regardless of version, we want to ensure a clean and valid priority table
		OnTemplateGlyphOrTalentChangeInternal(self)
	else
		self:UpdatePrioQueue()
    end
end

local function UpdatePrioQueue(self)
	if not self.Tdb then
		activeQ = nil
		return
	end

    activeQ = activeQ or {}
	wipe(activeQ)

	-- filter away unknown abilities
    for i, value in ipairs(self.Tdb.PriorityList) do
		local action = self.Actions[value]
        if action and action.Id and IsSpellKnown(action.Id) then
			table.insert(activeQ, value)
		end
    end
end

-- Gets the spec group, that is whether the specialization associated with the module is the Primary(1) or Secondary(2) spec
local function GetSpecGroup(self)
	if self.SpecIdx == GetSpecialization(nil, nil, 1) then
		return 1
	elseif self.SpecIdx == GetSpecialization(nil, nil, 2) then
		return 2
	end

	return nil
end

-- Checks if a template exists for this spec.
local function TemplateExists(self)
	local templates = clcInfo.cdb.templates
	for _, v in ipairs(templates) do
		if v.spec and v.spec.primary == self.SpecIdx and v.spec.talent > 0 then
			return true
		end
	end

	return false
end

local function CreateDefaultTemplate(self, namePostFix)
	local defTalentIdx = 1 -- no need to do all sorts of logic to find a talent, since clcInfo now supports the All setting, which is 1
	namePostFix = namePostFix or ""

	local t = clcInfo.templates:GetDefault()
	t.spec.talent = defTalentIdx
	t.spec.primary = self.SpecIdx
	t.options.udLabel = self.SpecName..namePostFix

	local icons = self.CreateDefaultTemplateIcons(1, clcInfo.display.icons)
	t.icons = icons

	local grid = clcInfo.display.grids:GetDefault()
	grid.cellsX = #icons
	grid.cellsY = 2
	grid.spacingX = 1
	grid.udLabel = "IconGrid"
	clcInfo.display.grids.unlock = true
	table.insert(t.grids, grid)

	self:OutputMessage(L["%s Template Created (/clcInfo)."]:format(self.SpecName))

	return t
end

local function AddBehaviorTemplateSpecMod(self, nameOrSpell, behavior, elementType)
	AddBehaviorTemplate(self.SpecIdx, nameOrSpell, behavior, elementType)
end

------ Default Implementations of Optionals
local specModuleDefaults = {}
specModuleDefaults.__index = specModuleDefaults

function specModuleDefaults.GetMacroIcon(self)
	local _, englishClass  = UnitClass("player")
	return "ClassIcon_"..englishClass
end

function specModuleDefaults.CreateDefaultTemplateIcons(gridIdx, iconFactory)
	--current action
	local icon1 = iconFactory:GetDefault()
	icon1.udLabel = "IconCurrent"
	icon1.skinSource = "Grid"
	icon1.gridId = gridIdx
	icon1.gridX = 1
	icon1.exec = "return IconCurrent()"

	--next action
	local icon2 = iconFactory:GetDefault()
	icon2.udLabel = "IconNext"
	icon2.skinSource = "Grid"
	icon2.gridId = gridIdx
	icon2.gridX = 2
	icon2.exec = "IconNext()"
	
	return {icon1, icon2}
end

------------------------------------------ CLASS MODULE FUNCTIONS -----------------------------------------------------
local function OutputMessage(self, msg, outlevel)
	local c = "ff41a25d"
	if outlevel == "warn" then
		c = "ffdee029"
	elseif outlevel == "err" then
		c = "ffea4a12"
	end
	
	msg = string.format("|cffffe566<%s>|r|c%s %s|r", self.Name, c, msg)
	DEFAULT_CHAT_FRAME:AddMessage(msg)
end

local function RegisterClassModEvent(self, event, handler)
	local frame = self.EventFrame
	if not frame:IsEventRegistered(event) then
		frame:RegisterEvent(event)
		
		if handler then
			self[event] = handler
		end
	end
end

local function UnregisterClassModEvent(self, event)
	self.EventFrame:UnregisterEvent(event)
end

local function RegisterSpells(self, spells)
	if spells then
		clcInfoPlugin.LocalizeSpells(spells)
		self.Spells = spells
	end
end

local function RegisterSpecModule(self, specIdx, actions, version)
	local sm = {}
	sm.SpecIdx = specIdx
	sm.Actions = actions
	sm.Version = version
	sm.ParentClassModule = self
	
	sm.OnInitialize = OnInitializeSpecMod
	sm.EnsureInitialized = EnsureInitialized
	sm.OnTemplatesUpdate = OnTemplatesUpdateSpecMod
	sm.UpdatePrioQueue = UpdatePrioQueue
	sm.GetSpecGroup = GetSpecGroup
	sm.TemplateExists = TemplateExists
	sm.CreateDefaultTemplate = CreateDefaultTemplate
	sm.OutputMessage = OutputMessageSpecMod
	sm.RegisterEvent = RegisterSpecModEvent
	sm.UnregisterEvent = UnregisterSpecModEvent
	sm.RegisterBehavior = RegisterBehavior
	sm.AddBehaviorTemplate = AddBehaviorTemplateSpecMod
	
	sm.CleanPriorities = function(self) CleanPriorities(self.Tdb.PriorityList, self.Actions) end

	setmetatable(sm, specModuleDefaults)
	
	table.insert(self.SpecModules, sm)

	return sm
end

local function OnInitialize(self)
	if self.ExecuteMassiveCleanup then self.ExecuteMassiveCleanup() end
	
	local dbDefaults = self:GetDefaultDB()
	--inject defaults defined by this module
	dbDefaults.Version = self.Version
	dbDefaults.NotifiedVersion = self.NotifyVersion
	dbDefaults.TemplatesChecked = false

    local db = clcInfo:RegisterClassModuleDB(self.Name, dbDefaults)
	local isNewPLayer = (db == dbDefaults)
	if not db.Version or db.Version < self.Version then
        -- fix stuff
        clcInfo.AdaptConfigAndClean(self.Name, db, dbDefaults)
        db.Version = self.Version
    end

	-- attach class module event frame
	self.EventFrame = self.EventFrame or CreateFrame("Frame", nil, UIParent)
	self.EventFrame:Hide()
	self.EventFrame:SetScript("OnEvent", function(eventself, event, ...)
		self[event](self, event, ...)
	end)

	-- attach spec module event frame
	self.SpecEventFrame = self.SpecEventFrame or CreateFrame("Frame", nil, UIParent)
	self.SpecEventFrame:Hide()
	self.SpecEventFrame:SetScript("OnEvent", function(eventself, event, ...)
		local handler = activeSpecModule and activeSpecModule[event]
		if handler then handler(activeSpecModule, event, ...) end
	end)

	-- register for talent/glyph change since we cannot rely on OnTemplatesUpdate as it won't fire on glyph/talent change since it doesn't change the active template
	if not self.EventFrame:IsEventRegistered("PLAYER_TALENT_UPDATE") then
		self.EventFrame:RegisterEvent("PLAYER_TALENT_UPDATE")
	end

	-- get player level and register for level updates if < max
	self.PlayerLevel = UnitLevel("player")
	self.PlayerMaxLevel = GetMaxPlayerLevel()
	if self.PlayerLevel < self.PlayerMaxLevel and not self.EventFrame:IsEventRegistered("SKILL_LINES_CHANGED") then
		self.EventFrame:RegisterEvent("SKILL_LINES_CHANGED")
	end

	-- Initialize spec modules
	for _,v in ipairs(self.SpecModules) do
		v:OnInitialize()
	end
		
	-- Check for missing templates
	local specNames = ""
	if not db.TemplatesChecked then
		for _,v in ipairs(self.SpecModules) do
			if not v:TemplateExists() then
				specNames = specNames..v.SpecName.."\n"
			end
		end

		db.TemplatesChecked = true
	end

	-- if one or more templates are missing, prompt the user. Otherwise if there is a new version notification, show that.
	if specNames ~= "" then
		local dialog = StaticPopup_Show("CLCINFOPLUGIN_QUESTION_CREATE_MISSING_TEMPLATES", specNames)
		if (dialog) then
			dialog.data  = self.SpecModules
		end
	elseif isNewPLayer then
		local startupMessage = L["Welcome to clcInfo: %s\n\nDefault templates have been created for each of the supported specs.\nAll you need to do is position the Icon grid where you want it and lock it in place."]:format(self.Name)
		local dialog = StaticPopup_Show("CLCINFOPLUGIN_VERSION_INFO", startupMessage)
		if (dialog) then
			dialog.data  = self.SpecModules
		end
	elseif self.NotifyVersion and (not db.NotifiedVersion or (db.NotifiedVersion < self.NotifyVersion)) then
		local startupMessage = self.GetStartupNotification and self:GetStartupNotification() or nil
		if startupMessage then
			local dialog = StaticPopup_Show("CLCINFOPLUGIN_VERSION_INFO", startupMessage)
			if (dialog) then
				dialog.data  = self.SpecModules
			end
		end
		db.NotifiedVersion = self.NotifyVersion
	end

	self.DB = db
	if self.OnInitialized then self:OnInitialized(db) end
end

local function OnTemplatesUpdate(self)

	local activeTemplateSpec, activeTemplateName = GetActiveTemplateSpec()

	local curSpecIdx
	if activeSpecModule then curSpecIdx = activeSpecModule.SpecIdx end
	activeSpecModule = nil
	self.ActiveSpecModule = nil
	activeTdb, activeActions, activeQ = nil, nil, nil

	if activeTemplateSpec then
		for _,m in ipairs(self.SpecModules) do
			if m.SpecIdx == activeTemplateSpec then
				m:OnTemplatesUpdate()
				if m.OnActivated then m:OnActivated() end
				activeSpecModule = m
				self.ActiveSpecModule = m
				activeResources = m:GetActionResources()
				activeTdb, activeActions = m.Tdb, m.Actions
				rangeCheck = m.Tdb.RangePerSkill or m:GetRangeCheckSpell()
				gcdSpellId = m:GetGcdSpellId()
				self:OutputMessage(L["Active template is: "]..activeTemplateName)
			elseif m.SpecIdx == curSpecIdx then
				if m.OnDeactivated then m:OnDeactivated() end
			end
		end
	else
		-- warn if there is no active template but only once and only if current spec is covered by the class module
		local curSpec = GetSpecialization()
		local specSupported = false
		for _,m in ipairs(self.SpecModules) do
			if m.SpecIdx == curSpec then
				specSupported = true
				break
			end
		end

		if specSupported then
			self:OutputMessage(L["There is no active template."], "warn")
		end
	end
end


local function CreateDefaultTemplates(self)
	local defaultTemplates = {}
	for _,v in ipairs(self.SpecModules) do
		v:EnsureInitialized()
		local t = v:CreateDefaultTemplate()
		if t then table.insert(defaultTemplates, t) end
	end
	return defaultTemplates
end

local function AddBehaviorTemplateClassMod(self, nameOrSpell, behavior, elementType)
	AddBehaviorTemplate(nil, nameOrSpell, behavior, elementType)
end

local function PLAYER_TALENT_UPDATE(self, event, ...)
	if not activeSpecModule then return end
	
	OnTemplateGlyphOrTalentChangeInternal(activeSpecModule)
	activeResources = activeSpecModule:GetActionResources()

	-- Since class modules are not reloaded if the active template does not change, we want to reload them here if there is no active template so that buttons and stuff can change to reflect the new spec
	if not clcInfo.activeTemplate and clcInfo_Options then
		clcInfo_Options:LoadClassModules()
	end

	clcInfo:UpdateOptions()
end

local function SKILL_LINES_CHANGED(self, event, ...)
	local cause = ...
	if cause then return end -- we only want to react to a nil cause

	-- Support for levelling monks so that queue is updated when they learn new spells
	if self.PlayerLevel < self.PlayerMaxLevel then
		local curLevel = UnitLevel("player")
		if curLevel ~= self.PlayerLevel then
			self.PlayerLevel = curLevel

			if self.PlayerLevel == self.PlayerMaxLevel then
				self.EventFrame:UnregisterEvent("SKILL_LINES_CHANGED")
			end

			if self.ActiveSpecModule then
				self.ActiveSpecModule:UpdatePrioQueue()
			end
			
		end
	end
end

-------------------------------- PLUGIN BASE FUNCTIONS --------------------------------
local classModules = {}
clcInfoPlugin.SpecModuleDefaults = specModuleDefaults
clcInfoPlugin.ClcEnvironment = clcEnv

-- @paramsig name, className, version [, notifyVersion]
-- @param name The unique name of the class module plugin. Using the name of the addon is recommended, e.g. clcInfo_Warrior if you are making a complete warrior implementation.
-- @param className The english name of the class, e.g. WARRIOR. Do NOT use UnitClass("player") to get this, since that will result in your addon loading for ALL classes.
-- @param version The current version with respect to common db settings. If/when changes are made to the db (GetDefaultDB) this should be incremented.
-- @param notifyVersion The latest version of the addon that requires a special notification to users on load. See GetStartupNotification of the class module for more info. Once set it should only be changed the next time a version change requires some notification to be displayed. Can start out as nil.
-- @return Table representing the class module
function clcInfoPlugin:RegisterClassModule(name, className, version, notifyVersion)
	local localClass, englishClass  = UnitClass("player")
	if string.lower(englishClass) ~= string.lower(className) then return nil end

	if classModules[name] then
		return classModules[name]
	end

	local cm = clcInfo:RegisterClassModule(name)
	classModules[name] = cm

	cm.Name = name
	cm.LocalizedClassName = localClass
	cm.Version = version
	cm.NotifyVersion = notifyVersion

	cm.SpecModules = {}

	cm.RegisterSpecModule = RegisterSpecModule
	cm.OutputMessage = OutputMessage
	cm.CreateDefaultTemplates = CreateDefaultTemplates
	cm.RegisterEvent = RegisterClassModEvent
	cm.UnregisterEvent = UnregisterClassModEvent
	cm.RegisterSpells = RegisterSpells
	cm.RegisterBehavior = RegisterBehavior
	cm.AddBehaviorTemplate = AddBehaviorTemplateClassMod
	cm.PLAYER_TALENT_UPDATE = PLAYER_TALENT_UPDATE
	cm.SKILL_LINES_CHANGED = SKILL_LINES_CHANGED

	--Since clcinfo presently does not call these functions using the : notation (implied self), nor passes self, they have to be wrapped in closures
	cm.OnInitialize = function() OnInitialize(cm) end
	cm.OnTemplatesUpdate = function() OnTemplatesUpdate(cm) end
	
	return cm
end

-- Gets a previously registered class module @see RegisterClassModule. Mainly for use if spec modules are implemented in separate files.
-- @paramsig name
-- @param name The unique name of the class module.
-- @return Table representing the class module or nill if not found
function clcInfoPlugin:GetClassModule(name)
	return classModules[name]
end

-- Localizes a table of spells. Must be in the format key = spellId, where key is some string, an obvious choice would be the english spell name. The table will be altered to the form key = { Id = spellId, Name = localizedSpellName }. Note this function does not take a self parameter.
-- @paramsig spells
-- @param spells The spell table to localize.
function clcInfoPlugin.LocalizeSpells(spells)
	for key, spellId in pairs(spells) do
		local spellName = GetSpellInfo(spellId)
		if not spellName then spellName = L["Unknown Spell"] end
		spells[key] = { Id = spellId, Name = spellName }
	end
end

-- Exposes a behavior in the clcInfo environment, to be callable just like IconSpell, IconCurrent etc.
-- Other behaviors/functions in the clcInfo environment, such as Iconspell can be obtain through the ClcEnvironment field
-- @paramsig name, behavior
-- @param name The unique name of the behavior.
-- @param name The function that is the behavior.
function clcInfoPlugin:RegisterBehavior(name, behavior)
	clcEnv[name] = behavior
end

-- Checks if a specific glyph is socketed in the current spec of the player.
-- @paramsig glyphSpellId
-- @param glyphSpellId The id of the glyph to check for.
-- @return Boolean indicating whether its present or not
function clcInfoPlugin.HasGlyphSocketed(glyphSpellId)
	for i = 1, NUM_GLYPH_SLOTS do
		local _, _, _, socketedGlyphSpellId = GetGlyphSocketInfo(i)
		if socketedGlyphSpellId == glyphSpellId then
			return true
		end
	end
	return false
end

-- Gets the time remaining and number of stacks of a given Buff or Debuff.
-- @paramsig unit, spell, filter [, currentTime]
-- @param unit The unit to check, e.g. "player" or "target".
-- @param spell The localized name of the spell to check for.
-- @param filter Flags to indicate what type of spell it is. e.g. "HELPFUL|PLAYER" for buffs, "HARMFUL" for debuffs
-- @param currentTime Optional number representing the current time if it should be different from GetTime()
-- @return The time remaining of the buff / debuff and the stack count
function clcInfoPlugin.GetTimeLeft(unit, spell, filter, currentTime)
	local timeLeft = 0
	local name, _, _, count, _, _, expires = UnitAura(unit, spell, nil, filter)
	if name then
		currentTime = currentTime or GetTime()
		timeLeft = expires - currentTime
	end
	return timeLeft, count
end

-- Gets the cooldown remaining for a given spell.
-- @paramsig id [, adjust] [, currentTime]
-- @param id The spellid to check.
-- @param adjust Optional number to adjust the return value, e.g. -0.4 to subtract 0.4 seconds from the returned value.
-- @param currentTime Optional number representing the current time if it should be different from GetTime()
-- @return The time remaining cooldown or 0 if off cooldown.
function clcInfoPlugin.GetCooldown(id, adjust, currentTime)
	adjust = adjust or 0
	local start, duration = GetSpellCooldown(id)
	currentTime = currentTime or GetTime()
	local cd = start + duration - currentTime + adjust
	if cd < 0 then return 0 end
	return cd
end

-- Utility function to open the config options window
function clcInfoPlugin:OpenOptions()
	if not clcInfo_Options then
		local loaded, reason = LoadAddOn("clcInfo_Options")
		if( not clcInfo_Options ) then
			print("Failed to load configuration addon. Error returned: ", reason)
			return
		end
	end
	clcInfo_Options:Open()
end

---------------------------------------------------------------- OPTION PAGES ----------------------------------------------------------------
-- The following section is dedicated to new users to facilitate the setup of templates
local function InsertTemplate(specModule, refresh, namePostFix)

	local t = specModule:CreateDefaultTemplate(namePostFix)

	table.insert(clcInfo.cdb.templates, t)

	if refresh then
		clcInfo:OnTemplatesUpdate()
		if clcInfo_Options then
			clcInfo_Options:UpdateTemplateList()
		end
	end
end

local function InsertDefaultTemplates(specModules)
	for _,v in ipairs(specModules) do
		if not v:TemplateExists() then
			InsertTemplate(v, false)
		end
	end

	clcInfo:OnTemplatesUpdate()
	if clcInfo_Options then
		clcInfo_Options:UpdateTemplateList()
	end
end

local function CreatePrioMacro(specModule)

	-- make sure there are at least one available slot
	local _, numperchar = GetNumMacros()
	if numperchar == 18 then --max per char macroes
		StaticPopup_Show("CLCINFOPLUGIN_MACRO_CREATE_ERROR", L["You have used all your character specific macro slots."])
		return
	end

	-- set the default macro name
	local tmpName = string.sub("clc" .. specModule.SpecName, 1, 14)

	-- check if a macro wtih the default name exists already and if so try another name
	local macroName, nameClash, lastChecked = tmpName
	local nextPostFix = 0
	repeat
		nameClash = false
		nextPostFix = nextPostFix + 1
		for i=1,numperchar do
			lastChecked = i
			local name = (GetMacroInfo(i + 36))
			if macroName == name then
				nameClash = true
				macroName = tmpName .. tostring(nextPostFix)
				break
			end
		end
	until (not nameClash) or (nextPostFix > 8)

	-- IF we can't find a name well...
	if nameClash then
		StaticPopup_Show("CLCINFOPLUGIN_MACRO_CREATE_ERROR", L["You already have macros with the same name(s)."])
		return
	end

	-- get icon, using stance icons
	local macroIcon = specModule:GetMacroIcon()
	if type(macroIcon) == "number" then
		local _, _, tmp = GetSpellInfo(macroIcon)
		macroIcon = tmp
	end
	macroIcon = string.gsub(macroIcon, "Interface\\Icons\\", "")

	-- get the prio list
	local prios = table.concat(specModule.Tdb.PriorityList, " ")
	local body = string.format('/clcinfo %s %s', specModule.CmdPrioArg, prios)
	local macroIdx = CreateMacro(macroName, macroIcon, body, 1)

	PickupMacro(macroIdx)

	specModule:OutputMessage(L["%s macro created."]:format(macroName))
end

------- Option page getters and setters
local function GetPriorities()
	return "Tdb"
end

local function GetCreateTemplateFunc(specModule)
	return function () 
		if specModule:TemplateExists() then
			local dialog = StaticPopup_Show("CLCINFOPLUGIN_CONFIRM_CREATE_ADDITIONAL_TEMPLATE", specModule.SpecName)
			if (dialog) then
				dialog.data  = specModule
			end
		else
			InsertTemplate(specModule, true)
		end
	end
end

local function GetChangeSpecFunc(specModule)
	local specGrp = specModule:GetSpecGroup()
	return function () SetActiveSpecGroup(specGrp) end
end

local function GetCreateMacroFunc(specModule)
	return function () CreatePrioMacro(specModule) end
end

----------- Option page creators
local function newGetDB(db)
    return function (info)
		return db[info[#info]]
	end
end

local function newSetDB(db)
    return function (info, val)
		db[info[#info]] = val
	end
end

local function LoadClassModuleOptions()
	local optionTabs, localizedClassName

	for _,cm in pairs(classModules) do
		if not cm.BehaviorTemplatesRegistered and cm.RegisterBehaviorTemplates then
			cm:RegisterBehaviorTemplates()
			cm.BehaviorTemplatesRegistered = true
		end
		if cm.GetOptionEditors then
			local moduleOptions = cm:GetOptionEditors(newGetDB(cm.DB), newSetDB(cm.DB))
			optionTabs = optionTabs or {}
			optionTabs[cm.Name] = { order = 1, type = "group", name = cm.Name, args = moduleOptions }
			
			localizedClassName = cm.LocalizedClassName
		end
	end
	
	if optionTabs then
		local cfgMatrix = {
			order = 1, type = "group", childGroups = "tab", name = localizedClassName.." "..L["Options"],
			args = optionTabs
		}
		
		clcInfo_Options.options.args.classModules.args[localizedClassName] = cfgMatrix
	end
end

local function LoadActiveModuleOptions(specModule, activeTemplateName, GetTDB, SetTDB)
	-- register behavior templates
	if not specModule.BehaviorTemplatesRegistered and specModule.RegisterBehaviorTemplates then
		specModule:RegisterBehaviorTemplates()
		specModule.BehaviorTemplatesRegistered = true
	end
	
	-- General options
    local cfgMatrix = {
        order = 2, type = "group", childGroups = "tab", name = specModule.SpecName,
        args = {
            tabPriority = {
                order = 1, type = "group", name = L["Abilities"], args = {
                    igSettings = {
                        order=1, type = "group", inline = true, name="", args = {
							activeTemplate = {
                                order = 3, type = "description", width = "double",
                                name = L["Active Template: |cff41a25d%s|r"]:format(activeTemplateName),
                            },
							createNewTemplate = {
								order = 4, type = "execute",
								name = L["Create new template"],
								desc = L["Create a new template for this specialization. The template will include a default fully configured icon setup."],
								func = GetCreateTemplateFunc(specModule)
							},
                        },
                    },
					prioRecommendedSettings = {
                        order = 2, type = "group", inline = true, name = L["Recommended Priorities"],
                        args = {} -- place holder for recommended priority buttons
                    },
                    prioSettings = {
                        order = 3, type = "group", inline = true, name = L["Priorities"],
                        args = {
							prioDesc = {
								order = 1, type = "description",
								name = L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."],
							},
							prio = {
								order = 4, type = "select", dialogControl = 'CLCCMP_Priorities', values = specModule,
								name = "", get = GetPriorities
							},
						} 
                    },
					prioDesc = {
						order = 4, type = "description",
						name = L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."]:format(specModule.CmdPrioArg),
					},
					createMacro = {
						order = 5, type = "execute",
						name = L["Export to Macro"],
						desc = L["Export the current priority list to a macro to easily change to that priority."],
						func = GetCreateMacroFunc(specModule)
					},
                },           
            },
			tabSettings = {
				order = 3, type = "group", name = L["Settings"], args = {
					general = {
                        order=1, type = "group", inline = true, name=L["General"], args = {
						    RangePerSkill = {
                                order = 1, type = "toggle", width="double",
                                name = L["Range per skill"],
								desc = L["Whether to check for range on a skill by skill basis, or simply melee range."], 
                                get = GetTDB, set = SetTDB,
							},
							LatencyAdjust = {
								order = 2, width="double", type = "range", min = 0, max = 0.5, step = 0.1, name = L["Latency Adjust"],
								desc=L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] , 
								get = GetTDB, set = SetTDB,
							},
						},
					},
					spec = {
                        order=2, type = "group", inline = true, name=specModule.SpecName, args = {}
					},
				},
			},
        },
    }

	-- Inject spec specific settings
	if specModule.GetOptionEditors then
		local specSettings = cfgMatrix.args.tabSettings.args.spec.args
		local editors = specModule:GetOptionEditors(GetTDB, SetTDB)
		for k,v in pairs(editors) do
			specSettings[k] = v
		end
	end

	-- Generate recommended priority buttons. This is a bit hairy, basically it creates a function that calls the function supplied by the spec module to change priorities. It then adds the remaining necessary calls.
	if specModule.GetRecommendedPriorities then
		if not specModule.PreparedRecommendedPriorities then
			local tmp = {}
			for k,v in pairs(specModule:GetRecommendedPriorities()) do
				local recoFunc = v
				tmp[k] = function()
					recoFunc()
					CleanPriorities(specModule.Tdb.PriorityList, specModule.Actions)
					specModule:UpdatePrioQueue()
					clcInfo:UpdateOptions()
				end
			end
			specModule.PreparedRecommendedPriorities = tmp
		end

		local prioRecommendedArgs = cfgMatrix.args.tabPriority.args.prioRecommendedSettings.args
		for k,v in pairs(specModule.PreparedRecommendedPriorities) do
			prioRecommendedArgs[k] = {
				order = 1, type = "execute",
				name = k, desc = L["Click to adjust priorities and settings to the recommendations for %s play."]:format(k),
				func = v
			}
		end
	end

	return cfgMatrix
end

local function LoadInactiveModuleOptions(specModule, info, showCreate, showChangeSpec)

	local cfgMatrix = {
        order = 2, type = "group", childGroups = "tab", name = specModule.SpecName,
        args = {
			tabInfo = {
                order = 1, type = "group", name = L["Inactive"], 
				args = {
					prioDesc = {
						order = 1, type = "description", width="full",	name = info,
					},
				},
			},
		},
	}
	
	if(showCreate) then

		cfgMatrix.args.tabInfo.args.createNewTemplate = {
			order = 3, type = "execute",
			name = L["Create new template"],
			desc = L["Create a new template for this specialization. The template will include a default fully configured icon setup."],
			func = GetCreateTemplateFunc(specModule)
		}
		
	end

	if(showChangeSpec) then
		cfgMatrix.args.tabInfo.args.changeSpec = {
			order = 4, type = "execute", width="double",
			name = L["Activate your %s specialization"]:format(specModule.SpecName),
			desc = L["Click to activate the specialization for this class module, i.e change spec."],
			func = GetChangeSpecFunc(specModule)
		}
		
	end

	return cfgMatrix
end

local function LoadModule(specModule, GetTDB, SetTDB)

	local activeTemplateSpec, activeTemplateName = GetActiveTemplateSpec()

	local cfgMatrix = nil
	local curSpecIdx = GetSpecialization()
	local curSpecName
	if curSpecIdx then
		_,curSpecName = GetSpecializationInfo(curSpecIdx)
	else
		curSpecName = "unspecialized"
	end
	local otherSpecName
	if specModule.SpecIdx then
		_,otherSpecName = GetSpecializationInfo(specModule.SpecIdx)
	else
		otherSpecName = "unspecialized"
	end

	if activeTemplateSpec == specModule.SpecIdx then
		cfgMatrix = LoadActiveModuleOptions(specModule, activeTemplateName, GetTDB, SetTDB)
	elseif activeTemplateSpec == nil then
		-- So no active template
		if specModule.SpecIdx == curSpecIdx then
			cfgMatrix = LoadInactiveModuleOptions(specModule, L["There is no active template, thus options for the %s are not available.\nIf you like, you can create a new template for the %s which will then become active."]:format(curSpecName,curSpecName), true)
		else
			local offerChangeSpec = specModule:GetSpecGroup()
			cfgMatrix = LoadInactiveModuleOptions(specModule, L["There is no active template, thus options for the %s are not available.\nIf you like, you can create a new template for the %s, it will not become active until you change specs though."]:format(otherSpecName,otherSpecName), true, offerChangeSpec)
		end
	else
		-- So we do have an active template, but of course it only matches one of the specs, so this is for the one it didn't match
		if specModule.SpecIdx == curSpecIdx then
			local _, otherSpecName = GetSpecializationInfo(activeTemplateSpec)
			cfgMatrix = LoadInactiveModuleOptions(specModule, L["The active template has been forced to match the %s specialization, thus options for the %s are not available."]:format(otherSpecName, curSpecName), false)
		else
			local offerChangeSpec = specModule:GetSpecGroup()
			cfgMatrix = LoadInactiveModuleOptions(specModule, L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."]:format(curSpecName, otherSpecName), false, offerChangeSpec)
		end
	end

	clcInfo_Options.options.args.classModules.args[specModule.ModuleName] = cfgMatrix
end

local function LoadModuleOptions()
	if not clcInfo_Options then return end

	LoadClassModuleOptions()
	
	for _,cm in pairs(classModules) do
		for _,v in ipairs(cm.SpecModules) do
			LoadModule(v, newGetDB(v.Tdb), newSetDB(v.Tdb))
		end
	end
	
	-- Add the IconCurrent and IconNext behavior templates
	local mod = clcInfo_Options.templates
    local defs = mod.defs
	mod:Add("icons", defs.CLASS, L["Current ability"], "return IconCurrent()")
    mod:Add("icons", defs.CLASS, L["Next ability"], "IconNext()")
end

clcInfo.optionsCMLoaders[#(clcInfo.optionsCMLoaders) + 1] = LoadModuleOptions


-------------------------------- DIALOGS ------------------------------------------
StaticPopupDialogs["CLCINFOPLUGIN_VERSION_INFO"] = {
	text = "%s\n\nDo you wish to open the options page now?",
	button1 = YES,
	button2 = NO,
	OnAccept = function (self, specModules)
		clcInfoPlugin:OpenOptions()
		
		local curSpecIdx = GetSpecialization()
		local modName
		for i,v in ipairs(specModules) do
			if v.SpecIdx == curSpecIdx then
				modName = v.ModuleName
			end
		end
		local AceDialog = LibStub("AceConfigDialog-3.0")
		if modName then
			AceDialog:SelectGroup("clcInfo", "classModules", modName)
		else
			AceDialog:SelectGroup("clcInfo", "classModules")
		end
	end,
	hideOnEscape = 1,
	timeout = 0,
	preferredIndex = 3,
	whileDead = 1,
}

StaticPopupDialogs["CLCINFOPLUGIN_QUESTION_CREATE_MISSING_TEMPLATES"] = {
	text = L["Welcome to clcInfo: %s\n\nPresently no templates exist for the following specs:\n\n%s\nDo you want to create those templates now?"],
	button1 = YES,
	button2 = NO,
	OnAccept = function (self, specModules)
		InsertDefaultTemplates(specModules)
	end,
	hideOnEscape = 1,
	timeout = 0,
	preferredIndex = 3,
	whileDead = 1,
}

StaticPopupDialogs["CLCINFOPLUGIN_CONFIRM_CREATE_ADDITIONAL_TEMPLATE"] = {
	text = L["You already have atleast one %s template, do you wish to create another?\n\nNote you will have to pick a distinguishing talent on each template."],
	button1 = YES,
	button2 = NO,
	OnAccept = function (self, specModule)
		InsertTemplate(specModule, true, L["New"])
	end,
	hideOnEscape = 1,
	timeout = 0,
	preferredIndex = 3,
	whileDead = 1,
}

StaticPopupDialogs["CLCINFOPLUGIN_MACRO_CREATE_ERROR"] = {
	text = L["Unable to create macro!\n\n%s"],
	button1 = OKAY,
	button2 = nil,
	OnAccept = function ()
	end,
	OnCancel = function()
    end,
	hideOnEscape = 1,
	timeout = 0,
	preferredIndex = 3,
	whileDead = 1,
}

---------------------------------------------------------------- ACTION ROTATION ----------------------------------------------------------------
local clcInfoDebug = clcInfo.debug

--current ability id, next ability id
local curId, nextId
local curIconId, nextIconId

-- figures out which ability should be used next
local function GetNextAction()
    local n = #activeQ
    local actionKey

    -- parse once, get cooldowns, return first 0
    for i = 1, n do
        actionKey = activeQ[i]
        local action = activeActions[actionKey]
        local cd = action.GetCD(curId, activeResources, activeTdb)

		if clcInfoDebug.enabled and activeSpecModule.DebugActionCD then
			activeSpecModule.DebugActionCD(clcInfoDebug, actionKey, cd)
		end

        if cd == 0 then
            return action
        end
        action.CD = cd
    end
    
	if clcInfoDebug.enabled then
        clcInfoDebug:AddLeft("SECOND ROUND, No 1st round match")
    end
	
    -- parse again, return min cooldown
    local minIdx = 1
    local minCD = activeActions[activeQ[1]].CD
    for i = 2, n do
        local actionCD = activeActions[activeQ[i]].CD
        if minCD > actionCD then
            minCD = actionCD
            minIdx = i
        end
    end

    return activeActions[activeQ[minIdx]]
end

	
-- determines the current and next abilities
local function ActionRotation()
    -- initialize resources for next pair of actions
    -- current time and remaining gcd adjusted for any active channel
    local currentTime = GetTime()
	local activeChannelEnds = activeSpecModule.GetActiveChannelEndTime and activeSpecModule:GetActiveChannelEndTime() or 0

	local gcdLeft
	local gcdDuration = 0
	if activeChannelEnds > currentTime then
		gcdLeft = activeChannelEnds - currentTime
	else
		-- gcd value
		local start, gcd = GetSpellCooldown(gcdSpellId)
		if gcd > 0 then
			gcdDuration = gcd
		end

		gcdLeft = start + gcdDuration - currentTime
		if gcdLeft > (1 - activeTdb.LatencyAdjust) then return end
		if gcdLeft < 0 then gcdLeft = 0 end
	end
    
    --resources
	activeResources:RefreshResources(currentTime, gcdLeft, gcdDuration)

	-- allow for debug output
	if clcInfoDebug.enabled then
		clcInfoDebug:Clear()
		if activeSpecModule.DebugPreCurrent then
			activeSpecModule.DebugPreCurrent(clcInfoDebug, activeResources)
		end
	end

	-- Get the curId
	curId = nil -- new round no cur id yet
    local action = GetNextAction()
	curId = action.Id
	curIconId = action.IconId or action.Id
	
	-- allow for debug output
	if clcInfoDebug.enabled and activeSpecModule.DebugPostCurrent then
		activeSpecModule.DebugPostCurrent(clcInfoDebug, action, activeResources)
	end
	
	-- update resources used by selected action
    if action.UpdateResources then
		action.UpdateResources(activeResources)
	end
	
	-- Do between actions cleanup if supported/required
	if activeResources.BetweenActionsCleanup then
		activeResources:BetweenActionsCleanup()
	end
    -- allow for debug output
	if clcInfoDebug.enabled and activeSpecModule.DebugPreNext then
		activeSpecModule.DebugPreNext(clcInfoDebug, activeResources)
	end
	
	-- Get next action Id
    action = GetNextAction()
	nextId = action.Id
	nextIconId = action.IconId or action.Id
	
	-- allow for debug output
	if clcInfoDebug.enabled and activeSpecModule.DebugPostNext then
		activeSpecModule.DebugPostNext(clcInfoDebug, action, activeResources)
	end
end

local IconSpell = clcEnv.IconSpell
local nextSkill

-- Get current ability
function clcEnv.IconCurrent()
	if not activeSpecModule then return end
	
    ActionRotation()

    if nextSkill then nextSkill:DoUpdate() end
	return IconSpell(curIconId, rangeCheck)
end

-- Determine Next ability
local function NextExec()
    return IconSpell(nextIconId, rangeCheck)
end

-- reset next ability
local function ExecCleanupNext()
    nextSkill = nil
end

-- Get Next ability
function clcEnv.IconNext()
    nextSkill = clcEnv.___e
    nextSkill:SetScript("OnUpdate", nil)
    nextSkill.exec = NextExec
    nextSkill.ExecCleanup = ExecCleanupNext
end