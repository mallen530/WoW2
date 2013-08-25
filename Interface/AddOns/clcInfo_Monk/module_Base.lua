------------------------------------------------------------------------------
-- $Id$
------------------------------------------------------------------------------
--                            module_Base.lua
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
--   Spec Module base implementation for clcInfo_Monk.
--   Since the two specs share the same action resources and other logic, this serves as a base class
--   The class module is extended with a function to create
------------------------------------------------------------------------------

----------- Get required tables ----------
local clcInfoPlugin = LibStub("clcInfoClassModulePlugin")
if not clcInfoPlugin then return end

local classModule = clcInfoPlugin:GetClassModule("clcInfo_Monk")
if not classModule then return end

local localclcInfo_Monk = LibStub("AceLocale-3.0"):GetLocale("clcInfo_Monk")

-- Local versions of functions we want to keep fast
local PowerStrikes = classModule.Spells["Power Strikes"].Name
local rangeChecker = classModule.Spells["Jab"].Name

local GetPowerRegen = GetPowerRegen
local UnitPower = UnitPower
local IsSpellKnown = IsSpellKnown
local UnitAura = UnitAura
local UnitSpellHaste = UnitSpellHaste
local UnitHealth = UnitHealth
local UnitHealthMax = UnitHealthMax
local GetTalentInfo = GetTalentInfo
local GetTalentRowSelectionInfo = GetTalentRowSelectionInfo
local GetCooldown = clcInfoPlugin.GetCooldown
local GetTimeLeft = clcInfoPlugin.GetTimeLeft
local max, min, wipe = max, min, wipe

-- actions ---------------------------------------------------------------------
-- Geminior: Tier 2 & 6 Talent spell names and ids to ugly up code but speed action functions up
-- Tier 2 Talent
local ChiWave = classModule.Spells["Chi Wave"].Name
local ChiWaveId = classModule.Spells["Chi Wave"].Id
local ZenSphere = classModule.Spells["Zen Sphere"].Name
local ZenSphereId = classModule.Spells["Zen Sphere"].Id
local ChiBurst = classModule.Spells["Chi Burst"].Name
local ChiBurstId = classModule.Spells["Chi Burst"].Id

-- Tier 6 Talent
local RushingJadeWind = classModule.Spells["Rushing Jade Wind"].Name
local RushingJadeWindId = classModule.Spells["Rushing Jade Wind"].Id
local InvokeXuen = classModule.Spells["Invoke Xuen, the White Tiger"].Name
local InvokeXuenId = classModule.Spells["Invoke Xuen, the White Tiger"].Id
local ChiTorpedo = classModule.Spells["Chi Torpedo"].Name
local ChiTorpedoId = classModule.Spells["Chi Torpedo"].Id

-- List of cross-spec talent actions
local actions = {
	chiw = {
		Id = ChiWaveId,
		GetCD = function(curActionId, actionResources, tdb)
			if curActionId == ChiWaveId then
				return 100
			end
			
			if ((actionResources.chi <= actionResources.chiMax - 2) and actionResources.willCapEnergy) then
				return 100
			end
			
			return actionResources:GetCooldown(ChiWaveId)
		end,
		UpdateResources = function(actionResources)
			actionResources:UseTime(1)
		end,
		Info = ChiWave
	},
	zens = {
		Id = ZenSphereId,
		GetCD = function(curActionId, actionResources, tdb)
			if curActionId == ZenSphereId then
				return 100
			end

			if ((actionResources.chi <= actionResources.chiMax - 2) and actionResources.willCapEnergy) then
				return 101
			end
			
			return actionResources:GetCooldown(ZenSphereId)
		end,
		UpdateResources = function(actionResources)
			actionResources:UseTime(1)
		end,
		Info = ZenSphere
	},
	chib = {
		Id = ChiBurstId,
		GetCD = function(curActionId, actionResources, tdb)
			if curActionId == ChiBurstId then
				return 100
			end

			if ((actionResources.chi <= actionResources.chiMax - 2) and actionResources.willCapEnergy) then
				return 100
			end
			
			return actionResources:GetCooldown(ChiBurstId)
		end,
		UpdateResources = function(actionResources)
			actionResources:UseTime(1 + (1 / actionResources.spell_haste))
		end,
		Info = ChiBurst
	},
	rjw = {
		Id = RushingJadeWindId,
		GetCD = function(curActionId, actionResources, tdb)
			if curActionId == RushingJadeWindId then
				return 100
			end

			if actionResources.chi < 2 or actionResources.poolChi then
				return 100
			end

			if ((actionResources.chi <= actionResources.chiMax - 2) and actionResources.willCapEnergy) then
				return 101
			end
			
			return actionResources:GetCooldown(RushingJadeWindId)
		end,
		UpdateResources = function(actionResources)
			actionResources:UseChi(2)
			actionResources:UseTime(1)
		end,
		Info = RushingJadeWind
	},
	chit = {
		Id = ChiTorpedoId,
		GetCD = function(curActionId, actionResources, tdb)
			if curActionId == ChiTorpedoId then
				return 100
			end

			return actionResources:GetCooldown(ChiTorpedoId)
		end,
		UpdateResources = function(actionResources)
			actionResources:UseChi(2)
			actionResources:UseTime(1)
		end,
		Info = ChiTorpedo
	},
	xuen = {
		Id = InvokeXuenId,
		GetCD = function(curActionId, actionResources, tdb)
			if curActionId == InvokeXuenId then
				return 100
			end

			return actionResources:GetCooldown(InvokeXuenId)
		end,
		UpdateResources = function(actionResources)
			actionResources:UseTime(1)
		end,
		Info = InvokeXuen
	},
}

