----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - anchor
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local nbAnchors = 8
local _
local level

-- initialisation frames / initialization frames
function DF:init_anchor_frame()

	local i=0
	
	-- global anchor
	if not DF.baseanchor then
		
		DF.baseanchor={}
		
		-- cadre principal / main frame
		DF.baseanchor.base = CreateFrame("FRAME","DF_ANCHOR_BASE_0",UIParent)

		-- la texture / texture
		DF.baseanchor.frame = CreateFrame("FRAME","DF_ANCHOR_FRAME0",DF.baseanchor.base)
		DF.baseanchor.framet = CreateFrame("FRAME","DF_ANCHOR_FRAMET0",DF.baseanchor.base)
		DF.baseanchor.overlay=CreateFrame("FRAME","DF_ANCHOR_OVERLAY0",UIParent)
		DF.baseanchor.overlayTexture = DF.baseanchor.overlay:CreateTexture("DF_ANCHOR_OVERLAY_TEXTURE0","BACKGROUND")
		DF.baseanchor.frameTexture = DF.baseanchor.framet:CreateTexture("DF_ANCHOR_FRAME_TEXTURE0","BACKGROUND")
		DF.baseanchor.text = DF.baseanchor.overlay:CreateFontString("DF_ANCHOR_TEXT"..i,"ARTWORK")
		DF.baseanchor.base:EnableMouse(false)
		DF.baseanchor.overlay.numero=i
		
		DF.baseanchor.overlay:EnableMouse(false)				
		DF.baseanchor.overlay:SetScript("OnMouseDown",function(self,button)
			if button=="LeftButton" then
				DF.baseanchor.base:StartMoving()
			end
		end)
		DF.baseanchor.overlay:SetScript("OnMouseUp",function(self,button)
			if button=="LeftButton" then
		  		DF.baseanchor.base:StopMovingOrSizing()
		  		DF_config["anchor0"].positionx = DF:alignToGridX(self:GetLeft())
		  		DF_config["anchor0"].positiony = DF:alignToGridY(self:GetBottom())
		  		DF.baseanchor.base:ClearAllPoints()
		  		DF.baseanchor.base:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", DF_config["anchor0"].positionx, DF_config["anchor0"].positiony)
		  	end
		end)	
		DF.baseanchor.overlay:SetScript("OnEnter",function(self,button)
			if DF.configmode then
				DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
				DF.DroodFGameTooltip:ClearLines()
				DF.DroodFGameTooltip:AddLine("DROODFOCUS GLOBAL ANCHOR",1,1,0,nil)
				DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
				DF.DroodFGameTooltip:Show()		
			end		
		end)		
		DF.baseanchor.overlay:SetScript("OnLeave",function(self,button)
			if DF.configmode then DF.DroodFGameTooltip:Hide() end
		end)		

	end
	
		-- paramétres cadre principal / main frame parameters
	DF.baseanchor.base:SetMovable(true)
	DF.baseanchor.base:SetWidth(32)
	DF.baseanchor.base:SetHeight(32)
	DF.baseanchor.base:ClearAllPoints()
	DF.baseanchor.base:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", DF_config["anchor0"].positionx, DF_config["anchor0"].positiony)
	DF.baseanchor.base:SetFrameLevel(255)
	
		-- paramétres cadre qui acceuil éléments / parameters under which home items
	DF.baseanchor.frame:SetMovable(true)
	DF.baseanchor.frame:SetWidth(DF_config["anchor0"].width)
	DF.baseanchor.frame:SetHeight(DF_config["anchor0"].height)
	DF.baseanchor.frame:ClearAllPoints()
	DF.baseanchor.frame:SetPoint("TOPLEFT", DF.baseanchor.base, "TOPLEFT", 0, 0)

		-- paramétres cadre qui acceuil éléments / parameters under which home items
	DF.baseanchor.framet:SetMovable(true)
	DF.baseanchor.framet:SetWidth(DF_config["anchor0"].width)
	DF.baseanchor.framet:SetHeight(DF_config["anchor0"].height)
	DF.baseanchor.framet:ClearAllPoints()
	DF.baseanchor.framet:SetPoint("TOPLEFT", DF.baseanchor.base, "TOPLEFT", 0, 0)

	if not DF_config["anchor0"].newLevel then
		DF_config["anchor0"].newLevel=DF_config["anchor0"].level*10
	end
	level = DF:numbers5(DF_config["anchor0"].newLevel)

	DF.baseanchor.framet:SetFrameLevel(level)
	
	-- paramétres overlay / overlay parameters
	DF.baseanchor.overlay:SetMovable(false)
	DF.baseanchor.overlay:SetWidth(32)
	DF.baseanchor.overlay:SetHeight(32)
	DF.baseanchor.overlay:ClearAllPoints()
	DF.baseanchor.overlay:SetPoint("TOPLEFT", DF.baseanchor.frame, "TOPLEFT", 0, 0)
	DF.baseanchor.overlay:SetAlpha(0.75)
	DF.baseanchor.overlay:SetFrameLevel(255)
	
	-- paramétres texture / texture parameters
	DF.baseanchor.overlayTexture:SetTexCoord(0, 1, 0, 1)
	DF.baseanchor.overlayTexture:SetWidth(32)
	DF.baseanchor.overlayTexture:SetHeight(32)
	DF.baseanchor.overlayTexture:SetBlendMode("BLEND")
	DF.baseanchor.overlayTexture:ClearAllPoints()
	DF.baseanchor.overlayTexture:SetAllPoints(DF.baseanchor.overlay)
	DF.baseanchor.overlayTexture:SetTexture("Interface\\AddOns\\DroodFocus\\datas\\anchor.tga")

	-- paramétres texture / texture parameters
	DF.baseanchor.frameTexture:SetTexCoord(0, 1, 0, 1)
	DF.baseanchor.frameTexture:SetBlendMode(DF_config["anchor0"].mode)
	DF.baseanchor.frameTexture:ClearAllPoints()
	DF.baseanchor.frameTexture:SetAllPoints(DF.baseanchor.framet)
	DF.baseanchor.frameTexture:SetTexture(DF_config["anchor0"].texture)
	
	DF:MySetFont(DF.baseanchor.text,"Interface\\AddOns\\DroodFocus\\datas\\font.ttf",10,"OUTLINE")
	DF.baseanchor.text:SetShadowColor(0, 0, 0, 0.75)
	DF.baseanchor.text:SetShadowOffset(0.5, -0.5)
	DF.baseanchor.text:SetTextColor(1, 1, 1, 1)
	DF.baseanchor.text:SetPoint("LEFT", DF.baseanchor.overlay,"RIGHT", 0, 1)
	DF.baseanchor.text:SetText("GLOBAL")

	-- place la texture dans le cadre / place the texture in
	DF.baseanchor.overlay.texture = DF.baseanchor.overlayTexture
	DF.baseanchor.framet.texture = DF.baseanchor.frameTexture
	
	DF.baseanchor.frame:SetScale(DF_config["anchor0"].scale)
	DF.baseanchor.framet:SetScale(DF_config["anchor0"].scale)
	
	if (DF.lock) then
		DF.baseanchor.overlay:Hide()
	end

	if DF_config["anchor0"].visible then
		DF.baseanchor.frame:Show()
	else
		DF.baseanchor.frame:Hide()
	end	

	-- docks anchors
	for i = 1,nbAnchors do
		
		if not DF.anchor[i] then
			
			DF.anchor[i]={}
			
			-- cadre principal / main frame
			DF.anchor[i].base = CreateFrame("FRAME","DF_ANCHOR_BASE"..tostring(i),UIParent)

			-- la texture / texture
			DF.anchor[i].frame = CreateFrame("FRAME","DF_ANCHOR_FRAME"..tostring(i),DF.anchor[i].base)
			DF.anchor[i].framet = CreateFrame("FRAME","DF_ANCHOR_FRAMET"..tostring(i),DF.anchor[i].base)
			DF.anchor[i].overlay=CreateFrame("FRAME","DF_ANCHOR_OVERLAY"..tostring(i),UIParent)
			DF.anchor[i].overlayTexture = DF.anchor[i].overlay:CreateTexture("DF_ANCHOR_OVERLAY_TEXTURE"..tostring(i),"BACKGROUND")
			DF.anchor[i].frameTexture = DF.anchor[i].framet:CreateTexture("DF_ANCHOR_FRAME_TEXTURE"..tostring(i),"BACKGROUND")
			DF.anchor[i].text = DF.anchor[i].overlay:CreateFontString("DF_ANCHOR_TEXT"..i,"ARTWORK")
			DF.anchor[i].base:EnableMouse(false)
			
			DF.anchor[i].overlay.numero=i
			
			DF.anchor[i].overlay:EnableMouse(false)				
			DF.anchor[i].overlay:SetScript("OnMouseDown",function(self,button)
				if button=="LeftButton" then
					DF.anchor[i].base:StartMoving()
				elseif button=="RightButton" then
					DF:options_show("dfancre"..tostring(i),DF.anchor[i].base)
				end
			end)
			DF.anchor[i].overlay:SetScript("OnMouseUp",function(self,button)
				if button=="LeftButton" then
			  		DF.anchor[i].base:StopMovingOrSizing()
			  		DF_config["anchor"..tostring(i)].positionx = DF:alignToGridX(self:GetLeft()-DF_config["anchor0"].positionx)
			  		DF_config["anchor"..tostring(i)].positiony = DF:alignToGridY(self:GetBottom()-DF_config["anchor0"].positiony)
			  		DF.anchor[i].base:ClearAllPoints()
			  		DF.anchor[i].base:SetPoint("BOTTOMLEFT", DF.baseanchor.base, "BOTTOMLEFT", DF_config["anchor"..tostring(i)].positionx, DF_config["anchor"..tostring(i)].positiony)
						DF:updateWidgetValue("DFanchor"..tostring(self.numero).."left")
						DF:updateWidgetValue("DFanchor"..tostring(self.numero).."top")
			  	end
			end)	
			DF.anchor[i].overlay:SetScript("OnEnter",function(self,button)
				if DF.configmode then
					DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
					DF.DroodFGameTooltip:ClearLines()
					DF.DroodFGameTooltip:AddLine("DROODFOCUS "..DF_config["anchor"..tostring(self.numero)].info.." ANCHOR",1,1,0,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["rightMBanchor"],1,1,1,nil)
					DF.DroodFGameTooltip:Show()		
				end		
			end)		
			DF.anchor[i].overlay:SetScript("OnLeave",function(self,button)
				if DF.configmode then DF.DroodFGameTooltip:Hide() end
			end)		

		end

			-- paramétres cadre principal / main frame parameters
		DF.anchor[i].base:SetMovable(true)
		DF.anchor[i].base:SetWidth(16)
		DF.anchor[i].base:SetHeight(16)
		DF.anchor[i].base:ClearAllPoints()
		DF.anchor[i].base:SetPoint("BOTTOMLEFT", DF.baseanchor.base, "BOTTOMLEFT", DF_config["anchor"..tostring(i)].positionx, DF_config["anchor"..tostring(i)].positiony)
		DF.anchor[i].base:SetFrameLevel(254)
		
			-- paramétres cadre qui acceuil éléments / parameters under which home items
		DF.anchor[i].frame:SetMovable(true)
		DF.anchor[i].frame:SetWidth(DF_config["anchor"..tostring(i)].width)
		DF.anchor[i].frame:SetHeight(DF_config["anchor"..tostring(i)].height)
		DF.anchor[i].frame:ClearAllPoints()
		DF.anchor[i].frame:SetPoint("TOPLEFT", DF.anchor[i].base, "TOPLEFT", 0, 0)

			-- paramétres cadre qui acceuil éléments / parameters under which home items
		DF.anchor[i].framet:SetMovable(true)
		DF.anchor[i].framet:SetWidth(DF_config["anchor"..tostring(i)].width)
		DF.anchor[i].framet:SetHeight(DF_config["anchor"..tostring(i)].height)
		DF.anchor[i].framet:ClearAllPoints()
		DF.anchor[i].framet:SetPoint("TOPLEFT", DF.anchor[i].base, "TOPLEFT", 0, 0)

		if not DF_config["anchor"..tostring(i)].newLevel then
			DF_config["anchor"..tostring(i)].newLevel=DF_config["anchor"..tostring(i)].level*10
		end
		level = DF:numbers5(DF_config["anchor"..tostring(i)].newLevel)	

		DF.anchor[i].framet:SetFrameLevel(level)
		
		-- paramétres overlay / overlay parameters
		DF.anchor[i].overlay:SetMovable(false)
		DF.anchor[i].overlay:SetWidth(16)
		DF.anchor[i].overlay:SetHeight(16)
		DF.anchor[i].overlay:ClearAllPoints()
		DF.anchor[i].overlay:SetPoint("TOPLEFT", DF.anchor[i].frame, "TOPLEFT", 0, 0)
		DF.anchor[i].overlay:SetAlpha(0.75)
		
		DF.anchor[i].overlay:SetFrameLevel(254)
		
		-- paramétres texture / texture parameters
		DF.anchor[i].overlayTexture:SetTexCoord(0, 1, 0, 1)
		DF.anchor[i].overlayTexture:SetWidth(16)
		DF.anchor[i].overlayTexture:SetHeight(16)
		DF.anchor[i].overlayTexture:SetBlendMode("BLEND")
		DF.anchor[i].overlayTexture:ClearAllPoints()
		DF.anchor[i].overlayTexture:SetAllPoints(DF.anchor[i].overlay)
		DF.anchor[i].overlayTexture:SetTexture("Interface\\AddOns\\DroodFocus\\datas\\anchor.tga")

		-- paramétres texture / texture parameters
		DF.anchor[i].frameTexture:SetTexCoord(0, 1, 0, 1)
		DF.anchor[i].frameTexture:SetBlendMode(DF_config["anchor"..tostring(i)].mode)
		DF.anchor[i].frameTexture:ClearAllPoints()
		DF.anchor[i].frameTexture:SetAllPoints(DF.anchor[i].framet)
		DF.anchor[i].frameTexture:SetTexture(DF_config["anchor"..tostring(i)].texture)
		
		DF:MySetFont(DF.anchor[i].text,"Interface\\AddOns\\DroodFocus\\datas\\font.ttf",8,"OUTLINE")
		DF.anchor[i].text:SetShadowColor(0, 0, 0, 0.75)
		DF.anchor[i].text:SetShadowOffset(0.5, -0.5)
		DF.anchor[i].text:SetTextColor(1, 1, 1, 1)
		DF.anchor[i].text:SetPoint("LEFT", DF.anchor[i].overlay,"RIGHT", 0, 1)
		DF.anchor[i].text:SetText(DF_config["anchor"..tostring(i)].info)

		-- place la texture dans le cadre / place the texture in
		DF.anchor[i].overlay.texture = DF.anchor[i].overlayTexture
		DF.anchor[i].framet.texture = DF.anchor[i].frameTexture
		
		DF.anchor[i].frame:SetScale(DF_config["anchor"..tostring(i)].scale)
		DF.anchor[i].framet:SetScale(DF_config["anchor"..tostring(i)].scale)
		
		if (DF.lock) then
			DF.anchor[i].overlay:Hide()
		end
	
		if DF_config["anchor"..tostring(i)].visible then
			DF.anchor[i].frame:Show()
		else
			DF.anchor[i].frame:Hide()
		end
	
	end	
	
