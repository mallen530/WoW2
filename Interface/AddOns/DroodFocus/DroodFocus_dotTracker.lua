----------------------------------------------------------------------------------------------------
-- DroodFocus 4.0.0 - alert
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

local DF_trackedDot={}
local frames={}

local frequency =10/60
local tempo=(frequency/15)*0

local DF_tracker={}

local nbdots

function DF:updNamePlates()
	local current = select("#", WorldFrame:GetChildren())
	local targetid=nil
	for i = 1, current do
		local plate = select(i, WorldFrame:GetChildren())
		if (plate:GetName() and plate:GetName():match("NamePlate")) then
			DEFAULT_CHAT_FRAME:AddMessage(tostring(plate:GetName().." GUID:"..tostring(targetid)))
		end
	end
	
end

function DF:init_dotTracker_frame()

	-- efface la totalité du tableau
	DF_trackedDot=table.wipe(DF_trackedDot)

	-- récupére les dots tracker depuis la config
	local nb
	local nb2
	local i
	local i2
	local temp
	local temp2
	
	temp=DF:explode ( ";", DF_config.dotTracker.dotsList)

	nbdots = getn(temp)
	for i = 1,nbdots do	
		temp2=DF:explode ( "-", temp[i])
		DF_trackedDot[i]={}
		DF_trackedDot[i]["spellid"]=tonumber(temp2[1])
		DF_trackedDot[i]["duration"]=tonumber(temp2[2])
	end

	-- initialisation des cadres et autres
	local level = DF_config.dotTracker.level*10

	for i = 1,DF_config.dotTracker.nblines do
	
		if not frames[i] then
			
			frames[i]={}
			frames[i].text=nil
			frames[i].icons={}
			frames[i].iconstext={}
			frames[i].iconsTexture={}
		
			-- cadre principal
			frames[i].frame = CreateFrame("FRAME","DF_DOTTRACKER_FRAME"..tostring(i),DF.anchor[8].frame)
			frames[i].frame:SetScript("OnMouseDown",function(self,button)
  			DF:options_show("DFdotTracker",nil,true)
			end)
			frames[i].frame:SetScript("OnEnter",function(self,button)
				if DF.configmode then
					DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_TOPLEFT ",16,-16)
					DF.DroodFGameTooltip:ClearLines()
					DF.DroodFGameTooltip:AddLine("DROODFOCUS DOTTRACKER",1,1,0,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["rightMB"],1,1,1,nil)
					DF.DroodFGameTooltip:AddLine(DF.locale["ctrlrightMB"],1,1,1,nil)
					DF.DroodFGameTooltip:Show()		
				end		
			end)		
			frames[i].frame:SetScript("OnLeave",function(self,button)
				if DF.configmode then DF.DroodFGameTooltip:Hide() end
			end)					
			
			frames[i].text = frames[i].frame:CreateFontString("DF_DOTTRACKER_TEXT","ARTWORK")
			
			for te = 1,nbdots do
				frames[i].icons[te] = CreateFrame("FRAME","DF_DOTTRACKER_FRAME"..tostring(i).."ICONS"..tostring(te),frames[i].frame)
				frames[i].iconsTexture[te] = frames[i].icons[te]:CreateTexture("DF_DOTTRACKER_FRAME"..tostring(i).."ICONSTEXTURE"..tostring(te),"BACKGROUND")
				frames[i].iconstext[te] = frames[i].icons[te]:CreateFontString("DF_DOTTRACKER_FRAME"..tostring(i).."ICONSTEXT"..tostring(te),"ARTWORK")
			end
			
			frames[i].frameTexture=frames[i].frame:CreateTexture("DF_DOTTRACKER_FRAME_TEXTURE"..tostring(i))

			frames[i].frame:EnableMouse(false)
			
		end
	
		frames[i].frame:SetMovable(false)

		frames[i].frameTexture:SetTexCoord(0, 1, 0, 1)
		frames[i].frameTexture:SetWidth(DF_config.dotTracker.height)
		frames[i].frameTexture:SetHeight(DF_config.dotTracker.height)
		frames[i].frameTexture:SetBlendMode("BLEND")
		frames[i].frameTexture:ClearAllPoints()
		frames[i].frameTexture:SetAllPoints(frames[i].frame)
		frames[i].frameTexture:SetTexture(0,0,0,0)
				
		frames[i].frame:SetWidth(DF_config.dotTracker.width)
		frames[i].frame:SetHeight(DF_config.dotTracker.height)
		
		frames[i].frame:ClearAllPoints()
		frames[i].frame:SetPoint("TOPLEFT", DF.anchor[8].frame, "TOPLEFT", 0, -((i-1)*(DF_config.dotTracker.height+1)))
		frames[i].frame:SetFrameLevel(level)		

		DF:MySetFont(frames[i].text,DF_config.dotTracker.fontPath,DF_config.dotTracker.fontSize,"OUTLINE")
		
		frames[i].text:ClearAllPoints()
		frames[i].text:SetPoint(DF_config.dotTracker.textAlign, frames[i].frame, DF_config.dotTracker.textAlign, DF_config.dotTracker.textx, DF_config.dotTracker.texty)
		
		frames[i].text:SetTextColor(DF_config.dotTracker.textColor.r, DF_config.dotTracker.textColor.v, DF_config.dotTracker.textColor.b, DF_config.dotTracker.textColor.a)

		
		for te = 1,nbdots do
			
			DF:MySetFont(frames[i].iconstext[te],DF_config.dotTracker.fontPathIcons,DF_config.dotTracker.fontSizeIcons,"OUTLINE")

			frames[i].icons[te]:SetMovable(false)
					
			frames[i].icons[te]:SetWidth(DF_config.dotTracker.height)
			frames[i].icons[te]:SetHeight(DF_config.dotTracker.height)
			
			frames[i].icons[te]:ClearAllPoints()
			frames[i].icons[te]:SetPoint("TOPLEFT", frames[i].frame, "TOPRIGHT", 1+((te-1)*(DF_config.dotTracker.height+1)), 0)

			frames[i].iconstext[te]:ClearAllPoints()
			frames[i].iconstext[te]:SetPoint(DF_config.dotTracker.textAlignIcons, frames[i].icons[te], DF_config.dotTracker.textAlignIcons, DF_config.dotTracker.textxIcons, DF_config.dotTracker.textyIcons)

			frames[i].iconstext[te]:SetTextColor(DF_config.dotTracker.textColor.r, DF_config.dotTracker.textColor.v, DF_config.dotTracker.textColor.b, DF_config.dotTracker.textColor.a)

			local latexture="Interface\\icons\\INV_Misc_QuestionMark"
			local empty, empty, abiImg, empty, empty, empty, empty, empty, empty = GetSpellInfo(DF_trackedDot[te].spellid);
			if abiImg then
				latexture=abiImg
			end
			
			frames[i].iconsTexture[te]:SetTexCoord(0, 1, 0, 1)
			frames[i].iconsTexture[te]:SetWidth(DF_config.dotTracker.height)
			frames[i].iconsTexture[te]:SetHeight(DF_config.dotTracker.height)
			frames[i].iconsTexture[te]:SetBlendMode("BLEND")
			frames[i].iconsTexture[te]:ClearAllPoints()
			frames[i].iconsTexture[te]:SetAllPoints(frames[i].icons[te])
			frames[i].iconsTexture[te]:SetTexture(latexture)

			--frames[i].frame:SetAlpha(DF_config.dotTracker.alpha)
						
		end
	
	end	

