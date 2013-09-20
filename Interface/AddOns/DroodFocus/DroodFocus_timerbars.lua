----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - timerbars
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local frames={}
local nbSpells = 0
local barsOrder = {
	{count=1,rang={}},
	{count=1,rang={}},
}
local barsValue = {}
local restant
local cd1=0
local dur1=0
local cd2=0
local dur2=0	
local rt1=0
local rt2=0

local frequency =1/60
local tempo=(frequency/15)*0

local txtScale
local objScale

-- initialisation frames
function DF:init_timerbars_frame()

	local useWidth
	local useHeight
	local level
	local anchorx
	local anchory
	
	nbSpells = getn(DF_config.spells)
	
	for i = 1,getn(frames) do
		
		if i>nbSpells then
			frames[i].frame:Hide()
		end
		
	end
	
	barsOrder[1].count=0
	barsOrder[2].count=0
	
	for i = 1,nbSpells do

		if not frames[i] then

			frames[i]={}
			frames[i].texts={}
			if DF_config.spells[i].timerbar==0 then
				frames[i].useConfig=1
			else
				frames[i].useConfig=DF_config.spells[i].timerbar
			end
			frames[i].state=0
			frames[i].alpha=1
			
			-- cadre principal
			frames[i].frame = CreateFrame("FRAME","DF_TIMERBAR_FRAME"..tostring(i),DF.anchor[3].frame)
			frames[i].frame:SetScript("OnMouseDown",function(self,button)
				if button=="LeftButton" then
  				if DF_config.spells[i].timerbar==3 or DF_config.spells[i].timerbar==4 then
		  			frames[i].frame:StartMoving()
		  		end
				elseif button=="RightButton" then
					DF:options_DebuffList_fakeClick(i)
	  			if IsControlKeyDown() then
		  			DF:options_show("DFspells",nil,true)
		  		else
		  			DF:options_timerBar_change(frames[i].useConfig)
	  				DF:options_show("DFtimerbar",frames[i].frame,true)
	  			end
	  		end
			end)
			frames[i].frame:SetScript("OnMouseUp",function(self,button)
				local anchorx
				local anchory
				if button=="LeftButton" and (DF_config.spells[i].timerbar==3 or DF_config.spells[i].timerbar==4) then
		  		frames[i].frame:StopMovingOrSizing()

		  		if DF_config.spells[i].timerbar==0 or DF_config.spells[i].timerbar==1 or DF_config.spells[i].timerbar==3 then
			  		anchorx=DF.anchor[3].frame:GetLeft()
			  		anchory=DF.anchor[3].frame:GetTop()		  		
			  	else
			  		anchorx=DF.anchor[4].frame:GetLeft()
			  		anchory=DF.anchor[4].frame:GetTop()					  		
			  	end	  		
		  		DF_config.spells[i].barpositionx=DF:alignToGridX(self:GetLeft()-anchorx)
		  		DF_config.spells[i].barpositiony=DF:alignToGridY(self:GetTop()-anchory)
		  		frames[i].frame:ClearAllPoints()
		  		if DF_config.spells[i].timerbar==0 or DF_config.spells[i].timerbar==1 or DF_config.spells[i].timerbar==3 then
		  			frames[i].frame:SetPoint("TOPLEFT", DF.anchor[3].frame, "TOPLEFT", DF_config.spells[i].barpositionx, DF_config.spells[i].barpositiony)
		  		else
		  			frames[i].frame:SetPoint("TOPLEFT", DF.anchor[4].frame, "TOPLEFT", DF_config.spells[i].barpositionx, DF_config.spells[i].barpositiony)
		  		end
		  		
				end			  		
			end)		
			frames[i].frame:SetScript("OnEnter",function(self,button)
				if DF.configmode then
					DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
					DF.DroodFGameTooltip:ClearLines()
					if DF_config.spells[i].timerbar<3 then
						DF.DroodFGameTooltip:AddLine("DROODFOCUS TIMERBAR (DOCK "..tostring(DF_config.spells[i].timerbar)..")",1,1,0,nil)
					else
						DF.DroodFGameTooltip:AddLine("DROODFOCUS FLOATING TIMERBAR (DOCK "..tostring(DF_config.spells[i].timerbar-2)..")",1,1,0,nil)
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
							
			-- cadre pour la texture
			frames[i].background = CreateFrame("StatusBar","DF_TIMERBAR_BACKGROUND"..tostring(i),frames[i].frame)
			frames[i].foreground = CreateFrame("StatusBar","DF_TIMERBAR_FOREGROUND"..tostring(i),frames[i].frame)
			frames[i].cooldown = CreateFrame("StatusBar","DF_TIMERBAR_COOLDOWN"..tostring(i),frames[i].frame)
			frames[i].spark =  CreateFrame("FRAME","DF_TIMERBAR_SPARK"..tostring(i),frames[i].foreground)
			
			for te = 1,2 do
				frames[i].texts[te] = frames[i].foreground:CreateFontString("DF_TIMERBAR"..tostring(i).."_TEXT"..te,"ARTWORK")
			end
			frames[i].frame:EnableMouse(false)
			frames[i].frameTexture=frames[i].frame:CreateTexture("DF_TIMERBAR_FRAME_TEXTURE"..tostring(i))
			frames[i].sparkTexture=frames[i].spark:CreateTexture("DF_TIMERBAR_SPARK_TEXTURE"..tostring(i))
		
			DF:luaCode_addRefs("Bar_Overlay_"..tostring(i),frames[i].frame)
		
		end
		
		objScale=1
		txtScale=1
		
		if DF_config.spells[i].timerbar==0 then
			frames[i].useConfig=1
		else
			frames[i].useConfig=DF_config.spells[i].timerbar
			if DF_config.spells[i].timerbar==3 then
				frames[i].useConfig=1
			end
			if DF_config.spells[i].timerbar==4 then
				frames[i].useConfig=2
			end				
		end

		if not DF_config.timerbars[1].newLevel then
			DF_config.timerbars[1].newLevel=DF_config.timerbars[1].level*10
		end
		if not DF_config.timerbars[2].newLevel then
			DF_config.timerbars[2].newLevel=DF_config.timerbars[2].level*10
		end
				
		level = DF:numbers5(DF_config.timerbars[frames[i].useConfig].newLevel)					

		if DF_config.spells[i].timerbar==3 or DF_config.spells[i].timerbar==4 then
			level = DF:numbers5(DF_config.spells[i].objectLevel)		
			objScale=DF_config.spells[i].objScale
			txtScale=DF_config.spells[i].txtScale		
		end

		barsOrder[frames[i].useConfig].count=barsOrder[frames[i].useConfig].count+1
		barsOrder[frames[i].useConfig].rang[barsOrder[frames[i].useConfig].count]=i

		-- attribution du cadre parent
		if DF_config.spells[i].timerbar==1 or DF_config.spells[i].timerbar==3 then
			frames[i].frame:SetParent(DF.anchor[3].frame)
		elseif DF_config.spells[i].timerbar==2 or DF_config.spells[i].timerbar==4 then
			frames[i].frame:SetParent(DF.anchor[4].frame)
		end

		useWidth = DF_config.timerbars[frames[i].useConfig].width
		useHeight = DF_config.timerbars[frames[i].useConfig].height

		-- paramétres cadre principal
				
		frames[i].frame:SetWidth(useWidth*objScale)
		frames[i].frame:SetHeight(useHeight*objScale)
		
		frames[i].frame:ClearAllPoints()
		
		if DF_config.spells[i].timerbar==1 then
			frames[i].frame:SetPoint("TOPLEFT", DF.anchor[3].frame, "TOPLEFT", 0, -16-((i-1)*useHeight))
			frames[i].frame:SetMovable(false)
		elseif DF_config.spells[i].timerbar==2 then
			frames[i].frame:SetPoint("TOPLEFT", DF.anchor[4].frame, "TOPLEFT", 0, -16-((i-1)*useHeight))
			frames[i].frame:SetMovable(false)
			elseif DF_config.spells[i].timerbar==3 then
			frames[i].frame:SetPoint("TOPLEFT", DF.anchor[3].frame, "TOPLEFT", DF_config.spells[i].barpositionx, DF_config.spells[i].barpositiony)
			frames[i].frame:SetMovable(true)
		elseif DF_config.spells[i].timerbar==4 then
			frames[i].frame:SetPoint("TOPLEFT", DF.anchor[4].frame, "TOPLEFT", DF_config.spells[i].barpositionx, DF_config.spells[i].barpositiony)
			frames[i].frame:SetMovable(true)
		end
		
		frames[i].frame:SetFrameLevel(level)
		
		if DF_config.timerbars[frames[i].useConfig].border then
			frames[i].frameTexture:ClearAllPoints()
			frames[i].frameTexture:SetAllPoints(frames[i].frame)
			frames[i].frameTexture:SetTexture(DF_config.timerbars[frames[i].useConfig].borderColor.r, DF_config.timerbars[frames[i].useConfig].borderColor.v, DF_config.timerbars[frames[i].useConfig].borderColor.b,DF_config.timerbars[frames[i].useConfig].borderColor.a)
			frames[i].frame.texture=frames[i].frameTexture
		else
			frames[i].frameTexture:ClearAllPoints()
			frames[i].frameTexture:SetAllPoints(frames[i].frame)
			frames[i].frameTexture:SetTexture(DF_config.timerbars[frames[i].useConfig].borderColor.r, DF_config.timerbars[frames[i].useConfig].borderColor.v, DF_config.timerbars[frames[i].useConfig].borderColor.b,0)
			frames[i].frame.texture=frames[i].frameTexture			
		end
		
		-- paramétres background
		frames[i].background:SetWidth((useWidth*objScale)-DF_config.timerbars[frames[i].useConfig].borderSize*2)
		frames[i].background:SetHeight((useHeight*objScale)-DF_config.timerbars[frames[i].useConfig].borderSize*2)
		frames[i].background:ClearAllPoints()
		frames[i].background:SetPoint("TOPLEFT", frames[i].frame, "TOPLEFT", DF_config.timerbars[frames[i].useConfig].borderSize, -DF_config.timerbars[frames[i].useConfig].borderSize)
		frames[i].background:SetStatusBarTexture(DF_config.timerbars[frames[i].useConfig].texturePath)
		frames[i].background:SetStatusBarColor(DF_config.spells[i].color.r/3, DF_config.spells[i].color.v/3, DF_config.spells[i].color.b/3, DF_config.spells[i].color.a)
		frames[i].background:SetOrientation("HORIZONTAL")
		frames[i].background:SetFrameLevel(level+2)
		
		-- paramétres foreground
		frames[i].foreground:SetWidth((useWidth*objScale)-DF_config.timerbars[frames[i].useConfig].borderSize*2)
		frames[i].foreground:SetHeight((useHeight*objScale)-DF_config.timerbars[frames[i].useConfig].borderSize*2)
		frames[i].foreground:ClearAllPoints()
		frames[i].foreground:SetPoint("TOPLEFT", frames[i].frame, "TOPLEFT", DF_config.timerbars[frames[i].useConfig].borderSize, -DF_config.timerbars[frames[i].useConfig].borderSize)
		frames[i].foreground:SetStatusBarTexture(DF_config.timerbars[frames[i].useConfig].texturePath)
		frames[i].foreground:SetStatusBarColor(DF_config.spells[i].color.r, DF_config.spells[i].color.v, DF_config.spells[i].color.b, DF_config.spells[i].color.a)
		frames[i].foreground:SetOrientation("HORIZONTAL")
		frames[i].foreground:SetMinMaxValues(0, 100)	
		frames[i].foreground:SetFrameLevel(level+3)

		-- paramétres cooldown
		frames[i].cooldown:SetWidth(((useWidth*objScale)-DF_config.timerbars[frames[i].useConfig].borderSize*2)-2)
		frames[i].cooldown:SetHeight(3*objScale)
		frames[i].cooldown:ClearAllPoints()
		frames[i].cooldown:SetPoint("BOTTOM", frames[i].foreground, "BOTTOM", DF_config.timerbars[frames[i].useConfig].cdoffsetx*objScale, DF_config.timerbars[frames[i].useConfig].cdoffsety*objScale)
		frames[i].cooldown:SetStatusBarTexture("Interface\\AddOns\\DroodFocus\\datas\\statusbar3.tga")
		frames[i].cooldown:SetStatusBarColor(DF_config.timerbars[frames[i].useConfig].cdColor.r, DF_config.timerbars[frames[i].useConfig].cdColor.v, DF_config.timerbars[frames[i].useConfig].cdColor.b, DF_config.timerbars[frames[i].useConfig].cdColor.a)
		frames[i].cooldown:SetOrientation("HORIZONTAL")
		frames[i].cooldown:SetMinMaxValues(0, 1)	
		frames[i].cooldown:SetFrameLevel(level+4)
		
		frames[i].spark:SetMovable(false)
		frames[i].spark:EnableMouse(false)		
		frames[i].spark:SetWidth(20)
		frames[i].spark:SetHeight((useHeight*objScale)*2.2)
		frames[i].spark:ClearAllPoints()
		frames[i].spark:SetPoint("LEFT", frames[i].foreground, "LEFT", 0, 0)

		frames[i].sparkTexture:ClearAllPoints()
		frames[i].sparkTexture:SetAllPoints(frames[i].spark)
		frames[i].sparkTexture:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark")
		frames[i].sparkTexture:SetBlendMode("ADD")
		frames[i].spark.texture=frames[i].sparkTexture		
		frames[i].spark:SetFrameLevel(level+5)
		
		-- paramétres textes
		DF:MySetFont(frames[i].texts[1],DF_config.timerbars[frames[i].useConfig].font1Path,DF_config.timerbars[frames[i].useConfig].font1Size*txtScale,"OUTLINE")
		DF:MySetFont(frames[i].texts[2],DF_config.timerbars[frames[i].useConfig].font2Path,DF_config.timerbars[frames[i].useConfig].font2Size*txtScale,"OUTLINE")
	
		for t = 1,2 do
			frames[i].texts[t]:SetShadowColor(0, 0, 0, 0.75)
			frames[i].texts[t]:SetShadowOffset(0.5, -0.5)
			frames[i].texts[t]:SetTextColor(DF_config.timerbars[frames[i].useConfig].textColor.r, DF_config.timerbars[frames[i].useConfig].textColor.v, DF_config.timerbars[frames[i].useConfig].textColor.b, DF_config.timerbars[frames[i].useConfig].textColor.a)
			frames[i].texts[t]:SetText("")
			frames[i].texts[t]:ClearAllPoints()
		end
	
		frames[i].texts[1]:SetPoint("LEFT", frames[i].foreground,"LEFT", DF_config.timerbars[frames[i].useConfig].textsoffsets[1].offsetx*objScale, DF_config.timerbars[frames[i].useConfig].textsoffsets[1].offsety*objScale)
		frames[i].texts[2]:SetPoint("RIGHT", frames[i].foreground,"RIGHT", DF_config.timerbars[frames[i].useConfig].textsoffsets[2].offsetx*objScale, DF_config.timerbars[frames[i].useConfig].textsoffsets[2].offsety*objScale)

		frames[i].texts[1]:SetText("SPELL")
		frames[i].texts[2]:SetText("88")

		if not DF_config.timerbar.enable or DF_config.spells[i].timerbar~=0 then
			frames[i].frame:Hide()
		else
			frames[i].frame:Show()
		end
	
		if not DF_config.timerbars[frames[i].useConfig].showSpark then
			frames[i].spark:Hide()
		else
			frames[i].spark:Show()
		end
		
	end
	
end

-- gestion de l'animation
function DF:timerbars_update(elapsed)
	
	if not DF_config.timerbar.enable or not DF:toggle_isEnable() then return end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0
		
	local mini=1
	local i
	local form = nil
	local currentForm = DF:currentForm()	
	local texte =""
	local cursor =0
	local sparckx=0
	local letsgo	
	local barsCounter=1
	local nbbars1
	local nbbars2
	local barsCounter1=1
	local barsCounter2=1
	local posy
	local nbBars = 0
	local num=0
	local numPrec=0
	local save =0
	local debutCD=nil
	local dureeCD=nil
	local largeur=0
	local hauteur=0
	local activeAlpha=0
	local inactiveAlpha=0
	local inactiveCd=0
	local temporaire
	local currentPower=0
	local debuffPower=0		
	local customTimeleft=nil
	local customCD=nil
	local customStack=nil	
	local targetID=UnitGUID("playertarget")			
	local customCDDuration=nil
	local customStack=nil
	local customDuration=nil
	
	nbSpells = getn(DF_config.spells)
	-- anime
	for i = 1,nbSpells do

		largeur = DF_config.timerbars[frames[i].useConfig].width-DF_config.timerbars[frames[i].useConfig].borderSize*2
		hauteur = DF_config.timerbars[frames[i].useConfig].height
		activeAlpha=DF_config.timerbars[frames[i].useConfig].activeAlpha
		inactiveAlpha=DF_config.timerbars[frames[i].useConfig].inactiveAlpha
		inactiveCd=DF_config.timerbars[frames[i].useConfig].activeAlphaCD
		
		form = DF_config.spells[i].form

		letsgo=true
		
		if DF_config.spells[i].timerbar==0 then
			letsgo=false
		elseif (DF:form_goofForm(form,currentForm)==false) then
			letsgo=false
		elseif (DF_config.spells[i].abiTalent~=0 and DF.activeTalent~=DF_config.spells[i].abiTalent) then
			letsgo=false
		end
	 	
		-- fin si pas bonne forme
		if letsgo then

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

			frames[i].frame:Show()

			if DF_config.timerbars[frames[i].useConfig].pointpa and not DF.works.spells[i].abiIsaBuff and DF:isPowerId(DF.works.spells[i].abiSpellIdForCD) then

				-- affiche l'état des buffs
				
				debuffPower=0
				if DF.abiBuffs[targetID] and customTimeleft>0 then
					debuffPower=DF.abiPowers[targetID][DF.works.spells[i].abiSpellIdForCD]
				end
				
				if debuffPower==nil then debuffPower=0 end
				
				currentPower=DF:getCurrentPower(DF.works.spells[i].abiSpellIdForCD)
				if currentPower==nil then currentPower=0 end

				if debuffPower~=0 then 
				
					local ratio = ((currentPower-debuffPower)/debuffPower)*100
					local limite=DF_config.dotPower.cap

					if ratio<0 then
						frames[i].foreground:SetStatusBarColor(DF_config.dotPower.redColor.r,DF_config.dotPower.redColor.v,DF_config.dotPower.redColor.b,DF_config.dotPower.redColor.a)
					elseif ratio>=0 and ratio<limite then
						frames[i].foreground:SetStatusBarColor(DF_config.dotPower.yellowColor.r,DF_config.dotPower.yellowColor.v,DF_config.dotPower.yellowColor.b,DF_config.dotPower.yellowColor.a)
					elseif ratio>=limite then
						frames[i].foreground:SetStatusBarColor(DF_config.dotPower.greenColor.r,DF_config.dotPower.greenColor.v,DF_config.dotPower.greenColor.b,DF_config.dotPower.greenColor.a)
					end
					
				end
			
			end

			if DF_config.spells[i].abiUserText=="" then
				texte = DF.works.spells[i].abiSpelltext
			else
				texte = DF_config.spells[i].abiUserText
			end
			
			if customStack>0 then
				texte=texte.." x"..DF:numbers(customStack)
			end			
		
			frames[i].texts[1]:SetText(texte)

			frames[i].alpha = frames[i].alpha - 0.025
			
			-- màj texte temps restant
			if customTimeleft>0 then
				
				if customTimeleft>100000 then
					frames[i].texts[2]:SetText("")
				else
					frames[i].texts[2]:SetText(DF:minutes(customTimeleft))
				end
				
				if frames[i].alpha<activeAlpha then
					frames[i].alpha=activeAlpha
				end
				
			else
				
				frames[i].texts[2]:SetText("")
				
				if customCD<=0 then
					if (DF_config.spells[i].abiRdyMode and customTimeleft<=0) then
						frames[i].texts[2]:SetText(DF_config.barsRDYtext)
						if frames[i].alpha<activeAlpha then
							frames[i].alpha=activeAlpha
						end				
					else
						if frames[i].alpha<inactiveAlpha then
							frames[i].alpha=inactiveAlpha
						end				
					end
			
				else
					frames[i].texts[2]:SetText(DF:minutes(customCD))
					if frames[i].alpha<inactiveCd then
						frames[i].alpha=inactiveCd
					end									
				end
			
			end
	
			if not DF.works.spells[i].abiActiveCond then
				frames[i].alpha=inactiveCd
			end
	
			if (DF.configmode) then 
				if frames[i].alpha<activeAlpha then
					frames[i].alpha=activeAlpha
				end				
			end

			if debutCD>0 and customCDDuration>0 and DF_config.spells[i].showcd then

				if customCD<=0 then
					frames[i].cooldown:Hide()
				else
					frames[i].cooldown:Show()					
					frames[i].cooldown:SetValue(customCD/customCDDuration)
				end	
				
			else
				
				frames[i].cooldown:Hide()
				frames[i].cooldown:SetValue(0)
				
			end			

			frames[i].frame:SetAlpha(frames[i].alpha)
			
			if (DF_config.timerbars[frames[i].useConfig].prop) then
				
				if customDuration==0 then
					
					if customTimeleft>100000 or (DF_config.spells[i].abiRdyMode and customCD<=0) then
						cursor=100
					else
						cursor=0
					end
					
				else
					
					cursor = (customTimeleft/customDuration)*100
					
				end
				
			else	

					if customTimeleft>100000 or (DF_config.spells[i].abiRdyMode and customCD<=0) then
						cursor=100
					else						
						if customTimeleft<=DF_config.timerbars[frames[i].useConfig].timeline then
							cursor = (((largeur/DF_config.timerbars[frames[i].useConfig].timeline)*customTimeleft)/largeur)*100
						else
							cursor=100
						end
					end
				
			end
			
			if (DF.configmode) then
				cursor=50
				frames[i].texts[2]:SetText("0:00")
				frames[i].cooldown:SetValue(0.75)
				frames[i].cooldown:Show()
			end
			
			frames[i].foreground:SetValue(cursor)	
							
			DF:timerbars_sparck(cursor,i)
			
		else
			
			frames[i].frame:Hide()
			
		end	
	end		
	
	-- classement barres par temps restant
	-- a chaque cycle les barres remonte si le temps est plus court
	
--DF_config.timerbars[1].stack[1] -- active
--DF_config.timerbars[1].stack[2] -- inactive
--DF_config.timerbars[1].stack[3] -- CD
--DF_config.timerbars[1].stack[4] -- RDY

	for i = 1,nbSpells do
		
		cd1,dur1=DF:cooldown_getCD(DF.works.spells[i].abiSpellIdForCD)
		rt1=(cd1+dur1)-DF.currentTime		

		customTimeleft=DF.works.spells[i].abiTimeLeft
		customCD=rt1

		if customCD<0 then customCD=0 end	
		temporaire = customTimeleft

		if temporaire>0 then
			-- active
				barsValue[i]=(DF_config.timerbars[frames[i].useConfig].stack[1].value*50000)+temporaire
		else
			--inactive
			if customCD>0 then
				-- sous cd
				barsValue[i]=(DF_config.timerbars[frames[i].useConfig].stack[3].value*50000)+customCD
			else
				-- inactive
				barsValue[i]=(DF_config.timerbars[frames[i].useConfig].stack[2].value*50000)
				if DF_config.spells[i].abiRdyMode then		
					barsValue[i]=(DF_config.timerbars[frames[i].useConfig].stack[4].value*50000)
				end						
			end
		end
			
	end

	for i = 1,2 do

		if DF_config.timerbars[i].orderByTime and barsOrder[i].count>1 then
	
			for j = 2,barsOrder[i].count do
			
				num = barsOrder[i].rang[j]
				numPrec = barsOrder[i].rang[j-1]	

				-- si temps i inférieur a temps i-1, on échange les places
				if barsValue[num]<barsValue[numPrec] then
					
					-- inverse
					barsOrder[i].rang[j]= numPrec
					 barsOrder[i].rang[j-1] = num
					
				end		
									
			end
		end
	end
		
	-- trouve le nb de barre
	nbbars1=0
	nbbars2=0
	for i = 1,nbSpells do
		
		form = DF_config.spells[i].form
		
		if DF_config.spells[i].timerbar~=0 and DF_config.spells[i].timerbar<3 and DF:form_goofForm(form,currentForm) and (DF_config.spells[i].abiTalent==0 or DF.activeTalent==DF_config.spells[i].abiTalent) then
			if DF_config.spells[i].timerbar==1 then
				nbbars1=nbbars1+1
			elseif DF_config.spells[i].timerbar==2 then
				nbbars2=nbbars2+1
			end
		end

	end
	nbbars1=nbbars1-1
	nbbars2=nbbars2-1

	if nbbars1<0 then nbbars1=0 end
	if nbbars2<0 then nbbars2=0 end
	
	-- replacement barres dans leur ancres respectives et a la bonne position
	barsCounter1=0
	barsCounter2=0

	for i = 1,2 do
	
		if barsOrder[i].count>0 then
			
			for j = 1,barsOrder[i].count do
				
				num = barsOrder[i].rang[j]
				form = DF_config.spells[num].form

				if DF_config.spells[num].timerbar~=0 and DF_config.spells[num].timerbar<3 and DF:form_goofForm(form,currentForm) and (DF_config.spells[num].abiTalent==0 or DF.activeTalent==DF_config.spells[num].abiTalent) then

					if DF_config.spells[num].timerbar==1 then
						
						-- replacement dans ancre 3
						frames[num].frame:ClearAllPoints()
						if DF_config.timerbars[frames[num].useConfig].stackup1==false then
							posy=-8-(barsCounter1*DF_config.timerbars[frames[num].useConfig].height)
						else
							posy=12+((nbbars1-barsCounter1)*DF_config.timerbars[frames[num].useConfig].height)
						end	
						frames[num].frame:SetPoint("TOPLEFT", DF.anchor[3].frame, "TOPLEFT", 8,posy )
						barsCounter1=barsCounter1+1
						
					elseif DF_config.spells[num].timerbar==2 then
			
						-- replacement dans ancre 4
						frames[num].frame:ClearAllPoints()
						if DF_config.timerbars[frames[num].useConfig].stackup1==false then
							posy=-8-(barsCounter2*DF_config.timerbars[frames[num].useConfig].height)
						else
							posy=12+((nbbars2-barsCounter2)*DF_config.timerbars[frames[num].useConfig].height)
						end	
						frames[num].frame:SetPoint("TOPLEFT", DF.anchor[4].frame, "TOPLEFT", 8, posy)
						barsCounter2=barsCounter2+1
						
					end
				
				end	
				
			end
			
		end
		
	end


end

function DF:timerbars_sparck(cursor,num)
	local largeur=DF_config.timerbars[frames[num].useConfig].width-(DF_config.timerbars[frames[num].useConfig].borderSize*2)
	largeur=largeur*DF_config.spells[num].objScale
	if cursor>0 and cursor<100 and DF_config.timerbars[frames[num].useConfig].showSpark then
		local sparckx=((cursor/100)*largeur)-10
		frames[num].spark:SetPoint("LEFT", frames[num].foreground, "LEFT", sparckx, 0)
		frames[num].spark:Show()
	else
		frames[num].spark:Hide()
	end
end

-- enable/disable déplacement du cadre avec la souris
function DF:timerbars_toogle_lock(flag)
	nbSpells = getn(DF_config.spells)
	for i = 1,nbSpells do
		frames[i].frame:EnableMouse(flag)
	end
	
end

function DF:timerbar_reinit()
	
	DF:init_timerbars_frame()
	DF:timerbars_toogle_lock(DF.configmode)
	DF:options_setLevel()
end

function DF:timerbar_setLevel()
	local nbSpells = getn(DF_config.spells)
	local useConfig
	local level
	for i = 1,nbSpells do
		if frames[i] then
		
			if DF_config.spells[i].timerbar==0 then
				level = DF_config.timerbars[1].newLevel
			else

				if DF_config.spells[i].timerbar==3 or DF_config.spells[i].timerbar==4 then
					level = DF:numbers5(DF_config.spells[i].objectLevel)	
				else
					useConfig=DF_config.spells[i].timerbar
					level = DF_config.timerbars[useConfig].newLevel				
				end
			end			
			DF:setMyFrameLevel(frames[i].frame,level,"timerbars")
			DF:setMyFrameLevel(frames[i].background,level+1)
			DF:setMyFrameLevel(frames[i].foreground,level+2)
			DF:setMyFrameLevel(frames[i].cooldown,level+3)
			DF:setMyFrameLevel(frames[i].spark,level+4)
		end
	end
end