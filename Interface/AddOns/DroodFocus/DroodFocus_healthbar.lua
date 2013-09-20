----------------------------------------------------------------------------------------------------
-- DroodFocus 4.0.0 - health bar
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local frame=nil
local frameTexture=nil

local background=nil
local foreground=nil
local text=nil

local cursor=0
local offset = 1

local timetodieHP =0
local timetodieDps ={0,0,0,0,0,0,0,0,0,0,0}
local timetodie,timetodieDiff =0
local tempo=0
local seconde=1
local dps=0
local countDps=0

local frequency =1/60
local tempo=(frequency/15)*7
local tempo2=0

-- initialisation frames
function DF:init_healthbar_frame()
	
	if not frame then
		
		-- cadre principal
		frame = CreateFrame("FRAME","DF_healthbar_FRAME",DF.anchor[1].frame)
		frame:SetScript("OnMouseDown",function(self,button)
			if button=="LeftButton" then
  			frame:StartMoving()
  		elseif button=="RightButton" then
  			DF:options_show("DFhealthbar",frame)
  		end
		end)
		frame:SetScript("OnMouseUp",function(self,button)
			if button=="LeftButton" then
	  		frame:StopMovingOrSizing()
	  		local anchorx=DF.anchor[1].frame:GetLeft()
	  		local anchory=DF.anchor[1].frame:GetTop()		  			  		
	  		DF_config.healthbar.positionx=DF:alignToGridX(self:GetLeft()-anchorx)
	  		DF_config.healthbar.positiony=DF:alignToGridY(self:GetTop()-anchory)
	  		frame:ClearAllPoints()
	  		frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.healthbar.positionx, DF_config.healthbar.positiony)
				DF:updateWidgetValue("DFhealthbarleft")
				DF:updateWidgetValue("DFhealthbartop")

		  end
		end)	
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS HEALTHBAR",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)		
				
		-- cadre pour la texture
		background = CreateFrame("StatusBar","DF_HEALTHBAR_BACKGROUND",frame)
		foreground = CreateFrame("StatusBar","DF_HEALTHBAR_FOREGROUND",frame)
		text = foreground:CreateFontString("DF_HEALTHBAR_TEXT","ARTWORK")
		frameTexture=frame:CreateTexture("DF_HEALTHBAR_FRAME_TEXTURE")
		frame:EnableMouse(false)		
	end

	if not DF_config.healthbar.newLevel then
		DF_config.healthbar.newLevel=DF_config.healthbar.level*10
	end
	local level = DF:numbers5(DF_config.healthbar.newLevel)	
	
	-- paramétres cadre principal
	frame:SetMovable(true)
	
	frame:SetWidth(DF_config.healthbar.width)
	frame:SetHeight(DF_config.healthbar.height)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.healthbar.positionx, DF_config.healthbar.positiony)
	frame:SetFrameLevel(level)

	if DF_config.healthbar.border then
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.healthbar.borderColor.r, DF_config.healthbar.borderColor.v, DF_config.healthbar.borderColor.b,DF_config.healthbar.borderColor.a)
		frame.texture=frameTexture
	else
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.healthbar.borderColor.r, DF_config.healthbar.borderColor.v, DF_config.healthbar.borderColor.b,0)
		frame.texture=frameTexture
		
	end

	-- paramétres background
	background:SetWidth(DF_config.healthbar.width-DF_config.healthbar.borderSize*2)
	background:SetHeight(DF_config.healthbar.height-DF_config.healthbar.borderSize*2)
	background:SetPoint("TOPLEFT", frame, "TOPLEFT", DF_config.healthbar.borderSize, -DF_config.healthbar.borderSize)
	background:SetStatusBarTexture(DF_config.healthbar.texturePath)

	background:SetOrientation("HORIZONTAL")
	background:SetFrameLevel(level+1)

	-- paramétres foreground
	foreground:SetWidth(DF_config.healthbar.width-DF_config.healthbar.borderSize*2)
	foreground:SetHeight(DF_config.healthbar.height-DF_config.healthbar.borderSize*2)
	foreground:SetPoint("TOPLEFT", frame, "TOPLEFT", DF_config.healthbar.borderSize, -DF_config.healthbar.borderSize)
	foreground:SetStatusBarTexture(DF_config.healthbar.texturePath)

	foreground:SetOrientation("HORIZONTAL")
	foreground:SetMinMaxValues(0, 100)
	foreground:SetFrameLevel(level+2)

	if DF_config.healthbar.colorchg then
		background:SetStatusBarColor(DF_config.healthbar.colorGood.r/3, DF_config.healthbar.colorGood.v/3, DF_config.healthbar.colorGood.b/3, DF_config.healthbar.colorGood.a)
		foreground:SetStatusBarColor(DF_config.healthbar.colorGood.r, DF_config.healthbar.colorGood.v, DF_config.healthbar.colorGood.b, DF_config.healthbar.colorGood.a)
	else
		background:SetStatusBarColor(DF_config.healthbar.colorDef.r/3, DF_config.healthbar.colorDef.v/3, DF_config.healthbar.colorDef.b/3, DF_config.healthbar.colorDef.a)
		foreground:SetStatusBarColor(DF_config.healthbar.colorDef.r, DF_config.healthbar.colorDef.v, DF_config.healthbar.colorDef.b, DF_config.healthbar.colorDef.a)
	end
	
	background:SetOrientation(DF_config.healthbar.orientation)
	foreground:SetOrientation(DF_config.healthbar.orientation)

	--background:GetStatusBarTexture():SetHorizTile(false)
	--foreground:GetStatusBarTexture():SetHorizTile(false)

	-- paramétres text
	DF:MySetFont(text,DF_config.healthbar.fontPath,DF_config.healthbar.fontSize)
	text:SetShadowColor(0, 0, 0, 0.75)
	text:SetShadowOffset(0.5, -0.5)
	text:SetTextColor(DF_config.healthbar.textColor.r, DF_config.healthbar.textColor.v, DF_config.healthbar.textColor.b, DF_config.healthbar.textColor.a)
	text:SetText("TEST")
	text:ClearAllPoints()
	text:SetPoint(DF_config.healthbar.textAlign, foreground, DF_config.healthbar.textAlign, DF_config.healthbar.textx, DF_config.healthbar.texty)
	
	if not DF_config.healthbar.showText then
		text:Hide()
	else
		text:Show()
	end
	
	if not DF_config.healthbar.enable then 
		frame:Hide()
	else
		frame:Show()
	end
		
