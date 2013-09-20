----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - power bar
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local frame=nil
local frameTexture=nil
local background=nil
local foreground=nil
local spark=nil
local sparkTexture=nil
local text=nil

local cursor=0
local offset = 1

local frequency =1/60
local tempo=(frequency/15)*6

local currentColorR=0
local currentColorV=0
local currentColorB=0
local currentColorA=0

local toColorR
local toColorV
local toColorB
local toColorA

local toColorSpeed=0.1

-- initialisation frames
function DF:init_powerbar_frame()
	
	if not frame then
		
		-- cadre principal
		frame = CreateFrame("FRAME","DF_POWERBAR_FRAME",DF.anchor[1].frame)
		frame:SetScript("OnMouseDown",function(self,button)
			if button=="LeftButton" then
  			frame:StartMoving()
  		elseif button=="RightButton" then
  			DF:options_show("DFpowerbar",frame)
  		end
		end)
		frame:SetScript("OnMouseUp",function(self,button)
	  	if button=="LeftButton" then
	  		frame:StopMovingOrSizing()
	  		local anchorx=DF.anchor[1].frame:GetLeft()
	  		local anchory=DF.anchor[1].frame:GetTop()
	  		DF_config.powerbar.positionx=DF:alignToGridX(self:GetLeft()-anchorx)
	  		DF_config.powerbar.positiony=DF:alignToGridY(self:GetTop()-anchory)
	  		frame:ClearAllPoints()
	  		frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.powerbar.positionx, DF_config.powerbar.positiony)
				DF:updateWidgetValue("DFpowerbarleft")
				DF:updateWidgetValue("DFpowerbartop")
	  	end
		end)	
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS POWERBAR",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)		
				
		-- cadre pour la texture
		background = CreateFrame("StatusBar","DF_POWERBAR_BACKGROUND",frame)
		foreground = CreateFrame("StatusBar","DF_POWERBAR_FOREGROUND",frame)
		spark =  CreateFrame("FRAME","DF_POWERBAR_SPARK",foreground)

		text = foreground:CreateFontString("DF_POWERBAR_TEXT","ARTWORK")
		frame:EnableMouse(false)	

		sparkTexture=spark:CreateTexture("DF_POWERBAR_SPARK_TEXTURE")
		frameTexture=frame:CreateTexture("DF_POWERBAR_FRAME_TEXTURE")

	end

	if not DF_config.powerbar.newLevel then
		DF_config.powerbar.newLevel=DF_config.powerbar.level*10
	end
	local level = DF:numbers5(DF_config.powerbar.newLevel)		
	
	-- paramétres cadre principal
	frame:SetMovable(true)
		
	frame:SetWidth(DF_config.powerbar.width)
	frame:SetHeight(DF_config.powerbar.height)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.powerbar.positionx, DF_config.powerbar.positiony)
	frame:SetFrameLevel(level)
	
	if DF_config.powerbar.border then
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.powerbar.borderColor.r, DF_config.powerbar.borderColor.v, DF_config.powerbar.borderColor.b,DF_config.powerbar.borderColor.a)
		frame.texture=frameTexture
	else
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.powerbar.borderColor.r, DF_config.powerbar.borderColor.v, DF_config.powerbar.borderColor.b,0)
		frame.texture=frameTexture
		
	end
	
	-- paramétres background
	background:SetWidth(DF_config.powerbar.width-DF_config.powerbar.borderSize*2)
	background:SetHeight(DF_config.powerbar.height-DF_config.powerbar.borderSize*2)
	background:SetPoint("TOPLEFT", frame, "TOPLEFT", DF_config.powerbar.borderSize, -DF_config.powerbar.borderSize)
	background:SetStatusBarTexture(DF_config.powerbar.texturePath)
	background:SetStatusBarColor(DF_config.powerbar.colorNrj.r/3, DF_config.powerbar.colorNrj.v/3, DF_config.powerbar.colorNrj.b/3, DF_config.powerbar.colorNrj.a)
	background:SetFrameLevel(level+1)

	-- paramétres foreground
	foreground:SetWidth(DF_config.powerbar.width-DF_config.powerbar.borderSize*2)
	foreground:SetHeight(DF_config.powerbar.height-DF_config.powerbar.borderSize*2)
	foreground:SetPoint("TOPLEFT", frame, "TOPLEFT", DF_config.powerbar.borderSize, -DF_config.powerbar.borderSize)
	foreground:SetStatusBarTexture(DF_config.powerbar.texturePath)
	foreground:SetStatusBarColor(DF_config.powerbar.colorNrj.r, DF_config.powerbar.colorNrj.v, DF_config.powerbar.colorNrj.b, DF_config.powerbar.colorNrj.a)
	foreground:SetMinMaxValues(0, 100)
	foreground:SetFrameLevel(level+2)

	background:SetOrientation(DF_config.powerbar.orientation)
	foreground:SetOrientation(DF_config.powerbar.orientation)

	--background:GetStatusBarTexture():SetHorizTile(false)
	--foreground:GetStatusBarTexture():SetHorizTile(false)

	spark:SetMovable(false)
	spark:EnableMouse(false)		
	spark:SetWidth(20)
	spark:SetHeight(DF_config.powerbar.height*2.2)
	spark:SetPoint("LEFT", foreground, "LEFT", 0, 0)
	spark:SetFrameLevel(level+3)

	sparkTexture:ClearAllPoints()
	sparkTexture:SetAllPoints(spark)
	sparkTexture:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark")
	sparkTexture:SetBlendMode("ADD")
	spark.texture=sparkTexture				

	if DF_config.powerbar.orientation=="VERTICAL" or not DF_config.powerbar.showSpark then
		spark:Hide()
	else
		spark:Show()
	end

	-- paramétres text
	DF:MySetFont(text,DF_config.powerbar.fontPath,DF_config.powerbar.fontSize)
	text:SetShadowColor(0, 0, 0, 0.75)
	text:SetShadowOffset(0.5, -0.5)
	text:SetTextColor(DF_config.powerbar.textColor.r, DF_config.powerbar.textColor.v, DF_config.powerbar.textColor.b, DF_config.powerbar.textColor.a)
	text:SetText("POWERBAR")
	text:ClearAllPoints()
	text:SetPoint(DF_config.powerbar.textAlign, foreground, DF_config.powerbar.textAlign, DF_config.powerbar.textx, DF_config.powerbar.texty)
	
	if not DF_config.powerbar.showText then
		text:Hide()
	else
		text:Show()
	end
	
	if not DF_config.powerbar.enable then 
		frame:Hide()
	else
		frame:Show()
	end
		
