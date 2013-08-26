------------------------------------------------------------------------------
-- $Id$
------------------------------------------------------------------------------
--                            module_Brewmaster.lua
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
--   Actions module for Brewmaster Monks
------------------------------------------------------------------------------

----------- Get required tables ----------
local clcInfoPlugin = LibStub("clcInfoClassModulePlugin")
if not clcInfoPlugin then return end

local classModule = clcInfoPlugin:GetClassModule("clcInfo_Monk")
if not classModule then return end

local L = LibStub("AceLocale-3.0"):GetLocale("clcInfo_Monk")

-- Geminior: Get local copies of functions/tables.  This will speed up execution.
local min, max = min, max
local GetTime = GetTime
local bmSpells = classModule.Spells

-- actions ---------------------------------------------------------------------
-- Geminior: general class spell names and ids to ugly up code but speed action functions up
local Jab = bmSpells["Jab"].Name
local JabId = bmSpells["Jab"].Id
local BlackoutKick = bmSpells["Blackout Kick"].Name
local BlackoutKickId = bmSpells["Blackout Kick"].Id
local TigerPalm = bmSpells["Tiger Palm"].Name
local TigerPalmId = bmSpells["Tiger Palm"].Id
local TigerPower = bmSpells["Tiger Power"].Name
local TigerPowerId = bmSpells["Tiger Power"].Id
local TouchOfDeath = bmSpells["Touch of Death"].Name
local TouchOfDeathId = bmSpells["Touch of Death"].Id
local DeathNote = bmSpells["Death Note"].Name
local DeathNoteId = bmSpells["Death Note"].Id
local ExpelHarm = bmSpells["Expel Harm"].Name
local ExpelHarmId = bmSpells["Expel Harm"].Id
local Provoke = bmSpells["Provoke"].Name
local ProvokeId = bmSpells["Provoke"].Id

-- local brewmaster specific spell names and ids to ugly up code but speed action functions up
local BreathOfFire = bmSpells["Breath of Fire"].Name
local BreathOfFireId = bmSpells["Breath of Fire"].Id
local Shuffle = bmSpells["Shuffle"].Name
local ShuffleId = bmSpells["Shuffle"].Id
local KegSmash = bmSpells["Keg Smash"].Name
local KegSmashId = bmSpells["Keg Smash"].Id
local LightStagger = bmSpells["Light Stagger"].Name
local LightStaggerId = bmSpells["Light Stagger"].Id
local ModerateStagger = bmSpells["Moderate Stagger"].Name
local ModerateStaggerId = bmSpells["Moderate Stagger"].Id
local HeavyStagger = bmSpells["Heavy Stagger"].Name
local HeavyStaggerId = bmSpells["Heavy Stagger"].Id
local PurifyingBrew = bmSpells["Purifying Brew"].Name
local PurifyingBrewId = bmSpells["Purifying Brew"].Id
local Guard = bmSpells["Guard"].Name
local GuardId = bmSpells["Guard"].Id
local ElusiveBrew = bmSpells["Elusive Brew"].Name
local ElusiveBrewId = bmSpells["Elusive Brew"].Id

