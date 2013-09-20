----------------------------------------------------------------------------------------------------
-- DroodFocus 4.0.0 - portrait
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local state=0
local scale=1

local frame=nil
local frameTexture=nil
local overlay=nil
local overlayTexture=nil

local defaultTexture = nil

local frequency =1/20
local tempo=0

-- initialisation frames
function DF:init_portrait_frame()
	
	if not frame then
		
		-- cadre principal
		frame = CreateFrame("FRAME","DF_PORTRAIT_FRAME",DF.anchor[1].frame)
		frame:SetScript("OnMouseDown",function(self,button)
			if button=="LeftButton" then
  			frame:StartMoving()
  		elseif button=="RightButton" then
  			DF:options_show("DFportrait",frame)
  		end
  	end)
		frame:SetScript("OnMouseUp",function(self,button)
			if button=="LeftButton" then
	  			frame:StopMovingOrSizing()
		  		local anchorx=DF.anchor[1].frame:GetLeft()
		  		local anchory=DF.anchor[1].frame:GetTop()		  		
		  		DF_config.portrait.positionx = self:GetLeft()-anchorx
		  		DF_config.portrait.positiony = self:GetTop()-anchory
		  		frame:ClearAllPoints()
		  		frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.portrait.positionx, DF_config.portrait.positiony)
					DF:updateWidgetValue("DFportraitleft")
					DF:updateWidgetValue("DFportraittop")
		  	end
		end)	
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS PORTRAIT",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)
				
		-- cadre pour la texture
		overlay = CreateFrame("FRAME","DF_PORTRAIT_OVERLAY",frame)
		
		-- la texture
		overlayTexture = overlay:CreateTexture("DF_PORTRAIT_OVERLAY_TEXTURE","BACKGROUND")
		frameTexture = frame:CreateTexture("DF_PORTRAIT_FRAME_TEXTURE","BACKGROUND")
		frame:EnableMouse(false)		
	end

	if not DF_config.portrait.newLevel then
		DF_config.portrait.newLevel=DF_config.portrait.level*10
	end
	local level = DF:numbers5(DF_config.portrait.newLevel)		

	defaultTexture = DF:GetDefaultPortrait()
	
	-- paramétres cadre principal
	frame:SetMovable(true)
	
	frame:SetWidth(64)
	frame:SetHeight(64)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.portrait.positionx, DF_config.portrait.positiony)

	-- paramétres texture
	frameTexture:SetTexCoord(0, 1, 0, 1)
	frameTexture:ClearAllPoints()
	frameTexture:SetAllPoints(frame)
	
	frameTexture:SetTexture(1,1,1,0)

	-- paramétres cadre texture
	overlay:SetMovable(false)
	overlay:EnableMouse(false)		
	overlay:SetWidth(DF_config.portrait.width)
	overlay:SetHeight(DF_config.portrait.height)
	overlay:SetPoint("CENTER", frame, "CENTER", 0, 0)
	overlay:SetFrameLevel(level)
	
	-- paramétres texture
	overlayTexture:SetTexCoord(0, 1, 0, 1)
	overlayTexture:SetWidth(64)
	overlayTexture:SetHeight(64)
	overlayTexture:SetBlendMode(DF_config.portrait.mode)
	overlayTexture:ClearAllPoints()
	overlayTexture:SetAllPoints(overlay)
	overlayTexture:SetTexture(defaultTexture)
	
	-- place la texture dans le cadre
	overlay.texture = overlayTexture
	
	if not DF_config.portrait.enable then
		overlay:Hide()
	else
		overlay:Show()
	end
		
end

-- gestion de l'animation
function DF:portrait_update(elapsed)
	if not DF_config.portrait.enable or not DF:toggle_isEnable() then
		overlay:Hide()
		return
	end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0	
	
	if DF.configmode then
		frameTexture:SetTexture(1,1,1,0.25)
	else
		frameTexture:SetTexture(1,1,1,0)	
	end

	local form = DF:currentForm()	
	if form>7 or DF_config.portrait.textures[form+1]=="Interface\\AddOns\\DroodFocus\\datas\\empty.tga" then
		
		overlayTexture:SetTexture(defaultTexture)

	else
		
		overlayTexture:SetTexture(DF_config.portrait.textures[form+1])
		
	end
	
	overlay:Show()
	
end


-- enable/disable déplacement du cadre avec la souris
function DF:portrait_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:portrait_reinit()
	
	DF:init_portrait_frame()
	DF:portrait_toogle_lock(DF.configmode)
	DF:options_setLevel()
end

function DF:GetDefaultPortrait()
		
  local portrait = "Interface\\CharacterFrame\\TemporaryPortrait"
  local sex = UnitSex("player")
  local _, raceEn = UnitRace("player")
  if ( sex == 2 ) then
      portrait = portrait .. "-Male-" .. raceEn
  elseif ( sex == 3 ) then
      portrait = portrait .. "-Female-" .. raceEn
  end
 
 	return portrait

end

function DF:portrait_setLevel()
	local level = DF_config.portrait.newLevel		
	DF:setMyFrameLevel(overlay,level,"portrait")
end