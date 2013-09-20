----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - cooldown
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local frame=nil
local frameTexture=nil

local frequency =1/10
local frequency2 =1/60

local tempo=0
local tempo2=(frequency2/15)*4

local cdicons={
	{frame=nil,overlay=nil,texture=nil,state=0,scale=1},
	{frame=nil,overlay=nil,texture=nil,state=0,scale=1},
	{frame=nil,overlay=nil,texture=nil,state=0,scale=1},
	{frame=nil,overlay=nil,texture=nil,state=0,scale=1},
}

local cooldown_table={}
local icooldown_table={}

-- initialisation frames / initialization frames
function DF:init_cooldown_frame()
	
	if not frame then
		
		-- cadre principal / main frame
		frame = CreateFrame("FRAME","DF_COOLDOWN_FRAME",DF.anchor[6].frame)
		frame:SetScript("OnMouseDown",function(self,button)
			if button=="RightButton" then
  			DF:options_show("DFcooldown",frame)
  		end
		end)
		frame:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS COOLDOWN",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		frame:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)		
		
		-- icones / icons
		for i = 1,4 do
			cdicons[i].frame = CreateFrame("FRAME","DF_COOLDOWN_FRAME_"..tostring(i),frame)
			cdicons[i].overlay = CreateFrame("FRAME","DF_COOLDOWN_OVERLAY"..tostring(i),cdicons[i].frame)
			cdicons[i].texture = cdicons[i].overlay:CreateTexture("DF_COOLDOWN_OVERLAY_TEXTURE"..tostring(i),"BACKGROUND")
			cdicons[i].frame:EnableMouse(false)
		end
		frame:EnableMouse(false)
		frameTexture = frame:CreateTexture("DF_COOLDOWN_FRAME_TEXTURE","BACKGROUND")
		
	end

	if not DF_config.cooldown.newLevel then
		DF_config.cooldown.newLevel=DF_config.cooldown.level*10
	end
	local level = DF:numbers5(DF_config.cooldown.newLevel)

	-- paramétres cadre principal / main frame parameters
	frame:SetMovable(true)
	frame:SetWidth(DF_config.cooldown.width+8)
	frame:SetHeight(DF_config.cooldown.height+8)
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", DF.anchor[6].frame, "TOPLEFT", 0, 0)
	frame:SetFrameLevel(level)

	-- paramétres texture / texture parameters
	frameTexture:SetTexCoord(0, 1, 0, 1)
	frameTexture:ClearAllPoints()
	frameTexture:SetAllPoints(frame)

	frameTexture:SetTexture(1,1,1,0)

	-- paramétres background / background parameters
	for i = 1,4 do
		
		cdicons[i].frame:SetWidth(DF_config.cooldown.width)
		cdicons[i].frame:SetHeight(DF_config.cooldown.height)
		cdicons[i].frame:ClearAllPoints()
		cdicons[i].frame:SetPoint("CENTER", frame, "CENTER", (i-1)*DF_config.cooldown.offsetx, -((i-1)*DF_config.cooldown.offsety))
		cdicons[i].frame:SetAlpha(DF_config.cooldown.alpha)
		
		cdicons[i].overlay:SetWidth(DF_config.cooldown.width)
		cdicons[i].overlay:SetHeight(DF_config.cooldown.height)
		cdicons[i].overlay:SetPoint("CENTER", cdicons[i].frame, "CENTER", 0, 0)
		cdicons[i].overlay:SetFrameLevel(level+i)				

		cdicons[i].texture:SetTexCoord(0, 1, 0,1)
		cdicons[i].texture:SetWidth(32)
		cdicons[i].texture:SetHeight(32)
		cdicons[i].texture:SetAllPoints(cdicons[i].overlay)
		cdicons[i].texture:SetTexture("Interface\\icons\\INV_Misc_QuestionMark")
		cdicons[i].texture:SetBlendMode(DF_config.cooldown.mode)
		
		cdicons[i].overlay.texture = cdicons[i].texture
	
	end		
	
	if not DF_config.cooldown.enable then 
		for i = 1,4 do
			cdicons[i].overlay:Hide();		
		end
	else
		for i = 1,4 do
			cdicons[i].overlay:Show();		
		end		
	end
	
end