-- BM specic talent actions
local actions  = {
	tod = {
		Id = TouchOfDeathId,
		GetCD = function(curId, r, tdb)
			if curId == TouchOfDeathId then
				return 100
			end
			
			local _, canTod = r:GetTimeLeft("player", DeathNote, "HELPFUL|PLAYER")
			if not canTod then
				return 100
			end
			if r.chi >= r.todChiCost then
				return r:GetCooldown(TouchOfDeathId, -tdb.todWait)
			end

			if(tdb.poolTod) then -- if we can Tod now or within the acceptable wait time but lack the chi, pool chi and let chi builders at it
				r.poolChi = r:GetCooldown(TouchOfDeathId, -tdb.todWait) <= 0
			end
			return 100
		end,
		UpdateResources = function(r)
			r:UseChi(r.todChiCost)
			r:UseTime(1)
		end,
		Info = TouchOfDeath
	}, 
	bof = {
		Id = BreathOfFireId,
		GetCD = function(curId, r, tdb)		
			if curId == BreathOfFireId or r.poolChi or r.chi < 2 or ((r.chi <= r.chiMax - 2) and r.willCapEnergy) then
				return 100
			end
			
			return (r:GetTimeLeft("target", BreathOfFire, "HARMFUL"))
		end,
		UpdateResources = function(r)
			r:UseChi(2)
			r:UseTime(1)
		end,
		Info = BreathOfFire
	},
	hs = {
		Id = PurifyingBrewId,
		GetCD = function(curId, r, tdb)		

			if curId == PurifyingBrewId or r.poolChi or r.chi < 1 then
				return 100
			end
			
			if (r:GetTimeLeft("player", HeavyStagger, "HARMFUL")) > tdb.purStaggerUntil then
				return 0
			end
			
			return 100
		end,
		UpdateResources = function(r)
			r:UseChi(1)
		end,
		Info = L["Purify %s"]:format(HeavyStagger)
	},
	ms = {
		Id = PurifyingBrewId,
		GetCD = function(curId, r, tdb)		

			if curId == PurifyingBrewId or r.poolChi or r.chi < 1 then
				return 100
			end
			
			if (r:GetTimeLeft("player", ModerateStagger, "HARMFUL")) > tdb.purStaggerUntil then
				return 0
			end
			
			return 100
		end,
		UpdateResources = function(r)
			r:UseChi(1)
		end,
		Info = L["Purify %s"]:format(ModerateStagger)
	},
	ls = {
		Id = PurifyingBrewId,
		GetCD = function(curId, r, tdb)		

			if curId == PurifyingBrewId or r.poolChi or r.chi < 1 then
				return 100
			end
			
			if (r:GetTimeLeft("player", LightStagger, "HARMFUL")) > tdb.purStaggerUntil then
				return 0
			end
			
			return 100
		end,
		UpdateResources = function(r)
			r:UseChi(1)
		end,
		Info = L["Purify %s"]:format(LightStagger)
	},
	grd = {
		Id = GuardId,
		GetCD = function(curId, r, tdb)
			if curId == GuardId or r.chi < 2 or r.poolChi or ((r.chi <= r.chiMax - 2) and r.willCapEnergy) then
				return 100
			end
			
			return r:GetCooldown(GuardId)
		end,
		UpdateResources = function(r)
			r:UseChi(2)
		end,
		Info = Guard
	},
	bok = {
		Id = BlackoutKickId,
		GetCD = function(curId, r, tdb)
			if r.chi < 2 or r.poolChi or ((r.chi <= r.chiMax - 2) and r.willCapEnergy) then
				return 100
			end

			-- return time left on shuffle, to allow other chi consumers in if shuffle is at a comfortable level
			return max(0, (r:GetTimeLeft("player", Shuffle, "HELPFUL|PLAYER")) - tdb.bokRefresh) 
		end,
		UpdateResources = function(r)
			r:UseChi(2)
			r:UseTime(1)
		end,
		Info = BlackoutKick
	},
	ehlh = {
		Id = ExpelHarmId,
		GetCD = function(curId, r, tdb)
			if r.chi < r.chiMax and
				r:GetPlayerHealthPercentage() < 35 and
				r:GetCooldown(KegSmashId) > r:TimeToEnergy(tdb.nrgKs) then

				return max(r:TimeToEnergy(40), r:GetCooldown(ExpelHarmId))
			end
			
			return 100
		end,
		UpdateResources = function(r)
			r:AddChi(1)
			r:UseEnergy(40)
		end,
		Info = ExpelHarm .. " < 35% HP"
	},
	ks = {
		Id = KegSmashId,
		GetCD = function(curId, r, tdb)

			if curId ~= KegSmashId and r.chi < (r.chiMax - 1) then
				
				local ksOrNrg = r:GetCooldown(r:TimeToEnergy(tdb.nrgKs))
				if r:GetCooldown(KegSmashId) > ksOrNrg then
					return max(r:GetCooldown(KegSmashId), r:GetCooldown(KegSmashId, -tdb.waitKs))
				else
					return max(ksOrNrg, r:GetCooldown(KegSmashId, -tdb.waitKs))
				end

			end
			return 100
		end,
		UpdateResources = function(r)
			r:AddChi(2)
			r:UseEnergy(40)
		end,
		Info = KegSmash
	},
	eh = {
		Id = ExpelHarmId,
		GetCD = function(curId, r, tdb)
			if curId ~= ExpelHarmId and
				r.chi < r.chiMax and -- chi is not maxed
				r:GetPlayerHealthPercentage() <= tdb.ehFloor and -- below user selected hp % threshold
				r:GetCooldown(KegSmashId) > r:TimeToEnergy(tdb.nrgKs) then -- ks will come off CD before hitting user selected energy threshold
				
				return max(r:TimeToEnergy(40), r:GetCooldown(ExpelHarmId))
			end
			
			return 100
		end,
		UpdateResources = function(r)
			r:AddChi(1)
			r:UseEnergy(40)
		end,
		Info = ExpelHarm
	},
	tpow = {
		Id = TigerPalmId,
		GetCD = function(curId, r, tdb)
			if  curId == TigerPalmId or r.poolChi then --yes this doesn't use chi but doesn't generate it either
				return 100
			end
			return max(0, (r:GetTimeLeft("player", TigerPower, "HELPFUL|PLAYER")) - tdb.tpRefresh)
		end,
		UpdateResources = function(r)
			r:UseTime(1)
		end,
		Info = TigerPower
	}, 
	jab = {
		Id = JabId,
		GetCD = function(curId, r, tdb)
			if  r:GetCooldown(KegSmashId) > r:TimeToEnergy(tdb.nrgKs) then -- ks will come off CD before hitting user selected energy threshold
				return max(r:TimeToEnergy(40), r:GetCooldown(JabId))
			end
			
			return 100
		end,
		UpdateResources = function(r)
			local chiGain = r:IsPowerStrikesReady() and 2 or 1
			r:AddChi(chiGain)
			r:UseEnergy(40)
		end,
		Info = Jab
	},
	tp = {
		Id = TigerPalmId,
		GetCD = function(curId, r, tdb)
			return 0.7
		end,
		UpdateResources = function(r)
			r:UseTime(1)
		end,
		Info = TigerPalm
	}, 
	eb = {
		Id = ElusiveBrewId,
		GetCD = function(curId, r, tdb)
			if curId == ElusiveBrewId then
				return 100
			end
			
			local _, stacks = r:GetTimeLeft("player", ElusiveBrew, "HELPFUL|PLAYER")
			if stacks ~= nil and stacks >= tdb.useElubAt then
				return r:GetCooldown(ElusiveBrewId)
			end
			return 100
		end,
		Info = ElusiveBrew
	},
}

