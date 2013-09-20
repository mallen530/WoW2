----------------------------------------------------------------------------------------------------
-- DroodFocus 4.0.0 - FX
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1 
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local fxcurrentForm=0
local doit = false
local _

local frequency =1/60
local tempo=(frequency/15)*1

local blocsTextures ={
	"Interface\\AddOns\\DroodFocus\\datas\\R0",
	"Interface\\AddOns\\DroodFocus\\datas\\R1",
	"Interface\\AddOns\\DroodFocus\\datas\\R2",
	"Interface\\AddOns\\DroodFocus\\datas\\R3",
	"Interface\\AddOns\\DroodFocus\\datas\\R4",
	"Interface\\AddOns\\DroodFocus\\datas\\R5",
	"Interface\\AddOns\\DroodFocus\\datas\\R6",
	"Interface\\AddOns\\DroodFocus\\datas\\R7",
	"Interface\\AddOns\\DroodFocus\\datas\\R8",
}

local state={}
local scale={}
local posx={}
local posy={}
local fwidth={}
local fheight={}
local alpha={}
local degree={}
local pointeur={}
local pulseX={}
local pulseY={}
local pulseZ={}

local chackerx={}
local chackery={}
local decalx={}
local decaly={}

local frames={}
local frameTexture={}
local overlay={}
local overlayScale={}
local frametimer={}
local overlayTexture={}

local angle=nil
local rsin = nil
local rcos = nil
local inc_alpha, inc_posx, inc_posy,inc_width, inc_height, inc_scale, inc_pulseZ, inc_pulseX, inc_pulseY, inc_chakerx, inc_chakery, randomn = 0

function DF:hide_ooc_frame()
	local nbSpells = getn(DF_config.spells)
	for i = 1,nbSpells do
		DF_config.spells[i].FX_enable=false
		frames[i]:EnableMouse(false)
		frames[i]:Hide()
	end
			    
end

