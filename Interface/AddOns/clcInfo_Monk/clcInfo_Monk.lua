------------------------------------------------------------------------------
-- $Id$
------------------------------------------------------------------------------
--                            clcInfo_Monk.lua
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
--  This file is for use with clcInfo by abija.
--
--  abija has distributed clcInfo All Rights Reserved.  For more information
--  go to: http://wow.curseforge.com/addons/clctracker/
--
------------------------------------------------------------------------------
-- Author:
--      Geminior (@ Earthen Ring)
------------------------------------------------------------------------------
-- Description:
--   Class Module implementation for clcInfo_Monk. 
------------------------------------------------------------------------------
local clcInfoPlugin = LibStub("clcInfoClassModulePlugin")
if not clcInfoPlugin then return end

-- Geminior: Instantiate the class module. If NotifyVersion changes, remember to also supply the message you want to show the user in the GetStartupNotification function
local Version, NotifyVersion = 3, 4

local classModule = clcInfoPlugin:RegisterClassModule("clcInfo_Monk", "MONK", Version, NotifyVersion)
if not classModule then return end -- The player is not a monk, so do not load

-- Text resources
local L = LibStub("AceLocale-3.0"):GetLocale("clcInfo_Monk")

-- Geminior: For this implementation I have chosen to define all spells on the class module level. This is not a requirement
-----------------MONK SPELLS------------------------------------
classModule:RegisterSpells({
    --Brewmaster
	["Keg Smash"] = 121253,
	["Guard"] = 115295,
	["Light Stagger"] = 124275,
	["Moderate Stagger"] = 124274,
	["Heavy Stagger"] = 124273,
	["Shuffle"] = 115307,
	["Elusive Brew"] = 115308,
	["Brewing: Elusive Brew"] = 128938,
	["Purifying Brew"] = 119582,
	["Breath of Fire"] = 115181,
    --Windwalker
	["Rising Sun Kick"] = 107428,
	["Fists of Fury"] = 113656,
	["Energizing Brew"] = 115288,
	["Tigereye Brew"] = 116740,
	["Combo Breaker: Blackout Kick"] = 116768,
	["Combo Breaker: Tiger Palm"] = 118864,
	["Spinning Fire Blossom"]  = 115073,
	["Flying Serpent Kick"]  = 101545,
	["Touch of Karma"]  = 122470,
	["Storm, Earth and Fire"]  = 137639,
    --generic monk
	["Tiger Palm"] = 100787,
	["Blackout Kick"] = 100784,
	["Jab"] = 100780,
	["Touch of Death"] = 115080,
	["Expel Harm"] = 115072,
	["Fortifying Brew"] = 115203,
	["Provoke"]  = 115546,
	["Tiger Power"] = 125359,
	["Death Note"]  = 121125,
	["Crackling Jade Lightning"]  = 117952,
	["Zen Meditation"]  = 115176,
	--talents
	["Tiger's Lust"]  = 116841,
	["Chi Wave"] = 115098,
	["Zen Sphere"] = 124081,
	["Chi Burst"] = 123986,
	["Power Strikes"] = 129914,
	["Chi Brew"]  = 115399,
	["Ring of Peace"]  = 116844,
	["Charging Oxe Wave"]  = 119392,
	["Leg Sweep"] = 119381,
	["Dampen Harm"]  = 122278,
	["Diffuse Magic"]  = 122783,
	["Rushing Jade Wind"] = 116847,
	["Invoke Xuen, the White Tiger"] = 123904,
	["Chi Torpedo"] = 115008,
})

-------------------- Required implementation of clcInfoClassModulePlugin ----------------------
function classModule:GetDefaultDB()
	return { jabIconId = 115693, jabIconAuto = true, talentBehavior = "sel" }
end

------------------ Optional implementations of clcInfoClassModulePlugin -----------------------
local db
local defaultJabId = 100780

-- This displays return the message to display to players when:
-- - A player updates the addon from NotifyVersion to the current version. I.e. when you change NotifyVersion this is where you define the message to display to notify of changes they need to be aware of.
-- Note ther is no point in localizing this message unless you get the localization done before the version is released
function classModule:GetStartupNotification()
	return "Change notification clcInfo_Monk\n\nA complete rewrite of the Addon code has been completed.\nAll settings and templates have been converted to the new format, but please make sure that any custom templates/icons you may have created are still working.\n\nSignificant changes have been made to Brewmaster."
end

