--
-- SkeenCore3FeralDruid
--
local LibSkeenCore = LibStub("LibSkeenCore")

local GAME_LOCALE = GetLocale()

local IsStealthed = _G.IsStealthed
local IsStealthed = _G.IsStealthed
local UnitPower = _G.UnitPower
local GetComboPoints = _G.GetComboPoints
local UnitHealth = _G.UnitHealth
local UnitHealthMax = _G.UnitHealthMax
local GetShapeshiftForm = _G.GetShapeshiftForm

local L = {}

if GAME_LOCALE == "enUS" then
	L["TOGGLE_BUFF"] = "Suggest missing buffs prior to DPS rotation"
	L["SHOW_CDS"] = "Show window without a target selected."
	L["SUGGEST_FORMS"] = "Suggest cat form if not in it."
end

local function Plugin_Registed()
	-- Default saved variables
	if SkeenFeralDruidDB == nil then
		SkeenFeralDruidDB = {} -- fresh start
	end

	-- Load defaults
	if SkeenFeralDruidDB.SuggestBuffsPriorDpsRotation == nil then
		SkeenFeralDruidDB.SuggestBuffsPriorDpsRotation = true
	end
	
	if SkeenFeralDruidDB.ShowCdsAndBuffsEvenWithoutTarget == nil then
		SkeenFeralDruidDB.ShowCdsAndBuffsEvenWithoutTarget = true
	end

	if SkeenFeralDruidDB.SuggestForm == nil then
		SkeenFeralDruidDB.SuggestForm = true
	end
end

local Option_Functions = {}

local function Option_Frame()
	local panel = CreateFrame("FRAME")

	local string
	local checkbox

	local y = -40
	local string_X   = 10
	local checkbox_X = -10

	string = panel:CreateFontString(nil,"OVERLAY","GameFontNormal")
	string:SetText(L["TOGGLE_BUFF"])
	string:SetPoint("TOPLEFT", string_X, y)
	
	checkbox = CreateFrame("CheckButton", nil, panel, "OptionsCheckButtonTemplate")
	checkbox:SetWidth(18)
	checkbox:SetHeight(18)
	checkbox:SetScript("OnClick", function() Option_Functions:ToggleSuggestBuffsPriorDpsRotation() end)
	checkbox:SetPoint("TOPRIGHT", checkbox_X, y)
	checkbox:SetChecked(Option_Functions:GetSuggestBuffsPriorDpsRotation())	

	-- Make place for a new line
	y = y - 30

	string = panel:CreateFontString(nil,"OVERLAY","GameFontNormal")
	string:SetText(L["SHOW_CDS"])
	string:SetPoint("TOPLEFT", string_X, y)

	checkbox = CreateFrame("CheckButton", nil, panel, "OptionsCheckButtonTemplate")
	checkbox:SetWidth(18)
	checkbox:SetHeight(18)
	checkbox:SetScript("OnClick", function() Option_Functions:ToggleShowCdsAndBuffsEvenWithoutTarget() end)
	checkbox:SetPoint("TOPRIGHT", checkbox_X, y)
	checkbox:SetChecked(Option_Functions:GetShowCdsAndBuffsEvenWithoutTarget())

	-- Make place for a new line
	y = y - 30

	string = panel:CreateFontString(nil,"OVERLAY","GameFontNormal")
	string:SetText(L["SUGGEST_FORMS"])
	string:SetPoint("TOPLEFT", string_X, y)

	checkbox = CreateFrame("CheckButton", nil, panel, "OptionsCheckButtonTemplate")
	checkbox:SetWidth(18)
	checkbox:SetHeight(18)
	checkbox:SetScript("OnClick", function() Option_Functions:ToggleShowForms() end)
	checkbox:SetPoint("TOPRIGHT", checkbox_X, y)
	checkbox:SetChecked(Option_Functions:GetShowForms())

	return panel
end

function Option_Functions:GetSuggestBuffsPriorDpsRotation()
	return SkeenFeralDruidDB.SuggestBuffsPriorDpsRotation
end

function Option_Functions:ToggleSuggestBuffsPriorDpsRotation()
	SkeenFeralDruidDB.SuggestBuffsPriorDpsRotation = not SkeenFeralDruidDB.SuggestBuffsPriorDpsRotation
end

function Option_Functions:GetShowCdsAndBuffsEvenWithoutTarget()
	return SkeenFeralDruidDB.ShowCdsAndBuffsEvenWithoutTarget
end

function Option_Functions:ToggleShowCdsAndBuffsEvenWithoutTarget()
	SkeenFeralDruidDB.ShowCdsAndBuffsEvenWithoutTarget = not SkeenFeralDruidDB.ShowCdsAndBuffsEvenWithoutTarget