end

-- gestion de l'animation
function DF:healthbar_update(elapsed)
	
	if not DF_config.healthbar.enable or not DF:toggle_isEnable() then return end

	local currentForm = DF:currentForm()
	if not DF:form_goofForm(DF_config.healthbar.form,currentForm) then
		frame:Hide()
		return
	else
		frame:Show()
	end

	tempo2=tempo2+elapsed	

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0	
			
	local current=0
	local value=0
	local maxi=100

	if DF.configmode then
		
		current=50
		maxi=100
		timetodie=0
		
	else
		
		current = UnitHealth("player");		
		maxi = UnitHealthMax("player");

		if tempo2>=1 then
			
			tempo2=0
			
			if (timetodieHP>0) then
				
				timetodieDps[seconde]=timetodieHP-current
				
				dps=0
				countDps=0
				for i = 1,10 do
					if timetodieDps[i]~=nil then
						dps=dps+timetodieDps[i]
						countDps=countDps+1
					end
				end

				if countDps>0 then
					dps=dps/countDps
				else
					dps=0
				end
				
				if dps>0 and countDps>=4 then
					timetodie=(current/dps) -- temps restant a ce dps moyen
				else
					timetodie=0
				end
				
				seconde=seconde+1
				if seconde>10 then seconde=1 end
				
			else
			
				timetodie=0
			
			end
			
			timetodieHP=current;
			
		end
			
	end

	value = 100 * (current/maxi)

	if DF_config.healthbar.colorchg then

		if value>0 and value<=33 then
			
			background:SetStatusBarColor(DF_config.healthbar.colorBad.r/3, DF_config.healthbar.colorBad.v/3, DF_config.healthbar.colorBad.b/3, DF_config.healthbar.colorBad.a)
			foreground:SetStatusBarColor(DF_config.healthbar.colorBad.r, DF_config.healthbar.colorBad.v, DF_config.healthbar.colorBad.b, DF_config.healthbar.colorBad.a)
			
		elseif value>33 and value<=66 then
			
			background:SetStatusBarColor(DF_config.healthbar.colorAverage.r/3, DF_config.healthbar.colorAverage.v/3, DF_config.healthbar.colorAverage.b/3, DF_config.healthbar.colorAverage.a)
			foreground:SetStatusBarColor(DF_config.healthbar.colorAverage.r, DF_config.healthbar.colorAverage.v, DF_config.healthbar.colorAverage.b, DF_config.healthbar.colorAverage.a)
			
		elseif value>66 then
			
			background:SetStatusBarColor(DF_config.healthbar.colorGood.r/3, DF_config.healthbar.colorGood.v/3, DF_config.healthbar.colorGood.b/3, DF_config.healthbar.colorGood.a)
			foreground:SetStatusBarColor(DF_config.healthbar.colorGood.r, DF_config.healthbar.colorGood.v, DF_config.healthbar.colorGood.b, DF_config.healthbar.colorGood.a)
			
		end
		
	end
	
	if cursor>value then
		
		cursor = cursor - DF_config.cursorspeed
		if cursor<value then cursor=value end
		
	elseif cursor<value then
		
		cursor = cursor + DF_config.cursorspeed
		if cursor>value then cursor=value end
		
	end
	
	foreground:SetValue(cursor)
	text:SetText(DF:formatText(maxi,current,DF_config.healthbar.sformat,timetodie))

end

-- enable/disable déplacement du cadre avec la souris
function DF:healthbar_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:healthbar_reinit()
	
	DF:init_healthbar_frame()
	DF:healthbar_toogle_lock(DF.configmode)
	DF:options_setLevel()
	
end

function DF:healthbar_clearT2D()

	timetodieHP =0
	for i = 1,10 do
		timetodieDps[i] =nil
	end
	timetodie=0
	timetodieDiff =0
	seconde=1
	dps=0
	countDps=0	

end

function DF:healthbar_setLevel()
	local level = DF_config.healthbar.newLevel	
	DF:setMyFrameLevel(frame,level,"healthbar")
	DF:setMyFrameLevel(background,level+1)
	DF:setMyFrameLevel(foreground,level+2)
end