-- initialisation frames
function DF:init_ooc_frame()

	local anchorx	
	local anchory
	local itsok	
	
	local nbSpells = getn(DF_config.spells)
	
	for i = 1,nbSpells do

		state[i]=0

		scale[i]=1
		posx[i]=0
		posy[i]=0
		alpha[i]=0
		degree[i]=DF_config.spells[i].FX_angle
		pulseX[i]=0
		pulseY[i]=0
		pulseZ[i]=0
		pointeur[i]=0
		decalx[i]=0
		decaly[i]=0
		chackerx[i]=0
		chackery[i]=0
		
		if not frames[i] then
			
			-- cadre principal
			frames[i] = CreateFrame("FRAME","DF_FX_FRAME"..tostring(i),DF.anchor[1].frame)
			frames[i]:SetScript("OnMouseDown",function(self,button)
				if button=="LeftButton" then
		  			frames[i]:StartMoving()
		  		elseif button=="RightButton" then
		  			DF:options_DebuffList_fakeClick(i)
		  			if IsControlKeyDown() then
			  			DF:options_show("DFspells",nil,true)
			  		else
			  			DF:options_show("DFfxwindow",nil,true)
			  		end
		  		end
			end)
			frames[i]:SetScript("OnMouseUp",function(self,button)
				if button=="LeftButton" then
			  		frames[i]:StopMovingOrSizing()
			  		local anchorx=DF.anchor[1].frame:GetLeft()
			  		local anchory=DF.anchor[1].frame:GetTop()		  		
			  		DF_config.spells[i].FX_positionx = DF:alignToGridX(self:GetLeft()-anchorx)
			  		DF_config.spells[i].FX_positiony = DF:alignToGridX(self:GetTop()-anchory)
			  		frames[i]:ClearAllPoints()
			  		frames[i]:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.spells[i].FX_positionx, DF_config.spells[i].FX_positiony)
			  end
			end)	
			frames[i]:SetScript("OnEnter",function(self,button)
				if DF.configmode then
					DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
					DF.DroodFGameTooltip:ClearLines()
					DF.DroodFGameTooltip:AddLine("DROODFOCUS FX",1,1,0,nil)
					local chaine=DF.works.spells[i].names[1]
					if DF_config.spells[i].abiUserText~="" then
						chaine=DF_config.spells[i].abiUserText
					end
					DF.DroodFGameTooltip:AddLine("["..tostring(i).."] "..chaine,1,1,1,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["leftMB"],1,1,1,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["ctrlrightMB"],1,1,1,nil)
					DF.DroodFGameTooltip:Show()		
				end		
			end)		
			frames[i]:SetScript("OnLeave",function(self,button)
				if DF.configmode then DF.DroodFGameTooltip:Hide() end
			end)	
			
			-- cadre pour la texture
			overlay[i] = CreateFrame("FRAME","DF_FX_OVERLAY"..tostring(i),frames[i])
			overlayScale[i] = CreateFrame("FRAME","DF_FX_OVERLAY_SCALE"..tostring(i),overlay[i])
			
			-- la texture
			overlayTexture[i] = overlayScale[i]:CreateTexture("DF_FX_OVERLAY_TEXTURE"..tostring(i),"BACKGROUND")
			frameTexture[i] = frames[i]:CreateTexture("DF_FX_FRAME_TEXTURE"..tostring(i),"BACKGROUND")

			frametimer[i]={}
			frametimer[i].base = CreateFrame("FRAME","DF_FX_OVERLAY_TIMER1_"..tostring(i),overlay[i])
			frametimer[i].quart={}

			for q = 1,4 do
				frametimer[i].quart[q]={}
				frametimer[i].quart[q].base = CreateFrame("FRAME","DF_FX_OVERLAY_TIMER_"..tostring(i).."_Q"..tostring(q),frametimer[i].base)
				frametimer[i].quart[q].latexture = frametimer[i].base:CreateTexture("DF_OOC_OVERLAYTIMER_"..tostring(i).."_Q"..tostring(q).."texture","BACKGROUND")
			end

			frames[i].text = overlay[i]:CreateFontString("DF_FX_TEXT"..tostring(i),"ARTWORK")
    		
		end

		if not DF_config.spells[i].objectLevel then
			DF_config.spells[i].objectLevel=100
		end
		local level = DF:numbers5(DF_config.spells[i].objectLevel)
	
		-- paramétres cadre principal
		frames[i]:EnableMouse(false)	
		frames[i]:SetMovable(true)
		frames[i]:SetWidth(64)
		frames[i]:SetHeight(64)
		frames[i]:ClearAllPoints()
		frames[i]:SetPoint("TOPLEFT", DF.anchor[1].frame, "TOPLEFT", DF_config.spells[i].FX_positionx, DF_config.spells[i].FX_positiony)
		frames[i]:SetFrameLevel(level+3)	

		-- paramétres texture
		frameTexture[i]:SetTexCoord(0, 1, 0, 1)
		frameTexture[i]:ClearAllPoints()
		frameTexture[i]:SetAllPoints(frames[i])
	
		frameTexture[i]:SetTexture(1,1,1,0)
			
		-- paramétres cadre texture
		overlay[i]:SetMovable(false)
		overlay[i]:EnableMouse(false)		
		overlay[i]:SetWidth(DF_config.spells[i].FX_width)
		overlay[i]:SetHeight(DF_config.spells[i].FX_height)
		overlay[i]:ClearAllPoints()
		overlay[i]:SetPoint("CENTER", frames[i], "CENTER", 0, 0)
		overlay[i]:SetFrameLevel(level+2)	
		overlay[i]:SetAlpha(1)

		overlayScale[i]:SetMovable(false)
		overlayScale[i]:EnableMouse(false)		
		overlayScale[i]:SetWidth(DF_config.spells[i].FX_width)
		overlayScale[i]:SetHeight(DF_config.spells[i].FX_height)
		overlayScale[i]:ClearAllPoints()
		overlayScale[i]:SetPoint("CENTER", overlay[i], "CENTER", 0, 0)
		if DF_config.spells[i].FX_timerabove then
			overlayScale[i]:SetFrameLevel(level)	
		else
			overlayScale[i]:SetFrameLevel(level+1)	
		end
		overlayScale[i]:SetAlpha(1)
		
		-- paramétres texture
		overlayTexture[i]:SetTexCoord(0, 1, 0, 1)
		overlayTexture[i]:SetWidth(128)
		overlayTexture[i]:SetHeight(128)
		overlayTexture[i]:SetBlendMode(DF_config.spells[i].FX_mode)
		overlayTexture[i]:ClearAllPoints()
		overlayTexture[i]:SetAllPoints(overlayScale[i])
		
		overlayTexture[i]:SetTexture(DF_config.spells[i].FX_texture)
		
		-- place la texture dans le cadre / place the texture in the frame
		overlayScale[i].texture = overlayTexture[i]
		
		--timer
		frametimer[i].base:SetMovable(false)
		frametimer[i].base:EnableMouse(false)		
		frametimer[i].base:SetWidth(256)
		frametimer[i].base:SetHeight(256)
		frametimer[i].base:ClearAllPoints()
		frametimer[i].base:SetPoint("CENTER", overlay[i], "CENTER", DF_config.spells[i].FX_timerposx, DF_config.spells[i].FX_timerposy)
		if DF_config.spells[i].FX_timerabove then
			frametimer[i].base:SetFrameLevel(level+1)	
		else
			frametimer[i].base:SetFrameLevel(level)	
		end
		if DF_config.spells[i].FX_timeralpha<0 then
			DF_config.spells[i].FX_timeralpha=0
		end		
		frametimer[i].base:SetAlpha(DF_config.spells[i].FX_timeralpha)	
		if DF_config.spells[i].FX_timerscale<0.01 then
			DF_config.spells[i].FX_timerscale=0.01
		end
		frametimer[i].base:SetScale(DF_config.spells[i].FX_timerscale)			

		frametimer[i].fxalpha=0

		for q = 1,4 do
			
			-- cadre / frame
			frametimer[i].quart[q].base:SetMovable(false)
			frametimer[i].quart[q].base:EnableMouse(false)		
			frametimer[i].quart[q].base:SetWidth(128)
			frametimer[i].quart[q].base:SetHeight(128)
			frametimer[i].quart[q].base:ClearAllPoints()
			
			if q==1 then
				frametimer[i].quart[q].base:SetPoint("BOTTOMRIGHT", frametimer[i].base, "CENTER", 24.25, -24.25)
			elseif q==2 then
				frametimer[i].quart[q].base:SetPoint("TOPRIGHT", frametimer[i].base, "CENTER", 24.25, 24.25)
			elseif q==3 then
				frametimer[i].quart[q].base:SetPoint("TOPLEFT", frametimer[i].base, "CENTER", -24.25, 24.25)
			elseif q==4 then
				frametimer[i].quart[q].base:SetPoint("BOTTOMLEFT", frametimer[i].base, "CENTER", -24.25, -24.25)
			end

			frametimer[i].quart[q].latexture:SetWidth(128)
			frametimer[i].quart[q].latexture:SetHeight(128)
			frametimer[i].quart[q].latexture:SetBlendMode("BLEND")
			frametimer[i].quart[q].latexture:SetTexCoord(0, 1, 0, 1)			
			frametimer[i].quart[q].latexture:ClearAllPoints()
			frametimer[i].quart[q].latexture:SetAllPoints(frametimer[i].quart[q].base)
			frametimer[i].quart[q].latexture:SetTexture(nil)
			
			-- place la texture dans le cadre / place the texture in the framework
			frametimer[i].quart[q].base.texture = frametimer[i].quart[q].latexture
	
		end

		DF:RotateTexture(frametimer[i].quart[1].latexture,0)
		DF:RotateTexture(frametimer[i].quart[2].latexture,90)
		DF:RotateTexture(frametimer[i].quart[3].latexture,180)
		DF:RotateTexture(frametimer[i].quart[4].latexture,270)

		DF:MySetFont(frames[i].text,DF_config.spells[i].FX_fontPath,DF_config.spells[i].FX_textsize,"OUTLINE")
		--frames[i].text:SetShadowColor(0, 0, 0, 0.75)
		--frames[i].text:SetShadowOffset(0.5, -0.5)
		frames[i].text:SetWidth(64)
		frames[i].text:SetHeight(32)			
		frames[i].text:SetTextColor(DF_config.spells[i].FX_textColor.r, DF_config.spells[i].FX_textColor.v, DF_config.spells[i].FX_textColor.b, DF_config.spells[i].FX_textColor.a)
		frames[i].text:SetText("")

		frames[i].text:SetJustifyH('CENTER')
		frames[i].text:SetJustifyV('MIDDLE')
		
		if string.find(DF_config.spells[i].FX_textalign, "TOP") then
			frames[i].text:SetJustifyV('TOP')
		end
		if string.find(DF_config.spells[i].FX_textalign, "BOTTOM") then
			frames[i].text:SetJustifyV('BOTTOM')
		end			
		if string.find(DF_config.spells[i].FX_textalign, "LEFT") then
			frames[i].text:SetJustifyH('LEFT')
		end			
		if string.find(DF_config.spells[i].FX_textalign, "RIGHT") then
			frames[i].text:SetJustifyH('RIGHT')
		end		
		frames[i].text:ClearAllPoints()
		
		frames[i].text:SetPoint(DF_config.spells[i].FX_textalign, overlay[i],DF_config.spells[i].FX_textalign, DF_config.spells[i].FX_textoffsetx, DF_config.spells[i].FX_textoffsety)

		if DF_config.spells[i].FX_enable==true then
			frames[i]:Show()
		else
			frames[i]:Hide()
		end

		if i>nbSpells then
			frames[i]:Hide()
			frames[i]:EnableMouse(false)	
		end

	end

	if DF.lock then
		itsok=false
	else
		itsok=true
	end
	DF:ooc_toogle_lock(itsok)
	
