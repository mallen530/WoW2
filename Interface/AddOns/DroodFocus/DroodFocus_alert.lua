----------------------------------------------------------------------------------------------------
-- DroodFocus 4.0.0 - alert
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local state={}
local letype={}
local scale={}

local frame=nil
local frameTexture=nil
local overlay={}
local overlaybase={}
local overlayTexture={}

local frametext = {}
local frametext_overlay = {}	
local frametext_text = {}	

local frequency =1/60
local tempo=(frequency/15)*3

local SchoolStringTable = {
    -- Single Schools
    [SCHOOL_MASK_PHYSICAL]                      = STRING_SCHOOL_PHYSICAL,
    [SCHOOL_MASK_HOLY]                          = STRING_SCHOOL_HOLY,
    [SCHOOL_MASK_FIRE]                          = STRING_SCHOOL_FIRE,
    [SCHOOL_MASK_NATURE]                        = STRING_SCHOOL_NATURE,
    [SCHOOL_MASK_FROST]                         = STRING_SCHOOL_FROST,
    [SCHOOL_MASK_SHADOW]                        = STRING_SCHOOL_SHADOW,
    [SCHOOL_MASK_ARCANE]                        = STRING_SCHOOL_ARCANE,
    -- Physical and a Magical
    [SCHOOL_MASK_PHYSICAL + SCHOOL_MASK_FIRE]   = STRING_SCHOOL_FLAMESTRIKE,
    [SCHOOL_MASK_PHYSICAL + SCHOOL_MASK_FROST]  = STRING_SCHOOL_FROSTSTRIKE,
    [SCHOOL_MASK_PHYSICAL + SCHOOL_MASK_ARCANE] = STRING_SCHOOL_SPELLSTRIKE,
    [SCHOOL_MASK_PHYSICAL + SCHOOL_MASK_NATURE] = STRING_SCHOOL_STORMSTRIKE,
    [SCHOOL_MASK_PHYSICAL + SCHOOL_MASK_SHADOW] = STRING_SCHOOL_SHADOWSTRIKE,
    [SCHOOL_MASK_PHYSICAL + SCHOOL_MASK_HOLY]   = STRING_SCHOOL_HOLYSTRIKE,
    -- Two Magical Schools
    [SCHOOL_MASK_FIRE + SCHOOL_MASK_FROST]      = STRING_SCHOOL_FROSTFIRE,
    [SCHOOL_MASK_FIRE + SCHOOL_MASK_ARCANE]     = STRING_SCHOOL_SPELLFIRE,
    [SCHOOL_MASK_FIRE + SCHOOL_MASK_NATURE]     = STRING_SCHOOL_FIRESTORM,
    [SCHOOL_MASK_FIRE + SCHOOL_MASK_SHADOW]     = STRING_SCHOOL_SHADOWFLAME,
    [SCHOOL_MASK_FIRE + SCHOOL_MASK_HOLY]       = STRING_SCHOOL_HOLYFIRE,
    [SCHOOL_MASK_FROST + SCHOOL_MASK_ARCANE]    = STRING_SCHOOL_SPELLFROST,
    [SCHOOL_MASK_FROST + SCHOOL_MASK_NATURE]    = STRING_SCHOOL_FROSTSTORM,
    [SCHOOL_MASK_FROST + SCHOOL_MASK_SHADOW]    = STRING_SCHOOL_SHADOWFROST,
    [SCHOOL_MASK_FROST + SCHOOL_MASK_HOLY]      = STRING_SCHOOL_HOLYFROST,
    [SCHOOL_MASK_ARCANE + SCHOOL_MASK_NATURE]   = STRING_SCHOOL_SPELLSTORM,
    [SCHOOL_MASK_ARCANE + SCHOOL_MASK_SHADOW]   = STRING_SCHOOL_SPELLSHADOW,
    [SCHOOL_MASK_ARCANE + SCHOOL_MASK_HOLY]     = STRING_SCHOOL_DIVINE,
    [SCHOOL_MASK_NATURE + SCHOOL_MASK_SHADOW]   = STRING_SCHOOL_SHADOWSTORM,
    [SCHOOL_MASK_NATURE + SCHOOL_MASK_HOLY]     = STRING_SCHOOL_HOLYSTORM,
    [SCHOOL_MASK_SHADOW + SCHOOL_MASK_HOLY]     = STRING_SCHOOL_SHADOWLIGHT,
    -- Three or more schools
    [SCHOOL_MASK_FIRE + SCHOOL_MASK_FROST + SCHOOL_MASK_NATURE]                                                                                     = STRING_SCHOOL_ELEMENTAL,
    [SCHOOL_MASK_FIRE + SCHOOL_MASK_FROST + SCHOOL_MASK_ARCANE + SCHOOL_MASK_NATURE + SCHOOL_MASK_SHADOW]                                           = STRING_SCHOOL_CHROMATIC,
    [SCHOOL_MASK_FIRE + SCHOOL_MASK_FROST + SCHOOL_MASK_ARCANE + SCHOOL_MASK_NATURE + SCHOOL_MASK_SHADOW + SCHOOL_MASK_HOLY]                        = STRING_SCHOOL_MAGIC,
    [SCHOOL_MASK_PHYSICAL + SCHOOL_MASK_FIRE + SCHOOL_MASK_FROST + SCHOOL_MASK_ARCANE + SCHOOL_MASK_NATURE + SCHOOL_MASK_SHADOW + SCHOOL_MASK_HOLY] = STRING_SCHOOL_CHAOS,
};
 
