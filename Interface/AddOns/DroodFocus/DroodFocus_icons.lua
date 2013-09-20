----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - icons
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local frames={}
local nbSpells = 0
local iconsOrder = {
	{count=1,rang={}},
	{count=1,rang={}},
}
local iconsValue = {}
local abiImg=nil
local level=nil
local realWidth=nil
local realHeight=nil
local temps=nil
local temps2=nil

local cd1=0
local dur1=0
local cd2=0
local dur2=0	
local rt1=0
local rt2=0
local currentPower=nil
local plus=-1
local objScale
local txtScale

local coef=1

local frequency =1/60
local tempo=(frequency/15)*0

-- initialisation frames / initialization frames
function DF:init_icons_frame()

	local anchorx
	local anchory
		
	nbSpells = getn(DF_config.spells)
	
	for i = 1,getn(frames) do
		
		if i>nbSpells then
			frames[i].frame:Hide()
		end
		
	end

	iconsOrder[1].count=0
	iconsOrder[2].count=0
	
	for i = 1,nbSpells do
		
		if DF_config.spells[i].icon==true then
			DF_config.spells[i].icon=1
		elseif DF_config.spells[i].icon==false then
			DF_config.spells[i].icon=0
		end
		
		if not frames[i] then
			
			frames[i]={}
			frames[i].texts={}
			frames[i].pointbuff={}

			if DF_config.spells[i].icon==0 then
				frames[i].useConfig=1
			else
				frames[i].useConfig=DF_config.spells[i].icon
				if DF_config.spells[i].icon==3 then
					frames[i].useConfig=1
				end
				if DF_config.spells[i].icon==4 then
					frames[i].useConfig=2
				end				
			end
			
			frames[i].state=0
			frames[i].scale=1
			frames[i].alpha=1
			
			-- cadre principal / main frame
			if DF_config.spells[i].icon==0 or DF_config.spells[i].icon==1 or DF_config.spells[i].icon==3 then
				frames[i].frame = CreateFrame("FRAME","DF_SPELL_FRAME_"..tostring(i),DF.anchor[2].frame)
			else
				frames[i].frame = CreateFrame("FRAME","DF_SPELL_FRAME_"..tostring(i),DF.anchor[7].frame)
			end
			frames[i].frame:SetScript("OnMouseDown",function(self,button)
				if button=="LeftButton" then
  				if DF_config.spells[i].icon==3 or DF_config.spells[i].icon==4 then
		  			frames[i].frame:StartMoving()
		  		end
	  		elseif button=="RightButton" then
	  			DF:options_DebuffList_fakeClick(i)
		  			if IsControlKeyDown() then
			  			DF:options_show("DFspells",nil,true)
			  		else
			  			
	  					DF:options_show("DFicons",frames[i].frame,true)
	  					DF:options_iconBar_change(frames[i].useConfig)
	  					
	  				end
	  		end
			end)
			frames[i].frame:SetScript("OnMouseUp",function(self,button)
				local anchorx
				local anchory
				if button=="LeftButton" and (DF_config.spells[i].icon==3 or DF_config.spells[i].icon==4) then
		  		frames[i].frame:StopMovingOrSizing()

		  		if DF_config.spells[i].icon==0 or DF_config.spells[i].icon==1 or DF_config.spells[i].icon==3 then
			  		anchorx=DF.anchor[2].frame:GetLeft()
			  		anchory=DF.anchor[2].frame:GetTop()		  		
			  	else
			  		anchorx=DF.anchor[7].frame:GetLeft()
			  		anchory=DF.anchor[7].frame:GetTop()					  		
			  	end	  		
		  		DF_config.spells[i].positionx=DF:alignToGridX(self:GetLeft()-anchorx)
		  		DF_config.spells[i].positiony=DF:alignToGridY(self:GetTop()-anchory)
		  		frames[i].frame:ClearAllPoints()
		  		if DF_config.spells[i].icon==0 or DF_config.spells[i].icon==1 or DF_config.spells[i].icon==3 then
		  			frames[i].frame:SetPoint("TOPLEFT", DF.anchor[2].frame, "TOPLEFT", DF_config.spells[i].positionx, DF_config.spells[i].positiony)
		  		else
		  			frames[i].frame:SetPoint("TOPLEFT", DF.anchor[7].frame, "TOPLEFT", DF_config.spells[i].positionx, DF_config.spells[i].positiony)
		  		end

					--DF:updateWidgetValue("DFSPELLOPT_positionx")
					--DF:updateWidgetValue("DFSPELLOPT_positiony")
		  		
				end			  		
			end)				
			frames[i].frame:SetScript("OnEnter",function(self,button)
				if DF.configmode then
					DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
					DF.DroodFGameTooltip:ClearLines()
					if DF_config.spells[i].icon<3 then
						DF.DroodFGameTooltip:AddLine("DROODFOCUS ICONS (DOCK "..tostring(DF_config.spells[i].icon)..")",1,1,0,nil)
					else
						DF.DroodFGameTooltip:AddLine("DROODFOCUS FLOATING ICONS (DOCK "..tostring(DF_config.spells[i].icon-2)..")",1,1,0,nil)
					end
					DF.DroodFGameTooltip:AddLine(DF.works.spells[i].abiSpelltext,1,1,1,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["ctrlrightMB"],1,1,1,nil)
					DF.DroodFGameTooltip:Show()		
				end		
			end)		
			frames[i].frame:SetScript("OnLeave",function(self,button)
				if DF.configmode then DF.DroodFGameTooltip:Hide() end
			end)	
						
			frames[i].overlay = CreateFrame("FRAME","DF_SPELL_OVERLAY_"..tostring(i),frames[i].frame)
			frames[i].texture = frames[i].overlay:CreateTexture("DF_SPELL_OVERLAY_TEXTURE"..tostring(i),"BACKGROUND")
			
			frames[i].pointpa  = CreateFrame("FRAME","DF_SPELL_POINTPA_"..tostring(i),frames[i].frame)
			frames[i].pointpatexture = frames[i].pointpa:CreateTexture("DF_SPELL_POINTPA_TEXTURE"..tostring(i),"BACKGROUND")
			frames[i].pointpatext = frames[i].pointpa:CreateFontString("DF_SPELL_POINTPA_TEXT"..tostring(i),"ARTWORK")

			for te = 1,3 do
				frames[i].pointbuff[te]=CreateFrame("FRAME","DF_SPELL_POINTBUFF_"..tostring(i).."-"..tostring(te),frames[i].frame)
				frames[i].pointbuff[te].ftexture=frames[i].pointbuff[te]:CreateTexture("DF_SPELL_POINTBUFF_TEXTURE"..tostring(i).."-"..tostring(te),"BACKGROUND")
			end
					
			frames[i].cooldownframe=CreateFrame("Cooldown","DF_SPELL_COOLDOWN_"..tostring(i),frames[i].overlay)
			frames[i].cooldownframe:SetAllPoints(frames[i].overlay)
			frames[i].cooldownframe.noCooldownCount=true

			for te = 1,3 do
				frames[i].texts[te] = frames[i].frame:CreateFontString("DF_SPELLICON"..tostring(i).."_TEXT"..te,"ARTWORK")
				
			end
			frames[i].frame:EnableMouse(false)		

			DF:luaCode_addRefs("Icon_Overlay_"..tostring(i),frames[i].frame)
			DF:luaCode_addRefs("Icon_Texture_"..tostring(i),frames[i].texture)

		end

		if DF_config.spells[i].icon==0 then
			frames[i].useConfig=1
		else
			frames[i].useConfig=DF_config.spells[i].icon
			if DF_config.spells[i].icon==3 then
				frames[i].useConfig=1
			end
			if DF_config.spells[i].icon==4 then
				frames[i].useConfig=2
			end				
		end
		
		objScale=1
		txtScale=1
	
		if frames[i].useConfig==1 then
			frames[i].frame:SetParent(DF.anchor[2].frame)
		else
			frames[i].frame:SetParent(DF.anchor[7].frame)
		end

		if not DF_config.iconbars[1].newLevel then
			DF_config.iconbars[1].newLevel=DF_config.iconbars[1].level*10
		end
		if not DF_config.iconbars[2].newLevel then
			DF_config.iconbars[2].newLevel=DF_config.iconbars[2].level*10
		end

		level = DF:numbers5(DF_config.iconbars[frames[i].useConfig].newLevel)		

		if DF_config.spells[i].icon==3 or DF_config.spells[i].icon==4 then
			level = DF:numbers5(DF_config.spells[i].objectLevel)		
			objScale=DF_config.spells[i].objScale
			txtScale=DF_config.spells[i].txtScale
		end
	
		iconsOrder[frames[i].useConfig].count=iconsOrder[frames[i].useConfig].count+1
		iconsOrder[frames[i].useConfig].rang[iconsOrder[frames[i].useConfig].count]=i		
		
		frames[i].activeX=0
		frames[i].activeY=0
	
		realWidth=DF_config.iconbars[frames[i].useConfig].width*objScale
		realHeight=DF_config.iconbars[frames[i].useConfig].height*objScale			

		frames[i].toPulse=false
		
		-- paramétres cadre principal / main frame parameters
		frames[i].frame:SetMovable(true)
		
		frames[i].frame:SetWidth(realWidth)
		frames[i].frame:SetHeight(realHeight)
 		frames[i].frame:ClearAllPoints()
 		if DF_config.spells[i].icon==0 or DF_config.spells[i].icon==1 or DF_config.spells[i].icon==3 then
			frames[i].frame:SetPoint("TOPLEFT", DF.anchor[2].frame, "TOPLEFT", DF_config.spells[i].positionx, DF_config.spells[i].positiony)
		else
			frames[i].frame:SetPoint("TOPLEFT", DF.anchor[7].frame, "TOPLEFT", DF_config.spells[i].positionx, DF_config.spells[i].positiony)
		end
		frames[i].frame:SetFrameLevel(level+4)
		
		-- paramétres cadre principal / main frame parameters
		frames[i].overlay:SetMovable(false)
		frames[i].overlay:EnableMouse(false)		
		frames[i].overlay:SetWidth(realWidth)
		frames[i].overlay:SetHeight(realHeight)
		frames[i].overlay:SetPoint("CENTER", frames[i].frame, "CENTER", 0, 0)
		frames[i].overlay:SetFrameLevel(level+2)
		
		-- paramétres texture
		-- l'icone du premier sort de la liste
		-- texture parameters
		-- the icon of the first spell list
		local test=DF:options_returnNumber(DF.works.spells[i].ids[1])
		abiImg="Interface\\icons\\INV_Misc_QuestionMark"
		if test>0 then
			_, _, abiImg, _, _, _, _, _, _ = GetSpellInfo(test);
		end

		frames[i].texture:SetTexCoord(0, 1, 0, 1)
		frames[i].texture:SetWidth(64)
		frames[i].texture:SetHeight(64)
		frames[i].texture:SetBlendMode(DF_config.iconbars[frames[i].useConfig].mode)
		frames[i].texture:ClearAllPoints()
		frames[i].texture:SetAllPoints(frames[i].overlay)
	
		DF:icon_setTexture(i,abiImg)
		
		frames[i].overlay.texture = frames[i].texture

		-- paramétres textes / text parameters
		for t = 1,3 do
			DF:MySetFont(frames[i].texts[t],DF_config.iconbars[frames[i].useConfig].fontPath,DF_config.iconbars[frames[i].useConfig].textsoffsets[t].size*txtScale,DF_config.iconbars[frames[i].useConfig].textBorder)
			frames[i].texts[t]:SetShadowColor(0, 0, 0, 0.75)
			frames[i].texts[t]:SetShadowOffset(0.5, -0.5)
			frames[i].texts[t]:SetWidth(64)
			frames[i].texts[t]:SetHeight(32)			
			frames[i].texts[t]:SetTextColor(DF_config.iconbars[frames[i].useConfig].textColor.r, DF_config.iconbars[frames[i].useConfig].textColor.v, DF_config.iconbars[frames[i].useConfig].textColor.b, DF_config.iconbars[frames[i].useConfig].textColor.a)
			frames[i].texts[t]:SetText("")
			frames[i].texts[t]:SetJustifyH('CENTER')
			frames[i].texts[t]:SetJustifyV('MIDDLE')
			
			if string.find(DF_config.iconbars[frames[i].useConfig].textsoffsets[t].align, "TOP") then
				frames[i].texts[t]:SetJustifyV('TOP')
			end
			if string.find(DF_config.iconbars[frames[i].useConfig].textsoffsets[t].align, "BOTTOM") then
				frames[i].texts[t]:SetJustifyV('BOTTOM')
			end			
			if string.find(DF_config.iconbars[frames[i].useConfig].textsoffsets[t].align, "LEFT") then
				frames[i].texts[t]:SetJustifyH('LEFT')
			end			
			if string.find(DF_config.iconbars[frames[i].useConfig].textsoffsets[t].align, "RIGHT") then
				frames[i].texts[t]:SetJustifyH('RIGHT')
			end		
			frames[i].texts[t]:ClearAllPoints()
		end

		frames[i].texts[1]:SetPoint(DF_config.iconbars[frames[i].useConfig].textsoffsets[1].align, frames[i].overlay,DF_config.iconbars[frames[i].useConfig].textsoffsets[1].align, DF_config.iconbars[frames[i].useConfig].textsoffsets[1].offsetx*objScale, DF_config.iconbars[frames[i].useConfig].textsoffsets[1].offsety*objScale)
		frames[i].texts[2]:SetPoint(DF_config.iconbars[frames[i].useConfig].textsoffsets[2].align, frames[i].overlay,DF_config.iconbars[frames[i].useConfig].textsoffsets[2].align, DF_config.iconbars[frames[i].useConfig].textsoffsets[2].offsetx*objScale, DF_config.iconbars[frames[i].useConfig].textsoffsets[2].offsety*objScale)
		frames[i].texts[3]:SetPoint(DF_config.iconbars[frames[i].useConfig].textsoffsets[3].align, frames[i].overlay,DF_config.iconbars[frames[i].useConfig].textsoffsets[3].align, DF_config.iconbars[frames[i].useConfig].textsoffsets[3].offsetx*objScale, DF_config.iconbars[frames[i].useConfig].textsoffsets[3].offsety*objScale)
		
		-- paramétres cadre pointPA / framework parameters pointPA
		frames[i].pointpa:SetMovable(false)
		frames[i].pointpa:EnableMouse(false)		
		frames[i].pointpa:SetWidth(DF_config.dotPower.bigdotsWidth*objScale)
		frames[i].pointpa:SetHeight(DF_config.dotPower.bigdotsHeight*objScale)
		frames[i].pointpa:ClearAllPoints()
		frames[i].pointpa:SetPoint(DF_config.dotPower.bigdotsAlign, frames[i].overlay, DF_config.dotPower.bigdotsAlign, DF_config.dotPower.bigdotsOffsetX*objScale, DF_config.dotPower.bigdotsOffsetY*objScale)
		frames[i].pointpa:SetFrameLevel(level+3)

		frames[i].pointpatexture:SetTexCoord(0, 1, 0, 1)
		frames[i].pointpatexture:SetBlendMode("BLEND")
		frames[i].pointpatexture:ClearAllPoints()
		frames[i].pointpatexture:SetAllPoints(frames[i].pointpa)
		frames[i].pointpatexture:SetTexture(DF_config.dotPower.bigdotsTexture)	

		--DF:MySetFont(frames[i].pointpatext,DF_config.dotPower.fontPath,DF_config.dotPower.fontSize,"OUTLINE")
		DF:MySetFont(frames[i].pointpatext,DF_config.dotPower.fontPath,DF_config.dotPower.fontSize*txtScale,DF_config.dotPower.textBorder)

		frames[i].pointpatext:SetWidth(32)
		frames[i].pointpatext:SetHeight(20)	
		frames[i].pointpatext:SetJustifyH('CENTER')
		frames[i].pointpatext:SetJustifyV('MIDDLE')		
		if string.find(DF_config.dotPower.textAlign, "TOP") then
			frames[i].pointpatext:SetJustifyV('TOP')
		end
		if string.find(DF_config.dotPower.textAlign, "BOTTOM") then
			frames[i].pointpatext:SetJustifyV('BOTTOM')
		end			
		if string.find(DF_config.dotPower.textAlign, "LEFT") then
			frames[i].pointpatext:SetJustifyH('LEFT')
		end			
		if string.find(DF_config.dotPower.textAlign, "RIGHT") then
			frames[i].pointpatext:SetJustifyH('RIGHT')
		end		
		frames[i].pointpatext:ClearAllPoints()
		frames[i].pointpatext:SetPoint(DF_config.dotPower.textAlign, frames[i].pointpa,DF_config.dotPower.textAlign, DF_config.dotPower.textx*objScale, DF_config.dotPower.texty*objScale)
		frames[i].pointpatext:SetText("")
		frames[i].pointpatext:SetTextColor(DF_config.dotPower.textColor.r,DF_config.dotPower.textColor.v,DF_config.dotPower.textColor.b,DF_config.dotPower.textColor.a)
	
		for te = 1,3 do

			frames[i].pointbuff[te]:SetMovable(false)
			frames[i].pointbuff[te]:EnableMouse(false)		
			frames[i].pointbuff[te]:SetWidth(DF_config.dotPower.dotsSize*objScale)
			frames[i].pointbuff[te]:SetHeight(DF_config.dotPower.dotsSize*objScale)
			frames[i].pointbuff[te]:SetFrameLevel(level+4)

			frames[i].pointbuff[te].ftexture:SetTexCoord(0, 1, 0, 1)
			frames[i].pointbuff[te].ftexture:SetBlendMode("BLEND")
			frames[i].pointbuff[te].ftexture:ClearAllPoints()
			frames[i].pointbuff[te].ftexture:SetAllPoints(frames[i].pointbuff[te])
			frames[i].pointbuff[te].ftexture:SetTexture("Interface\\AddOns\\DroodFocus\\custom\\combo_black.tga")	
			
		end

		frames[i].pointbuff[1]:ClearAllPoints()
		frames[i].pointbuff[2]:ClearAllPoints()
		frames[i].pointbuff[3]:ClearAllPoints()
		
		frames[i].pointbuff[1]:SetPoint("CENTER", frames[i].overlay, DF_config.dotPower.dotsAlign, (DF_config.dotPower.dotsOffsetX-(DF_config.dotPower.dotsSize*0.7))*objScale, DF_config.dotPower.dotsOffsetY*objScale)
		frames[i].pointbuff[2]:SetPoint("CENTER", frames[i].overlay, DF_config.dotPower.dotsAlign, (DF_config.dotPower.dotsOffsetX)*objScale, DF_config.dotPower.dotsOffsetY*objScale)
		frames[i].pointbuff[3]:SetPoint("CENTER", frames[i].overlay, DF_config.dotPower.dotsAlign, (DF_config.dotPower.dotsOffsetX+(DF_config.dotPower.dotsSize*0.7))*objScale, DF_config.dotPower.dotsOffsetY*objScale)
			
		DF:icons_SetCooldown(i,0,0)
		frames[i].cooldownframe:Hide()
		if DF_config.iconbars[frames[i].useConfig].showSpiral==3 then
			frames[i].cooldownframe:SetReverse(false)
		else
			frames[i].cooldownframe:SetReverse(true)
		end
		
		if not DF_config.icons.enable or DF_config.spells[i].icon==0 then
			frames[i].frame:Hide()
		else
			frames[i].frame:Show()
		end
		
	end
	DF:icons_setLevel()
