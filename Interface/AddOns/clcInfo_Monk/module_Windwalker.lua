------------------------------------------------------------------------------
-- $Id$
------------------------------------------------------------------------------
--                            module_Windwalker.lua
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
--  This file is for use with clcInfo by abija.  To a great extend this is based on the clcInfo_Rogue by Deronda.
--
--  abija has distributed clcInfo All Rights Reserved.  For more information
--  go to: http://wow.curseforge.com/addons/clctracker/
--
------------------------------------------------------------------------------
-- Author:
--      Geminior (@ Earthen Ring)
------------------------------------------------------------------------------
-- Description:
--   Actions module for Windwalker Monks
------------------------------------------------------------------------------

----------- Get required tables ----------
local clcInfoPlugin = LibStub("clcInfoClassModulePlugin")
if not clcInfoPlugin then return end

local classModule = clcInfoPlugin:GetClassModule("clcInfo_Monk")
if not classModule then return end

local L = LibStub("AceLocale-3.0"):GetLocale("clcInfo_Monk")

-- State vars
local activeChannelEnds = 0

-- Get local copies of functions/tables.  This will speed up execution.
local min, max = min, max
local GetTime = GetTime
local wwSpells = classModule.Spells

-- actions ---------------------------------------------------------------------
-- general class spell names and ids to ugly up code but speed action functions up
local Jab = wwSpells["Jab"].Name
local JabId = wwSpells["Jab"].Id
local BlackoutKick = wwSpells["Blackout Kick"].Name
local BlackoutKickId = wwSpells["Blackout Kick"].Id
local TigerPalm = wwSpells["Tiger Palm"].Name
local TigerPalmId = wwSpells["Tiger Palm"].Id
local TigerPower = wwSpells["Tiger Power"].Name
local TigerPowerId = wwSpells["Tiger Power"].Id
local TouchOfDeath = wwSpells["Touch of Death"].Name
local TouchOfDeathId = wwSpells["Touch of Death"].Id
local DeathNote = wwSpells["Death Note"].Name
local DeathNoteId = wwSpells["Death Note"].Id
local ExpelHarm = wwSpells["Expel Harm"].Name
local ExpelHarmId = wwSpells["Expel Harm"].Id
--local Provoke = wwSpells["Provoke"].Name --I guess if you really want to PO a tank you could Provoke...
--local ProvokeId = wwSpells["Provoke"].Id

-- Windwalker Specific
local ComboBreakerBlackoutKick = wwSpells["Combo Breaker: Blackout Kick"].Name
local ComboBreakerBlackoutKickId = wwSpells["Combo Breaker: Blackout Kick"].Id
local ComboBreakerTigerPalm = wwSpells["Combo Breaker: Tiger Palm"].Name
local ComboBreakerTigerPalmId = wwSpells["Combo Breaker: Tiger Palm"].Id
local EnergizingBrew = wwSpells["Energizing Brew"].Name
local EnergizingBrewId = wwSpells["Energizing Brew"].Id
local FistsOfFury = wwSpells["Fists of Fury"].Name
local FistsOfFuryId = wwSpells["Fists of Fury"].Id
local RisingSunKick = wwSpells["Rising Sun Kick"].Name
local RisingSunKickId = wwSpells["Rising Sun Kick"].Id
local TigereyeBrew = wwSpells["Tigereye Brew"].Name
local TigereyeBrewId = wwSpells["Tigereye Brew"].Id
local FlyingSerpentKick = wwSpells["Flying Serpent Kick"].Name
local FlyingSerpentKickId = wwSpells["Flying Serpent Kick"].Id