end

-- gestion de l'animation / animation management
function DF:ooc_update(elapsed)
	
	if not DF:toggle_isEnable() then return end

	local nbSpells = getn(DF_config.spells)
	
	for i = 1,nbSpells do

		if DF_config.spells[i].FX_enable==true then
		
			frames[i]:Show()
			
			if (DF.configmode) then
				frameTexture[i]:SetTexture(1,1,1,0.25)
			else
				frameTexture[i]:SetTexture(1,1,1,0)
			end
			
			if not DF.works.spells[i].abiActiveCond then
				DF.works.spells[i].abiFake=0
			end

			if DF.works.spells[i].abiFXtest>0 then
			
				DF.works.spells[i].abiFake=DF.works.spells[i].abiFXtest
				
				DF.works.spells[i].abiFXtest=DF.works.spells[i].abiFXtest-elapsed
				
				if DF.works.spells[i].abiFXtest<0 then
					DF.works.spells[i].abiFXtest=0
				end
				
			end
						
			if DF:FX_do_anim(i,elapsed) then
				
				if scale[i]<0.01 then
					scale[i]=0.01
				end
				
				overlayScale[i]:SetScale(scale[i])
				overlayScale[i]:SetAlpha(alpha[i])	
				overlay[i]:ClearAllPoints()
				overlay[i]:SetPoint("CENTER", frames[i], "CENTER", posx[i], posy[i])

				overlayScale[i]:ClearAllPoints()
				overlayScale[i]:SetPoint("CENTER", overlay[i], "CENTER",  decalx[i]+chackerx[i], decaly[i]+chackery[i])
				
				overlayScale[i]:SetWidth(fwidth[i]*DF_config.spells[i].FX_width)
				overlayScale[i]:SetHeight(fheight[i]*DF_config.spells[i].FX_height)
			
				local fxtemps=DF.works.spells[i].abiTimeLeft
				local fxduree=DF.works.spells[i].abiDuration
				local ratio=1
							
				if DF_config.spells[i].FX_progressTexture~=0 and not DF.configmode then
					
					if fxtemps~=nil and fxduree~=nil and fxtemps>=0 and fxtemps<100000 and fxtemps<=fxduree and fxduree>0 then
						ratio=1-(fxtemps/fxduree)
					end

					DF:progressTexture(overlayTexture[i],overlayScale[i],overlay[i],DF_config.spells[i].FX_progressTexture,ratio,DF_config.spells[i].FX_progressTextureFill)
				
				end
			
				if fxtemps==0 then
					if DF.works.spells[i].abiFake>0 then
						fxtemps=DF.works.spells[i].abiFake
						fxduree=6
					else
						fxtemps=0
						fxduree=6					
					end
				end
			
				if fxtemps>0 then
					
					if DF_config.spells[i].FX_timerenable then
						DF:fx_drawTimer(i,fxtemps,fxduree,false)
						frametimer[i].fxalpha=frametimer[i].fxalpha+0.2
						if frametimer[i].fxalpha>DF_config.spells[i].FX_timeralpha then
							frametimer[i].fxalpha=DF_config.spells[i].FX_timeralpha
						end
						frametimer[i].base:SetAlpha(frametimer[i].fxalpha)
						frametimer[i].base:Show()
					end
					
					if DF_config.spells[i].FX_textenabled then

						if fxtemps>100000 then
							frames[i].text:SetText("")
						else
							frames[i].text:SetText(DF:minutes(fxtemps,true))
						end
					else
						frames[i].text:SetText("")
					end
					
				else
					
					DF:fx_drawTimer(i,0,0,true)
					
					frametimer[i].fxalpha=frametimer[i].fxalpha-0.2
					if frametimer[i].fxalpha<0 then
						frametimer[i].fxalpha=0
						frametimer[i].base:Hide()
					end
					frametimer[i].base:SetAlpha(frametimer[i].fxalpha)
					frames[i].text:SetText("")
				end
				
				overlay[i]:Show()
	
			else

				DF:fx_drawTimer(i,0,0,true)
				
				if (DF.configmode) then
					
					if DF_config.spells[i].FX_middle_scale>0 then
						overlayScale[i]:SetScale(DF_config.spells[i].FX_middle_scale)
					end
					if DF_config.spells[i].FX_timerenable then
						frametimer[i].base:Show()
					else
						frametimer[i].base:Hide()
					end
					overlayScale[i]:SetAlpha(DF_config.spells[i].FX_middle_alpha)
					
					DF:progressTexture(overlayTexture[i],overlayScale[i],overlay[i],1,1,1)

					if degree[i]~=0 or DF_config.spells[i].FX_rotatespeed~=0 then
						DF:RotateTexture(overlayTexture[i],degree[i])
					end
										
					frametimer[i].base:SetAlpha(DF_config.spells[i].FX_timeralpha)
					overlay[i]:ClearAllPoints()
					posx[i]=DF_config.spells[i].FX_middle_posx
					posy[i]=DF_config.spells[i].FX_middle_posy
					decalx[i]=0
					chackerx[i]=0
					decaly[i]=0
					chackery[i]=0					
					overlay[i]:SetPoint("CENTER", frames[i], "CENTER", posx[i], posy[i])
					if scale[i]<0.01 then
						scale[i]=0.01
					end
					overlayScale[i]:ClearAllPoints()
					overlayScale[i]:SetWidth(DF_config.spells[i].FX_middle_width*DF_config.spells[i].FX_width)
					overlayScale[i]:SetHeight(DF_config.spells[i].FX_middle_height*DF_config.spells[i].FX_height)					
					overlayScale[i]:SetPoint("CENTER", overlay[i], "CENTER",  decalx[i]+chackerx[i], decaly[i]+chackery[i])

					if DF_config.spells[i].FX_textenabled then
						frames[i].text:SetText("8:88")
					end
					
					overlay[i]:Show()
				else

					frametimer[i].fxalpha=frametimer[i].fxalpha-0.2
					if frametimer[i].fxalpha<0 then
						frametimer[i].fxalpha=0
						frametimer[i].base:Hide()
						overlay[i]:Hide()
					end
					frametimer[i].base:SetAlpha(frametimer[i].fxalpha)
					frames[i].text:SetText("")
				end
				
			end	
			
		else	
			
			frames[i]:Hide()
			
		end		
		
	end	
	
