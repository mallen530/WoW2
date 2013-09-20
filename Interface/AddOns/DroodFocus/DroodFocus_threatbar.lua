----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - threat bar
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local frame=nil
local background=nil
local foreground=nil
local text=nil
local frameTexture=nil

local cursor=0
local offset = 1

local frequency =1/60
local tempo=(frequency/15)*12

-- initialisation frames
function DF:init_threatbar_frame()
	
	if not frame then
		
		-- cadre principal
		frame = CreateFrame("FRAME","DF_threatbar_FRAME",DF.anchor[1].frame)
		frame:SetScript("OnMouseDown",function(self,button)
			if button=="LeftButton" then
  			frame:StartMoving()
  		elseif button=="RightButton" then
  			DF:options_show("DFthreatbar",frame)
  		end
		end)
		frame:SetScript("OnMouseUp",function(self,button)
			if button=="LeftButton" then
	  		frame:StopMovingOrSizing()
	  		local anchorx=DF.anchor[1].frame:GetLeft()
	  		local anchory=DF.anchor[1].frame:GetTop()				  		
	  		DF_config.threatbar.positionx=DF:alignToGridX(self:GetLeft()-anchorx)
	  		DF_config.threatbar.positiony=DF:alignToGridY(self:GetTop()-anchory)
	  		frame:ClearAllPoints()
	  		frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.threatbar.positionx, DF_config.threatbar.positiony)
				DF:updateWidgetValue("DFthreatbarleft")
				DF:updateWidgetValue("DFthreatbartop")
			end
		end)	
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS THREATBAR",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)	
			
		-- cadre pour la texture
		background = CreateFrame("StatusBar","DF_THREATBAR_BACKGROUND",frame)
		foreground = CreateFrame("StatusBar","DF_THREATBAR_FOREGROUND",frame)
		text = foreground:CreateFontString("DF_THREATBAR_TEXT","ARTWORK")
		frameTexture=frame:CreateTexture("DF_THREATBAR_FRAME_TEXTURE")
		frame:EnableMouse(false)		
	end

	if not DF_config.threatbar.newLevel then
		DF_config.threatbar.newLevel=DF_config.threatbar.level*10
	end
	local level = DF:numbers5(DF_config.threatbar.newLevel)				

	-- paramétres cadre principal
	frame:SetMovable(true)
	
	frame:SetWidth(DF_config.threatbar.width)
	frame:SetHeight(DF_config.threatbar.height)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.threatbar.positionx, DF_config.threatbar.positiony)
	frame:SetFrameLevel(level)
	if DF_config.threatbar.border then
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.threatbar.borderColor.r, DF_config.threatbar.borderColor.v, DF_config.threatbar.borderColor.b,1)
		frame.texture=frameTexture
	else
		frameTexture:ClearAllPoints()
		frameTexture:SetAllPoints(frame)
		frameTexture:SetTexture(DF_config.threatbar.borderColor.r, DF_config.threatbar.borderColor.v, DF_config.threatbar.borderColor.b,0)
		frame.texture=frameTexture
		
	end


	-- paramétres background
	background:SetWidth(DF_config.threatbar.width-DF_config.threatbar.borderSize*2)
	background:SetHeight(DF_config.threatbar.height-DF_config.threatbar.borderSize*2)
	background:SetPoint("TOPLEFT", frame, "TOPLEFT", DF_config.threatbar.borderSize, -DF_config.threatbar.borderSize)
	background:SetStatusBarTexture(DF_config.threatbar.texturePath)
	background:SetStatusBarColor(0.5, 0, 0, 1)
	background:SetOrientation("HORIZONTAL")
	background:SetFrameLevel(level+1)

	-- paramétres foreground
	foreground:SetWidth(DF_config.threatbar.width-DF_config.threatbar.borderSize*2)
	foreground:SetHeight(DF_config.threatbar.height-DF_config.threatbar.borderSize*2)
	foreground:SetPoint("TOPLEFT", frame, "TOPLEFT", DF_config.threatbar.borderSize, -DF_config.threatbar.borderSize)
	foreground:SetStatusBarTexture(DF_config.threatbar.texturePath)
	foreground:SetStatusBarColor(1, 0, 0, 1)
	foreground:SetOrientation("HORIZONTAL")
	foreground:SetMinMaxValues(0, 100)
	foreground:SetFrameLevel(level+2)

	background:SetStatusBarColor(DF_config.threatbar.color.r/3, DF_config.threatbar.color.v/3, DF_config.threatbar.color.b/3,DF_config.threatbar.color.a)
	foreground:SetStatusBarColor(DF_config.threatbar.color.r, DF_config.threatbar.color.v, DF_config.threatbar.color.b, DF_config.threatbar.color.a)
	background:SetOrientation(DF_config.threatbar.orientation)
	foreground:SetOrientation(DF_config.threatbar.orientation)

	--background:GetStatusBarTexture():SetHorizTile(false)
	--foreground:GetStatusBarTexture():SetHorizTile(false)
	
	-- paramétres text
	DF:MySetFont(text,DF_config.threatbar.fontPath,DF_config.threatbar.fontSize)
	text:SetShadowColor(0, 0, 0, 0.75)
	text:SetShadowOffset(0.5, -0.5)
	text:SetTextColor(DF_config.threatbar.textColor.r, DF_config.threatbar.textColor.v, DF_config.threatbar.textColor.b, 1)
	text:SetText("TEST")
	text:ClearAllPoints()
	text:SetPoint(DF_config.threatbar.textAlign, foreground, DF_config.threatbar.textAlign, DF_config.threatbar.textx, DF_config.threatbar.texty)
	
	if not DF_config.threatbar.showText then
		text:Hide()
	else
		text:Show()
	end
	
	if not DF_config.threatbar.enable then 
		frame:Hide()
	else
		frame:Show()
	end
		
end

-- gestion de l'animation
function DF:threatbar_update(elapsed)

	local currentForm = DF:currentForm()

	if not DF_config.threatbar.enable or not DF:toggle_isEnable() then return end
	if not DF:form_goofForm(DF_config.threatbar.form,currentForm) then
		frame:Hide()
		return
	else
		frame:Show()
	end
	
	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0	
		
	local value=0
	local maxi=100
	local empty, empty, current, empty, empty = UnitDetailedThreatSituation("player", "playertarget")
	if not current then current =0 end

	if DF.configmode then
		
		current=50
		maxi=100
		DF.menace=0
			
	else
		maxi = 100
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
	text:SetText(DF:formatText(maxi,current,DF_config.threatbar.sformat))
	
end

-- enable/disable déplacement du cadre avec la souris
function DF:threatbar_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:threatbar_reinit()
	
	DF:init_threatbar_frame()
	DF:threatbar_toogle_lock(DF.configmode)
	DF:options_setLevel()
	
end

function DF:threatbar_setLevel()
	local level = DF_config.threatbar.newLevel				
	DF:setMyFrameLevel(frame,level,"treatbar")
	DF:setMyFrameLevel(background,level+1)
	DF:setMyFrameLevel(foreground,level+2)
end