-- Behavior templates for the monk class as a whole
function classModule:RegisterBehaviorTemplates()
	
	--Munkay: should all the spells be listed? I'ma list them all anyways
    --generic monk
	self:AddBehaviorTemplate(self.Spells["Tiger Palm"])
	self:AddBehaviorTemplate(self.Spells["Blackout Kick"])
	self:AddBehaviorTemplate(self.Spells["Jab"])
	self:AddBehaviorTemplate(self.Spells["Touch of Death"])
	self:AddBehaviorTemplate(self.Spells["Expel Harm"])
	self:AddBehaviorTemplate(self.Spells["Fortifying Brew"])
	self:AddBehaviorTemplate(self.Spells["Provoke"])
	self:AddBehaviorTemplate(self.Spells["Tiger Power"])
	self:AddBehaviorTemplate(self.Spells["Death Note"])
	self:AddBehaviorTemplate(self.Spells["Crackling Jade Lightning"])
	self:AddBehaviorTemplate(self.Spells["Zen Meditation"])
	--talents
	self:AddBehaviorTemplate(self.Spells["Tiger's Lust"])
	self:AddBehaviorTemplate(self.Spells["Chi Wave"])
	self:AddBehaviorTemplate(self.Spells["Zen Sphere"])
	self:AddBehaviorTemplate(self.Spells["Chi Burst"])
	self:AddBehaviorTemplate(self.Spells["Power Strikes"])
	self:AddBehaviorTemplate(self.Spells["Chi Brew"])
	self:AddBehaviorTemplate(self.Spells["Ring of Peace"])
	self:AddBehaviorTemplate(self.Spells["Charging Oxe Wave"])
	self:AddBehaviorTemplate(self.Spells["Leg Sweep"])
	self:AddBehaviorTemplate(self.Spells["Dampen Harm"])
	self:AddBehaviorTemplate(self.Spells["Diffuse Magic"])
	self:AddBehaviorTemplate(self.Spells["Rushing Jade Wind"])
	self:AddBehaviorTemplate(self.Spells["Invoke Xuen, the White Tiger"])
	self:AddBehaviorTemplate(self.Spells["Chi Torpedo"])

end --behavior templates

-- Option Editors implementation
local jabLookup
local function GetJabTextureLookup()
	if jabLookup then return jabLookup end

	jabLookup = {}
	jabLookup[L["Axe"]] =		{ id = 115687, texture="Interface\\Icons\\INV_Axe_97" }
	jabLookup[L["Mace"]] =		{ id = 115693, texture="Interface\\Icons\\INV_Mace_08" }
	jabLookup[L["Sword"]] =		{ id = 115695, texture="Interface\\Icons\\INV_Sword_10" }
	jabLookup[L["Polearm"]] =	{ id = 115698, texture="Interface\\Icons\\INV_Spear_03" }
	jabLookup[L["Staff"]] =		{ id = 108557, texture="Interface\\Icons\\ability_monk_staffstrike" }
	jabLookup[L["Fist"]] =		{ id = 108967, texture="Interface\\Icons\\ability_monk_jab" } -- Geminior: this isn't a monk spell but it has the jab fist icon, whereas 100780 has a dynamic icon

	return jabLookup
end

local function UpdateJabIconId()
	local jabId
	if db.jabIconAuto then
		jabId = defaultJabId
	else
		jabId = db.jabIconId or defaultJabId -- Geminior: just to be on the safe side
	end

	for _, mod in ipairs(classModule.SpecModules) do
		mod.SetJabIconId(jabId)
	end
end