end

-- Animation
function DF:FX_do_anim(num,elapsed)

	local ratio
	local fxtemps
	local fxduree

	local customTimeleft=nil
	local customCD=nil
	local customStack=nil	
	local customCDDuration=nil
	local customStack=nil
	local customDuration=nil
	
	if DF.works.spells[num].abiFake>0 then
		DF.works.spells[num].abiFake=DF.works.spells[num].abiFake-elapsed
		if DF.works.spells[num].abiFake<0 then
			DF.works.spells[num].abiFake=0
		end
	end
	
	local form = DF_config.spells[num].form
	local fxcurrentForm = DF:currentForm()
	
	doit=false

	if DF.works.spells[num].abiFake>0 then
		doit=true
	end

	local debutCD,dureeCD=DF:cooldown_getCD(DF.works.spells[num].abiSpellIdForCD)
	local restant = (debutCD+dureeCD)-DF.currentTime
	if restant<0 then
		restant=0
	end

	customTimeleft=DF.works.spells[num].abiTimeLeft
	customDuration=DF.works.spells[num].abiDuration
	customCD=restant
	customCDDuration=dureeCD
	customStack=DF.works.spells[num].abiStack

	if (DF:form_goofForm(form,fxcurrentForm) and (DF_config.spells[num].abiTalent==0 or DF.activeTalent==DF_config.spells[num].abiTalent)) then
		
		if DF_config.spells[num].FX_OffMode==1 then
			
			if customTimeleft>0 then
				doit=true
			end
			
		elseif DF_config.spells[num].FX_OffMode==2 then

			if customTimeleft==0 then
				doit=true
			end
			
		elseif DF_config.spells[num].FX_OffMode==3 then

			if customTimeleft>0 and DF.haveTarget then
				doit=true
			end
			
		elseif DF_config.spells[num].FX_OffMode==4 then

			if customTimeleft==0 and DF.haveTarget then
				doit=true
			end			
			
		elseif DF_config.spells[num].FX_OffMode==5 then
		
			if customCD==0 then
				doit=true
			end	
			
		elseif DF_config.spells[num].FX_OffMode==6 then
		
			if customCD>0 then
				doit=true
			end	
			
		elseif DF_config.spells[num].FX_OffMode==7 then
		
				doit=true
			
		else
			
			doit=false
				
		end
		
	else
		
		doit=false
		
	end

	if not DF.works.spells[num].abiActiveCond then
		doit=false
	end

 	if DF.works.spells[num].abiFXtest>0 then
 			doit=true
	end

	if doit then
		
	    if state[num]==0 then -- initialisation des positions
	    	
		    posx[num] = DF_config.spells[num].FX_start_posx
		    posy[num] = DF_config.spells[num].FX_start_posy
		    scale[num] = DF_config.spells[num].FX_start_scale
		    alpha[num] = DF_config.spells[num].FX_start_alpha
		    degree[num] = DF_config.spells[num].FX_angle
		    pointeur[num]=0
		    state[num] = 1
		    frametimer[num].fxalpha=0
		    if degree[num]~=0 or DF_config.spells[num].FX_rotatespeed~=0 then
					DF:RotateTexture(overlayTexture[num],degree[num])
				end
		  	
	    end
	
	else
		
		if state[num]==1 then
			state[num] = 2
		end
		
	end

	if state[num]==1 or state[num]==2 then
		
		if DF_config.spells[num].FX_rotatespeed~=0 then
			DF:RotateTexture(overlayTexture[num],degree[num])
			degree[num]=(degree[num]-DF_config.spells[num].FX_rotatespeed) % 360
		end
		
		if DF_config.spells[num].FX_pulsespeedX>0 then
			angle = math.rad(pulseX[num]);
			inc_pulseX=(DF_config.spells[num].FX_pulsepowerX)*math.cos(angle)
			pulseX[num]=pulseX[num]+DF_config.spells[num].FX_pulsespeedX
		else
			inc_pulseX=0
		end
		if DF_config.spells[num].FX_pulsespeedY>0 then
			angle = math.rad(pulseY[num]);
			inc_pulseY=(DF_config.spells[num].FX_pulsepowerY)*math.sin(angle)
			pulseY[num]=pulseY[num]+DF_config.spells[num].FX_pulsespeedY
		else
			inc_pulseY=0
		end		
		if DF_config.spells[num].FX_pulsespeedZ>0 then
			angle = math.rad(pulseZ[num]);
			inc_pulseZ=(DF_config.spells[num].FX_pulsepowerZ/10)*math.cos(angle)
			pulseZ[num]=pulseZ[num]+DF_config.spells[num].FX_pulsespeedZ
		else
			inc_pulseZ=0
		end

		if DF_config.spells[num].FX_chakerpower>0 then
			randomn=math.random()*DF_config.spells[num].FX_chakerpower
			chackerx[num]= randomn-(DF_config.spells[num].FX_chakerpower/2)
			randomn=math.random()*DF_config.spells[num].FX_chakerpower
			chackery[num]=randomn-(DF_config.spells[num].FX_chakerpower/2)
		else
			chackerx[num]=0
			chackery[num]=0
		end
	
	end
	
	if state[num]==1 then

		inc_alpha = (DF_config.spells[num].FX_middle_alpha-DF_config.spells[num].FX_start_alpha)/500
		inc_posx = (DF_config.spells[num].FX_middle_posx-DF_config.spells[num].FX_start_posx)/500
		inc_posy = (DF_config.spells[num].FX_middle_posy-DF_config.spells[num].FX_start_posy)/500
		inc_scale = (DF_config.spells[num].FX_middle_scale-DF_config.spells[num].FX_start_scale)/500
		inc_width = (DF_config.spells[num].FX_middle_width-DF_config.spells[num].FX_start_width)/500
		inc_height = (DF_config.spells[num].FX_middle_height-DF_config.spells[num].FX_start_height)/500

		posx[num]=DF_config.spells[num].FX_start_posx+(inc_posx*pointeur[num])
		posy[num]=DF_config.spells[num].FX_start_posy+(inc_posy*pointeur[num])
		fwidth[num]=DF_config.spells[num].FX_start_width+(inc_width*pointeur[num])
		fheight[num]=DF_config.spells[num].FX_start_height+(inc_height*pointeur[num])		
		scale[num]=DF_config.spells[num].FX_start_scale+(inc_scale*pointeur[num])+inc_pulseZ
		alpha[num]=DF_config.spells[num].FX_start_alpha+(inc_alpha*pointeur[num])
		
		decalx[num]=inc_pulseX
		decaly[num]=inc_pulseY
		
		pointeur[num]=pointeur[num]+DF_config.spells[num].FX_speed
		if pointeur[num]>500 then
			pointeur[num]=500
		end
		
		return true
		
	elseif state[num]==2 then

		inc_alpha = (DF_config.spells[num].FX_end_alpha-DF_config.spells[num].FX_middle_alpha)/500
		inc_posx = ((DF_config.spells[num].FX_end_posx-DF_config.spells[num].FX_middle_posx)/500)
		inc_posy = ((DF_config.spells[num].FX_end_posy-DF_config.spells[num].FX_middle_posy)/500)
		inc_scale = (DF_config.spells[num].FX_end_scale-DF_config.spells[num].FX_middle_scale)/500
		inc_width = ((DF_config.spells[num].FX_end_width-DF_config.spells[num].FX_middle_width)/500)
		inc_height = ((DF_config.spells[num].FX_end_height-DF_config.spells[num].FX_middle_height)/500)

		posx[num]=DF_config.spells[num].FX_middle_posx+(inc_posx*(pointeur[num]-500))
		posy[num]=DF_config.spells[num].FX_middle_posy+(inc_posy*(pointeur[num]-500))
		fwidth[num]=DF_config.spells[num].FX_middle_width+(inc_width*(pointeur[num]-500))
		fheight[num]=DF_config.spells[num].FX_middle_height+(inc_height*(pointeur[num]-500))

		scale[num]=DF_config.spells[num].FX_middle_scale+(inc_scale*(pointeur[num]-500))+inc_pulseZ
		alpha[num]=DF_config.spells[num].FX_middle_alpha+(inc_alpha*(pointeur[num]-500))

		decalx[num]=inc_pulseX
		decaly[num]=inc_pulseY
		
		pointeur[num]=pointeur[num]+DF_config.spells[num].FX_speed
		if pointeur[num]>1000 then
			pointeur[num]=1000
			state[num]=0
	    posx[num] = DF_config.spells[num].FX_middle_posx
	    posy[num] = DF_config.spells[num].FX_middle_posy
	    fwidth[num] = DF_config.spells[num].FX_middle_width
	    fheight[num] = DF_config.spells[num].FX_middle_height    
	    scale[num] = DF_config.spells[num].FX_middle_scale
	    alpha[num] = DF_config.spells[num].FX_middle_alpha
	    degree[num] = DF_config.spells[num].FX_angle
	    pointeur[num]=0
			if degree[num]~=0 or DF_config.spells[num].FX_rotatespeed~=0 then
				DF:RotateTexture(overlayTexture[num],degree[num])
			end
			return false
		end
		
		return true
		
	end
	
	return false
	