local function DFalert_SchoolString(school)
    if ( not school or school == SCHOOL_MASK_NONE ) then
        return STRING_SCHOOL_UNKNOWN;
    end
 
    local schoolString = SchoolStringTable[school];
    return schoolString or STRING_SCHOOL_UNKNOWN
end

-- initialisation frames / initilization frames
function DF:init_alert_frame()
	
	local anchorx
	local anchory
	local i
	
	if not frame then
		
		-- cadre principal / main frame
		frame = CreateFrame("FRAME","DF_ALERT_FRAME",UIParent)

		frame:SetScript("OnMouseDown",function(self,button)
			if button=="LeftButton" then
  			frame:StartMoving()
  		elseif button=="RightButton" then
  			DF:options_show("DFalert",frame)
  		end
  	end)
		frame:SetScript("OnMouseUp",function(self,button)
			if button=="LeftButton" then
	  		frame:StopMovingOrSizing()

	  		local anchorx=DF.anchor[1].frame:GetLeft()
	  		local anchory=DF.anchor[1].frame:GetTop()
	  		DF_config.alert.positionx=self:GetLeft()-anchorx
	  		DF_config.alert.positiony=self:GetTop()-anchory

	  		frame:ClearAllPoints()
	  		frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.alert.positionx, DF_config.alert.positiony)
				DF:updateWidgetValue("DFalertleft")
				DF:updateWidgetValue("DFalerttop")

		  end
		end)	
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS ALERT",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)		

		frameTexture = frame:CreateTexture("DF_ALERT_FRAME_TEXTURE","BACKGROUND")

		for i = 1,4 do	
			state[i]=0
			scale[i]=1
			
			overlay[i]={}	
			overlaybase[i]={}	
			frametext_overlay[i]={}
			frametext_text[i]={}
			
			-- cadre pour la texture / framework for the texture
			overlaybase[i] = CreateFrame("FRAME","DF_ALERT_OVERLAYBASE"..tostring(i),frame)
			overlay[i] = CreateFrame("FRAME","DF_ALERT_OVERLAY"..tostring(i),overlaybase[i])
			
			-- la texture / texture
			overlayTexture[i] = overlay[i]:CreateTexture("DF_ALERT_OVERLAY_TEXTURE"..tostring(i),"BACKGROUND")
	
			-- le text / text
			frametext_overlay[i] = CreateFrame("FRAME","DF_ALERT_FRAMETEXT_OVERLAY"..tostring(i),overlaybase[i])
			frametext_text[i] = frametext_overlay[i]:CreateFontString("DF_ALERT_FRAMETEXT_TEXT"..tostring(i),"ARTWORK")		
		end
		
		frame:EnableMouse(false)	
			
	end
	
	if not DF_config.alert.newLevel then
		DF_config.alert.newLevel=DF_config.alert.level*10
	end
	local level = DF:numbers5(DF_config.alert.newLevel)

	-- paramétres cadre principal / main frame parameters
	frame:SetMovable(true)
	
	frame:SetWidth(64)
	frame:SetHeight(64)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.alert.positionx, DF_config.alert.positiony)
	frame:SetFrameLevel(level)

	-- paramétres texture / texture parameters
	frameTexture:SetTexCoord(0, 1, 0, 1)
	frameTexture:ClearAllPoints()
	frameTexture:SetAllPoints(frame)
	
	frameTexture:SetTexture(1,1,1,0)

	for i = 1,4 do		

		overlaybase[i]:SetMovable(false)
		overlaybase[i]:EnableMouse(false)		
		overlaybase[i]:SetWidth(DF_config.alert.width)
		overlaybase[i]:SetHeight(DF_config.alert.height)
		overlaybase[i]:SetPoint("CENTER", frame, "CENTER", (DF_config.alert.decalx*(i-1)), (DF_config.alert.decaly*(i-1)))
		overlaybase[i]:SetFrameLevel(level+1)

		overlay[i]:SetMovable(false)
		overlay[i]:EnableMouse(false)		
		overlay[i]:SetWidth(DF_config.alert.width)
		overlay[i]:SetHeight(DF_config.alert.height)
		overlay[i]:SetPoint("CENTER", overlaybase[i], "CENTER", 0,0)
		overlay[i]:SetFrameLevel(level+2)
		
		overlay[i]:SetAlpha(DF_config.alert.alpha)
		
		-- paramétres texture / texture parameters
		overlayTexture[i]:SetTexCoord(0, 1, 0, 1)
		overlayTexture[i]:SetWidth(128)
		overlayTexture[i]:SetHeight(128)
		overlayTexture[i]:SetBlendMode(DF_config.alert.mode)
		overlayTexture[i]:ClearAllPoints()
		overlayTexture[i]:SetAllPoints(overlay[i])
		overlayTexture[i]:SetTexture(DF_config.alert.texture1)
		
		-- place la texture dans le cadre / place the texture in
		overlay.texture = overlayTexture[i]
	
		-- parametre texte / text parameter
		frametext_overlay[i]:SetWidth(256)
		frametext_overlay[i]:SetHeight(32)
		frametext_overlay[i]:ClearAllPoints()
		frametext_overlay[i]:SetPoint("CENTER", overlay[i], "CENTER", 0, 0)
		frametext_overlay[i]:SetFrameLevel(level+2)	
	
		DF:MySetFont(frametext_text[i],DF_config.alert.fontPath,DF_config.alert.fontSize,"OUTLINE")
		frametext_text[i]:SetWidth(256)
		frametext_text[i]:SetHeight(32)	
		frametext_text[i]:SetJustifyH('CENTER')
		frametext_text[i]:SetJustifyV('MIDDLE')	
		frametext_text[i]:SetShadowColor(0, 0, 0, 0.75)
		frametext_text[i]:SetShadowOffset(0.5, -0.5)
		frametext_text[i]:SetTextColor(DF_config.alert.textColor.r, DF_config.alert.textColor.v, DF_config.alert.textColor.b, DF_config.alert.textColor.a)
		frametext_text[i]:ClearAllPoints()
		frametext_text[i]:SetPoint("CENTER", frametext_overlay[i],"CENTER", DF_config.alert.textOffsetX,DF_config.alert.textOffsetY)
		frametext_text[i]:SetText("")
		
		overlay[i]:Hide()
	
	end	
	
