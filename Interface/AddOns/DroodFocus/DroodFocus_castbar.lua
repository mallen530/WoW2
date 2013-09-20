----------------------------------------------------------------------------------------------------
-- DroodFocus 4.0.0 - castbar
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local frame=nil
local framez=nil
local frameglow=nil
local frameglowTexture=nil

local frameTexture=nil
local background=nil
local foreground=nil
local spark=nil
local sparkTexture=nil

local text=nil
local texttimer=nil

local cursor=0
local offset = 1

local alpha=0
local alphaGlow=1
local alphaGlowTemp=1
local scale=1

local value=0
local current=0
local maxi=100
local reste=0
local oldreste=0

local cbspell, cbrank, cbdisplayName, cbicon, cbstartTime, cbendTime, cbisTradeSkill, cbcastID, cbNONinterrupt
local cbspellch, cbrankch, cbdisplayNamech, cbiconch, cbstartTimech, cbendTimech, cbisTradeSkillch, cbcastIDch, cbNONinterruptch

local frequency =1/60
local tempo=(frequency/15)*5

-- initialisation frames
function DF:init_castbar_frame()
	
	if not frame then
		
		-- cadre principal
		frame = CreateFrame("FRAME","DF_CASTBAR_BASE",DF.anchor[1].frame)
		frame:SetScript("OnMouseDown",function(self,button)
			if button=="LeftButton" then
  			frame:StartMoving()
  		elseif button=="RightButton" then
  			DF:options_show("DFcastbar",frame)
  		end
		end)
		frame:SetScript("OnMouseUp",function(self,button)
	  	if button=="LeftButton" then
	  		frame:StopMovingOrSizing()
	  		local anchorx=DF.anchor[1].frame:GetLeft()
	  		local anchory=DF.anchor[1].frame:GetTop()
	  		DF_config.castbar.positionx=DF:alignToGridX(self:GetLeft()-anchorx)
	  		DF_config.castbar.positiony=DF:alignToGridY(self:GetTop()-anchory)
	  		frame:ClearAllPoints()
	  		frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.castbar.positionx, DF_config.castbar.positiony)
				DF:updateWidgetValue("DFcastbarleft")
				DF:updateWidgetValue("DFcastbartop")
	  	end
		end)	
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS CASTBAR",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)		
				
		-- cadre pour la texture
		framez = CreateFrame("FRAME","DF_CASTBAR_FRAME",frame)
		frameglow = CreateFrame("FRAME","DF_CASTBAR_GLOW",frame)
		background = CreateFrame("StatusBar","DF_CASTBAR_BACKGROUND",framez)
		foreground = CreateFrame("StatusBar","DF_CASTBAR_FOREGROUND",framez)
		spark =  CreateFrame("FRAME","DF_CASTBAR_SPARK",foreground)

		text = foreground:CreateFontString("DF_CASTBAR_TEXT","ARTWORK")
		texttimer = foreground:CreateFontString("DF_CASTBAR_TEXT_TIMER","ARTWORK")
		
		frame:EnableMouse(false)	

		sparkTexture=spark:CreateTexture("DF_CASTBAR_SPARK_TEXTURE")
		frameTexture=framez:CreateTexture("DF_CASTBAR_FRAME_TEXTURE")
		frameglowTexture=frameglow:CreateTexture("DF_CASTBAR_GLOW_TEXTURE")
		
	end

	if not DF_config.castbar.newLevel then
		DF_config.castbar.newLevel=DF_config.castbar.level*10
	end
	local level = DF:numbers5(DF_config.castbar.newLevel)
	
	-- paramétres cadre principal
	frame:SetMovable(true)
		
	frame:SetWidth(DF_config.castbar.width)
	frame:SetHeight(DF_config.castbar.height)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.castbar.positionx, DF_config.castbar.positiony)
	frame:SetFrameLevel(level)

	framez:SetWidth(DF_config.castbar.width)
	framez:SetHeight(DF_config.castbar.height)
	framez:ClearAllPoints()
	framez:SetPoint("CENTER", frame, "CENTER", 0, 0)
	framez:SetFrameLevel(level+2)

	frameglow:SetWidth(DF_config.castbar.width)
	frameglow:SetHeight(DF_config.castbar.height)
	frameglow:ClearAllPoints()
	frameglow:SetPoint("CENTER", frame, "CENTER", 0, 0)
	frameglow:SetFrameLevel(level+1)

	frameglowTexture:ClearAllPoints()
	frameglowTexture:SetAllPoints(frameglow)
	frameglowTexture:SetTexture(DF_config.castbar.texturePath)
	frameglowTexture:SetVertexColor(0, 0.5, 1, 1);
	
	frameglowTexture:SetBlendMode("ADD")
	frameglow.texture=frameglowTexture
	
	if DF_config.castbar.border then
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.castbar.borderColor.r, DF_config.castbar.borderColor.v, DF_config.castbar.borderColor.b,DF_config.castbar.borderColor.a)
		framez.texture=frameTexture
	else
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.castbar.borderColor.r, DF_config.castbar.borderColor.v, DF_config.castbar.borderColor.b,0)
		framez.texture=frameTexture
		
	end
	
	-- paramétres background
	background:SetWidth(DF_config.castbar.width-DF_config.castbar.borderSize*2)
	background:SetHeight(DF_config.castbar.height-DF_config.castbar.borderSize*2)
	background:SetPoint("TOPLEFT", framez, "TOPLEFT", DF_config.castbar.borderSize, -DF_config.castbar.borderSize)
	background:SetStatusBarTexture(DF_config.castbar.texturePath)
	background:SetStatusBarColor(DF_config.castbar.color.r/3, DF_config.castbar.color.v/3, DF_config.castbar.color.b/3, DF_config.castbar.color.a)
	background:SetFrameLevel(level+3)

	-- paramétres foreground
	foreground:SetWidth(DF_config.castbar.width-DF_config.castbar.borderSize*2)
	foreground:SetHeight(DF_config.castbar.height-DF_config.castbar.borderSize*2)
	foreground:SetPoint("TOPLEFT", framez, "TOPLEFT", DF_config.castbar.borderSize, -DF_config.castbar.borderSize)
	foreground:SetStatusBarTexture(DF_config.castbar.texturePath)
	foreground:SetStatusBarColor(DF_config.castbar.color.r, DF_config.castbar.color.v, DF_config.castbar.color.b, DF_config.castbar.color.a)
	foreground:SetMinMaxValues(0, 100)
	foreground:SetFrameLevel(level+4)

	background:SetOrientation(DF_config.castbar.orientation)
	foreground:SetOrientation(DF_config.castbar.orientation)

	spark:SetMovable(false)
	spark:EnableMouse(false)		
	spark:SetWidth(20)
	spark:SetHeight(DF_config.castbar.height*2.2)
	spark:SetPoint("LEFT", foreground, "LEFT", 0, 0)
	spark:SetFrameLevel(level+5)

	sparkTexture:ClearAllPoints()
	sparkTexture:SetAllPoints(spark)
	sparkTexture:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark")
	sparkTexture:SetBlendMode("ADD")
	spark.texture=sparkTexture				

	if DF_config.castbar.orientation=="VERTICAL" or not DF_config.castbar.showSpark then
		spark:Hide()
	else
		spark:Show()
	end

	-- paramétres text
	DF:MySetFont(text,DF_config.castbar.fontPath,DF_config.castbar.fontSize)
	text:SetShadowColor(0, 0, 0, 0.75)
	text:SetShadowOffset(0.5, -0.5)
	text:SetTextColor(DF_config.castbar.textColor.r, DF_config.castbar.textColor.v, DF_config.castbar.textColor.b, DF_config.castbar.textColor.a)
	text:SetText("Castbar")
	text:ClearAllPoints()
	text:SetPoint(DF_config.castbar.textAlign, foreground, DF_config.castbar.textAlign, DF_config.castbar.textx, DF_config.castbar.texty)

	-- paramétres text
	DF:MySetFont(texttimer,DF_config.castbar.fontPathtimer,DF_config.castbar.fontSizetimer)
	texttimer:SetShadowColor(0, 0, 0, 0.75)
	texttimer:SetShadowOffset(0.5, -0.5)
	texttimer:SetTextColor(DF_config.castbar.timerColor.r, DF_config.castbar.timerColor.v, DF_config.castbar.timerColor.b, DF_config.castbar.timerColor.a)
	texttimer:SetText("8")
	texttimer:ClearAllPoints()
	texttimer:SetPoint(DF_config.castbar.timerAlign, foreground, DF_config.castbar.timerAlign, DF_config.castbar.timerx, DF_config.castbar.timery)
	
	if not DF_config.castbar.showText then
		text:Hide()
	else
		text:Show()
	end

	if not DF_config.castbar.showTimer then
		texttimer:Hide()
	else
		texttimer:Show()
	end
	
	if not DF_config.castbar.enable then 
		frame:Hide()
	else
		frame:Show()
	end
	
	oldreste=0
	