end

-- enable/disable déplacement du cadre avec la souris
function DF:ooc_toogle_lock(flag)
	
	local nbSpells = getn(DF_config.spells)
	
	for i = 1,nbSpells do
		frames[i]:EnableMouse(flag)
	end
	
end

function DF:ooc_reinit()
	DF:init_ooc_frame()	
	DF:ooc_toogle_lock(DF.configmode)
	DF:options_setLevel()
end

function DF:fx_drawTimer(fxnum,tempRestant,tempTotal,zero)

	local small
	
	if DF_config.spells[fxnum].FX_timersmall then
		small="small"
	else
		small=""
	end


	if zero==true or tempRestant<=0 then
	
		-- tous vides	
		frametimer[fxnum].quart[1].latexture:SetTexture(blocsTextures[9]..small)
		frametimer[fxnum].quart[2].latexture:SetTexture(blocsTextures[9]..small)
		frametimer[fxnum].quart[3].latexture:SetTexture(blocsTextures[9]..small)
		frametimer[fxnum].quart[4].latexture:SetTexture(blocsTextures[9]..small)
		return
	end
	
	local blocs =math.floor(((tempTotal-tempRestant)/tempTotal)*32)

	if blocs>=0 and blocs<8 then
		-- calcule quart 1
		frametimer[fxnum].quart[1].latexture:SetTexture(blocsTextures[blocs+1]..small)

		-- quart 2,3 et 4 entiers
		frametimer[fxnum].quart[2].latexture:SetTexture(blocsTextures[1]..small)
		frametimer[fxnum].quart[3].latexture:SetTexture(blocsTextures[1]..small)
		frametimer[fxnum].quart[4].latexture:SetTexture(blocsTextures[1]..small)
	
	elseif blocs>=8 and blocs<16 then
	
		-- quart 1 vide
		frametimer[fxnum].quart[1].latexture:SetTexture(blocsTextures[9]..small)

		-- calcule quart 2
		frametimer[fxnum].quart[2].latexture:SetTexture(blocsTextures[1+(blocs-8)]..small)
		-- quart 3 et 4 entiers
		frametimer[fxnum].quart[3].latexture:SetTexture(blocsTextures[1]..small)
		frametimer[fxnum].quart[4].latexture:SetTexture(blocsTextures[1]..small)
	
	elseif blocs>=16 and blocs<24 then
	
		-- quart 1 et 2 vides
		frametimer[fxnum].quart[1].latexture:SetTexture(blocsTextures[9]..small)
		frametimer[fxnum].quart[2].latexture:SetTexture(blocsTextures[9]..small)

		-- calcule quart 3
		frametimer[fxnum].quart[3].latexture:SetTexture(blocsTextures[1+ (blocs-16)]..small)	

		-- quart 4 entiers
		frametimer[fxnum].quart[4].latexture:SetTexture(blocsTextures[1]..small)
	
	elseif blocs>=24 and blocs<32 then
	
		-- quart 1,2,3 vides
		frametimer[fxnum].quart[1].latexture:SetTexture(blocsTextures[9]..small)
		frametimer[fxnum].quart[2].latexture:SetTexture(blocsTextures[9]..small)
		frametimer[fxnum].quart[3].latexture:SetTexture(blocsTextures[9]..small)
	
		-- calcule quart 4
		frametimer[fxnum].quart[4].latexture:SetTexture(blocsTextures[1+ (blocs-24)]..small)		
	
	end

end

function DF:ooc_setLevel()
	local nbSpells = getn(DF_config.spells)
	local level
	for i = 1,nbSpells do
	
		if frames[i] then
			level = DF_config.spells[i].objectLevel
			DF:setMyFrameLevel(frames[i],level+3,"fx")
			DF:setMyFrameLevel(overlay[i],level+2)
			if DF_config.spells[i].FX_timerabove then
				DF:setMyFrameLevel(overlayScale[i],level)
			else
				DF:setMyFrameLevel(overlayScale[i],level+1)
			end
			if DF_config.spells[i].FX_timerabove then
				DF:setMyFrameLevel(frametimer[i].base,level+1)
			else
				DF:setMyFrameLevel(frametimer[i].base,level)
			end
		end
		
	end
end