end

function Option_Functions:GetShowForms()
	return SkeenFeralDruidDB.SuggestForm
end

function Option_Functions:ToggleShowForms()
	SkeenFeralDruidDB.SuggestForm = not SkeenFeralDruidDB.SuggestForm
end

local function Cooldowns()

	-- Ability SpellID
	local TigersFuryID      = 5217
	local BerserkID         = 50334

	-- Talents
	local Incantation 	= 106731
	local ForceofNature	= 106737
	local HeartoftheWild	= 108288
	local NaturesVigil	= 124974

	local Tier3a = LibSkeenCore:HasChosenTalent(11)
	local Tier3b = LibSkeenCore:HasChosenTalent(12)

	local Tier3 = nil
	if Tier3a then
		Tier3 = Incantation
	elseif Tier3b then
		Tier3 = ForceofNature
	end

	local Tier6a = LibSkeenCore:HasChosenTalent(16)
	local Tier6b = LibSkeenCore:HasChosenTalent(18)

	local Tier6 = nil
	if Tier6a then 
		Tier6 = HeartoftheWild
	elseif Tier6b then
		Tier6 = NaturesVigil
	end

	if Tier3 and Tier6 then
		return {TigersFuryID, BerserkID, Tier3, Tier6}
	elseif Tier3 and not Tier6 then
		return {TigersFuryID, BerserkID, Tier3}
	elseif not Tier3 and Tier6 then
		return {TigersFuryID, BerserkID, Tier3}
	else
		return {TigersFuryID, BerserkID}
	end
end

-- We don't want to cast a heal when we already have the DPS buff.
local function DetectDPSDream()
	local DreamofCenarusID = 108381
	local loop = true
	local i = 1
	while loop do
		local spellid = select(11, UnitBuff("player", i))
		if not spellid then
			return false
		end
		if spellid == DreamofCenarusID then
			return true
		end
		i = i + 1
	end
end