end

-- gestion de l'animation / animation management
function DF:icons_update(elapsed)
	
	if not DF_config.icons.enable or not DF:toggle_isEnable() then return end

	local mini=1
	local fadingPulse=0
	local finalAlpha=0
	local i
	local form = nil
	local currentForm = DF:currentForm()
	local IconPower	=nil
	local currentPower	=nil
	local targetID=UnitGUID("playertarget")
	local restant
	local barsCounter1=1
	local barsCounter2=1
	local lesbuff=""	
	local etat=0
	local debutCD
	local dureeCD	
	local letsgo
	local currentPower=0
	local debuffPower=0		
	local num	
	local numPrec
	local temporaire	
	
	local customTimeleft=nil
	local customCD=nil
	local customStack=nil	
	local customCDDuration=nil
	local customStack=nil
	local customDuration=nil
	
	-- anime / animates
	for i = 1,nbSpells do
		
		form = DF_config.spells[i].form

		letsgo=true

		if DF_config.spells[i].icon==0 then
			letsgo=false
		elseif (DF:form_goofForm(form,currentForm)==false) then
			letsgo=false
		elseif (DF_config.spells[i].abiTalent~=0 and DF.activeTalent~=DF_config.spells[i].abiTalent) then
			letsgo=false
		end

		-- fin si pas bonne forme / end if not made
		if letsgo then
			
			frames[i].frame:Show()

			debutCD,dureeCD=DF:cooldown_getCD(DF.works.spells[i].abiSpellIdForCD)
			restant = (debutCD+dureeCD)-DF.currentTime
			if restant<0 then
				restant=0
			end
			
			customTimeleft=DF.works.spells[i].abiTimeLeft
			customDuration=DF.works.spells[i].abiDuration
			customCD=restant
			customCDDuration=dureeCD
			customStack=DF.works.spells[i].abiStack

			-- scaling et alpha / scaling and alpha
			frames[i].alpha = frames[i].alpha - 0.025
			frames[i].scale = frames[i].scale - 0.025
	
			mini=DF_config.iconbars[frames[i].useConfig].activeAlpha
			etat=1
			
			if frames[i].state==0 then
				
				if customCD>0 then
					mini=DF_config.iconbars[frames[i].useConfig].inactiveCDAlpha
					etat=3
				else
					if (DF_config.spells[i].abiRdyMode) then
						mini=DF_config.iconbars[frames[i].useConfig].activeAlpha
						etat=1
					else
						mini=DF_config.iconbars[frames[i].useConfig].inactiveAlpha
						etat=2
					end
					
				end
				
			end
			
			if not DF.works.spells[i].abiActiveCond then
				mini=DF_config.iconbars[frames[i].useConfig].inactiveAlpha
				etat=2
			end
			
			if DF_config.iconbars[frames[i].useConfig].pointpa and not DF.works.spells[i].abiIsaBuff and DF:isPowerId(DF.works.spells[i].abiSpellIdForCD) then

				-- affiche l'état des buffs
				local checkbuffs=nil
				local powerTemp=0
				local docActive=false
				
				debuffPower=0
				if DF.abiBuffs[targetID] and customTimeleft>0 then
					checkbuffs=DF.abiBuffs[targetID][DF.works.spells[i].abiSpellIdForCD]
					debuffPower=DF.abiPowers[targetID][DF.works.spells[i].abiSpellIdForCD]
				end
				
				if debuffPower==nil then debuffPower=0 end
				if checkbuffs==nil then checkbuffs=0 end
				
				if DF.configmode then checkbuffs=7 end
				if DF:hasbit(checkbuffs,DF:bit(1)) then
					frames[i].pointbuff[1].ftexture:SetTexture("Interface\\AddOns\\DroodFocus\\custom\\combo_red.tga")	
				else
					frames[i].pointbuff[1].ftexture:SetTexture("Interface\\AddOns\\DroodFocus\\custom\\combo_black.tga")	
				end
				if DF:hasbit(checkbuffs,DF:bit(2)) then
					frames[i].pointbuff[2].ftexture:SetTexture("Interface\\AddOns\\DroodFocus\\custom\\combo_yellow.tga")	
				else
					frames[i].pointbuff[2].ftexture:SetTexture("Interface\\AddOns\\DroodFocus\\custom\\combo_black.tga")	
				end
				if DF:hasbit(checkbuffs,DF:bit(3)) then
					frames[i].pointbuff[3].ftexture:SetTexture("Interface\\AddOns\\DroodFocus\\custom\\combo_blue.tga")	
				else
					frames[i].pointbuff[3].ftexture:SetTexture("Interface\\AddOns\\DroodFocus\\custom\\combo_black.tga")	
				end
				
				currentPower=DF:getCurrentPower(DF.works.spells[i].abiSpellIdForCD)
				if currentPower==nil then currentPower=0 end
				
				if debuffPower==0 then 
				
					frames[i].pointpatext:SetText("")
					frames[i].pointpatexture:SetVertexColor(DF_config.dotPower.yellowColor.r,DF_config.dotPower.yellowColor.v,DF_config.dotPower.yellowColor.b,DF_config.dotPower.yellowColor.a)
						
				else
				
					local ratio = ((currentPower-debuffPower)/debuffPower)*100
					local limite=DF_config.dotPower.cap
					
					if DF_config.dotPower.bigdotsValue==1 then
						frames[i].pointpatext:SetText(DF:numbers2(ratio))
					elseif DF_config.dotPower.bigdotsValue==2 then
						frames[i].pointpatext:SetText(DF:number(debuffPower))
					elseif DF_config.dotPower.bigdotsValue==3 then
						frames[i].pointpatext:SetText(DF:number(currentPower))
					elseif DF_config.dotPower.bigdotsValue==4 then
						frames[i].pointpatext:SetText(DF:number(currentPower-debuffPower))
					end

					if ratio<0 then
						frames[i].pointpatexture:SetVertexColor(DF_config.dotPower.redColor.r,DF_config.dotPower.redColor.v,DF_config.dotPower.redColor.b,DF_config.dotPower.redColor.a)
						if DF_config.dotPower.textDynamicColor then
							frames[i].pointpatext:SetTextColor(DF_config.dotPower.redColor.r,DF_config.dotPower.redColor.v,DF_config.dotPower.redColor.b,DF_config.dotPower.redColor.a)
						end
					elseif ratio>=0 and ratio<limite then
						frames[i].pointpatexture:SetVertexColor(DF_config.dotPower.yellowColor.r,DF_config.dotPower.yellowColor.v,DF_config.dotPower.yellowColor.b,DF_config.dotPower.yellowColor.a)
						if DF_config.dotPower.textDynamicColor then
							frames[i].pointpatext:SetTextColor(DF_config.dotPower.yellowColor.r,DF_config.dotPower.yellowColor.v,DF_config.dotPower.yellowColor.b,DF_config.dotPower.yellowColor.a)
						end
					elseif ratio>=limite then
						frames[i].pointpatexture:SetVertexColor(DF_config.dotPower.greenColor.r,DF_config.dotPower.greenColor.v,DF_config.dotPower.greenColor.b,DF_config.dotPower.greenColor.a)
						if DF_config.dotPower.textDynamicColor then
							frames[i].pointpatext:SetTextColor(DF_config.dotPower.greenColor.r,DF_config.dotPower.greenColor.v,DF_config.dotPower.greenColor.b,DF_config.dotPower.greenColor.a)
						end
					end
					
				end
				
				if DF.configmode then
					frames[i].pointpatexture:SetVertexColor(DF_config.dotPower.greenColor.r,DF_config.dotPower.greenColor.v,DF_config.dotPower.greenColor.b,DF_config.dotPower.greenColor.a)
					
					if DF_config.dotPower.bigdotsValue==1 then
						frames[i].pointpatext:SetText(DF:numbers(88))
					elseif DF_config.dotPower.bigdotsValue==2 then
						frames[i].pointpatext:SetText(DF:kilo(15000))
					elseif DF_config.dotPower.bigdotsValue==3 then
						frames[i].pointpatext:SetText(DF:kilo(15000))
					elseif DF_config.dotPower.bigdotsValue==4 then
						frames[i].pointpatext:SetText(DF:kilo(-4500))
					end
										
					if DF_config.dotPower.textDynamicColor then
						frames[i].pointpatext:SetTextColor(DF_config.dotPower.greenColor.r,DF_config.dotPower.greenColor.v,DF_config.dotPower.greenColor.b,DF_config.dotPower.greenColor.a)
					else
						frames[i].pointpatext:SetTextColor(DF_config.dotPower.textColor.r,DF_config.dotPower.textColor.v,DF_config.dotPower.textColor.b,DF_config.dotPower.textColor.a)
					end
					
				end
				
				if not DF_config.dotPower.showText then
					frames[i].pointpatext:SetText("")
				end
				
				if not DF_config.dotPower.showGfx then
					frames[i].pointpatexture:SetVertexColor(1,1,1,0)
				end
					
			else
				
				frames[i].pointpa:Hide()
				for te = 1,3 do frames[i].pointbuff[te]:Hide() end
				
			end
			
			-- clignotage de l'icone
			if (customTimeleft<=0) then

				if DF_config.iconbars[frames[i].useConfig].flashWhenOff==1 or (DF_config.iconbars[frames[i].useConfig].flashWhenOff==2 and DF:inCombat()) then
				
					DF.works.spells[i].abiAlphaPulse = DF.works.spells[i].abiAlphaPulse + 0.06
					
				else
				
					DF.works.spells[i].abiAlphaPulse = 0
					
				end
				
			else

				if DF_config.iconbars[frames[i].useConfig].showSpiral==1 then
				
					if (customTimeleft>0 and customTimeleft<3) then
						
						fadingPulse = 0.01+((3-customTimeleft)/12.5)
						DF.works.spells[i].abiAlphaPulse = DF.works.spells[i].abiAlphaPulse + fadingPulse
						if (DF.works.spells[i].abiAlphaPulse>0.95) then
							DF.works.spells[i].abiAlphaPulse = 0
						end		
						
					else
					
						DF.works.spells[i].abiAlphaPulse = 0
						
					end
							
				end
						
			end
		
			if frames[i].alpha<mini then
				frames[i].alpha=mini
			end
			if frames[i].scale<1 then
				frames[i].scale=1
			end

			if (customTimeleft<=0) then
				finalAlpha = DF:smoothAlphaIcons(DF.works.spells[i].abiAlphaPulse,frames[i].alpha)
			else
				finalAlpha = frames[i].alpha-DF.works.spells[i].abiAlphaPulse
			end
			
			if finalAlpha<0 then finalAlpha=0 end
			if finalAlpha>1 or DF.configmode then finalAlpha=1 end

			frames[i].overlay:SetAlpha(finalAlpha)
			
			frames[i].overlay:SetScale(frames[i].scale)
			
			-- màj texte temps restant / update text time remaining
			if DF_config.iconbars[frames[i].useConfig].textsoffsets[1].visible then
			
				if customTimeleft>0 then 
					
					if customTimeleft<3 and DF_config.iconbars[frames[i].useConfig].decimal then
						
						if DF_config.iconbars[frames[i].useConfig].timerformat==true then
							frames[i].texts[1]:SetText(DF:minutes(customTimeleft,true))
						else
							frames[i].texts[1]:SetText(DF:floatNumbers(customTimeleft))
						end
						
					else
						
						if customTimeleft>100000 then
							frames[i].texts[1]:SetText("")
						else
							
							if customTimeleft>60 or DF_config.iconbars[frames[i].useConfig].timerformat==true then
								frames[i].texts[1]:SetText(DF:minutes(customTimeleft,true))
							else
								frames[i].texts[1]:SetText(DF:numbers(customTimeleft))
							end
						end
						
					end
				else
					
					if DF.configmode then
						
						if DF_config.iconbars[frames[i].useConfig].timerformat==true then
							frames[i].texts[1]:SetText("8:88")
						else
							frames[i].texts[1]:SetText("8")
						end
						
					else
						
						frames[i].texts[1]:SetText("")
						
					end
					
				end
				
				frames[i].texts[1]:Show()
				
			else
				
				frames[i].texts[1]:Hide()
					
			end

			-- maj texte stack / udpate stack text
			if DF_config.iconbars[frames[i].useConfig].textsoffsets[2].visible then
				
				if customStack>0 and customTimeleft~=200000 then
					frames[i].texts[2]:SetText(DF:numbers(customStack))
				else
					if DF.configmode then
						frames[i].texts[2]:SetText("8")
					else
						frames[i].texts[2]:SetText("")
					end
				end
				
				frames[i].texts[2]:Show()
				
			else
				frames[i].texts[2]:Hide()
			end

			-- maj texte CD / update text CD
			if DF_config.iconbars[frames[i].useConfig].textsoffsets[3].visible then
		
				if debutCD>0 and customCDDuration>0 then
					
					if customCD<=0 then
						customCD=0
						if (DF_config.spells[i].abiRdyMode and customCDDuration~=0.001) then
							frames[i].texts[3]:SetText(DF_config.iconsRDYtext)
						else
							frames[i].texts[3]:SetText("")
						end
					else

						if customCD<3 and DF_config.iconbars[frames[i].useConfig].decimal then
							frames[i].texts[3]:SetText(DF:floatNumbers(customCD))
						else

							if customCD>60 then
								frames[i].texts[3]:SetText(DF:minutesShort(customCD))
							else
								frames[i].texts[3]:SetText(DF:numbers(customCD))
							end
							
						end

					end		
							
				else
					
					if (DF_config.spells[i].abiRdyMode and customCDDuration~=0.001) then
						frames[i].texts[3]:SetText(DF_config.iconsRDYtext)
					else
						frames[i].texts[3]:SetText("")
					end	
												
				end			
				
				if DF.configmode then
					frames[i].texts[3]:SetText("8")
				end
			
				frames[i].texts[3]:Show()
				
			else
				
				frames[i].texts[3]:Hide()
				
			end
	
			if (etat==1) then
				frames[i].texture:SetVertexColor(DF_config.iconbars[frames[i].useConfig].activeColor.r, DF_config.iconbars[frames[i].useConfig].activeColor.v, DF_config.iconbars[frames[i].useConfig].activeColor.b, DF_config.iconbars[frames[i].useConfig].activeColor.a)
			elseif (etat==2) then
				frames[i].texture:SetVertexColor(DF_config.iconbars[frames[i].useConfig].inactiveColor.r, DF_config.iconbars[frames[i].useConfig].inactiveColor.v, DF_config.iconbars[frames[i].useConfig].inactiveColor.b, DF_config.iconbars[frames[i].useConfig].inactiveColor.a)
			elseif (etat==3) then
				frames[i].texture:SetVertexColor(DF_config.iconbars[frames[i].useConfig].inactiveCDColor.r, DF_config.iconbars[frames[i].useConfig].inactiveCDColor.v, DF_config.iconbars[frames[i].useConfig].inactiveCDColor.b, DF_config.iconbars[frames[i].useConfig].inactiveCDColor.a)
			end
			
		else
			
			frames[i].frame:Hide()
			
		end	
	end

	-- classement barres par temps restant
	-- a chaque cycle les icones sont comparées a ceux directement au dessus et échange de place si le temps est plus court
	-- classification by time remaining bars
	-- Icons at each cycle are compared to those directly above and exchange place if the time is shorter

	for i = 1,nbSpells do
		
		cd1,dur1=DF:cooldown_getCD(DF.works.spells[i].abiSpellIdForCD)
		rt1=(cd1+dur1)-DF.currentTime		

		customTimeleft=DF.works.spells[i].abiTimeLeft
		customCD=rt1

		if customCD<0 then customCD=0 end	
		temporaire = customTimeleft

		if temporaire>0 then
			-- active
				iconsValue[i]=(DF_config.iconbars[frames[i].useConfig].stack[1].value*50000)+temporaire
		else
			--inactive
			if customCD>0 then
				-- sous cd / in CD
				iconsValue[i]=(DF_config.iconbars[frames[i].useConfig].stack[3].value*50000)+customCD
			else
				-- inactive
				iconsValue[i]=(DF_config.iconbars[frames[i].useConfig].stack[2].value*50000)		
				if DF_config.spells[i].abiRdyMode then		
					iconsValue[i]=(DF_config.iconbars[frames[i].useConfig].stack[4].value*50000)
				end
			end
		end
			
	end

	for i = 1,2 do

		if DF_config.iconbars[i].orderByTime and iconsOrder[i].count>1 then
	
			for j = 2,iconsOrder[i].count do
			
				num = iconsOrder[i].rang[j]
				numPrec = iconsOrder[i].rang[j-1]	

				-- si temps i inférieur a temps i-1, on échange les places
				-- if i less time to time i-1, exchange places
				if iconsValue[num]<iconsValue[numPrec] then
					
					-- inverse
					iconsOrder[i].rang[j]= numPrec
					iconsOrder[i].rang[j-1] = num
					
				end		
									
			end
		end
	end


	-- replacement icons a la bonne position
	-- replacement icons to the right position

	local offsetx=0
	local offsety=0
	local colonne=1

	for i = 1,2 do

		offsetx=0
		offsety=0
		colonne=1
		
		if iconsOrder[i].count>0 then
			
			for j = 1,iconsOrder[i].count do
				
				num = iconsOrder[i].rang[j]			
				form = DF_config.spells[num].form
				
				if DF_config.spells[num].icon<3 and DF_config.spells[num].icon==i and DF:form_goofForm(form,currentForm) and ((DF_config.spells[num].abiTalent==0 or DF.activeTalent==DF_config.spells[num].abiTalent)) then

					realWidth=DF_config.iconbars[i].spacex
					realHeight=DF_config.iconbars[i].spacey			
									
					-- placement auto / auto placement
					frames[num].frame:ClearAllPoints()
					if i==1 then
						frames[num].frame:SetPoint("TOPLEFT", DF.anchor[2].frame, "TOPLEFT", frames[num].activeX+8, frames[num].activeY-8)
					else
						frames[num].frame:SetPoint("TOPLEFT", DF.anchor[7].frame, "TOPLEFT", frames[num].activeX+8, frames[num].activeY-8)
					end
					
					if frames[num].activeX<offsetx then
						frames[num].activeX=frames[num].activeX+DF_config.iconbars[frames[num].useConfig].speed
						if frames[num].activeX>offsetx then
							frames[num].activeX=offsetx
						end
					end
					if frames[num].activeX>offsetx then
						frames[num].activeX=frames[num].activeX-DF_config.iconbars[frames[num].useConfig].speed
						if frames[num].activeX<offsetx then
							frames[num].activeX=offsetx
						end
					end		
	
					if frames[num].activeY<offsety then
						frames[num].activeY=frames[num].activeY+DF_config.iconbars[frames[num].useConfig].speed
						if frames[num].activeY>offsety then
							frames[num].activeY=offsety
						end
					end
					if frames[num].activeY>offsety then
						frames[num].activeY=frames[num].activeY-DF_config.iconbars[frames[num].useConfig].speed
						if frames[num].activeY<offsety then
							frames[num].activeY=offsety
						end
					end		
							
					offsetx=offsetx+ realWidth
					colonne=colonne+1
					if colonne>DF_config.iconbars[frames[num].useConfig].colonne then
						colonne=1
						offsety=offsety- realHeight
						offsetx=0
					end	
									
				end
				
			end
		end
	end
	