end

-- gestion de l'animation / animation management
function DF:alert_update(elapsed)

	local tempScale

	if not DF_config.alert.enable then
		frame:Hide()
		return
	else
		frame:Show()	
	end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0		

	if DF.configmode then
		frameTexture:SetTexture(1,1,1,0.25)
	else
		frameTexture:SetTexture(1,1,1,0)
	end

	if DF.configmode then
		
		for i = 1,4 do	
			overlayTexture[i]:SetTexture("Interface\\AddOns\\DroodFocus\\datas\\alertBehind.tga")
			overlay[i]:SetScale(1)
			if DF_config.alert.showText then
				frametext_text[i]:SetText("Spell Name\n(Spell School)")
				frametext_text[i]:Show()
				frametext_overlay[i]:Show()
			end
			overlay[i]:Show()
		end
		
	else
		
		for i = 1,4 do	
	
			if state[i] == 1 then
			
				if scale[i]>1 then
					scale[i]  = scale[i]  - elapsed
				else
					scale[i]  = scale[i]  - 0.05
				end
			
				tempScale=scale[i]
			
				if	tempScale>1 then tempScale=1 end			
				if	tempScale<0.1 then
					tempScale=0.1
					state[i]=0
					letype[i]=0
				end
							
				overlay[i]:SetScale(DF:smoothScale(tempScale));
				overlay[i]:SetAlpha(DF:smoothAlpha(tempScale,DF_config.alert.alpha));
				overlay[i]:Show();		

				if tempScale>0.75 then
					frametext_overlay[i]:Show()
				else
					frametext_overlay[i]:Hide()
				end
				
			elseif state[i]==2 then
				
				scale[i]  = scale[i]  + 0.05
		
				if	scale[i]>1 then
					
					scale[i]=DF_config.alert.persistence
					state[i]=1
					
				end

				tempScale=scale[i]
				if	tempScale>1 then tempScale=1 end		
				if	tempScale<0.01 then tempScale=0.01 end
				
				overlay[i]:SetScale(DF:smoothScale(tempScale));
				overlay[i]:SetAlpha(DF:smoothAlpha(tempScale,DF_config.alert.alpha));
				overlay[i]:Show();	

				if tempScale>0.75 then
					frametext_overlay[i]:Show()
				else
					frametext_overlay[i]:Hide()
				end
					
			else
				
				overlay[i]:Hide()
				frametext_text[i]:SetText("")
				
			end	
	
		end
	end