end

function DF:dotTracker_num(spellid)
	-- retourne la colonne pour le spellid cherché
	local te
	for te = 1,nbdots do
		if DF_trackedDot[te].spellid==spellid then
			return te
		end
	end
	return 0
end

function DF:dotTracker_update(elapsed)

	local currentForm = DF:currentForm()

	if not DF_config.dotTracker.enable or not DF:toggle_isEnable() or not DF:form_goofForm(DF_config.dotTracker.form,currentForm) then
		for i = 1,DF_config.dotTracker.nblines do
			frames[i].frame:Hide()
		end
		return
	end

	tempo=tempo+elapsed
	if tempo<frequency then return end
	tempo=0	

	for i = 1,DF_config.dotTracker.nblines do
		frames[i].frame:Show()
	end
			
	local timer=0
	local currenttimer= GetTime()
	local counter=1
	local restant=0
	local targetID=UnitGUID("playertarget")
	
	-- parcours la liste des cibles connues
	for index, _ in pairs(DF_tracker) do
		
		-- si cible active et assez de place
		if DF_tracker[index].active and counter<=DF_config.dotTracker.nblines then
	
			frames[counter].frame:SetAlpha(DF_config.dotTracker.alphaActive)	
			
			-- affiche le nom de la cible
			frames[counter].text:SetText(DF_tracker[index]["idstring"])
	
			-- fond coloré si c'est la cible active du joueur
			if DF_tracker[index].unitid==targetID then
				frames[counter].text:SetTextColor(1, 1, 0, 1)
			else
				frames[counter].text:SetTextColor(DF_config.dotTracker.textColor.r, DF_config.dotTracker.textColor.v, DF_config.dotTracker.textColor.b, DF_config.dotTracker.textColor.a)
			end
			
			-- parcours la liste des dots
			for te = 1,nbdots do
			
				-- si données sur ce dot, sinon 0
				if DF_tracker[index].spell[te] then				
					timer=DF_tracker[index].spell[te]
				else
					timer=0
				end
				
				-- affiche la donnée pour ce dot
				if timer>=currenttimer then
		
					restant=timer-currenttimer
					frames[counter].iconstext[te]:SetText(DF:numbers(restant))
				
				else
				
					frames[counter].iconstext[te]:SetText("")
				
				end
			
			end

			-- incremente le compteur de la position
			counter=counter+1
			
		end
		
	end

	-- efface le reste du tableau si pas rempli
	if counter<=DF_config.dotTracker.nblines then
		
		for te = counter,DF_config.dotTracker.nblines do
		
			if DF.configmode then

				frames[te].frame:SetAlpha(DF_config.dotTracker.alphaActive)		
				frames[te].text:SetText(DF.locale["notarget"])
				frames[te].text:SetTextColor(DF_config.dotTracker.textColor.r, DF_config.dotTracker.textColor.v, DF_config.dotTracker.textColor.b, DF_config.dotTracker.textColor.a)
				
				for tet = 1,nbdots do
					frames[te].iconstext[tet]:SetText("8")
				end

			else
		
				frames[te].frame:SetAlpha(DF_config.dotTracker.alphaInactive)		
				frames[te].text:SetText(DF.locale["notarget"])
				frames[te].text:SetTextColor(DF_config.dotTracker.textColor.r, DF_config.dotTracker.textColor.v, DF_config.dotTracker.textColor.b, DF_config.dotTracker.textColor.a)
				
				for tet = 1,nbdots do
					frames[te].iconstext[tet]:SetText("")
				end
			
			end
			
		end
		
	end
	
