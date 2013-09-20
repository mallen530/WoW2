----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.0 - infos
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 2
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local frame
local frameTexts={}
local frameTexture=nil

local targetLevel =0

local minCrit = 10000
local maxCrit = 0

local minPA = 1000000000
local maxPA = 0

local frequency =1
local tempo=0

local vToolTip = CreateFrame("GameTooltip","DroodFocusVengeanceToolTip",nil,"GameTooltipTemplate")
vToolTip:SetOwner(UIParent, "ANCHOR_NONE")

-- initialisation frames / initialization frames
function DF:init_infos_frame()
		
	if not frame then
		
		-- cadre principal / main frame
		frame = CreateFrame("FRAME","DF_INFOS_FRAME",DF.anchor[5].frame)
		frame:SetScript("OnMouseDown",function(self,button)
  		if button=="RightButton" then
  			DF:options_show("DFinfos",frame)
  		end
		end)
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS INFOS",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)	
			

		frameTexts = frame:CreateFontString("DF_INFOS_TEXT","ARTWORK")

		frameTexture = frame:CreateTexture("DF_INFOS_FRAME_TEXTURE","BACKGROUND")
	
		frame:EnableMouse(false)	

	end	
	
	if not DF_config.infos.newLevel then
		DF_config.infos.newLevel=DF_config.infos.level*10
	end
	local level = DF:numbers5(DF_config.infos.newLevel)	

	-- paramétres cadre principal / main frame parameters
	frame:SetMovable(false)
	frame:SetWidth(96)
	frame:SetHeight(64)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[5].frame, "TOPLEFT", 8, -8)
	frame:SetFrameLevel(level)

	-- paramétres texture / texture parameters
	frameTexture:SetTexCoord(0, 1, 0, 1)
	frameTexture:ClearAllPoints()
	frameTexture:SetAllPoints(frame)

	DF:MySetFont(frameTexts,DF_config.infos.fontPath,DF_config.infos.fontSize,"OUTLINE")
	frameTexts:SetNonSpaceWrap(true) 
	frameTexts:SetShadowColor(0, 0, 0, 0.75)
	frameTexts:SetShadowOffset(0.5, -0.5)
	frameTexts:SetTextColor(DF_config.infos.textColor.r, DF_config.infos.textColor.v, DF_config.infos.textColor.b, DF_config.infos.textColor.a)
	frameTexts:ClearAllPoints()
	frameTexts:SetPoint("TOPLEFT", frame,"TOPLEFT", 0, 0)
	frameTexts:SetText(DF:infos_getInfos())
	frameTexts:SetJustifyH("LEFT")
	frame:SetWidth(frameTexts:GetStringWidth()+4)
	frame:SetHeight(frameTexts:GetStringHeight()+4)

	frameTexture:SetTexture(DF_config.infos.backColor.r, DF_config.infos.backColor.v, DF_config.infos.backColor.b, DF_config.infos.backColor.a)

	if not DF_config.infos.enable then
		frame:Hide()
	else
		frame:Show()
	end
	
end

local function getPowerAttack()
	local base, posBuff, negBuff = UnitAttackPower("player")
	local puissance = base + posBuff + negBuff
	return DF:numbers(puissance)
end

local function getRangedAttack()
	local base, posBuff, negBuff = UnitRangedAttackPower("player")
	local puissance = base + posBuff + negBuff
	return DF:numbers(puissance)
end

local function getMeleeCrit()
	return DF:doubleNumbers(GetCritChance()).."%%"
end
local function getRangedCrit()
	local crit = GetRangedCritChance()
	return DF:doubleNumbers(crit).."%%"
end

local function getMeleeHit()
	local hit =GetCombatRatingBonus(CR_HIT_MELEE)
	return DF:doubleNumbers(hit).."%%"
end

local function getRangedHit()
	local hit =GetCombatRatingBonus(CR_HIT_RANGED)
	return DF:doubleNumbers(hit).."%%"
end

local function getExpertise()
	local expertise=GetExpertise()
	return DF:doubleNumbers(expertise).."%%"
end

local function getMeleeHaste()
	return DF:doubleNumbers(GetCombatRatingBonus(18)).."%%"
end
local function getRangedHaste()
	return DF:doubleNumbers(GetCombatRatingBonus(19)).."%%"
end

local function getArmor()
	local empty, effectiveArmor, empty, empty, empty = UnitArmor("player");
	return DF:numbers(effectiveArmor)
end

local function getDodge()
	return DF:doubleNumbers(GetDodgeChance()).."%%"
end
local function getParry()
	return DF:doubleNumbers(GetParryChance()).."%%"
end

local function GetMaitriseFeral()
	return DF:doubleNumbers(((4800 + GetCombatRating(26)) / 19169.3291)*100)
end
local function GetMaitriseGardien()
	return DF:doubleNumbers(((4800 + GetCombatRating(26)) / 48006.82)*100)
end

local function GetMaitrise()
	return GetMaitriseFeral().."/"..GetMaitriseGardien()
end

local function getTooltipText(...)
	local text = ""
	for i=1,select("#",...) do
		local rgn = select(i,...)
		if rgn and rgn:GetObjectType() == "FontString" then
			text = text .. (rgn:GetText() or "")
		end
	end
	return text == "" and "0" or text
end