------------------------------------- Register the spec module ---------------------------------------------
-- Remember to update the version if  GetDefaultTemplateDB gets new fields or some are removed / renamed
local moduleVersion = 26
local specMod = classModule:RegisterSpecModule(1, actions, moduleVersion)
classModule.InjectSpecModuleShared(specMod)

-- Implement 'abstract' (required) functions
function specMod:GetDefaultTemplateDB()
	-- The first three settings are requirements of the classModulePlugin, the rest are specific to this mod (obviously the contents of PriorityList is too)
	return {
		PriorityList = {"tod","hs","grd","bok","bof","ehlh","ks","eh","tpow","jab","tp"},
		RangePerSkill = false,
		LatencyAdjust = 0.2,
		tpRefresh = 2,
		bokRefresh = 6,
		purStaggerUntil = 4,
		todWait = 4,
		poolTod = true,
		useElubAt = 3,
		waitKs = 0.8,
		nrgKs = 80,
		ehFloor = 70
	}
end

---------------------- Implement optional functions-------------------------

function specMod:OnActivated()
	local tdb = specMod.Tdb
	local IconSpell = clcInfoPlugin.ClcEnvironment.IconSpell
	local GetCooldown = clcInfoPlugin.GetCooldown
	local GetTimeLeft = clcInfoPlugin.GetTimeLeft

	-- Register behavior for 3rd icon the brew icon
	specMod.RegisterBehavior("ElusiveBrewIcon", 
		function ()
			local _, stacks = GetTimeLeft("player", ElusiveBrew, "HELPFUL|PLAYER")
			if stacks ~= nil and stacks >= tdb.useElubAt and GetCooldown(ElusiveBrewId) == 0 then
				return IconSpell(ElusiveBrewId, false)
			end
		end)
end

-- Behavior templates
-- TODO-munkay: collapse into one bar so you dont have to stack the bars on top of each other
function specMod:RegisterBehaviorTemplates()
	self:AddBehaviorTemplate(ElusiveBrew, "return ElusiveBrewIcon()")
	
	self:AddBehaviorTemplate(bmSpells["Breath of Fire"])
	self:AddBehaviorTemplate(bmSpells["Shuffle"])
	self:AddBehaviorTemplate(bmSpells["Keg Smash"])
	self:AddBehaviorTemplate(bmSpells["Light Stagger"])
	self:AddBehaviorTemplate(bmSpells["Moderate Stagger"])
	self:AddBehaviorTemplate(bmSpells["Heavy Stagger"])
	self:AddBehaviorTemplate(bmSpells["Purifying Brew"])
	self:AddBehaviorTemplate(bmSpells["Guard"])

	local name = LightStagger
	self:AddBehaviorTemplate(
		name,
		format([[
			return BarAura("HARMFUL", "player", "%s", nil, false, true)
			]], name),
		"bars")

	name = ModerateStagger
	self:AddBehaviorTemplate(
		name,
		format([[
			return BarAura("HARMFUL", "player", "%s", nil, false, true)
			]], name),
		"bars")

	name = HeavyStagger
	self:AddBehaviorTemplate(
		name,
		format([[
			return BarAura("HARMFUL", "player", "%s", nil, false, true)
			]], name),
		"bars")