local function GetJabAutoValue (info, val)
    return db[info[#info]]
end

local function SetJabAutoValue (info, val)
    db[info[#info]] = val
	UpdateJabIconId()
end

local function GetJabIconValue (info, val)
	local jabId = db[info[#info]]
	for k,v in pairs(GetJabTextureLookup()) do
		if v.id == jabId then return k end
	end
    return L["Axe"]
end

local function SetJabIconValue (info, val)
	for k,v in pairs(GetJabTextureLookup()) do
		if k == val then
			db[info[#info]] = v.id
			break
		end
	end
	UpdateJabIconId()
end

local function GetTalentBehaviorValue (info, val)
    return db[info[#info]]
end

local function SetTalentBehaviorValue (info, val)
    db[info[#info]] = val
	if classModule.ActiveSpecModule then
		classModule.ActiveSpecModule:OnGlyphOrTalentChange()
		classModule.ActiveSpecModule:CleanPriorities()
		classModule.ActiveSpecModule:UpdatePrioQueue()
		clcInfo:UpdateOptions()
	end
end

local function ToggleJabIconEnabled()
	return db.jabIconAuto
end

function classModule:OnInitialized(settingsDB)
	db = settingsDB
	UpdateJabIconId()
end

local cfgOptions
function classModule:GetOptionEditors(GetDB, SetDB)
	--Geminior: not using the default db getter and setter here since these settings have additional requirements
	cfgOptions = cfgOptions or {
		igSettings = {
			order=1, type = "group", inline = true, name=L["Jab Icon Settings"], args = {
				jabIconAuto = {
					order = 2, type = "toggle",
					name = L["Automatic"],
					desc = L["If checked, the Jab icon will be based on the current weapon used."], 
					get = GetJabAutoValue, set = SetJabAutoValue,
				},
				jabIconId = {
					order = 4, type = "select", dialogControl = 'CLCM_SpellIcon', values = GetJabTextureLookup,
					name = L["Specific Icon"], desc = L["Select an icon to always display for Jab. This is ignored if Automatic is checked"],
					get = GetJabIconValue, set = SetJabIconValue, disabled = ToggleJabIconEnabled,
				},
			},
		},
		talentSettings = {
			order=2, type = "group", inline = true, name=L["Talent Abilities Settings"], args = {
				talentBehavior = {
					order = 2, type = "select", style="radio", width="full",
					name = L["Behavior of talent abilities"],
					desc = L["Depending on this setting either all or only selected talent abilities will be available for prioritization. Regardless only known abilities will actually be suggested. NOTE: Macros created for one setting are incompatible with the other setting."], 
					values = {all = L["Show all talent abilities."], sel = L["Show only selected talent abilities."]},
					get = GetTalentBehaviorValue, set = SetTalentBehaviorValue,
				}
			},
		},
	}

	return cfgOptions
end

-- Geminior: this function is only implemented since this addon had a user base before being ported to clcInfoClassModulePlugin
-- and hence the existing saved variables must be converted.
-- Munkay: to be deprecated in version 3.0
function classModule.ExecuteMassiveCleanup()
	local dbRoot = clcInfo.cdb
	if not dbRoot or not dbRoot.classModules or dbRoot.classModules["clcinfo_monk"] then return end
	
	local target
	local source = dbRoot.classModules["clcmonk_generaloptions"]
	if source then
		target = {}
		target["Version"] = source["version"] or 1
		target["NotifiedVersion"] = source["notifiedVersion"] or 1
		target["TemplatesChecked"] = source["asked_missing"] and true or false
		target["jabIconAuto"] = source["jabIconAuto"] and true or false
		target["jabIconId"] = source["jabIconId"] or 108557

		dbRoot.classModules["clcmonk_generaloptions"] = nil	
		dbRoot.classModules["clcinfo_monk"] = target
	end
	
	if dbRoot.classModules["____monk_windwalker"] then dbRoot.classModules["____monk_windwalker"] = nil end
	if dbRoot.classModules["____monk_brewmaster"] then dbRoot.classModules["____monk_brewmaster"] = nil end
	
	if not dbRoot.templates then return end
	for _,t in ipairs(dbRoot.templates) do
		if t.classModules then
			source = t.classModules["____monk_brewmaster"]
			if source then
				if t.spec.primary == 1 then
					target = {}
					target["Version"] = source["version"] or 20
					target["RangePerSkill"] = source["rangePerSkill"] and true or false
					target["LatencyAdjust"] = source["latencyAdjust"] or 0.2
					target["useElubAt"] = source["useElubAt"] or 3
					target["waitKs"] = source["waitKs"] or 0.8
					target["nrgKs"] = source["nrgKs"] or 80
					target["bokRefresh"] = source["bokRefresh"] or 6
					target["tpRefresh"] = source["tpRefresh"] or 2
					target["purStaggerUntil"] = source["purStaggerUntil"] or 4
					target["todWait"] = source["todWait"] or 4
					target["poolTod"] = (source["poolTod"] == nil) or source["poolTod"]
					target["PriorityList"] = source["priority"] or {"tod","hs","grd","bok","bof","ehlh","ks","eh","tpow","jab","tp"}
					target["ehFloor"] = source["ehFloor"] or 80

					t.classModules["brewmaster"] = target
				end -- spec 1
				t.classModules["____monk_brewmaster"] = nil
			end -- end BM

			source = t.classModules["____monk_windwalker"]
			if source then
				if t.spec.primary == 3 then
					target = {}
					target["Version"] = source["version"] or 20
					target["RangePerSkill"] = source["rangePerSkill"] and true or false
					target["LatencyAdjust"] = source["latencyAdjust"] or 0.2
					target["useTebAt"] = source["useTebAt"] or 10
					target["alertTeb"] = source["alertTeb"] or 4
					target["useEbTh"] = source["useEbTh"] or 5
					target["ehFloor"] = source["ehFloor"] or 80
					target["tpRefresh"] = source["tpRefresh"] or 2
					target["rskMaxDelay"] = source["rskMaxDelay"] or 0.5
					target["todWait"] = source["todWait"] or 4
					target["poolTod"] = (source["poolTod"] == nil) or source["poolTod"]
					target["poolFof"] = source["poolFof"] and true or false
					target["PriorityList"] = source["priority"] or {"tod","rskdb","tpow","eb","rsk","fof","cbbok","bok","cbtp","eh","jab", "fsk"}
					target["ehFloor"] = source["ehFloor"] or 80

					t.classModules["windwalker"] = target
				end -- spec 3
				t.classModules["____monk_windwalker"] = nil
			end -- end WW
		end

		if t.icons then
			for _,ico in ipairs(t.icons) do
				if ico.exec == "return IconBrewmasterCurrent()" or ico.exec == "IconBrewmasterCurrent()" then
					ico.exec = "return IconCurrent()"
				elseif ico.exec == "IconBrewmasterNext()" or ico.exec == "return IconBrewmasterNext()" then
					ico.exec = "IconNext()"
				elseif ico.exec == "return IconWindwalkerCurrent()" or ico.exec == "IconWindwalkerCurrent()" then
					ico.exec = "return IconCurrent()"
				elseif ico.exec == "IconWindwalkerNext()" or ico.exec == "return IconWindwalkerNext()" then
					ico.exec = "IconNext()"
				end -- icons instanstiation
			end -- for loop icons
		end -- icons

	end -- for loop ipairs
end -- classModule.ExecuteMassiveCleanup