local function GetSavageDefense()
--	local base, posBuff, negBuff = UnitAttackPower("player")
--	local puissance = base + posBuff + negBuff
--	local mastery = ((GetMastery()*4)/100)+1
--	local coef = 0.35*mastery
--	local savageWithMastery = puissance*coef
--	return DF:numbers(savageWithMastery)

	local buffv = UnitAura("player", (GetSpellInfo(62606)))
	local vToolTipText=""
	local sdefense=0
	if buffv then
		vToolTip:ClearLines()
		vToolTip:SetUnitBuff("player",buffv)
		vToolTipText = getTooltipText(vToolTip:GetRegions())
		if vToolTipText then
			sdefense = tonumber(string.match(vToolTipText,"%d+"))
		end
	end
	return sdefense

end

function DF:GetVengeance()
	local buffv = UnitAura("player", (GetSpellInfo(84840)))
	local vToolTipText=""
	local vengeance=0
	if buffv then
		vToolTip:ClearLines()
		vToolTip:SetUnitBuff("player",buffv)
		vToolTipText = getTooltipText(vToolTip:GetRegions())
		if vToolTipText then
			vengeance = tonumber(string.match(vToolTipText,"%d+"))
		end
	end
	return vengeance
end

function DF:infos_getInfos()
	
	local formatChaine = DF_config.infos.infolines
	local docActive=false
	
	formatChaine=formatChaine:gsub("#meleeAP", getPowerAttack())
	formatChaine=formatChaine:gsub("#rangedAP", getRangedAttack())

	formatChaine=formatChaine:gsub("#meleeCrit", getMeleeCrit())
	formatChaine=formatChaine:gsub("#rangedCrit", getRangedCrit())

	formatChaine=formatChaine:gsub("#minCrit", DF:doubleNumbers(minCrit).."%%")
	formatChaine=formatChaine:gsub("#maxCrit", DF:doubleNumbers(maxCrit).."%%")

	formatChaine=formatChaine:gsub("#minAP", DF:numbers(minPA))
	formatChaine=formatChaine:gsub("#maxAP", DF:numbers(maxPA))
	
	formatChaine=formatChaine:gsub("#meleeHit", getMeleeHit())
	formatChaine=formatChaine:gsub("#rangedHit", getRangedHit())
	
	formatChaine=formatChaine:gsub("#dodge", getDodge())
	formatChaine=formatChaine:gsub("#parry", getParry())
	
	formatChaine=formatChaine:gsub("#meleeHaste", getMeleeHaste())
	formatChaine=formatChaine:gsub("#rangedHaste", getRangedHaste())
	
	formatChaine=formatChaine:gsub("#expertise", getExpertise())
	formatChaine=formatChaine:gsub("#armor", getArmor())
	formatChaine=formatChaine:gsub("#mastery", GetMaitrise())
	formatChaine=formatChaine:gsub("#razor", GetMaitriseFeral())
	formatChaine=formatChaine:gsub("#guardian", GetMaitriseGardien())

	if DF:spell_exist(145152,nil,"player","HELPFUL|PLAYER",true) then
		docActive=true
	end

	formatChaine=formatChaine:gsub("#ripPower", DF:numbers(DF:GetDotPower(1079,docActive,DF.comboPoints)*8).." ["..tostring(DF.comboPoints).."CP]")
	formatChaine=formatChaine:gsub("#rakePower", DF:numbers(DF:GetDotPower(1822,docActive)*6))
	formatChaine=formatChaine:gsub("#thrashPower", DF:numbers(DF:GetDotPower(106830,docActive)*6))
	
	formatChaine=formatChaine:gsub("#ripTickPower", DF:numbers(DF:GetDotPower(1079,docActive,DF.comboPoints)).." ["..tostring(DF.comboPoints).."CP]")
	formatChaine=formatChaine:gsub("#rakeTickPower", DF:numbers(DF:GetDotPower(1822,docActive)))
	formatChaine=formatChaine:gsub("#thrashTickPower", DF:numbers(DF:GetDotPower(106830,docActive)))

	formatChaine=formatChaine:gsub("#vengeance", DF:numbers(DF:GetVengeance()))

	formatChaine=formatChaine:gsub("*", "|n")

	return formatChaine
	
end

-- gestion de l'animation / animation management
function DF:infos_update(elapsed)

	if not DF_config.infos.enable then return end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0	

	local crit = GetCritChance()
	if (crit<=minCrit) then
		minCrit=crit
	end
	if (crit>maxCrit) then
		maxCrit=crit
	end	

	local base, posBuff, negBuff = UnitAttackPower("player")
	local puissance = base + posBuff + negBuff
	if (puissance<=minPA) then
		minPA=puissance
	end
	if (puissance>maxPA) then
		maxPA=puissance
	end	

	
	frameTexts:ClearAllPoints()
	frameTexts:SetText(DF:infos_getInfos())
	frame:SetWidth(frameTexts:GetStringWidth()+4)
	frame:SetHeight(frameTexts:GetStringHeight()+4)
	frameTexts:SetPoint("TOPLEFT", frame,"TOPLEFT", 0, 0)
		
end

-- enable/disable déplacement du cadre avec la souris
-- enable/disable frame moving with the mouse
function DF:infos_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:infos_reinit()
	DF:init_infos_frame()
	DF:infos_toogle_lock(DF.configmode)
	DF:options_setLevel()
end

function DF:infos_setLevel()
	local level = DF_config.infos.newLevel	
	DF:setMyFrameLevel(frame,level,"infos")
end