end

-- gestion de l'animation
function DF:castbar_update(elapsed)
	
	if not DF_config.castbar.enable or not DF:toggle_isEnable() then return end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0

	if DF.configmode then
		
		current=50
		maxi=100
		alpha=1
		reste=50
		cbspell="CastBar"
		cbNONinterrupt=false
		
	else

		cbspell, cbrank, cbdisplayName, cbicon, cbstartTime, cbendTime, cbisTradeSkill, cbcastID, cbNONinterrupt = UnitCastingInfo("target")

		if not cbstartTime then
			cbspell, cbrank, cbdisplayName, cbicon, cbstartTime, cbendTime, cbisTradeSkill, cbNONinterrupt = UnitChannelInfo("target")
		end

		if cbstartTime then
		
			alpha=DF_config.castbar.activeAlpha
		
			maxi = cbendTime-cbstartTime
			current = (GetTime()*1000) - cbstartTime		
			reste = (maxi-current)/1000

		else
			
			current=100
			maxi=100
			reste=0
			
		end
			
	end

	if reste>oldreste then

		if cbspell then
			text:SetText(cbspell)
		end
	
		if cbNONinterrupt then
			foreground:SetStatusBarColor(DF_config.castbar.colori.r, DF_config.castbar.colori.v, DF_config.castbar.colori.b, DF_config.castbar.colori.a)
			if DF_config.castbar.sound2~="" then
				DF:sound_play(DF_config.castbar.sound2)
			end					
		else
			foreground:SetStatusBarColor(DF_config.castbar.color.r, DF_config.castbar.color.v, DF_config.castbar.color.b, DF_config.castbar.color.a)
			if DF_config.castbar.sound1~="" then
				DF:sound_play(DF_config.castbar.sound1)
			end				
		end		
		
		scale=1
		alphaGlow=1.5
		
	end
	
	if reste>0 then
		scale=scale+(DF_config.castbar.impulsion/100)
		if scale>4 then
			scale=4
		end
		alphaGlow=alphaGlow-0.025
		if alphaGlow<0 then
			alphaGlow=0
		end		
	else
		scale=scale+0.01
		if scale>4 then
			scale=4
		end
		alphaGlow=alphaGlow-0.05
		if alphaGlow<0 then
			alphaGlow=0
		end		
	end
	
	alpha=alpha-0.025
	if alpha<DF_config.castbar.inactiveAlpha then
		alpha=DF_config.castbar.inactiveAlpha
	end
	
	if current<0 then
		current=0
	end
	
	value = 100 * (current/maxi)
	
	if cursor>value then
		
		cursor = cursor - DF_config.cursorspeed
		if cursor<value then cursor=value end
		
	elseif cursor<value then
		
		cursor = cursor + DF_config.cursorspeed
		if cursor>value then cursor=value end
		
	end
	
	frameglow:SetScale(scale)
	alphaGlowTemp=alphaGlow
	if alphaGlowTemp>1 then alphaGlowTemp=1 end
	frameglow:SetAlpha(alphaGlowTemp)
	
	DF:castbar_sparck(cursor)
	foreground:SetValue(cursor)
	texttimer:SetText(DF:floatNumbers(reste))
	framez:SetAlpha(alpha)

	oldreste=reste
	