end

-- gestion de l'animation
function DF:powerbar_update(elapsed)
	
	if not DF_config.powerbar.enable or not DF:toggle_isEnable() then return end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0	

	local currentForm = DF:currentForm()
	if not DF:form_goofForm(DF_config.powerbar.form,currentForm) then
		frame:Hide()
		return
	else
		frame:Show()
	end
	
	local current=0
	local value=0
	local maxi=100
	local powerType = UnitPowerType("player")

	if (powerType==0) then
		
		maxi = UnitPowerMax("player",SPELL_POWER_MANA)
		current = UnitPower("player",SPELL_POWER_MANA)

		toColorR=DF_config.powerbar.colorMana.r
		toColorV=DF_config.powerbar.colorMana.v
		toColorB=DF_config.powerbar.colorMana.b
		toColorA=DF_config.powerbar.colorMana.a
	
	elseif (powerType==1) then
		
		maxi = UnitPowerMax("player",SPELL_POWER_RAGE)
		current = UnitPower("player",SPELL_POWER_RAGE)

		toColorR=DF_config.powerbar.colorRage.r
		toColorV=DF_config.powerbar.colorRage.v
		toColorB=DF_config.powerbar.colorRage.b
		toColorA=DF_config.powerbar.colorRage.a
	
	elseif (powerType==3) then
		
		maxi = UnitPowerMax("player",SPELL_POWER_ENERGY)
		current = UnitPower("player",SPELL_POWER_ENERGY)

		toColorR=DF_config.powerbar.colorNrj.r
		toColorV=DF_config.powerbar.colorNrj.v
		toColorB=DF_config.powerbar.colorNrj.b
		toColorA=DF_config.powerbar.colorNrj.a
		
	else
		
		maxi = UnitPowerMax("player")
		current = UnitPower("player")

		toColorR=DF_config.powerbar.colorDef.r
		toColorV=DF_config.powerbar.colorDef.v
		toColorB=DF_config.powerbar.colorDef.b
		toColorA=DF_config.powerbar.colorDef.a
		
	end

	if DF.configmode then
		
		current=50
		maxi=100
		
		toColorR=DF_config.powerbar.colorNrj.r
		toColorV=DF_config.powerbar.colorNrj.v
		toColorB=DF_config.powerbar.colorNrj.b
		toColorA=DF_config.powerbar.colorNrj.a
						
	end
	
	value = 100 * (current/maxi)
		
	if cursor>value then
		
		cursor = cursor - DF_config.cursorspeed
		if cursor<value then cursor=value end
		
	elseif cursor<value then
		
		cursor = cursor + DF_config.cursorspeed
		if cursor>value then cursor=value end
		
	end
	
	foreground:SetValue(cursor)
	
	DF:powerbar_sparck(cursor)
	
	text:SetText(DF:formatText(maxi,current,DF_config.powerbar.sformat))

	if DF_config.powerbar.autocolor then
		if cursor>=DF_config.powerbar.part1Limit then
			toColorR=DF_config.powerbar.part1Color.r
			toColorV=DF_config.powerbar.part1Color.v
			toColorB=DF_config.powerbar.part1Color.b
			toColorA=DF_config.powerbar.part1Color.a
		end
		if cursor>=DF_config.powerbar.part2Limit then
			toColorR=DF_config.powerbar.part2Color.r
			toColorV=DF_config.powerbar.part2Color.v
			toColorB=DF_config.powerbar.part2Color.b
			toColorA=DF_config.powerbar.part2Color.a
		end
		if cursor>=DF_config.powerbar.part3Limit then
			toColorR=DF_config.powerbar.part3Color.r
			toColorV=DF_config.powerbar.part3Color.v
			toColorB=DF_config.powerbar.part3Color.b
			toColorA=DF_config.powerbar.part3Color.a
		end
		if cursor>=DF_config.powerbar.part4Limit then
			toColorR=DF_config.powerbar.part4Color.r
			toColorV=DF_config.powerbar.part4Color.v
			toColorB=DF_config.powerbar.part4Color.b
			toColorA=DF_config.powerbar.part1Color.a
		end
	
	end

	background:SetStatusBarColor(currentColorR/3, currentColorV/3, currentColorB/3, currentColorA)
	foreground:SetStatusBarColor(currentColorR, currentColorV, currentColorB, currentColorA)

	if currentColorR<toColorR then
		currentColorR=currentColorR+toColorSpeed
		if currentColorR>toColorR then currentColorR=toColorR end
	elseif currentColorR>toColorR then
		currentColorR=currentColorR-toColorSpeed
		if currentColorR<toColorR then currentColorR=toColorR end	
	end
	if currentColorV<toColorV then
		currentColorV=currentColorV+toColorSpeed
		if currentColorV>toColorV then currentColorV=toColorV end
	elseif currentColorV>toColorV then
		currentColorV=currentColorV-toColorSpeed
		if currentColorV<toColorV then currentColorV=toColorV end	
	end
	if currentColorB<toColorB then
		currentColorB=currentColorB+toColorSpeed
		if currentColorB>toColorB then currentColorB=toColorB end
	elseif currentColorB>toColorB then
		currentColorB=currentColorB-toColorSpeed
		if currentColorB<toColorB then currentColorB=toColorB end	
	end
	if currentColorA<toColorA then
		currentColorA=currentColorA+toColorSpeed
		if currentColorA>toColorA then currentColorA=toColorA end
	elseif currentColorA>toColorA then
		currentColorA=currentColorA-toColorSpeed
		if currentColorA<toColorA then currentColorA=toColorA end	
	end		

end

function DF:powerbar_sparck(cursor)
	local largeur=DF_config.powerbar.width-(DF_config.powerbar.borderSize*2)
	if cursor>0 and cursor<100 and DF_config.powerbar.orientation~="VERTICAL" and DF_config.powerbar.showSpark then
		local sparckx=((cursor/100)*largeur)-10
		spark:SetPoint("LEFT", foreground, "LEFT", sparckx, -1)
		spark:Show()
	else
		spark:Hide()
	end
end

function DF:powerbar_get_pt()
	return frame
end

-- enable/disable déplacement du cadre avec la souris
function DF:powerbar_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:powerbar_reinit()
	
	DF:init_powerbar_frame()
	DF:init_arrows_frame()
	DF:powerbar_toogle_lock(DF.configmode)
	DF:options_setLevel()
end

function DF:powerbar_setLevel()
	local level = DF_config.powerbar.newLevel		
	DF:setMyFrameLevel(frame,level,"powerbar")
	DF:setMyFrameLevel(background,level+1)
	DF:setMyFrameLevel(foreground,level+2)
	DF:setMyFrameLevel(spark,level+3)
end