local function Rotation()

	-- The table used for spell information (returned to the callee)
	local spell = {}
	spell.current = nil
	spell.next = nil
	spell.cd1 = nil
	spell.cd2 = nil
	spell.cd3 = nil
	spell.cd4 = nil

	-- Get energy and cp
	local energy = UnitPower("player")
	local cp = GetComboPoints("player")

	-- Get the target's health percentage for Backstab
	local  TargetsPercentOfHealth = ( UnitHealth("target") / UnitHealthMax("target") * 100)

	-- Use this when we need to just wait in the rotation
	local coffee = "Interface\\AddOns\\SkeenCore3FeralDruid\\textures\\coffee"

	-- Ability SpellID
	local FaerieFireID = 770
	local FaeriSwarmID = 102355
	local MangleID  = 33876
	local TigersFuryID  = 5217
	local BerserkID = 50334
	local RipID = 1079
	local FerociousBiteID = 22568
	local RakeID = 1822
	local SavageRoarID  = 52610
	local ShredID = 5221
	local RavageID = 6785
	local HealingTouchID = 5185
	local DreamofCenarusID = 108381 -- DPS Version
	local PredSwiftID = 69369

	-- Do we have Nature's Swiftness and Soul of the Forest
	local SotFTalent = LibSkeenCore:HasChosenTalent(10)

	-- Do we have Faerie Fire or Faerie Swarm
	local FaerieFire = LibSkeenCore:HasChosenTalent(7)

	if FaerieFire then
		FaerieFire = FaeriSwarmID
	else
		FaerieFire = FaerieFireID
	end

	-- Buffs
	local MOTWID = 1126
	local BoKID = 20217
	local LotEID = 115921
	local EofSS = 90363
	local CatFormID = 768

	-- Debuffs
	local WeakenedArmor = 113746

	-- Cooldown
	local FaerieFire_cooldown = LibSkeenCore:GetCooldown(FaerieFire)
	local TigersFury_cooldown = LibSkeenCore:GetCooldown(TigersFuryID)
	local Berserk_cooldown = LibSkeenCore:GetCooldown(BerserkID)

	-- Temporary Buff
	local Mangle_duration = LibSkeenCore:GetMyBuffDuration(MangleID)
	local SavageRoar_duration = LibSkeenCore:GetMyBuffDuration(SavageRoarID)
	local NaturesSwift_duration = false

	-- Debuff
	local Rip_duration  = LibSkeenCore:GetMyDebuffDuration(RipID)
	local Rake_duration = LibSkeenCore:GetMyDebuffDuration(RakeID)

	-- Check first buffs, once they're done and sorted then suggest the rotation
	local someBuffWasMissing = false

	if Option_Functions:GetSuggestBuffsPriorDpsRotation() == true then
		-- All these buffs provide the stats buff.
		local statbuff = LibSkeenCore:IsBuffPresent(MOTWID) or LibSkeenCore:IsBuffPresent(BoKID) or LibSkeenCore:IsBuffPresent(LotEID) or LibSkeenCore:IsBuffPresent(EofSS)
		-- We aren't in cat form.
		if not (GetShapeshiftForm() == 3) and Option_Functions:GetShowForms() then
			spell.current = CatFormID
			someBuffWasMissing = true
		elseif not statbuff then
			spell.current = MOTWID
			someBuffWasMissing = true
		end
	end

	if Option_Functions:GetSuggestBuffsPriorDpsRotation() == true and someBuffWasMissing == true then
		return spell
	end

	-- Pick mangele of shred if we're in a party/raid or not.
	local MangleShred
	if GetNumGroupMembers() == 0 then
		MangleShred = MangleID
	else
		MangleShred = ShredID
	end

	if IsStealthed() then
		spell.current = RavageID
		spell.next = RakeID
	elseif Rake_duration < 3.0 then
		if TigersFury_cooldown <= 0 and energy < 35 then
			spell.current = TigersFuryID
			spell.next = RakeID
		elseif energy > 35 then
			spell.current = RakeID
			spell.next = MangleShred
		else
			spell.current = coffee
			spell.next = RakeID
		end
	-- Reapply Savage Roar 
	elseif SavageRoar_duration < 1.0 and cp == 5 then
		if energy > 25 then
			spell.current = SavageRoarID
			spell.next = MangleShred
		else
			spell.current = coffee
			spell.next = SavageRoarID
		end
	elseif Rip_duration < 2.0 and cp == 5 then
		if TargetsPercentOfHealth < 25 then
			if TigersFury_cooldown <= 0 and energy < 35 then
				spell.current = TigersFuryID
				spell.next = FerociousBiteID
			elseif energy > 25 then
				spell.current = FerociousBiteID
				spell.next = MangleShred
			else
				spell.current = coffee
				spell.next = FerociousBiteID
			end
		else -- Use Rip
			if TigersFury_cooldown <= 0 and energy < 35 then
				spell.current = TigersFuryID
				spell.next = RipID
			elseif energy > 30 then
				spell.current = RipID
				spell.next = MangleShred
			else
				spell.current = coffee
				spell.next = RipID
			end
		end
	elseif cp == 5 then
		if TigersFury_cooldown <= 0 and energy < 35 then
			spell.current = TigersFuryID
			spell.next = FerociousBiteID
		elseif energy > 25 then
			spell.current = FerociousBiteID
			spell.next = MangleShred
		else
			spell.current = coffee
			spell.next = FerociousBiteID
		end
	elseif energy > 40 then
		spell.current = MangleShred
		if cp < 5 then
			if Rake_duration < 1.0 then
				if energy > 35 then
					spell.next = RakeID
				else
					spell.next = RakeID
				end
			else
				spell.next = MangleShred
			end
		end
	else
		spell.current = coffee
		spell.next = MangleShred
	end

	-- Take advantage of Preditory Swiftness
	if LibSkeenCore:IsBuffPresent(PredSwiftID) and SotFTalent and not DetectDPSDream() then
		spell.next = spell.current
		spell.current = HealingTouchID
	end

	-- Reapply FF as needed
	if LibSkeenCore:GetDebuffDuration(WeakenedArmor) < 1.0 and FaerieFire_cooldown < 1.0 and not IsStealthed() then
		spell.next = spell.current
		spell.current = FaerieFire
	end

	-- Hide the frame, if the target is dead, non existing or friendly.
	if (UnitName("target") == nil or UnitIsFriend("player", "target") ~= nil or UnitHealth("target") == 0) then
		if Option_Functions:GetShowCdsAndBuffsEvenWithoutTarget() == false then
			return nil -- no buffs and cds are wanted to be shown when no enemy targeted
		else
			return spell -- show buffs and cds even without targeted enemy
		end
	end

	return spell
end

local SkeenPlugin = {}
SkeenPlugin.Name = "Druid: Feral"
SkeenPlugin.Class = "DRUID"
SkeenPlugin.Spec = 2
SkeenPlugin.Version = "5.0.3"
SkeenPlugin.Rotation = Rotation
SkeenPlugin.Cooldowns = Cooldowns
SkeenPlugin.Plugin_Registed = Plugin_Registed
SkeenPlugin.Option_Frame = Option_Frame

local SkeenCore3 = _G["SkeenCore3"]
SkeenCore3:RegisterPlugin(SkeenPlugin)