end

function DF:castbar_color(flag)
	if flag==true then
		foreground:SetStatusBarColor(DF_config.castbar.colori.r, DF_config.castbar.colori.v, DF_config.castbar.colori.b, DF_config.castbar.colori.a)
	else
		foreground:SetStatusBarColor(DF_config.castbar.color.r, DF_config.castbar.color.v, DF_config.castbar.color.b, DF_config.castbar.color.a)
	end
end

function DF:castbar_sparck(cursor)
	local sparckx
	local largeur=DF_config.castbar.width-(DF_config.castbar.borderSize*2)
	if cursor>0 and cursor<100 and DF_config.castbar.orientation~="VERTICAL" and DF_config.castbar.showSpark then
		sparckx=((cursor/100)*largeur)-10
		spark:SetPoint("LEFT", foreground, "LEFT", sparckx, -1)
		spark:Show()
	else
		spark:Hide()
	end
end

-- enable/disable déplacement du cadre avec la souris
function DF:castbar_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:castbar_reinit()
	
	DF:init_castbar_frame()
	DF:castbar_toogle_lock(DF.configmode)
	DF:options_setLevel()
	
end

function DF:castbar_setLevel()
	local level = DF_config.castbar.newLevel
	DF:setMyFrameLevel(frame,level,"castbar")
	DF:setMyFrameLevel(framez,level+2)
	DF:setMyFrameLevel(frameglow,level+1)
	DF:setMyFrameLevel(background,level+3)
	DF:setMyFrameLevel(foreground,level+4)
	DF:setMyFrameLevel(spark,level+5)
end
