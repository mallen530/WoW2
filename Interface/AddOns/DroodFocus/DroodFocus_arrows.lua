----------------------------------------------------------------------------------------------------
-- DroodFocus 4.0.0 - arrows
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local frequency =1/60
local tempo=(frequency/15)*2
local _

local frames={
	{frame=nil,texture=nil},
	{frame=nil,texture=nil},
	{frame=nil,texture=nil},
	{frame=nil,texture=nil},
	{frame=nil,texture=nil},
	{frame=nil,texture=nil},		
}

-- initialisation frames / initilization frames
function DF:init_arrows_frame()

	local donnee
	local taille
	local value
	
	for i = 1,6 do

		if not frames[i].frame then
		
			-- cadre principal / main frame
			frames[i].frame = CreateFrame("FRAME","DF_ARROW_FRAME"..tostring(i),DF.anchor[1].frame)
			frames[i].texture =frames[i].frame:CreateTexture("DF_ARROW_FRAME_TEXTURE"..tostring(i),"BACKGROUND")
	
		end
	
		local level = DF:numbers5(DF_config.powerbar.newLevel)
	
			-- paramétres cadre principal / main frame parameters 
		frames[i].frame:SetMovable(false)
		frames[i].frame:EnableMouse(false)		
		frames[i].frame:SetWidth(16)
		frames[i].frame:SetHeight(16)
		frames[i].frame:SetPoint("LEFT", DF:powerbar_get_pt(), "LEFT", 0, 0)
		frames[i].frame:SetFrameLevel(level+3)
		frames[i].frame:SetAlpha(1)
	
		-- par defaut / default
		if DF_config.powerbar.orientation=="VERTICAL" then
			frames[i].texture:SetTexCoord(0, 1, 0.5, 1)
		else
			frames[i].texture:SetTexCoord(0, 1, 0, 0.5)
		end
		
		frames[i].texture:SetAllPoints(frames[i].frame)
		frames[i].texture:SetTexture("Interface\\AddOns\\DroodFocus\\datas\\miniArrows.tga")
		frames[i].texture:SetBlendMode("BLEND")

		donnee = DF:rNumber(DF_config.powerbar.arrows[i])
		
		if donnee then
			
			if donnee>=0 and donnee<=100 then
					
				value = (donnee/100)
				
				if DF_config.powerbar.orientation=="VERTICAL" then
					taille = DF_config.powerbar.width-4
					if taille<1 then taille=1 end
					frames[i].frame:SetWidth(taille)
					frames[i].frame:SetHeight(16)
				else
					taille = DF_config.powerbar.height-4
					if taille<1 then taille=1 end	
					frames[i].frame:SetWidth(16)
					frames[i].frame:SetHeight(taille)
				end
				
				frames[i].texture:SetAllPoints(frames[i].frame)
				frames[i].texture:SetTexture("Interface\\AddOns\\DroodFocus\\datas\\separator.tga")
				frames[i].texture:SetBlendMode("BLEND")
				
			end
			
		end
	
	end
	
	if not DF_config.powerbar.enableArrows or not DF_config.powerbar.enable then 
		for i = 1,6 do
			frames[i].frame:Hide()
		end
	end
	
end

-- gestion de l'animation / management of the animation
function DF:arrows_update(elapsed)
	
	local donnee
	local value=0
	local cout=0
		
	if not DF_config.powerbar.enableArrows or not DF_config.powerbar.enable or not DF:toggle_isEnable() then return end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0

	local currentForm = DF:currentForm()
	local powerType = UnitPowerType("player")
	
	if not DF:form_goofForm(DF_config.powerbar.form,currentForm) or powerType~=3 then
		for i = 1,6 do
			frames[i].frame:Hide()
		end
		return
	else
		for i = 1,6 do
			frames[i].frame:Show()
		end
	end
	
	for i = 1,6 do

		donnee = DF:rNumber( DF_config.powerbar.arrows[i])

		if donnee==nil then donnee=-1 end

		if donnee>=0 then -- indicateur actif / active indicator
			
			if donnee<=100 then -- proportionnel == separateur / proportional == separator
				
				value = (donnee/100)

				frames[i].frame:ClearAllPoints()
				if DF_config.powerbar.orientation=="VERTICAL" then
					value=1-value
					frames[i].frame:SetPoint("BOTTOM", DF:powerbar_get_pt(), "TOP", 0, (-value*DF_config.powerbar.height)-8)
				else
					frames[i].frame:SetPoint("LEFT", DF:powerbar_get_pt(), "LEFT", (value*DF_config.powerbar.width)-8, 0)
				end
				
			else -- spell == fléche / spell == arrow
				
				_, _, _, cout, _, _, _, _, _ = GetSpellInfo(donnee)
				
				if (cout==nil) then
					value=-1
				else
					value = (cout/100)
				end

				frames[i].frame:ClearAllPoints()
				if DF_config.powerbar.orientation=="VERTICAL" then
					value=1-value
					frames[i].frame:SetPoint("BOTTOMLEFT", DF:powerbar_get_pt(), "TOPLEFT", -DF_config.powerbar.borderSize-4, (-value*DF_config.powerbar.height)-1)
				else
					frames[i].frame:SetPoint("TOPLEFT", DF:powerbar_get_pt(), "TOPLEFT", (value*DF_config.powerbar.width)-1, -DF_config.powerbar.borderSize+5)
				end
				
			end
			
			if (value>0) then
				frames[i].frame:Show()
			else
				frames[i].frame:Hide()
			end
			
		else
			
			frames[i].frame:Hide()
			
		end
		
	end
	
end

