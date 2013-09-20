----------------------------------------------------------------------------------------------------
-- DroodFocus 4.0.0 - eclipse bar
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local frame=nil
local frameTexture=nil
local text=nil

local background={}
local foreground={}
local spark=nil
local sparkTexture=nil

local demi=0

local frequency =1/60
local tempo=(frequency/15)*9

-- initialisation frames
function DF:init_eclipsebar_frame()
	
	if not frame then
		
		-- cadre principal
		frame = CreateFrame("FRAME","DF_ECLIPSEBAR_FRAME",DF.anchor[1].frame)
		frame:SetScript("OnMouseDown",function(self,button)
			if button=="LeftButton" then
  			frame:StartMoving()
  		elseif button=="RightButton" then
  			DF:options_show("DFeclipsebar",frame)
  		end
		end)
		frame:SetScript("OnMouseUp",function(self,button)
			if button=="LeftButton" then
	  		frame:StopMovingOrSizing()
	  		local anchorx=DF.anchor[1].frame:GetLeft()
	  		local anchory=DF.anchor[1].frame:GetTop()		  			  		
	  		DF_config.eclipsebar.positionx=DF:alignToGridX(self:GetLeft()-anchorx)
	  		DF_config.eclipsebar.positiony=DF:alignToGridY(self:GetTop()-anchory)
	  		frame:ClearAllPoints()
	  		frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.eclipsebar.positionx, DF_config.eclipsebar.positiony)
				DF:updateWidgetValue("DFeclipsebarleft")
				DF:updateWidgetValue("DFeclipsebartop")
		  end
		end)	
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS eclipsebar",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)	

		background[1]={}
		foreground[1]={}
		background[2]={}
		foreground[2]={}
					
		-- cadre pour la texture
		background[1].base = CreateFrame("FRAME","DF_ECLIPSEBAR_BACKGROUND1",frame)
		background[1].latexture = background[1].base:CreateTexture("DF_eclipsebar_BACKGROUND1texture","BACKGROUND")

		background[2].base = CreateFrame("FRAME","DF_ECLIPSEBAR_BACKGROUND2",frame)
		background[2].latexture = background[2].base:CreateTexture("DF_eclipsebar_BACKGROUND2texture","BACKGROUND")
	
		foreground[1].base = CreateFrame("FRAME","DF_ECLIPSEBAR_FOREGROUND1",frame)
		foreground[1].latexture = foreground[1].base:CreateTexture("DF_eclipsebar_FOREGROUND1texture","BACKGROUND")
	
		foreground[2].base = CreateFrame("FRAME","DF_ECLIPSEBAR_FOREGROUND2",frame)
		foreground[2].latexture = foreground[2].base:CreateTexture("DF_eclipsebar_FOREGROUND2texture","BACKGROUND")

		text = foreground[2].base:CreateFontString("DF_ECLIPSEBAR_TEXT","ARTWORK")
		
		spark =  CreateFrame("FRAME","DF_ECLIPSEBAR_SPARK",foreground[2].base)
		sparkTexture=spark:CreateTexture("DF_ECLIPSEBAR_SPARK_TEXTURE")
		
		frameTexture=frame:CreateTexture("DF_ECLIPSEBAR_FRAME_TEXTURE","BACKGROUND")
		frame:EnableMouse(false)		
	
	end
	
	if not DF_config.eclipsebar.newLevel then
		DF_config.eclipsebar.newLevel=DF_config.eclipsebar.level*10
	end
	local level = DF:numbers5(DF_config.eclipsebar.newLevel)
	
	-- paramétres cadre principal
	frame:SetMovable(true)
	frame:SetWidth(DF_config.eclipsebar.width)
	frame:SetHeight(DF_config.eclipsebar.height)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.eclipsebar.positionx, DF_config.eclipsebar.positiony)
	frame:SetFrameLevel(level)
	if DF_config.eclipsebar.border then
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.eclipsebar.borderColor.r, DF_config.eclipsebar.borderColor.v, DF_config.eclipsebar.borderColor.b,DF_config.eclipsebar.borderColor.a)
		frame.texture=frameTexture
	else
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.eclipsebar.borderColor.r, DF_config.eclipsebar.borderColor.v, DF_config.eclipsebar.borderColor.b,0)
		frame.texture=frameTexture
		
	end
	
	demi=(DF_config.eclipsebar.width/2)-DF_config.eclipsebar.borderSize-0.5
	
	-- paramétres background
	background[1].base:SetWidth(demi)
	background[1].base:SetHeight(DF_config.eclipsebar.height-DF_config.eclipsebar.borderSize*2)
	background[1].base:SetPoint("RIGHT", frame, "CENTER", -0.5, 0)
	background[1].base:SetFrameLevel(level+1)
	background[1].latexture:ClearAllPoints()
	background[1].latexture:SetAllPoints(background[1].base)
	background[1].latexture:SetTexture(DF_config.eclipsebar.texturePath)
	background[1].latexture:SetVertexColor(DF_config.eclipsebar.color.r/2, DF_config.eclipsebar.color.v/2, DF_config.eclipsebar.color.b/2, DF_config.eclipsebar.color.a)
	background[1].latexture:SetTexCoord(1,0,0,1)
	background[1].base.texture=background[1].latexture

	background[2].base:SetWidth(demi)
	background[2].base:SetHeight(DF_config.eclipsebar.height-DF_config.eclipsebar.borderSize*2)
	background[2].base:SetPoint("LEFT", frame, "CENTER", 0.5, 0)
	background[2].base:SetFrameLevel(level+1)
	background[2].latexture:ClearAllPoints()
	background[2].latexture:SetAllPoints(background[2].base)
	background[2].latexture:SetTexture(DF_config.eclipsebar.texturePath)
	background[2].latexture:SetVertexColor(DF_config.eclipsebar.color2.r/2, DF_config.eclipsebar.color2.v/2, DF_config.eclipsebar.color2.b/2, DF_config.eclipsebar.color2.a)
	background[2].latexture:SetTexCoord(0,1,0,1)
	background[2].base.texture=background[2].latexture

	-- paramétres foreground
	foreground[1].base:SetWidth(demi)
	foreground[1].base:SetHeight(DF_config.eclipsebar.height-DF_config.eclipsebar.borderSize*2)
	foreground[1].base:SetPoint("RIGHT", frame, "CENTER", -0.5, 0)
	foreground[1].base:SetFrameLevel(level+2)
	foreground[1].latexture:ClearAllPoints()
	foreground[1].latexture:SetAllPoints(foreground[1].base)
	foreground[1].latexture:SetTexture(DF_config.eclipsebar.texturePath)
	foreground[1].latexture:SetVertexColor(DF_config.eclipsebar.color.r, DF_config.eclipsebar.color.v, DF_config.eclipsebar.color.b, DF_config.eclipsebar.color.a)
	foreground[1].latexture:SetTexCoord(1,0,0,1)
	foreground[1].base.texture=foreground[1].latexture

	foreground[2].base:SetWidth(demi)
	foreground[2].base:SetHeight(DF_config.eclipsebar.height-DF_config.eclipsebar.borderSize*2)
	foreground[2].base:SetPoint("LEFT", frame, "CENTER", 0.5, 0)
	foreground[2].base:SetFrameLevel(level+2)
	foreground[2].latexture:ClearAllPoints()
	foreground[2].latexture:SetAllPoints(foreground[2].base)
	foreground[2].latexture:SetTexture(DF_config.eclipsebar.texturePath)
	foreground[2].latexture:SetVertexColor(DF_config.eclipsebar.color2.r, DF_config.eclipsebar.color2.v, DF_config.eclipsebar.color2.b, DF_config.eclipsebar.color2.a)
	foreground[2].latexture:SetTexCoord(0,1,0,1)
	foreground[2].base.texture=foreground[2].latexture

	spark:SetMovable(false)
	spark:EnableMouse(false)		
	spark:SetWidth(8)
	spark:SetHeight(16)
	spark:SetPoint("CENTER", frame, "CENTER", 0, 0)
	spark:SetFrameLevel(level+5)

	sparkTexture:ClearAllPoints()
	sparkTexture:SetAllPoints(spark)
	sparkTexture:SetTexture("Interface\\AddOns\\DroodFocus\\datas\\Direction_Eclipse")
	sparkTexture:SetBlendMode("BLEND")
	spark.texture=sparkTexture				

	spark:Hide()

	-- paramétres text
	DF:MySetFont(text,DF_config.eclipsebar.fontPath,DF_config.eclipsebar.fontSize)
	text:SetWidth(DF_config.eclipsebar.width)
	text:SetJustifyH("CENTER")
	text:SetShadowColor(0, 0, 0, 0.75)
	text:SetShadowOffset(0.5, -0.5)
	text:SetTextColor(DF_config.eclipsebar.textColor.r, DF_config.eclipsebar.textColor.v, DF_config.eclipsebar.textColor.b, DF_config.eclipsebar.textColor.a)
	text:SetText("TEST")
	text:ClearAllPoints()
	text:SetPoint(DF_config.eclipsebar.textAlign, frame, DF_config.eclipsebar.textAlign, DF_config.eclipsebar.textx, DF_config.eclipsebar.texty)

	if not DF_config.eclipsebar.showText then
		text:Hide()
	else
		text:Show()
	end
	
	if not DF_config.eclipsebar.enable then 
		frame:Hide()
	else
		frame:Show()
	end
		
