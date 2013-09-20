----------------------------------------------------------------------------------------------------
-- DroodFocus 5.0.4 - défense sauvage
-- Meranannon - Insane - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local frame=nil
local frameTexture=nil

local frequency =1/60
local tempo=(frequency/15)*2

local goodSpec=false

local defenses={
	{frame=nil,overlay=nil,texture=nil,scale=1,sTexture=nil,state=0,cooldownframe=nil},
	{frame=nil,overlay=nil,texture=nil,scale=1,sTexture=nil,state=0,cooldownframe=nil},
	{frame=nil,overlay=nil,texture=nil,scale=1,sTexture=nil,state=0,cooldownframe=nil},
	{frame=nil,overlay=nil,texture=nil,scale=1,sTexture=nil,state=0,cooldownframe=nil},
	{frame=nil,overlay=nil,texture=nil,scale=1,sTexture=nil,state=0,cooldownframe=nil},
	{frame=nil,overlay=nil,texture=nil,scale=1,sTexture=nil,state=0,cooldownframe=nil},
}

-- initialisation frames
function DF:init_defense_frame()
	
	local anchorx
	local anchory
	
	if not frame then
		
		-- cadre principal
		frame = CreateFrame("FRAME","DF_DEFENSE_FRAME",DF.anchor[1].frame)
		frame:SetScript("OnMouseDown",function(self,button)
			if button=="LeftButton" then
  			frame:StartMoving()
  		elseif button=="RightButton" then
  			DF:options_show("DFdefense",frame)
  		end
		end)
		frame:SetScript("OnMouseUp",function(self,button)
			if button=="LeftButton" then
	  		frame:StopMovingOrSizing()
	  		local anchorx=DF.anchor[1].frame:GetLeft()
	  		local anchory=DF.anchor[1].frame:GetTop()
	  		DF_config.defense.positionx=self:GetLeft()-anchorx
	  		DF_config.defense.positiony=self:GetTop()-anchory
	  		frame:ClearAllPoints()
	  		frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.defense.positionx, DF_config.defense.positiony)
				DF:updateWidgetValue("DFdefenseleft")
				DF:updateWidgetValue("DFdefensetop")
		  end
		end)	
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS DEFENSE",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)		
		
		-- points de defense
		for i = 1,6 do
			defenses[i].frame = CreateFrame("FRAME","DF_DEFENSE_FRAME_"..tostring(i),frame)
			defenses[i].overlay = CreateFrame("FRAME","DF_DEFENSE_"..tostring(i),defenses[i].frame)
			defenses[i].texture = defenses[i].overlay:CreateTexture("DF_DEFENSE_TEXTURE"..tostring(i),"BACKGROUND")
			defenses[i].frame:EnableMouse(false)

			defenses[i].cooldownframe=CreateFrame("Cooldown","DF_DEFENSE_COOLDOWN_"..tostring(i),defenses[i].overlay)
			defenses[i].cooldownframe:SetAllPoints(defenses[i].overlay)
			defenses[i].cooldownframe.noCooldownCount=true
			defenses[i].cooldownframe:SetReverse(false)
			
			DF:luaCode_addRefs("Defenses_Overlay_"..tostring(i),defenses[i].overlay)
			DF:luaCode_addRefs("Defenses_Texture_"..tostring(i),defenses[i].texture)

		end
		frame:EnableMouse(false)
		frameTexture = frame:CreateTexture("DF_defense_FRAME_texture","BACKGROUND")
		
	end

	if not DF_config.defense.newLevel then
		DF_config.defense.newLevel=DF_config.defense.level*10
	end
	local level = DF:numbers5(DF_config.defense.newLevel)

	-- paramétres cadre principal
	frame:SetMovable(true)
	frame:SetWidth(DF_config.defense.width+8)
	frame:SetHeight(DF_config.defense.height+8)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.defense.positionx, DF_config.defense.positiony)
	frame:SetFrameLevel(level)

	-- paramétres texture
	frameTexture:SetTexCoord(0, 1, 0, 1)
	frameTexture:ClearAllPoints()
	frameTexture:SetAllPoints(frame)

	frameTexture:SetTexture(1,1,1,0)

	-- paramétres background
	for i = 1,DF_config.defense.nbcount do
		
		defenses[i].frame:SetWidth(DF_config.defense.width)
		defenses[i].frame:SetHeight(DF_config.defense.height)
		defenses[i].frame:ClearAllPoints()
		defenses[i].frame:SetPoint("CENTER", frame, "CENTER", (i-1)*DF_config.defense.offsetx, -((i-1)*DF_config.defense.offsety))
		defenses[i].frame:SetFrameLevel(level+i)	
		
		defenses[i].overlay:SetWidth(DF_config.defense.width)
		defenses[i].overlay:SetHeight(DF_config.defense.height)
		defenses[i].overlay:SetPoint("CENTER", defenses[i].frame, "CENTER", 0, 0)
		defenses[i].overlay:SetFrameLevel(level+i)				

		defenses[i].texture:SetTexCoord(0, 1, 0, 1)
		defenses[i].texture:SetWidth(32)
		defenses[i].texture:SetHeight(32)
		defenses[i].texture:SetAllPoints(defenses[i].overlay)
		defenses[i].texture:SetTexture(DF_config.defense.texturePath)
		defenses[i].texture:SetBlendMode(DF_config.defense.mode)
		
		defenses[i].overlay.texture = defenses[i].texture

		DF:defense_SetCooldown(i,0,0)
		defenses[i].cooldownframe:Hide()	
	end		
	
	if DF_config.defense.ptype==1 then
	
		for i = 1,DF_config.defense.nbcount do
			defenses[i].frame:ClearAllPoints()
			defenses[i].frame:SetPoint("CENTER", frame, "CENTER", (i-1)*DF_config.defense.offsetx, -((i-1)*DF_config.defense.offsety))
		end
		
	else
	
		local angleA=DF_config.defense.angleA
		local angleB=DF_config.defense.angleB
		local pas = (angleB-angleA)/5
		
		for i = 1,DF_config.defense.nbcount do
			
			local px=DF_config.defense.rayon*math.cos(angleA/180*math.pi)
			local py=DF_config.defense.rayon*math.sin(angleA/180*math.pi)
			
			defenses[i].frame:ClearAllPoints()
			defenses[i].frame:SetPoint("CENTER", frame, "CENTER", px, -py)
	
			angleA=angleA+pas
			
		end		
	end

	if not DF_config.defense.enable then 
		frame:Hide()
		for i = 1,DF_config.defense.nbcount do defenses[i].overlay:Hide() end
	end
	