----------- ACTION RESOURCE TABLE -------------
local actionResources =	{	
	chi = 0,
	chiMax = 4,
	energy = 100,
	energy_regen = 10,
	energy_regen_base = 10,
	energy_regen_boost = 0,
	energy_regen_boost_end = 0,
	spell_haste = 1,
	poolChi = false,
	hp = 0,
	todChiCost = 3,
	psKnown = false,
	willCapEnergy = false,
	spec = {},

	-- Energy, being the fast regenerating source it is, is a bad condition parameter
	-- So instead this function calculates the time needed to reach a given amount of energy.
	TimeToEnergy = function(self, req_energy)
		if type(req_energy) ~= "number" then return 0 end -- TODO: raise error because the calling function passed a bad variable
		if(self.energy >= req_energy) then return 0 end
		return ((req_energy - self.energy) / self.energy_regen)
	end,
	-- given a buff or debuff, the unit, and a filter, returns the time left and stack count based
	-- on the current time and time left on the gcd
	-- returns 0 and nil if no such buff or debuff is present
	GetTimeLeft = function(self, unit, spell, filter)
		return GetTimeLeft(unit, spell, filter, self.currentTime)
	end,
	-- given a spell id returns the cd left based on the current time variable
	GetCooldown = function(self, id, adjust)
		return GetCooldown(id, adjust, self.currentTime)
	end,
	AdjustEnergyRegen = function(self, s)
		local boostLeft = (self.energy_regen_boost_end - self.currentTime)
		if boostLeft > 0 then
			if boostLeft >= s then
				self.energy_regen =  self.energy_regen_base + self.energy_regen_boost
			else
				self.energy_regen =  self.energy_regen_base + self.energy_regen_boost * (boostLeft / s)
			end
		end
	end,
	UseEnergy = function(self,e)
		self:UseTime(self:TimeToEnergy(e) + self.gcdDuration) 
		self.energy = max(0, self.energy - e)
		self.willCapEnergy = self.energy == 100
	end,
	BoostEnergy = function(self, b)
		self.energy_regen = self.energy_regen + b -- temp boost energy regen for next actions calc
	end,
	UseTime = function(self, s)
		s = s or self.gcdDuration
		self.currentTime = self.currentTime + s
		self:AdjustEnergyRegen(s)
		self.energy = min(100, self.energy + s * self.energy_regen)
		self.willCapEnergy = self.energy == 100
	end,
	RefreshResources = function(self, currentTime, gcdLeft, gcdDuration)
		local _
		wipe(self.spec)
		self.currentTime = currentTime
		self.gcdDuration = gcdDuration
		self.hp = 0
		self.poolChi = false
		self.chi = UnitPower("player", 12)
		self.energy = UnitPower("player")
		self.spell_haste = 1 + UnitSpellHaste("player") / 100
		_, self.energy_regen = GetPowerRegen()
		self.energy_regen_base = self.energy_regen
		self:UseTime(gcdLeft)
	end,
	BetweenActionsCleanup = function(self)
		self.poolChi = false
	end,
	UseChi = function(self,c)
		self.chi = max(0, self.chi  - c)
	end,
	AddChi = function(self,c)
		self.chi = min(self.chiMax, self.chi  + c)
	end,
	GetPlayerHealthPercentage = function (self) -- minor optimization, since this is potentially called 4 times per cycle, and it doesnt really need to be that accurate
		if self.hp <= 0 then
			local player_health = UnitHealth("player")
			local player_health_max = UnitHealthMax("player")
			self.hp = (player_health / player_health_max) * 100
		end
		return self.hp
	end,
	IsPowerStrikesReady = function(self)
		if not self.psKnown then return false end

		local _, ps = self:GetTimeLeft("player", PowerStrikes, "HELPFUL|PLAYER")
		return ps
	end
}

