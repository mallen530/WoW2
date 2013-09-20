----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - gps
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local frequency =1/10
local tempo=0
local _

local frame={}
local frameTexture={}
local overlay={}
local overlayTexture={}
local frameText={}

local degre=0
local cible=""

local posX=0
local posY=0
local TposX=0
local TposY=0
local colonne=0
local ligne=0
local distance=0

local arrowW = 56
local arrowH = 42
local deltax = arrowW / 512
local deltay = arrowH / 512

local pif = math.pi

-- initialisation frames
function DF:init_gps_frame()

	if DF_config.gps.positionx~=0 then
		for i = 1,2 do
			DF_config.gps.positions[i].x=DF_config.gps.positionx+((i-1)*64)
			DF_config.gps.positions[i].y=DF_config.gps.positiony
		end	
		DF_config.gps.positionx=0
	end
	
	for i = 1,2 do

		if not frame[i] then
			
			-- cadre principal
			frame[i] = CreateFrame("FRAME","DF_GPS_FRAME"..tostring(i),UIParent)
			frame[i]:SetScript("OnMouseDown",function(self,button)
				if button=="LeftButton" then
		  			frame[i]:StartMoving()
		  		elseif button=="RightButton" then
		  			DF:options_show("DFgps",frame[i])
		  		end
			end)
			frame[i]:SetScript("OnMouseUp",function(self,button)
				if button=="LeftButton" then
			  		frame[i]:StopMovingOrSizing()
			  		DF_config.gps.positions[i].x = self:GetLeft()
			  		DF_config.gps.positions[i].y = self:GetBottom()
			  		frame[i]:ClearAllPoints()
			  		frame[i]:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", DF_config.gps.positions[i].x, DF_config.gps.positions[i].y)
			  end
			end)	
			frame[i]:SetScript("OnEnter",function(self,button)
				if DF.configmode then
					DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
					DF.DroodFGameTooltip:ClearLines()
					DF.DroodFGameTooltip:AddLine("DROODFOCUS GPS",1,1,0,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
					DF.DroodFGameTooltip:Show()		
				end		
			end)		
			frame[i]:SetScript("OnLeave",function(self,button)
				if DF.configmode then DF.DroodFGameTooltip:Hide() end
			end)	
			
			-- cadre pour la texture
			overlay[i] = CreateFrame("FRAME","DF_GPS_OVERLAY"..tostring(i),frame[i])
			
			-- la texture
			overlayTexture[i] = overlay[i]:CreateTexture("DF_GPS_OVERLAY_TEXTURE"..tostring(i),"BACKGROUND")
			frameTexture[i] = frame[i]:CreateTexture("DF_GPS_FRAME_TEXTURE"..tostring(i),"BACKGROUND")
			frameText[i] = overlay[i]:CreateFontString("DF_GPS_TEXT","ARTWORK")
			frame[i]:EnableMouse(false)	
		end

		if not DF_config.gps.newLevel then
			DF_config.gps.newLevel=DF_config.gps.level*10
		end
		local level = DF:numbers5(DF_config.gps.newLevel)	
	
		-- paramétres cadre principal
		frame[i]:SetMovable(true)
		frame[i]:SetWidth(64)
		frame[i]:SetHeight(64)
		frame[i]:ClearAllPoints()
		frame[i]:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", DF_config.gps.positions[i].x, DF_config.gps.positions[i].y)
		frame[i]:SetFrameLevel(level)	
		
		-- paramétres texture
		frameTexture[i]:SetTexCoord(0, 1, 0, 1)
		frameTexture[i]:ClearAllPoints()
		frameTexture[i]:SetAllPoints(frame[i])
	
		frameTexture[i]:SetTexture(1,1,1,0)
			
		-- paramétres cadre texture
		overlay[i]:SetMovable(false)
		overlay[i]:EnableMouse(false)		
		overlay[i]:SetWidth(DF_config.gps.width)
		overlay[i]:SetHeight(DF_config.gps.height)
		overlay[i]:SetPoint("CENTER", frame[i], "CENTER", 0, 0)
		overlay[i]:SetFrameLevel(level+1)	
		overlay[i]:SetAlpha(DF_config.gps.alpha)
		
		-- paramétres texture
		overlayTexture[i]:SetTexCoord(0, 1, 0, 1)
		overlayTexture[i]:SetBlendMode(DF_config.gps.mode)
		overlayTexture[i]:ClearAllPoints()
		overlayTexture[i]:SetAllPoints(overlay[i])
		overlayTexture[i]:SetTexture("Interface\\Addons\\DroodFocus\\datas\\Arrow")
		
		-- place la texture dans le cadre
		overlay[i].texture = overlayTexture[i]
	
		DF:MySetFont(frameText[i],DF_config.gps.fontPath,DF_config.gps.fontSize,"OUTLINE")
		frameText[i]:SetNonSpaceWrap(true) 
		frameText[i]:SetShadowColor(0, 0, 0, 0.75)
		frameText[i]:SetShadowOffset(0.5, -0.5)
		frameText[i]:SetTextColor(DF_config.gps.textColor.r, DF_config.gps.textColor.v, DF_config.gps.textColor.b, DF_config.gps.textColor.a)
		frameText[i]:ClearAllPoints()
		frameText[i]:SetPoint("CENTER", overlay[i],"CENTER", DF_config.gps.offsetx, DF_config.gps.offsety)
		frameText[i]:SetText("")
		frameText[i]:SetJustifyH("CENTER")
	
	end
	
end

-- gestion de l'animation
function DF:gps_update(elapsed)

	if not DF_config.gps.enable then
		for i = 1,2 do
			frame[i]:Hide()
		end
		return
	end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0	
	
	if (DF.configmode) then
		
		for i = 1,2 do
			frameTexture[i]:SetTexture(1,1,1,0.25)
			DF:RotateTexture(overlayTexture[i],0)
			frameText[i]:SetText(DF_config.gps.gpsTarget[i])
			frame[i]:Show()			
		end	
			
		return
		
	else
		
		for i = 1,2 do
			frameTexture[i]:SetTexture(1,1,1,0)
		end
		
	end

	for i = 1,2 do
			
		local angle,distance = DF:gps_getGpsData(DF_config.gps.gpsTarget[i])
	
		if angle==nil or distance==nil then
			frame[i]:Hide()
		else
	
			DF:RotateTexture(overlayTexture[i],angle)
			frameText[i]:SetText(DF:doubleNumbers(distance))
			frame[i]:Show()
		
		end
		
	end
	
end

function DF:gps_getPosition(cible)
	local x,y = GetPlayerMapPosition(cible)
	if x <= 0 and y <= 0 then
		x,y = GetPlayerMapPosition(cible) 
	end
	return x,y	
end

function DF:gps_getGpsData(gpscible)

	local nom=UnitName(gpscible)
	if not nom then
		return nil,nil
	end
	
	-- cherche la cible dans le roster
	local cible=DF:gps_findPlayer(nom)
	if not cible then
		return nil,nil
	end

	local posX, posY = DF:gps_getPosition("player")
	local TposX, TposY = DF:gps_getPosition(cible)
		
	if (TposX==0 and TposY==0) or (posX==0 and posY==0) then
		return nil,nil
	end
	
	local mapW =WorldMapDetailFrame:GetWidth()
	local mapH =WorldMapDetailFrame:GetHeight()		
	
	local diffx = TposX * mapW - posX * mapW
	local diffy = TposY * mapH - posY * mapH
	local distance = (math.sqrt( (diffx * diffx) + (diffy * diffy) ))

	local angle = (math.atan2(posY - TposY, TposX-posX) * 180 / pif)
	local playerfacing = ((GetPlayerFacing()* 180 / pif)-260)%360
	
	local finalangle=(angle-playerfacing)%360

	return finalangle,distance
	
end

function DF:gps_findPlayer(nom)

	local nb = GetNumGroupMembers()

	local partyUnit
	local raidUnit

	local partyName
	local raidName
		
	for i=1,nb do

		raidUnit="raid"..tostring(i)
		raidName = UnitName(raidUnit)

		partyUnit="party"..tostring(i)
		partyName = UnitName(partyUnit)

		if (partyName == nom) then
			return partyUnit
		end		
		if (raidName == nom) then
			return raidUnit
		end
				
	end

	return nil
	
end


-- enable/disable déplacement du cadre avec la souris
function DF:gps_toogle_lock(flag)
	
	for i = 1,2 do
		frame[i]:EnableMouse(flag)
	end
	
end

function DF:gps_reinit()
	DF:init_gps_frame()	
	DF:gps_toogle_lock(DF.configmode)
	DF:options_setLevel()
end

function DF:gps_setLevel()
	local level = DF_config.gps.newLevel	
	for i = 1,2 do
		DF:setMyFrameLevel(frame[i],level,"gps")
		DF:setMyFrameLevel(overlay[i],level+1)
	end
end