-- WW specifc talent actions
local actions  = {
	tod = {
		Id = TouchOfDeathId,
		GetCD = function(curId, r, tdb)
			if curId == TouchOfDeathId then
				return 200
			end
			
			local _, canTod = r:GetTimeLeft("player", DeathNote, "HELPFUL|PLAYER")
			if not canTod then
				return 200
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
	fof = {
		Id = FistsOfFuryId,
		GetCD = function(curId, r, tdb)
			if curId == FistsOfFuryId then
				return 200
			end
			
			-- if we aren't off cd we don't want to do the calculations below
			local fofcd = r:GetCooldown(FistsOfFuryId)
			if fofcd > 0 then
				return 100 + fofcd
			end
			
			-- ok we so if fof will cause us to cap energy (runs 4 secs) we dont want it, if we will loose TigerPower we don't want it
			-- if RSK will be delayed (including the 1 GCD needed or jav to get back enough chi) we don't want it.
			-- There is no need to take energy for jab into account since even at 0 energy a full FOF will last long enough to get to 40 energy before its done
			if r.chi > 2 then
				local fofTime = 4 / r.spell_haste
				if (r:GetTimeLeft("player", TigerPower, "HELPFUL|PLAYER")) < fofTime + 1 or -- tp will expire
					r:GetCooldown(RisingSunKickId) < fofTime + 1 - tdb.rskMaxDelay or -- rsk comes off CD
					(r:GetTimeLeft("player", EnergizingBrew, "HELPFUL|PLAYER")) > 0 then -- using eb

					return 101
				end
				return 0
			end

			-- ok so do we pool chi? this calculation is then for the next round, so we need to adjust to the expected situation 1 gcd ahead
			-- the expectation is that fof will effectively use 5 seconds (4 + the 1 gcd) and energy will be 40 less than now, hence 140
			-- of course that requires that we actually have 40 energy, if we have atleast 1 chi there are better things to do otherwise it will pool anyway
			if tdb.poolFof then
				local fofTime = 4 / r.spell_haste
				r.poolChi = (r:GetTimeLeft("player", TigerPower, "HELPFUL|PLAYER")) >= fofTime + 2 and r:GetCooldown(RisingSunKickId) > fofTime + 2 - tdb.rskMaxDelay -- the +2 bit is just to add a resonable time for the user to be able to refresh tp, 1 GCD + 1 sec
			end
			return 102
		end,
		UpdateResources = function(r)
			r:UseChi(3)
			r:UseTime(4 / r.spell_haste)
		end,
		Info = FistsOfFury
	},
	rskdb = {
		Id = RisingSunKickId,
		GetCD = function(curId, r, tdb)
			if curId == RisingSunKickId or r.chi < 2 or r.poolChi then
				return 100
			end

			if (r:GetTimeLeft("target", RisingSunKick, "HARMFUL")) > 0 then
				return 100
			end
			
			return r:GetCooldown(RisingSunKickId)
		end,
		UpdateResources = function(r)
			r:UseChi(2)
			r:UseTime(1)
		end,
		Info = RisingSunKick .. " " .. L["Debuff"]
	},
	rsk = {
		Id = RisingSunKickId,
		GetCD = function(curId, r, tdb)
			if curId == RisingSunKickId or r.chi < 2 or r.poolChi then
				return 100
			end

			local rskCd = r:GetCooldown(RisingSunKickId)
			-- if at 4 or more chi we have the chi to do 2 consecutive chi consumers, i.e. we can do a bok before rsk as long as it won't delay rsk more than the configured amount
			if r.chi >= 4 then
				local delay = max(0, 1 - rskCd)
				if delay > tdb.rskMaxDelay then
					return 0
				else
					return rskCd
				end
			end
			
			-- so we have either 2 or 3 chi if we get here which means that using another chi consumer will incur
			-- one additional GCD or the time needed to get 40 energy to jab, whichever is higher + 1 GCD for the Jab
			-- if this exceeds the configured max delay, rsk is suggested even if on CD
			if max(1, r:TimeToEnergy(40)) + 1 - rskCd > tdb.rskMaxDelay then
				if curId then
					return 0
				else
					r.poolChi = true
					return rskCd
				end
			end

			return rskCd
		end,
		UpdateResources = function(r)
			r:UseChi(2)
			r:UseTime(1)
		end,
		Info = RisingSunKick
	},
	tpow = {
		Id = TigerPalmId,
		GetCD = function(curId, r, tdb)
			if (r.chi < 1 or r.poolChi) then -- TODO: poolchi should only be honored if its for tod, not fof
				return 100
			end

			if curId == TigerPalmId then
				return 100
			end

			return max(0, (r:GetTimeLeft("player", TigerPower, "HELPFUL|PLAYER")) - tdb.tpRefresh)
		end,
		UpdateResources = function(r)
			-- If prioritized above cbtp and cbtp procs but tiger power buff is about to expire then this may well be suggested but in fact it will be a cbtp when used
			if ((r:GetTimeLeft("player", ComboBreakerTigerPalm, "HELPFUL|PLAYER")) > 0) then
				r.spec.cbtp = true
				r:UseTime(1)
			else
				r:UseChi(1)
				r:UseTime(1)
			end
		end,
		Info = TigerPower
	}, 
	tp = {
		Id = TigerPalmId,
		GetCD = function(curId, r, tdb)
			if r.chi < 1 or r.poolChi then
				return 100
			end
			if ((r.chi <= r.chiMax - 2) and r.willCapEnergy) then
				return 101
			end
			return r:GetCooldown(TigerPalmId)
		end,
		UpdateResources = function(r)
			r:UseChi(1)
			r:UseTime(1)
		end,
		Info = TigerPalm
	}, 
	cbtp = {
		Id = TigerPalmId,
		GetCD = function(curId, r, tdb)
			if r.spec.cbtp or (r:GetTimeLeft("player", ComboBreakerTigerPalm, "HELPFUL|PLAYER")) <= 0 then
				return 100
			end
			return r:GetCooldown(TigerPalmId)
		end,
		UpdateResources = function(r)
			r.spec.cbtp = true
			r:UseTime(1)
		end,
		Info = ComboBreakerTigerPalm
	},
	bok = {
		Id = BlackoutKickId,
		GetCD = function(curId, r, tdb)
			if r.chi < 2 or r.poolChi then
				return 100
			end

			if ((r.chi <= r.chiMax - 2) and r.willCapEnergy) then
				return 101
			end
			
			return r:GetCooldown(BlackoutKickId)
		end,
		UpdateResources = function(r)
			r:UseChi(2)
			r:UseTime(1)
		end,
		Info = BlackoutKick
	},
	cbbok = {
		Id = BlackoutKickId,
		GetCD = function(curId, r, tdb)
			if r.spec.cbbok or (r:GetTimeLeft("player", ComboBreakerBlackoutKick, "HELPFUL|PLAYER")) <= 0 then
				return 100
			end

			return r:GetCooldown(BlackoutKickId)
		end,
		UpdateResources = function(r)
			r.spec.cbbok = true
			r:UseTime(1)
		end,
		Info = ComboBreakerBlackoutKick
	},
	eh = {
		Id = ExpelHarmId,
		GetCD = function(curId, r, tdb)
			if curId ~= ExpelHarmId and r:GetPlayerHealthPercentage() <= tdb.ehFloor then
				return max(r:TimeToEnergy(38), r:GetCooldown(ExpelHarmId))
			end
			
			return 100
		end,
		UpdateResources = function(r)
			r:AddChi(2)
			r:UseEnergy(40) -- time use included
		end,
		Info = ExpelHarm
	},
	jab = {
		Id = JabId,
		GetCD = function(curId, r, tdb)
			if r.chi > r.chiMax - 2 then
				return 100
			end
			return max(r:TimeToEnergy(38), r:GetCooldown(JabId))
		end,
		UpdateResources = function(r)
			local chiGain = r:IsPowerStrikesReady() and 3 or 2
			r:AddChi(chiGain)
			r:UseEnergy(40) -- time use included
		end,
		Info = Jab
	},
	eb = {
		Id = EnergizingBrewId,
		GetCD = function(curId, r, tdb)
			
			if curId == EnergizingBrewId or
				(r:TimeToEnergy(100) < tdb.useEbTh) then
				return 100
			end
			
			return r:GetCooldown(EnergizingBrewId)
		end,
		UpdateResources = function(r)
			r:BoostEnergy(10)
		end,
		Info = EnergizingBrew
	},
	teb = {
		Id = TigereyeBrewId,
		GetCD = function(curId, r, tdb)
			if curId == TigereyeBrewId then
				return 100
			end

			local t, stacks = r:GetTimeLeft("player", TigereyeBrew, "HELPFUL|PLAYER")
			if (stacks and (stacks >= tdb.useTebAt or (stacks > 0 and t < tdb.alertTeb))) then -- the buff is the same name when active but with 0 stacks hence the latter check
				return r:GetCooldown(TigereyeBrewId)
			end

			return 100
		end,
		Info = TigereyeBrew
	},
	fsk = {
		Id = FlyingSerpentKickId,
		GetCD = function(curId, r, tdb)
			if curId == FlyingSerpentKickId then
				return 0
			end
			return r:GetCooldown(FlyingSerpentKickId) + (curId and 1.5 or 2.5) --yeah so hardcoded this one. Basically we don't want to use this unless all other options are unavailable for atleast the time it takes to get this off and land again
		end,
		Info = FlyingSerpentKick
	},
}

------------------------------------- Register the spec module ---------------------------------------------
-- Remember to update the version if  GetDefaultTemplateDB gets new fields or some are removed / renamed
local moduleVersion = 26
local specMod = classModule:RegisterSpecModule(3, actions, moduleVersion)
classModule.InjectSpecModuleShared(specMod)

-- Implement 'abstract' (required) functions
function specMod:GetDefaultTemplateDB()
	return {
		-- The first three settings are requirements of the classModulePlugin, the rest are specific to this mod (obviously the contents of PriorityList is too)
		PriorityList = {"tod","rskdb","tpow","eb","rsk","fof","chiw","chib","t2t","cbbok","bok","cbtp","eh","jab","fsk"},
		RangePerSkill = false,
		LatencyAdjust = 0.2,
		tpRefresh = 2,
		useEbTh = 5,
		useTebAt = 10,
		alertTeb = 4,
		todWait = 4,
		poolTod = true,
		poolFof = true,
		rskMaxDelay = 0.5,
		ehFloor = 80
	}
end

---------------------- Implement optional functions-------------------------
-- Behavior templates
function specMod:RegisterBehaviorTemplates()
	self:AddBehaviorTemplate(wwSpells["Tigereye Brew"].Name, "return TigerEyeBrewIcon()")
	self:AddBehaviorTemplate(wwSpells["Rising Sun Kick"])
	self:AddBehaviorTemplate(wwSpells["Fists of Fury"])
	self:AddBehaviorTemplate(wwSpells["Energizing Brew"])
	self:AddBehaviorTemplate(wwSpells["Combo Breaker: Blackout Kick"])
	self:AddBehaviorTemplate(wwSpells["Combo Breaker: Tiger Palm"])
	self:AddBehaviorTemplate(wwSpells["Spinning Fire Blossom"])
	self:AddBehaviorTemplate(wwSpells["Flying Serpent Kick"])
	self:AddBehaviorTemplate(wwSpells["Touch of Karma"])
	self:AddBehaviorTemplate(wwSpells["Storm, Earth and Fire"])
end

-- This spec needs the UNIT_SPELLCAST_SUCCEEDED event so this is subscribed to in the activate function and unsubscribed in the deactivate function
function specMod:OnActivated()
	-- Its is also possible to pass the handler directly to this function call, but I have just implemented the handler below
	self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")

	-- Behaviors that need the template db must be registered here
	local tdb = self.Tdb
	local IconSpell = clcInfoPlugin.ClcEnvironment.IconSpell
	local GetCooldown = clcInfoPlugin.GetCooldown
	local GetTimeLeft = clcInfoPlugin.GetTimeLeft

	-- Register behavior for 3rd icon the brew icon
	self.RegisterBehavior("TigerEyeBrewIcon", 
		function ()
			local t, stacks = GetTimeLeft("player", TigereyeBrew, "HELPFUL|PLAYER")
			if stacks and (stacks >= tdb.useTebAt or (stacks > 0 and t < tdb.alertTeb)) and GetCooldown(TigereyeBrewId) == 0 then
				return IconSpell(TigereyeBrewId, false)
			end
		end)
end

function specMod:OnDeactivated()
	self:UnregisterEvent("UNIT_SPELLCAST_SUCCEEDED")
end

function specMod:GetActiveChannelEndTime()
	return activeChannelEnds
end

function specMod:GetMacroIcon()
	return 103985
end

-- Remember to update the locale/enUS.lua (and other locals) with new L[""] text
function specMod:GetOptionEditors(GetTDB, SetTDB)
	local editors = self.GetSharedOptionEditors(GetTDB, SetTDB)

	editors.useTebAt = {
		order = 10, width="double", type = "range", min = 1, max = 20, step = 1, name = L["Tigereye Brew Threshold"],
		desc=L["The number of stacks of Tigereye brew at which to begin to suggest it. It will be suggested if it's about to time out regardless of this setting. This also applies if it is in a separate 3rd icon."] , 
		get = GetTDB, set = SetTDB,
	}
	editors.alertTeb = {
		order = 11, width="double", type = "range", min = 1, max = 20, step = 1, name = L["Tigereye Brew Expiration Notice"],
		desc=L["The number of seconds remaining of Tigereye brew at which to begin to suggest it."] , 
		get = GetTDB, set = SetTDB,
	}	
	editors.useEbTh = {
		order = 12, width="double", type = "range", min = 3, max = 20, step = 0.1, name = L["Energizing Brew Threshold"],
		desc=L["The time required to reach full energy before suggesting Energizing Brew. I.e. the default of 5 will suggest using Energizing brew if it will take more than 5 seconds to reach 100 energy."] , 
		get = GetTDB, set = SetTDB,
	}
	editors.poolFof = {
		order = 13, width="double", type = "toggle", name = L["Pool Chi for Fists of Fury"],
		desc=L["Whether to pool (save) chi for Fists of Fury if it is otherwise available (off CD). This will bypass other chi using abilities (apart from Touch of Death if that has higher prio) to allow for 3 chi."] , 
		get = GetTDB, set = SetTDB,
	}
	editors.rskMaxDelay = {
		order = 14, width="double", type = "range", min = 0, max = 1, step = 0.1, name = L["Rising Sun Kick Max Delay"],
		desc=L["The acceptable time to delay a Rising Sun Kick due to using another chi consuming ability."] , 
		get = GetTDB, set = SetTDB,
	}
	return editors
end

-- This function returns two functions that alter the priorities. These will be represented as buttons on the priority option screen
function specMod:GetRecommendedPriorities()
	return {
		[L["Solo"]] = function()
			local tdb = self.Tdb
			tdb.poolFof = true
			tdb.tpRefresh = 2
			tdb.ehFloor = 80
			tdb.PriorityList = {"tod","rskdb","tpow","eb","rsk","fof","chiw","chib","t2t","cbbok","bok","cbtp","eh","jab","fsk"}
		end,
		[L["Raid / Group"]] = function()
			local tdb = self.Tdb
			tdb.poolFof = true
			tdb.tpRefresh = 2
			tdb.ehFloor = 70
			tdb.PriorityList = {"tod","rskdb","tpow","eb","rsk","fof","chiw","chib","t2t","cbbok","bok","cbtp","jab","fsk"}
		end
	}
end

-- This returns the icons needed by the default template
-- Here I have retained the two default action icons since they should always be there (The call to clcInfoPlugin.SpecModuleDefaults.CreateDefaultTemplateIcons)
-- and then added a third icon to display brew availability
function specMod.CreateDefaultTemplateIcons(gridIdx, iconFactory)

	local defaults = clcInfoPlugin.SpecModuleDefaults.CreateDefaultTemplateIcons(gridIdx, iconFactory)

	--tiger eye brew
	local icon3 = iconFactory:GetDefault()
	icon3.udLabel = "IconBrew"
	icon3.skinSource = "Grid"
	icon3.gridId = gridIdx
	icon3.gridX = 3
	icon3.ups = 3
	icon3.exec = "return TigerEyeBrewIcon()"

	table.insert(defaults, icon3)

	return defaults
end

--------------------------- Implement functions specific to this implementation -----------------------------
-- updates the id of the jab action so that the selected/weapon specific jab icon is shown
function specMod.SetJabIconId(id)
	actions.jab.IconId = id
end

-- this event is required to pick up on a few spells, since we need to know when they are actually cast
function specMod.UNIT_SPELLCAST_SUCCEEDED(self, event, ...)
	local unitId, _, _, _, spellId = ...

    if unitId == "player" then
		local activeResources = self.ActiveResources
		activeChannelEnds = 0
		if spellId == FistsOfFuryId then
			activeChannelEnds = GetTime() + 4 / activeResources.spell_haste
		elseif spellId == EnergizingBrewId then
			activeResources.energy_regen_boost = 10
			activeResources.energy_regen_boost_end = GetTime() + 6
		end
	end
end
-------------------------- Behaviors and Behavior Templates --------------