end

function specMod:GetMacroIcon()
	return 115069
end

-- Remember to update the locale/enUS.lua (and other locals) with new L[""] text
function specMod:GetOptionEditors(GetTDB, SetTDB)
	local editors = self.GetSharedOptionEditors(GetTDB, SetTDB)

	editors.bokRefresh = {
		order = 10, width="double", type = "range", min = 0, max = 15, step = 0.1, name = L["Shuffle Refresh Threshold"],
		desc=L["The minimum number of seconds on the shuffle buff, before reducing priority to allow other chi consumers in. The effect of this is obviously dependent on priorities, the less a prio BoK is the less this will matter."], 
		get = GetTDB, set = SetTDB,
	}
	editors.purStaggerUntil = {
		order = 11, width="double", type = "range", min = 0, max = 9, step = 0.1, name = L["Stagger Purification Threshold"],
		desc=L["The number of seconds left on the Stagger debuff where it is considered futile to purify it."], 
		get = GetTDB, set = SetTDB,
	}
	editors.useElubAt = {
		order = 12, width="double", type = "range", min = 1, max = 15, step = 1, name = L["Elusive Brew Threshold"],
		desc=L["The number of stacks of Elusive brew at which to begin to suggest it. This also applies if it is in a separate 3rd icon."], 
		get = GetTDB, set = SetTDB,
	}
	editors.waitKs = {
		order = 13, width="double", type = "range", min = 0, max = 1, step = 0.1, name = L["Keg Smash Wait Threshold"],
		desc=L["The time to wait for Keg Smash to come off cooldown, so that it can be preferred over other energy using abilities later in the priotity list even if they are ready to use now."], 
		get = GetTDB, set = SetTDB,
	}
	editors.nrgKs = {
		order = 14, width="double", type = "range", min = 70, max = 100, step = 01, name = L["Keg Smash Energy Threshold"],
		desc=L["The minimum energy necessary before recommending Keg Smash, so that it can be preferred over other energy using abilities later in the priotity list even if they are ready to use now."], 
		get = GetTDB, set = SetTDB,
	}

	return editors
end

-- Implement optional functions
function specMod:GetRecommendedPriorities()
	return {
		[L["Solo"]] = function()
			local tdb = self.Tdb
			tdb.tpRefresh = 2
			tdb.ehFloor = 70
			tdb.nrgKs = 80
			tdb.PriorityList = {"tod","tpow","grd","bok","bof","ehlh","ks","eh","jab","tp"}
		end,
		[L["Raid / Group"]] = function()
			local tdb = self.Tdb
			tdb.tpRefresh = 2
			tdb.ehFloor = 60
			tdb.nrgKs = 80
			tdb.PriorityList = {"tod","hs","ms","grd","bok","bof","ehlh","ks","eh","tpow","jab","tp"}
		end
	}
end

-- This returns the icons needed by the default template
-- Here I have retained the two default action icons since they should always be there (The call to clcInfoPlugin.SpecModuleDefaults.CreateDefaultTemplateIcons)
-- and then added a third icon to display brew availability
function specMod.CreateDefaultTemplateIcons(gridIdx, iconFactory)

	local defaults = clcInfoPlugin.SpecModuleDefaults.CreateDefaultTemplateIcons(gridIdx, iconFactory)

	--eulisve brew
	local icon3 = iconFactory:GetDefault()
	icon3.udLabel = "IconBrew"
	icon3.skinSource = "Grid"
	icon3.gridId = gridIdx
	icon3.gridX = 3
	icon3.ups = 3
	icon3.exec = "return ElusiveBrewIcon()"

	table.insert(defaults, icon3)

	return defaults
end

--------------------------- Implement functions specific to this implementation -----------------------------
-- updates the id of the jab action so that the selected/weapon specific jab icon is shown
function specMod.SetJabIconId(id)
	actions.jab.IconId = id
end

function specMod:RefreshLocals()
	-- The Guard glyph changes the spell id of Guard
	local grdId = 115295
	if clcInfoPlugin.HasGlyphSocketed(123401) then
		grdId = 123402
	end

	GuardId = grdId
end