end

function DF:dotTracker_toogle_lock(flag)
	
end

function DF:dotTracker_reinit()
	
	DF:init_dotTracker_frame()
	
end

function DF:dotTracker_clearDot(cDestId)
	-- indique cible inactive si elle existe
	if DF_tracker[cDestId] then
		DF_tracker[cDestId].active=false
	end
end

function DF:dotTracker_addDot(unitid,spellid,unitidstring)

	-- heure courante
	local currenttimer= GetTime()
	
	-- colonne du dot si connu sinon 0
	local num =DF:dotTracker_num(spellid)
	
	-- dot connue ?
	if (num>0) then
	
		-- oui, cible connue ?
		if DF_tracker[unitid]==nil then
			-- non on crée son slot
			DF_tracker[unitid]={}
		end	

		-- création du tableau de dot si il n'existe pas déja
		if DF_tracker[unitid].spell==nil then
			DF_tracker[unitid].spell={}
		end	
		
		-- indique les données de l'unité
		DF_tracker[unitid]["unitid"]=unitid
		DF_tracker[unitid]["idstring"]=unitidstring
		DF_tracker[unitid]["active"]=true	
	
		-- la donnée de temps pour le dot (temps par défaut donné dans la config)
		DF_tracker[unitid].spell[num]=currenttimer+DF_trackedDot[num].duration
	
	end
	
end

function DF:dotTracker_updDot(unitid,spellid,timer)
	
	-- colonne du dot si connu sinon 0
	local num = DF:dotTracker_num(spellid)
	
	-- dot connue ?
	if (num>0) then
	
		-- oui, cible connue ?
		if DF_tracker[unitid]==nil then
			-- non on quitte
			return
		end	

		-- création du tableau de dot si il n'existe pas déja (normalement il existe mais bon !)
		if DF_tracker[unitid].spell==nil then
			DF_tracker[unitid].spell={}
		end	

		-- mise à jour du timer
		DF_tracker[unitid].spell[num]=timer
	
	end
	
end

function DF:dotTracker_reset()
	-- efface la totalité du tableau
	DF_tracker=table.wipe(DF_tracker)
end