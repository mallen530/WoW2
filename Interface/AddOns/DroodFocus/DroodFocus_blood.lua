----------------------------------------------------------------------------------------------------
-- DroodFocus 4.0.0 - blood
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local screenHeight = GetScreenHeight()*0.75
local screenWidth = GetScreenWidth()*0.75
local _

local frequency =1/60
local tempo=(frequency/15)*13

local frames={
	{
	frame=nil,
	overlay=nil,
	overlayTexture=nil,
	position={0,0},
	alpha=1,
	state=0,
	height=256,
	pas=0.005
	},
	{
	frame=nil,
	overlay=nil,
	overlayTexture=nil,
	position={0,0},
	alpha=1,
	state=0,
	height=256,
	pas=0.005
	},
	{
	frame=nil,
	overlay=nil,
	overlayTexture=nil,
	position={0,0},
	alpha=1,
	state=0,
	height=256,
	pas=0.005
	},		
	{
	frame=nil,
	overlay=nil,
	overlayTexture=nil,
	position={0,0},
	alpha=1,
	state=0,
	height=256,
	pas=0.005
	},
	{
	frame=nil,
	overlay=nil,
	overlayTexture=nil,
	position={0,0},
	alpha=1,
	state=0,
	height=256,
	pas=0.005
	},							
}

-- initialisation frames / initialization frames
function DF:init_blood_frame()
		
	if DF_config.blood.NotInRaid==nil then
		DF_config.blood.NotInRaid=true
	end
			
	for i = 1,5 do
		
		if not frames[i].frame then
			
			-- cadre principal / main frame
			frames[i].frame = CreateFrame("FRAME","DF_BLOOD_FRAME"..tostring(i),UIParent)
			
			-- overlay
			frames[i].overlay = CreateFrame("FRAME","DF_BLOOD_OVERLAY"..tostring(i),frames[i].frame)
			
			-- la texture / texture
			frames[i].overlayTexture = frames[i].overlay:CreateTexture("DF_BLOOD_OVERLAY_TEXTURE"..tostring(i),"BACKGROUND")

		end
	
		-- paramétres cadre principal / main frame parameters
		frames[i].frame:SetMovable(false)
		frames[i].frame:EnableMouse(false)		
		frames[i].frame:SetWidth(16)
		frames[i].frame:SetHeight(16)
		frames[i].frame:ClearAllPoints()
		frames[i].frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)	
		frames[i].frame:SetFrameStrata("BACKGROUND")
		frames[i].frame:SetFrameLevel(0)
		
		-- paramétres cadre principal / main frame parameters
		frames[i].overlay:SetMovable(false)
		frames[i].overlay:EnableMouse(false)		
		frames[i].overlay:SetWidth(256)
		frames[i].overlay:SetHeight(256)
		frames[i].overlay:SetPoint("TOP", frames[i].frame, "TOP", 0, 100)	
		frames[i].overlay:SetFrameStrata("BACKGROUND")
		frames[i].overlay:SetFrameLevel(0)

		frames[i].overlayTexture:SetTexCoord(0, 1, 1, 0)
		frames[i].overlayTexture:SetWidth(256)
		frames[i].overlayTexture:SetHeight(256)
		frames[i].overlayTexture:SetBlendMode("BLEND")
		frames[i].overlayTexture:ClearAllPoints()
		frames[i].overlayTexture:SetAllPoints(frames[i].overlay)
	
		frames[i].overlayTexture:SetTexture("Interface\\AddOns\\DroodFocus\\datas\\blood"..i)
	
		frames[i].overlay.texture = frames[i].overlayTexture
	
		frames[i].overlay:SetScale(DF_config.blood.size)
	
		frames[i].frame:Hide()
		
		frames[i].state=0
		frames[i].alpha=1
		frames[i].height=256
		frames[i].pas=0.005
	
	end
	
end

-- gestion de l'animation / animation management
function DF:blood_update(elapsed)
	
	if not DF_config.blood.enable or (DF_config.blood.NotInRaid and DF:isInRaid()~=0) then
		for i = 1,5 do
			frames[i].frame:Hide()
		end
		return
	end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0

	for i = 1,5 do
		
		if frames[i].state~=0 then
			
			frames[i].alpha=frames[i].alpha-elapsed
			
			frames[i].height=frames[i].height+frames[i].pas
			frames[i].overlay:SetHeight(frames[i].height)
			frames[i].pas=frames[i].pas+0.0015
			
			if frames[i].alpha<0 then 
				frames[i].alpha=0
				frames[i].state=0
			end
			
			if frames[i].alpha>DF_config.blood.alpha then 
				frames[i].overlay:SetAlpha(DF_config.blood.alpha)
			else
				frames[i].overlay:SetAlpha(frames[i].alpha)
			end			
			
			frames[i].frame:Show()
			
		else
			frames[i].frame:Hide()
		end
		
	end

end

function DF:blood_activate(echelle)
	
	if not DF_config.blood.enable or (DF_config.blood.NotInRaid and DF:isInRaid()~=0) then
		return
	end
	
	local it
	
	for it = 1,5 do
		
		if frames[it].state==0 then
			
			frames[it].state=1
			
			local rotate=math.random(359)
			local taille=DF_config.blood.size*echelle
			local scale=taille+(math.random()*(taille/3))
			local posx = (math.random()*screenWidth)-(screenWidth/2) 
			local posy = (math.random()*screenHeight)-(screenHeight/2)
			
			frames[it].alpha=DF_config.blood.persistence

			DF:RotateTexture(frames[it].overlay.texture,rotate)
			
			frames[it].frame:SetPoint("CENTER", UIParent, "CENTER", posx, posy)
			frames[it].overlay:SetScale(scale)
			frames[it].height=256
			frames[it].pas=0.005
			frames[it].overlay:SetHeight(frames[it].height)
			
			return
			
		end
		
	end
end

function DF:blood_reinit()
	DF:init_blood_frame()
end