end

function DF:icon_setTexture(num,texture)
	frames[num].texture:SetTexture(texture)	
end

function DF:icons_activate(num)
	if frames[num] then
			
			if frames[num].toPulse then
				frames[num].scale = DF_config.iconbars[frames[num].useConfig].pulse
				frames[num].toPulse=false
			end
			
			if DF_config.iconbars[frames[num].useConfig].showSpiral==2 or DF_config.iconbars[frames[num].useConfig].showSpiral==3 then
				if DF.works.spells[num].abiDuration>0 then
					DF:icons_SetCooldown(num,DF.works.spells[num].abiEnd-DF.works.spells[num].abiDuration,DF.works.spells[num].abiDuration)
					frames[num].cooldownframe:Show()
				else
					DF:icons_SetCooldown(num,0,0)
					frames[num].cooldownframe:Hide()					
				end
			end
		frames[num].state = 1
	end	
end

function DF:icons_desactivate(num)
	if frames[num] then
		
		if frames[num].state~=0 then
			if DF_config.iconbars[frames[num].useConfig].showSpiral==2 or DF_config.iconbars[frames[num].useConfig].showSpiral==3 then
	
				DF:icons_SetCooldown(num,0,0)
				frames[num].cooldownframe:Hide()
				
			end
		end
		
		frames[num].state = 0

	end