end

function DF:defense_SetCooldown(numero,start,duration)
	defenses[numero].cooldownframe:SetCooldown(start,duration)
end

function DF:defense_getTexture(num)
	return defenses[num].texture
end

-- gestion de l'animation
function DF:defense_update(elapsed)
	
	local currentForm = DF:currentForm()
	local c = 0
	
	if goodSpec==false or not DF_config.defense.enable or not DF:toggle_isEnable() or not DF:form_goofForm(DF_config.defense.form,currentForm) then
		frame:Hide()
		for i = 1,DF_config.defense.nbcount do defenses[i].overlay:Hide() end
		return
	end
	
	frame:Show()
	
	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0
	
	if (DF.configmode) then
		frameTexture:SetTexture(1,1,1,0.25)
	else
		frameTexture:SetTexture(1,1,1,0)
	end	

	DF:defense_maxactive(DF_config.defense.nbcount)

	local c, _, timeLastCast, cooldownDuration = GetSpellCharges(DF_config.defense.spellid)
	local currentRage = UnitPower("player",SPELL_POWER_RAGE)
	
	if not c or c==nil then
		c=0
	end

	if (c<DF_config.defense.nbcount) then
	
		DF:defense_SetCooldown(c+1,timeLastCast,cooldownDuration)
		defenses[c+1].cooldownframe:Show()
			
	end
	
	for i = 1,DF_config.defense.nbcount do

		if (c==DF_config.defense.nbcount) then
		
			DF:icons_SetCooldown(i,0,0)
			defenses[i].cooldownframe:Hide()
			
		else
		
			if (i~=c+1) then
			
				DF:icons_SetCooldown(i,0,0)
				defenses[i].cooldownframe:Hide()	
						
			end			
							
		end


		if i<=c or DF.configmode then
			
			if (currentRage>59) then
				defenses[i].sTexture=DF_config.defense.textures[2]
			else
				defenses[i].sTexture=DF_config.defense.textures[3]
			end

			if defenses[i].state==0 then
				defenses[i].scale = DF_config.defense.impulsion
			end	
			
			defenses[i].state=1
			
		else
			
			defenses[i].sTexture=DF_config.defense.textures[1]
			
			defenses[i].state=0
			
		end
		
	end

	for i = 1, DF_config.defense.nbcount do
		
		defenses[i].scale = defenses[i].scale - 0.05
		
		if defenses[i].scale<1 then
				defenses[i].scale=1
		end	
	
		defenses[i].texture:SetTexture(defenses[i].sTexture)	
		defenses[i].overlay:SetScale(defenses[i].scale)
		
	end
	
end

-- display X number of defense points
function DF:defense_maxactive(maxi)
	
	for i = 1, 6 do
		
		if i<=maxi then
			defenses[i].overlay:Show()
		else
			defenses[i].overlay:Hide()
		end
		
	end
	
end

function DF:defense_setAlpha(value)
	
	for i = 1, DF_config.defense.nbcount do
		
		defenses[i].overlay:SetAlpha(value)
		
	end
	
end

-- enable/disable déplacement du cadre avec la souris
function DF:defense_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:defense_reinit()
	
	DF:init_defense_frame()
	DF:defense_toogle_lock(DF.configmode)
	DF:options_setLevel()
	
end

function DF:defense_setLevel()
	local level = DF_config.defense.newLevel
	frame:SetFrameLevel(level)
	DF:setMyFrameLevel(frame,level,"defbar")
	for i = 1,DF_config.defense.nbcount do
		DF:setMyFrameLevel(defenses[i].overlay,level+i)			
	end
end

function DF:defense_setGoodSpec()
	
	goodSpec=false
	
	for i = 1, 2 do
		
		local name, empty, offset, numSpells = GetSpellTabInfo(i)

		if not name then
			break;
		end
		
		for s = offset + 1, offset + numSpells do
			
			local	spell, rank = GetSpellBookItemName(s, BOOKTYPE_SPELL)
			local empty, spellId = GetSpellBookItemInfo(s, BOOKTYPE_SPELL)
			
			if spellId==DF_config.defense.spellid then
				goodSpec=true
				break;
			end
			
		end
	
	end	
	
end