end

-- gestion de l'animation
function DF:eclipsebar_update(elapsed)
	
	local taille
	
	if not DF_config.eclipsebar.enable or not DF:toggle_isEnable() then return end
	
	local currentForm = DF:currentForm()
	if not DF:form_goofForm(DF_config.eclipsebar.form,currentForm) then
		frame:Hide()
		return
	else
		frame:Show()
	end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0	
				
	local maxi = UnitPowerMax("player",SPELL_POWER_ECLIPSE)
	local current = UnitPower("player",SPELL_POWER_ECLIPSE)
	local direction = GetEclipseDirection();

	if direction=="none" then
		
		spark:Hide()
		
	elseif direction=="sun" then 
		
		sparkTexture:SetTexCoord(0.5, 1, 0, 1)
		spark:Show()
		
	elseif direction=="moon" then
		
		sparkTexture:SetTexCoord(0, 0.5, 0, 1)
		spark:Show()
		
	end

	if not maxi or maxi==nil or maxi==0 then
		frame:Hide()
		return		
	end

	if DF.configmode then
		
		current=-50
		maxi=100
			
	end

	local value=current/maxi
	
	if value==0 then

		foreground[1].base:ClearAllPoints()
		foreground[2].base:ClearAllPoints()

		foreground[1].base:SetWidth(0.1);
		foreground[2].base:SetWidth(0.1);

		foreground[1].base:SetPoint("RIGHT", frame, "CENTER", -0.5, 0)
		foreground[2].base:SetPoint("LEFT", frame, "CENTER", 0.5, 0)

		text:SetText("0")
		
		spark:SetPoint("CENTER", frame, "CENTER", 0, 0)

		
	elseif value>0 then

		taille=	value*demi

		foreground[1].base:ClearAllPoints()
		foreground[2].base:ClearAllPoints()

		foreground[1].base:SetWidth(0.1);
		foreground[2].base:SetWidth(taille);
		
		foreground[1].base:SetPoint("RIGHT", frame, "CENTER", -0.5, 0)
		foreground[2].base:SetPoint("LEFT", frame, "CENTER", 0.5, 0)		
		
		text:SetText(tostring(value*100))				

		spark:SetPoint("CENTER", frame, "CENTER", taille, 0)

	elseif value<0 then

		--value=-value
		local taille=	-value*demi

		foreground[1].base:ClearAllPoints()
		foreground[2].base:ClearAllPoints()

		foreground[1].base:SetWidth(taille);
		foreground[2].base:SetWidth(0.1);

		foreground[1].base:SetPoint("RIGHT", frame, "CENTER", -0.5, 0)
		foreground[2].base:SetPoint("LEFT", frame, "CENTER", 0.5, 0)		

		text:SetText(tostring(-value*100))	
		
		spark:SetPoint("CENTER", frame, "CENTER", -taille, 0)
		
	end

end

-- enable/disable déplacement du cadre avec la souris
function DF:eclipsebar_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:eclipsebar_reinit()
	
	DF:init_eclipsebar_frame()
	DF:eclipsebar_toogle_lock(DF.configmode)
	DF:options_setLevel()
	
end

function DF:eclipsebar_setLevel()
	local level = DF_config.eclipsebar.newLevel
	DF:setMyFrameLevel(frame,level,"eclipsebar")
	DF:setMyFrameLevel(background[1].base,level+1)
	DF:setMyFrameLevel(background[2].base,level+1)
	DF:setMyFrameLevel(foreground[1].base,level+2)
	DF:setMyFrameLevel(foreground[2].base,level+2)
	DF:setMyFrameLevel(spark,level+5)
end