end

-- enable/disable déplacement du cadre avec la souris
-- enable/disable frame moving with the mouse
function DF:anchor_toogle_lock(flag)

	DF.baseanchor.overlay:EnableMouse(flag)
	if flag then 
		DF.baseanchor.overlay:Show()
	else
		DF.baseanchor.overlay:Hide()
	end
	
	for i = 1,nbAnchors do
	
		DF.anchor[i].overlay:EnableMouse(flag)
		
		if flag then 
			DF.anchor[i].overlay:Show()
		else
			DF.anchor[i].overlay:Hide()
		end
	
	end
	
end

function DF:anchor_reinit()
	DF:init_anchor_frame()
	DF:anchor_toogle_lock(DF.configmode)
	DF:options_setLevel()
end

function DF:anchor_setLevel()
	DF:setMyFrameLevel(DF.baseanchor.base,255,"anchor")
	DF:setMyFrameLevel(DF.baseanchor.overlay,255)
	DF:setMyFrameLevel(DF.baseanchor.framet,DF_config["anchor0"].newLevel)
	for i = 1,nbAnchors do
		DF:setMyFrameLevel(DF.anchor[i].base,254)
		DF:setMyFrameLevel(DF.anchor[i].overlay,254)
		DF:setMyFrameLevel(DF.anchor[i].framet,DF_config["anchor"..tostring(i)].newLevel)
	end
end