end


function DF:icons_pulse(num)
	frames[num].toPulse=true
end

-- enable/disable déplacement du cadre avec la souris
-- enable/disable frame moving with the mouse
function DF:icons_toogle_lock(flag)
	for i = 1,nbSpells do
		frames[i].frame:EnableMouse(flag)
	end
end

function DF:icons_reinit()
	DF:init_icons_frame()
	DF:icons_toogle_lock(DF.configmode)
	DF:options_setLevel()
end

function DF:icons_SetCooldown(numero,start,duration)
	frames[numero].cooldownframe:SetCooldown(start,duration)
end

function DF:icons_setLevel()
	local nbSpells = getn(DF_config.spells)
	local level
	local useConfig
	for i = 1,nbSpells do
		if frames[i].frame then
		
			if DF_config.spells[i].icon==0 then
				level = DF_config.iconbars[1].newLevel
			else

				if DF_config.spells[i].icon==3 or DF_config.spells[i].icon==4 then
					level = DF_config.spells[i].objectLevel
				else
					useConfig=DF_config.spells[i].icon
					level = DF_config.iconbars[useConfig].newLevel				
				end
			end
			
			DF:setMyFrameLevel(frames[i].frame,level+3,"icon")
			if DF_config.dotPower.bigdotsAbove then
				DF:setMyFrameLevel(frames[i].overlay,level+1)
				DF:setMyFrameLevel(frames[i].pointpa,level+2)
			else
				DF:setMyFrameLevel(frames[i].overlay,level+2)
				DF:setMyFrameLevel(frames[i].pointpa,level+1)
			end
			for te = 1,3 do
				DF:setMyFrameLevel(frames[i].pointbuff[te],level+3)
			end
		end
	end
end