-- React to talent or glyph changes.
-- Changes that only affect active resources are handled below as these to function are called together (although at different locations in the flow)
local function OnGlyphOrTalentChange(self)
	
	-- Only show these if user selects "all"
	if self.ParentClassModule.DB.talentBehavior == "all" then
		self.Actions["chiw"] = actions.chiw
		self.Actions["zens"] = actions.zens
		self.Actions["chib"] = actions.chib
		self.Actions["tier2talent"] = nil

		self.Actions["rjw"] = actions.rjw
		self.Actions["xuen"] = actions.xuen
		self.Actions["chit"] = actions.chit
		self.Actions["tier6talent"] = nil
	else
		self.Actions["chiw"] = nil
		self.Actions["zens"] = nil
		self.Actions["chib"] = nil
		self.Actions["rjw"] = nil
		self.Actions["chit"] = nil

		--tier 2 talent ability
		_, talent = GetTalentRowSelectionInfo(2)
		if talent == 4 then
			self.Actions["tier2talent"] = actions.chiw
		elseif talent == 5 then
			self.Actions["tier2talent"] = actions.zens
		elseif talent == 6 then
			self.Actions["tier2talent"] = actions.chib
		else
			local _, _, _, _, _, available = GetTalentInfo(4, "player", nil)
			if available then
				self.Actions["tier2talent"] = { Id = nil, GetCD = function(curActionId, actionResources, tdb) return 100 end, Info = localclcInfo_Monk["Unlearned level 30 talent"] }
			else
				self.Actions["tier2talent"] = nil
			end
		end

		-- tier 6 talent ability
		_, talent = GetTalentRowSelectionInfo(6)
		if talent == 16 then
			self.Actions["tier6talent"] = actions.rjw
		elseif talent == 17 then
			self.Actions["tier6talent"] = actions.xuen
		elseif talent == 18 then
			self.Actions["tier6talent"] = actions.chit
		else
			local _, _, _, _, _, available = GetTalentInfo(16, "player", nil)
			if available then
				self.Actions["tier6talent"] = { Id = nil, GetCD = function(curActionId, actionResources, tdb) return 100 end, Info = localclcInfo_Monk["Unlearned level 90 talent"] }
			else
				self.Actions["tier6talent"] = nil
			end
		end
	end

	-- Lets each module do module specific stuff
	if self.RefreshLocals then self:RefreshLocals() end
end

-- Initializes the action resources to match the current specializations talents and glyphs
local function GetActionResources(self)
	-- Talent specific stuff
	local _, talent = GetTalentRowSelectionInfo(3)
	actionResources.psKnown = (talent == 7)
	actionResources.chiMax = (talent == 8) and 5 or 4

	actionResources.todChiCost = clcInfoPlugin.HasGlyphSocketed(123391) and 0 or 3
	
	-- Pushing to clcInfoClassModulePlugin
	self.ActiveResources = actionResources
	
	return actionResources
end

local function GetGcdSpellId(self)
	return 100780 --Jab base id
end

local function GetRangeCheckSpell(self)
	return rangeChecker
end