-- gestion de l'animation / management of the animation
function DF:cooldown_update(elapsed)
	
	local tempScale
	
	DF:cooldown_check()
	
	if not DF_config.cooldown.enable then
		for i = 1,4 do
			cdicons[i].overlay:Hide();		
		end
		return
	end

	tempo2=tempo2+elapsed
	if tempo2<frequency2 then return end
	tempo2=0		

	if DF.configmode then
		frameTexture:SetTexture(1,1,1,0.25)
	else
		frameTexture:SetTexture(1,1,1,0)
	end	
	
	for i = 1,4 do

		if cdicons[i].state == 1 then
		
			if cdicons[i].scale>1 then
				cdicons[i].scale  = cdicons[i].scale  - elapsed
			else
				cdicons[i].scale  = cdicons[i].scale  - 0.05
			end
		
			local tempScale=cdicons[i].scale
		
			if	tempScale>1 then tempScale=1 end			
			if	tempScale<0.1 then
				tempScale=0.1
				cdicons[i].state=0

			end
						
			cdicons[i].overlay:SetScale(DF:smoothScale(tempScale));
			cdicons[i].frame:SetAlpha(DF:smoothAlpha(tempScale,DF_config.cooldown.alpha))
			cdicons[i].overlay:Show();		
			
		elseif cdicons[i].state==2 then
			
			cdicons[i].scale  = cdicons[i].scale  + 0.05

			if cdicons[i].scale>1 then
				
				cdicons[i].scale=DF_config.cooldown.temps
				cdicons[i].state=1
				
			end
			
			tempScale=cdicons[i].scale
			if	tempScale>1 then tempScale=1 end		
						
			cdicons[i].overlay:SetScale(DF:smoothScale(tempScale))
			cdicons[i].frame:SetAlpha(DF:smoothAlpha(tempScale,DF_config.cooldown.alpha))
			cdicons[i].overlay:Show();		
				
		else
			
			cdicons[i].overlay:Hide();	
			
		end
	
		if DF.configmode then
			cdicons[i].texture:SetTexture("Interface\\icons\\INV_Misc_QuestionMark")
			cdicons[i].overlay:SetScale(1);
			cdicons[i].overlay:Show();		
		end	
	
	end
	
end

function DF:cooldown_activate(texture)
	
--	local exist=false
--	for i = 1,4 do
--		if cdicons[i].state~=0 and cdicons[i].texture:GetTexture()==texture then
--			exist=true
--		end
--	end
	
--	if not exist then	
		for i = 1,4 do
			
			if cdicons[i].state==0 then
				cdicons[i].state=2
				cdicons[i].scale=0.01
				cdicons[i].texture:SetTexture(texture)
				break
			end
			
		end
--	end

end

-- enable/disable déplacement du cadre avec la souris
-- enable/disable frame moving with the mouse
function DF:cooldown_toogle_lock(flag)
	
	frame:EnableMouse(flag)
	
end

function DF:cooldown_reinit()
	
	DF:init_cooldown_frame()
	DF:cooldown_toogle_lock(DF.configmode)
	DF:options_setLevel()	
	
end

function DF:cooldown_initTable()
	
	local spellId
	
	if cooldown_table then
		cooldown_table=table.wipe(cooldown_table)
	end

	if icooldown_table then
		icooldown_table=table.wipe(icooldown_table)
	end
	
	local nb=getn(DF.spellsList)
	
	for i = 1,nb do
		
		if DF.spellsList[i].popup and DF.spellsList[i].ltype==1 then
			
			spellId=DF.spellsList[i].valeur
			
			cooldown_table[spellId]={}
			cooldown_table[spellId].active=false
			cooldown_table[spellId].debut=-1
			cooldown_table[spellId].duree=0
			cooldown_table[spellId].enabled=true			
			
		end
		
	end

	nb = getn(DF_config.spells)
	
	for i = 1,nb do
		
		spellId=DF.works.spells[i].abiSpellIdForCD
		
		if spellId~=nil then
			cooldown_table[spellId]={}
			cooldown_table[spellId].active=false
			cooldown_table[spellId].debut=-1
			cooldown_table[spellId].duree=0
			cooldown_table[spellId].enabled=true			
		end
		
	end
	
end

function DF:cooldown_check()

	for index, _ in pairs(cooldown_table) do
		
		local cdstart, cdduration, cdenable = GetSpellCooldown(index)

		cooldown_table[index].duree=cdduration
				
		if (cdstart and cdstart > 0 and cdduration>3 and cooldown_table[index].enabled) then
			
			-- sous CD / in CD
			if not cooldown_table[index].active then
				cooldown_table[index].debut=cdstart
				cooldown_table[index].duree=cdduration
				cooldown_table[index].active=true

			end
			
		else
			-- pas sous CD
			-- si abilites précédemment enregistrée sous CD, pulse
			-- not in CD
			-- abilities if previously registered in CD, pulse
			if cooldown_table[index].active then
				-- enregistre "plus sous CD" et pulse
				-- records "under more CD" pulse
				cooldown_table[index].active=false
				if DF_cdsList[index]==nil and DF_config.cooldown.enable then
					local _, _, texture, _, _, _, _, _, _ = GetSpellInfo(index)
					DF:cooldown_activate(texture)
				end
				
			end
			
		end
		
	end

end

function DF:cooldown_addCD(index,cdstart,cdduration)
	if icooldown_table[index]==nil then
		icooldown_table[index]={}
	end
	icooldown_table[index].active=true
	icooldown_table[index].debut=cdstart
	icooldown_table[index].duree=cdduration
end


function DF:cooldown_stopCD(index)
	if icooldown_table[index]==nil then
		icooldown_table[index]={}
	end
	icooldown_table[index].active=true
	icooldown_table[index].debut=0
	icooldown_table[index].duree=0
end

function DF:cooldown_getCD(id)
	if icooldown_table[id] then
		return icooldown_table[id].debut,icooldown_table[id].duree
	end
	if cooldown_table[id] then
		return cooldown_table[id].debut,cooldown_table[id].duree
	end
	return 0,0
end

function DF:cooldown_setLevel()
	local level = DF_config.cooldown.newLevel
	DF:setMyFrameLevel(frame,level,"cooldown")
	for i = 1,4 do
		DF:setMyFrameLevel(cdicons[i].overlay,level+i)	
	end
end