end

function DF:alert_activate(aType,force,spellname,spellschool,spelltype)

	local spellcolor

	if not DF_config.alert.enable then
		return
	end	

	local num=0
	for i = 1,4 do	
		if state[i]==0 then
			num=i
			break
		end
	end

	local alertExist=false
	local testTexture=""
	local testType=0
	
	for i = 1,4 do	
		if state[i]~=0 then
			
			if aType=="1" then
				testTexture=DF_config.alert.texture1
				testType=1
			elseif aType=="2" then
				testTexture=DF_config.alert.texture2
				testType=2
			elseif aType=="3" then
				testTexture=DF_config.alert.texture3
				testType=3
			end
			
			if overlayTexture[i]:GetTexture()==testTexture and letype[i]==testType then
				alertExist=true
			end

		end
	end
	
	if num>0 and not alertExist then
	
		if aType=="1" then
			overlayTexture[num]:SetTexture(DF_config.alert.texture1)
			frametext_text[num]:SetText("")
			letype[num]=1
		elseif aType=="2" then
			overlayTexture[num]:SetTexture(DF_config.alert.texture2)
			frametext_text[num]:SetText("")
			letype[num]=2
		elseif aType=="3" then
			overlayTexture[num]:SetTexture(DF_config.alert.texture3)
			frametext_text[num]:SetText("")
			letype[num]=3
		elseif aType=="4" then
			overlayTexture[num]:SetTexture(spellname)
			frametext_text[num]:SetText(spellschool.."|n"..spelltype)
			letype[num]=4
		else
			overlayTexture[num]:SetTexture(aType)
			letype[num]=5
			if spellname and DF_config.alert.showText then
				spellcolor="|cFF00FF88Buff: "
				if spelltype=="DEBUFF" then spellcolor="|cFFFF8800Debuff: " end
				frametext_text[num]:SetText(spellcolor..spellname.."|n|cFFFFFFFF"..DFalert_SchoolString(spellschool))
			end
		end
	
		state[num]=2
		scale[num]=0.1
		
	end
	
end

-- enable/disable déplacement du cadre avec la souris
-- enable/disable frame moving with the mouse
function DF:alert_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:alert_reinit()
	
	DF:init_alert_frame()
	DF:alert_activate("1",true)
	DF:alert_toogle_lock(DF.configmode)
	DF:options_setLevel()
	
end

function DF:alert_setLevel()
	DF:setMyFrameLevel(frame,DF_config.alert.newLevel,"alert")
end