-- Shared option editors
local function GetSharedOptionEditors(GetTDB, SetTDB)
	return {
		tpRefresh = {
			order = 1, width="double", type = "range", min = 0, max = 15, step = 0.1, name = localclcInfo_Monk["Tiger Power Refresh Threshold"],
			desc=localclcInfo_Monk["The number of seconds left on the Tiger Power buff where it will be considered a priority to refresh it."], 
			get = GetTDB, set = SetTDB,
		},
		todWait = {
			order = 2, width="double", type = "range", min = 0, max = 6, step = 0.1, name = localclcInfo_Monk["Touch of Death Wait Threshold"],
			desc=localclcInfo_Monk["The time to wait for Touch of Death to come off cool down if it is otherwise usable (3 chi (unless glyphed) and Death Note active)."] , 
			get = GetTDB, set = SetTDB,
		},
		poolTod = {
			order = 3, width="full", type = "toggle", name = localclcInfo_Monk["Pool Chi for Touch of Death"],
			desc=localclcInfo_Monk["Whether to pool (save) chi for Touch of Death if it is otherwise available (off CD and Death Note active). This will bypass other chi using abilities to allow for 3 chi. If glyphed, this setting is ignored."] , 
			get = GetTDB, set = SetTDB,
		},
		ehFloor = {
			order = 4, width="double", type = "range", min = 0, max = 100, step = 1, name = localclcInfo_Monk["Expel Harm Minimum"],
			desc=localclcInfo_Monk["The health percentage to start recommending Expel Harm over Jab to generate Chi."] , 
			get = GetTDB, set = SetTDB,
		}
	}
end

-- Debug functions - since these are identical for the two specs they are defined here
local function DebugActionCD(clcInfoDebug, actionKey, cd)
	clcInfoDebug:AddBoth(actionKey, cd)
end

local function DebugPreCurrent(clcInfoDebug, resources)
	clcInfoDebug:AddBoth("Current", "--------------------")
	clcInfoDebug:AddBoth("actionin", (resources.currentTime - GetTime()))
	clcInfoDebug:AddBoth("energy", resources.energy)
	clcInfoDebug:AddBoth("chi", resources.chi)
	clcInfoDebug:AddBoth("psrdy", resources:IsPowerStrikesReady() and "|cffdee029yes|r" or "no" )
	clcInfoDebug:AddBoth("regenboostleft",  max(0, (resources.energy_regen_boost_end - resources.currentTime)))
	clcInfoDebug:AddBoth("capNrg", resources.willCapEnergy and "|cffdee029yes|r" or "no")
end

local function DebugPreNext(clcInfoDebug, resources)
	clcInfoDebug:AddBoth("Next", "--------------------")
	clcInfoDebug:AddBoth("actionin", (resources.currentTime - GetTime()))
	clcInfoDebug:AddBoth("energy", resources.energy)
	clcInfoDebug:AddBoth("chi", resources.chi)
	clcInfoDebug:AddBoth("psrdy", resources:IsPowerStrikesReady() and "|cffdee029yes|r" or "no")
	clcInfoDebug:AddBoth("regenboostleft", max(0, (resources.energy_regen_boost_end - resources.currentTime)))
	clcInfoDebug:AddBoth("capNrg", resources.willCapEnergy and "|cffdee029yes|r" or "no")
	clcInfoDebug:AddBoth("pool", resources.poolChi and "|cffdee029yes|r" or "no")
end

local function DebugPostCurrent(clcInfoDebug, selectedAction, resources)
	clcInfoDebug:AddBoth("capNrgPost", resources.willCapEnergy and "|cffdee029yes|r" or "no")
	clcInfoDebug:AddBoth("pool", resources.poolChi and "|cffdee029yes|r" or "no")
	clcInfoDebug:AddBoth("cur", selectedAction.Info)
end

local function DebugPostNext(clcInfoDebug, selectedAction, resources)
	clcInfoDebug:AddBoth("capNrgPost", resources.willCapEnergy and "|cffdee029yes|r" or "no")
	clcInfoDebug:AddBoth("pool", resources.poolChi and "|cffdee029yes|r" or "no")
	clcInfoDebug:AddBoth("next", selectedAction.Info)
end

-- Extension to Classmodule to allow injection of the shared implementations for spec modules implemented here
function classModule.InjectSpecModuleShared(specModule)
	specModule.OnGlyphOrTalentChange = OnGlyphOrTalentChange
	specModule.GetActionResources = GetActionResources
	specModule.GetGcdSpellId = GetGcdSpellId
	specModule.GetRangeCheckSpell = GetRangeCheckSpell
	specModule.GetSharedOptionEditors = GetSharedOptionEditors
	specModule.DebugActionCD = DebugActionCD
	specModule.DebugPreCurrent = DebugPreCurrent
	specModule.DebugPreNext = DebugPreNext
	specModule.DebugPostCurrent = DebugPostCurrent
	specModule.DebugPostNext = DebugPostNext
end