----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - pet bar
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

local frequency =1/20
local tempo=frequency*5

-- initialisation frames
function DF:init_petbar_frame()
	
	if not frame then
		
		-- cadre principal
		frame = CreateFrame("FRAME","DF_petbar_FRAME",DF.anchor[1].frame)
		frame:SetScript("OnMouseDown",function(self,button)
			if button=="LeftButton" then
  			frame:StartMoving()
  		elseif button=="RightButton" then
  			DF:options_show("DFpetbar",frame)
  		end
		end)
		frame:SetScript("OnMouseUp",function(self,button)
			if button=="LeftButton" then
	  		frame:StopMovingOrSizing()
	  		local anchorx=DF.anchor[1].frame:GetLeft()
	  		local anchory=DF.anchor[1].frame:GetTop()		  			  		
	  		DF_config.petbar.positionx=DF:alignToGridX(self:GetLeft()-anchorx)
	  		DF_config.petbar.positiony=DF:alignToGridY(self:GetTop()-anchory)
	  		frame:ClearAllPoints()
	  		frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.petbar.positionx, DF_config.petbar.positiony)
				DF:updateWidgetValue("DFpetbarleft")
				DF:updateWidgetValue("DFpetbartop")
		  end
		end)	
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS PETBAR",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)		

		-- cadre pour la texture
		background = CreateFrame("StatusBar","DF_petbar_BACKGROUND",frame)
		foreground = CreateFrame("StatusBar","DF_petbar_FOREGROUND",frame)
		text = foreground:CreateFontString("DF_petbar_TEXT","ARTWORK")
		frameTexture=frame:CreateTexture("DF_petbar_FRAME_TEXTURE")
		frame:EnableMouse(false)	
	end

	if not DF_config.petbar.newLevel then
		DF_config.petbar.newLevel=DF_config.petbar.level*10
	end
	local level = DF:numbers5(DF_config.petbar.newLevel)		

	-- paramétres cadre principal
	frame:SetMovable(true)
		
	frame:SetWidth(DF_config.petbar.width)
	frame:SetHeight(DF_config.petbar.height)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.petbar.positionx, DF_config.petbar.positiony)
	frame:SetFrameLevel(level)

	if DF_config.petbar.border then
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.petbar.borderColor.r, DF_config.petbar.borderColor.v, DF_config.petbar.borderColor.b,1)
		frame.texture=frameTexture
	else
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.petbar.borderColor.r, DF_config.petbar.borderColor.v, DF_config.petbar.borderColor.b,0)
		frame.texture=frameTexture
		
	end

	-- paramétres background
	background:SetWidth(DF_config.petbar.width-DF_config.petbar.borderSize*2)
	background:SetHeight(DF_config.petbar.height-DF_config.petbar.borderSize*2)
	background:SetPoint("TOPLEFT", frame, "TOPLEFT", DF_config.petbar.borderSize, -DF_config.petbar.borderSize)
	background:SetStatusBarTexture(DF_config.petbar.texturePath)
	background:SetStatusBarColor(0.5, 0, 0, 1)
	background:SetOrientation("HORIZONTAL")
	background:SetFrameLevel(level+1)

	-- paramétres foreground
	foreground:SetWidth(DF_config.petbar.width-DF_config.petbar.borderSize*2)
	foreground:SetHeight(DF_config.petbar.height-DF_config.petbar.borderSize*2)
	foreground:SetPoint("TOPLEFT", frame, "TOPLEFT", DF_config.petbar.borderSize, -DF_config.petbar.borderSize)
	foreground:SetStatusBarTexture(DF_config.petbar.texturePath)
	foreground:SetStatusBarColor(1, 0, 0, 1)
	foreground:SetOrientation("HORIZONTAL")
	foreground:SetMinMaxValues(0, 100)
	foreground:SetFrameLevel(level+2)

	background:SetStatusBarColor(DF_config.petbar.color.r/3, DF_config.petbar.color.v/3, DF_config.petbar.color.b/3, DF_config.petbar.color.a)
	foreground:SetStatusBarColor(DF_config.petbar.color.r, DF_config.petbar.color.v, DF_config.petbar.color.b, DF_config.petbar.color.a)
	background:SetOrientation(DF_config.petbar.orientation)
	foreground:SetOrientation(DF_config.petbar.orientation)
	
	-- paramétres text
	DF:MySetFont(text,DF_config.petbar.fontPath,DF_config.petbar.fontSize)
	text:SetShadowColor(0, 0, 0, 0.75)
	text:SetShadowOffset(0.5, -0.5)
	text:SetTextColor(DF_config.petbar.textColor.r, DF_config.petbar.textColor.v, DF_config.petbar.textColor.b, 1)
	text:SetText("TEST")
	text:ClearAllPoints()
	text:SetPoint(DF_config.petbar.textAlign, foreground, DF_config.petbar.textAlign, DF_config.petbar.textx, DF_config.petbar.texty)
	
	if not DF_config.petbar.showText then
		text:Hide()
	else
		text:Show()
	end
	
	if not DF_config.petbar.enable then 
		frame:Hide()
	else
		frame:Show()
	end

end

-- gestion de l'animation
function DF:petbar_update(elapsed)
	
	if not DF_config.petbar.enable or not DF:toggle_isEnable() then return end

	local currentForm = DF:currentForm()
	if not DF:form_goofForm(DF_config.petbar.form,currentForm) then
		frame:Hide()
		return
	else
		frame:Show()
	end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0	
			
	local current=0
	local value=0
	local maxi=100

	if DF.configmode then
		
		current=50
		maxi=100
	
	else
		
		current = UnitHealth("pet");		
		maxi = UnitHealthMax("pet");
		
	end

	local maxi2=maxi
	if maxi2==0 then
		maxi2=100
	end

	value = 100 * (current/maxi2)
	
	if cursor>value then
		
		cursor = cursor - DF_config.cursorspeed
		if cursor<value then cursor=value end
		
	elseif cursor<value then
		
		cursor = cursor + DF_config.cursorspeed
		if cursor>value then cursor=value end
		
	end
	
	foreground:SetValue(cursor)
	text:SetText(DF:formatText(maxi,current,DF_config.petbar.sformat,0))	
	
end

-- enable/disable déplacement du cadre avec la souris
function DF:petbar_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:petbar_reinit()
	
	DF:init_petbar_frame()
	DF:petbar_toogle_lock(DF.configmode)
	DF:options_setLevel()
end

function DF:petbar_setLevel()
	local level = DF_config.petbar.newLevel		
	DF:setMyFrameLevel(frame,level,"petbar")
	DF:setMyFrameLevel(background,level+1)
	DF:setMyFrameLevel(foreground,level+2)
end