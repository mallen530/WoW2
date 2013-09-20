----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - spells
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------
local DF = DF_namespace
local _

local current=1
local nbSpells = 0
local nbIds=0

local currentForm = 0
local ripFix =0

local DF_spellFunctions={}

function DF:reset_spells_list()
	nbSpells = getn(DF_config.spells)
	
	for i = 1,nbSpells do
		
		-- init variables
		DF.works.spells[i].abiOldTimeLeft=0
		DF.works.spells[i].abiStack=0
		DF.works.spells[i].abiDotIndex=0
		DF.works.spells[i].abiTimeLeft=0
		DF.works.spells[i].abiDuration=0
		DF.works.spells[i].abiAlphaPulse=0
		DF.works.spells[i].abiRotatePulse=0
		DF.works.spells[i].abiRotatePulseInc=1
		DF.works.spells[i].abiCD=0
		DF.works.spells[i].abiEnd=0
		DF.works.spells[i].abiStart=0
		DF.works.spells[i].abiFake=0
		--DF.works.spells[i].abiFXtest=0
		DF.works.spells[i].abiLast=0
		DF.works.spells[i].abiAlert=false
		DF.works.spells[i].abiCDAlert=false
		DF.works.spells[i].customTimeleft=nil
		DF.works.spells[i].customDuration=nil
		DF.works.spells[i].customCD=nil
		DF.works.spells[i].customCDDuration=nil
		DF.works.spells[i].customStack=nil
	end
		
end

-- initialisation liste
function DF:init_spells_list()
	
	local temp
	
	nbSpells = getn(DF_config.spells)
	
	DF.works.spells=table.wipe(DF.works.spells)
	
	for i = 1,nbSpells do
		
		DF.works.spells[i]={}
		
		-- init variables
		DF.works.spells[i].abiOldTimeLeft=0
		DF.works.spells[i].abiStack=0
		DF.works.spells[i].abiDotIndex=0
		DF.works.spells[i].abiTimeLeft=0
		DF.works.spells[i].abiDuration=0
		DF.works.spells[i].abiAlphaPulse=0
		DF.works.spells[i].abiRotatePulse=0
		DF.works.spells[i].abiRotatePulseInc=1
		DF.works.spells[i].abiCD=0
		DF.works.spells[i].abiPower={}
		DF.works.spells[i].abiEnd=0
		DF.works.spells[i].abiStart=0
		DF.works.spells[i].abiIsaBuff=false
		DF.works.spells[i].abiFake=0
		DF.works.spells[i].abiLast=0
		DF.works.spells[i].abiAlert=false
		DF.works.spells[i].abiCDAlert=false
		DF.works.spells[i].abiSoundWarningOk=false
		DF.works.spells[i].abiFXtest=0

		DF.works.spells[i].customTimeleft=nil
		DF.works.spells[i].customDuration=nil
		DF.works.spells[i].customCD=nil
		DF.works.spells[i].customCDDuration=nil
		DF.works.spells[i].customStack=nil
		
		DF:luaCode_addRefs("Spell_"..tostring(i).."_timeleft",DF.works.spells[i].customTimeleft)
		DF:luaCode_addRefs("Spell_"..tostring(i).."_cd",DF.works.spells[i].customCD)
		DF:luaCode_addRefs("Spell_"..tostring(i).."_stack",DF.works.spells[i].customStack)
		
		if DF_config.spells[i].sType=="ComboPoint" then
			DF_config.spells[i].sType="Custom"
			DF_config.spells[i].icon=0
			DF_config.spells[i].timerbar=0
			DF_config.spells[i].FX_enable=true
			DF_config.spells[i].comboPoints=DF:options_returnNumber(DF_config.spells[i].spellIDs)
			DF_config.spells[i].spellIDs="0"
			DF_config.spells[i].abiUserText="ComboPoint"
		end
		
		if DF_config.spells[i].FX_customtexture and DF_config.spells[i].FX_customtexture~="" then
			DF_config.spells[i].FX_texture="Interface\\AddOns\\DroodFocus\\custom\\"..DF_config.spells[i].FX_customtexture
			DF_config.spells[i].FX_customtexture=""
		end

		if DF_config.spells[i].objScale==nil then
			DF_config.spells[i].objScale=1
		else
			if DF_config.spells[i].objScale<1 then DF_config.spells[i].objScale=1 end
			if DF_config.spells[i].objScale>3 then DF_config.spells[i].objScale=3 end
		end
		if DF_config.spells[i].txtScale==nil then
			DF_config.spells[i].txtScale=1
		else
			if DF_config.spells[i].txtScale<1 then DF_config.spells[i].txtScale=1 end
			if DF_config.spells[i].txtScale>3 then DF_config.spells[i].txtScale=3 end
		end
				
		if DF_config.spells[i].objectLevel==nil then
			DF_config.spells[i].objectLevel=100
		end

		if DF_config.spells[i].inRange==nil then
			DF_config.spells[i].inRange=0
		end

		if DF_config.spells[i].barpositionx==nil then
			DF_config.spells[i].barpositionx=128
		end		
		if DF_config.spells[i].barpositiony==nil then
			DF_config.spells[i].barpositiony=64
		end				
		
		if DF_config.spells[i].TimerLimit==nil then
			DF_config.spells[i].TimerLimit=0
		end
		if DF_config.spells[i].TimerLimitSens==nil then
			DF_config.spells[i].TimerLimitSens=1
		end
		
		if DF_config.spells[i].abiRdyMode==nil then
			DF_config.spells[i].abiRdyMode=false
		end

		if DF_config.spells[i].abiWarn==nil then
			DF_config.spells[i].abiWarn=0
		end
		
		if DF_config.spells[i].abiLastCd==nil then
			DF_config.spells[i].abiLastCd=0
		end
	
		if DF_config.spells[i].FX_OffMode==nil then
			DF_config.spells[i].FX_OffMode=1
		end

		if DF_config.spells[i].abiTalent==nil then
			DF_config.spells[i].abiTalent=0
		end

		if DF_config.spells[i].abiSoundWarning==nil then
			DF_config.spells[i].abiSoundWarning=0
		end
		
		if DF_config.spells[i].abiTextWarning==nil then
			DF_config.spells[i].abiTextWarning=false
		end		
		
		if DF_config.spells[i].abiSoundWarningFile==nil then
			DF_config.spells[i].abiSoundWarningFile=""
		end		

		if DF_config.spells[i].abiBuffWarning==nil then
			DF_config.spells[i].abiBuffWarning=false
		end		

		if DF_config.spells[i].abiVieLimite==nil then
			DF_config.spells[i].abiVieLimite=0
		end		
		
		if DF_config.spells[i].abiVieLimiteSens==nil then
			DF_config.spells[i].abiVieLimiteSens=1
		end	
					
		if DF.works.spells[i].abiActiveCond==nil then
			DF.works.spells[i].abiActiveCond=true
		end				

		if DF_config.spells[i].abiInternalCD==nil then
			DF_config.spells[i].abiInternalCD=0
		end	
		DF_config.spells[i].abiInternalCD=tonumber(DF_config.spells[i].abiInternalCD)

		if DF_config.spells[i].FX_progressTexture==nil then
			DF_config.spells[i].FX_progressTexture=0
		end	
		if DF_config.spells[i].FX_progressTextureFill==nil then
			DF_config.spells[i].FX_progressTextureFill=1
		end	

		if DF_config.spells[i].FX_enable==nil then
			DF_config.spells[i].FX_enable=false
		end	

		-- corrections des ID erronées
		
		-- numero,cherche,replace
		DF:SetupGoodSpellsID(i,"16870","135700")
		DF:SetupGoodSpellsID(i,"108381","145152")
		--DF:SetupGoodSpellsID(i,"62606","132402")
		--DF:SetupGoodSpellsID(i,"52610","127538")
		--DF:SetupGoodSpellsID(i,"77758","106830")
		--DF:SetupGoodSpellsID(i,"91565","102355")
		--DF:SetupGoodSpellsID(i,"50334","106952;106951")

		DF:completeTable(DF_config.spells[i],DF.DefaultSpell,true)

		if DF_config.spells[i].sType=="Buff" then
			DF_config.spells[i].sType="BuffPlayer"
		end		
		if DF_config.spells[i].sType=="Debuff" then
			DF_config.spells[i].sType="DebuffTarget"
		end		
		
		temp = tonumber(DF_config.spells[i].abiInternalCD)
		if temp==nil then temp=0 end
		DF_config.spells[i].abiInternalCD=temp
		
		-- sauve les nom des debuffs
		if DF.works.spells[i].names==nil then
			DF.works.spells[i].names={}
		else
			DF.works.spells[i].names=table.wipe(DF.works.spells[i].names)
			DF.works.spells[i].names={}
		end

		if DF.works.spells[i].ids==nil then
			DF.works.spells[i].ids={}
		else
			DF.works.spells[i].ids=table.wipe(DF.works.spells[i].ids)
			DF.works.spells[i].ids={}
		end
		
		temp=DF:explode ( ";", DF_config.spells[i].spellIDs )

		nbIds = getn(temp)

		for ide = 1,nbIds do
			
			if temp[ide]==nil then temp[ide]=0 end
			
			DF.works.spells[i].ids[ide]=tonumber(temp[ide])
			
			if DF.works.spells[i].ids[ide] then
				DF.works.spells[i].names[ide] = GetSpellInfo(DF.works.spells[i].ids[ide])
			else
				DF.works.spells[i].names[ide] = nil
			end
			
			if DF.works.spells[i].names[ide] == nil then
				DF.works.spells[i].names[ide] =DF.locale["unknow"]
			end
			
		end
		
		DF.works.spells[i].abiSpelltext=DF.works.spells[i].names[1]
		DF.works.spells[i].abiSpellId=DF.works.spells[i].ids[1]
		DF.works.spells[i].abiSpellIdForCD=DF.works.spells[i].ids[1]
				
		DF_spellFunctions[i]={}
		DF_spellFunctions[i].func=nil
		
		if DF_config.spells[i].luaCode~="" then
			local text = string.trim(DF:dec64(DF_config.spells[i].luaCode))
			local args=""
			.."local DF=DF_namespace\n"
			.."local DF_abiNum="..tostring(i).."\n"
			.."local num="..tostring(i).."\n"
			.."local spellid=DF_namespace.works.spells["..tostring(i).."].abiSpellIdForCD\n"

			local func = loadstring(args..text, "DroodFocusLuaCodeSpell"..tostring(i))
			DF_spellFunctions[i].func = func
		end	

	end
	
	current=1
	
end

function DF:spells_isInList(num)
	
	nbSpells = getn(DF_config.spells)
	
	for i = 1,nbSpells do
	
		if DF_config.spells[i].abiInternalCD>0 then
	
			local nbIds = getn(DF.works.spells[i].ids)
			
			for ide = 1,nbIds do
				
				if (DF.works.spells[i].ids[ide] and DF.works.spells[i].ids[ide]==num) then
				
					DF.works.spells[i].abiAlert=true
					DF.works.spells[i].abiCDAlert=true
					return DF.works.spells[i].abiSpellIdForCD,DF_config.spells[i].abiInternalCD
					
				end
					
			end
			
		end
		
	end
	
	return nil,-1
	
end

function DF:SetupGoodSpellsID(num,sFind,sReplace)
		
	-- vérifier occurence dans liste ID
	local spells=DF:explode ( ";", DF_config.spells[num].spellIDs )
	local nbIds = getn(spells)
	local final=""
	
	for ide = 1,nbIds do
		
		if spells[ide]==sFind then
			if final~="" then final=final..";" end
			final=final..sReplace
		else
			if final~="" then final=final..";" end
			final=final..spells[ide]
		end
			
	end
	
	DF_config.spells[num].spellIDs=final

end

--
function DF:spells_list()

	local it=0
	
	nbSpells = getn(DF_config.spells)
	
	-- anime
	for it = 1,nbSpells do

		DEFAULT_CHAT_FRAME:AddMessage(tostring(DF.works.spells[it].abiSpelltext).." - "..tostring(DF_config.spells[it].timerbar));

	end
	
end

function DF:spells_custom(num,timeLeft,duration,CDtimeLeft,CDduration,stack)
	DF.works.spells[num].customTimeleft=timeLeft
	DF.works.spells[num].customDuration=duration
	DF.works.spells[num].customCD=CDtimeLeft
	DF.works.spells[num].customCDDuration=CDduration
	DF.works.spells[num].customStack=stack
end


-- gestion de l'animation
function DF:spells_update(elapsed,allSpells)

	local it=0
	local nbSpells = getn(DF_config.spells)
	local debutCD
	local dureeCD
	local doIt
	local nbc
	local nbr
	local restant
	local result
	local warning
	
	currentForm = DF:currentForm()	
	
	for it = 1,nbSpells do

		-- màj temps restant
		DF.works.spells[it].abiTimeLeft=DF.works.spells[it].abiTimeLeft-elapsed
		if DF.works.spells[it].abiTimeLeft<0 then
			DF.works.spells[it].abiTimeLeft=0
			DF.works.spells[it].abiStart=0
			DF.works.spells[it].abiSoundWarningOk=false
		end

		if DF.works.spells[it].customTimeleft~=nil then
			DF.works.spells[it].customTimeleft=DF.works.spells[it].customTimeleft-elapsed
			if DF.works.spells[it].customTimeleft<0 then
				DF.works.spells[it].customTimeleft=0
			end
		end
		
		if DF.works.spells[it].customCD~=nil then
			DF.works.spells[it].customCD=DF.works.spells[it].customCD-elapsed
			if DF.works.spells[it].customCD<0 then
				DF.works.spells[it].customCD=0
			end
		end

		if DF.works.spells[it].abiTimeLeft>0 and DF_config.spells[it].abiSoundWarning>0 and DF.works.spells[it].abiSoundWarningOk==false then
			
			if DF.works.spells[it].abiTimeLeft<DF_config.spells[it].abiSoundWarning then
				
				DF.works.spells[it].abiSoundWarningOk=true
				
				if DF_config.spells[it].abiSoundWarningFile then
					DF:sound_play(DF_config.spells[it].abiSoundWarningFile)	
				end
				
				if DF_config.spells[it].abiTextWarning then
					local name, empty, imgDebuff, empty, empty, empty, empty, empty, empty = GetSpellInfo(DF.works.spells[it].abiSpellIdForCD);
					if imgDebuff then
						DF:alert_activate("4",true,imgDebuff,name,DF.locale["FadeIn"]..DF:number(DF_config.spells[it].abiSoundWarning).." sec.")
					end					
				end
				
			end
			
		end
				
		--check iCD
		debutCD,dureeCD=DF:cooldown_getCD(DF.works.spells[it].abiSpellIdForCD)
		restant = (debutCD+dureeCD)-DF.currentTime
		if restant<0 then restant=0	end
		
		warning = tonumber(DF_config.spells[it].abiWarn)

		if (tonumber(DF_config.spells[it].abiInternalCD)>0 or warning>0) then

			if restant<warning or restant==0 then

				local name, empty, imgDebuff, empty, empty, empty, empty, empty, empty = GetSpellInfo(DF.works.spells[it].abiSpellIdForCD);
				if imgDebuff then
					if DF_config.spells[it].abiUserText then
						name=DF_config.spells[it].abiUserText
					end
					if restant==0 then
						if DF.works.spells[it].abiCDAlert==true and DF_cdsList[DF.works.spells[it].abiSpellIdForCD]==nil then
							DF:cooldown_activate(imgDebuff)
							DF.works.spells[it].abiCDAlert=false
						end
					else
						if DF.works.spells[it].abiAlert==true then
							DF:alert_activate("4",true,imgDebuff,name,DF.locale["rdyIn"]..DF:number(warning).." sec.")
							DF.works.spells[it].abiAlert=false
						end
					end
				end			
				
			end
		end		
		
	end		
	
	if not DF:toggle_isEnable() and allSpells==false then return end
	
	for it = 1,nbSpells do	
			
		if DF:spell_check(it) or DF.works.spells[it].abiSpellId==0 then
			
			doIt=true
				
			if DF_config.spells[it].comboPoints>0 then
				
				nbc = DF.currentCombos
				nbr = DF_config.spells[it].comboPoints
				
				if not nbc or nbc==nil then nbc=0 end		
				if not nbr or nbr==nil then nbr=0 end		
			
				if nbc>0 and nbr>0 and nbc>=nbr then
					DF.works.spells[it].abiFake=2
				else
					doIt=false
					DF.works.spells[it].abiFake=0
				end
				
			end
	
			if DF_config.spells[it].FX_stack>0 and doIt then
				
				nbc = DF.works.spells[it].abiStack
				nbr = DF_config.spells[it].FX_stack
				
				if not nbc or nbc==nil then nbc=0 end		
				if not nbr or nbr==nil then nbr=0 end		
			
				if nbc>0 and nbr>0 and nbc>=nbr then
					DF.works.spells[it].abiFake=2
				else
					doIt=false
					DF.works.spells[it].abiFake=0
				end
				
			end
	
			if DF_config.spells[it].TimerLimit>0 and doIt then
				
				if DF_config.spells[it].TimerLimitSens==1 then

					if DF.works.spells[it].abiTimeLeft>DF_config.spells[it].TimerLimit then
						doIt=false
					end
				
				elseif DF_config.spells[it].TimerLimitSens==2 then
				
					if DF.works.spells[it].abiTimeLeft<=DF_config.spells[it].TimerLimit then
						doIt=false
					end
	
				end
				
			end

			if DF_config.spells[it].abiVieLimite>0 and doIt then

				local current = UnitHealth("target");		
				local maxi = UnitHealthMax("target");
				local percent =0

				if current>0 and maxi>0 then
					percent = math.ceil((current/maxi)*100)
				
					if DF_config.spells[it].abiVieLimiteSens==1 then
	
						if percent>DF_config.spells[it].abiVieLimite then
							doIt=false
						end
					
					elseif DF_config.spells[it].abiVieLimiteSens==2 then
					
						if percent<=DF_config.spells[it].abiVieLimite then
							doIt=false
						end
		
					end		
				else	
					doIt=false
				end			
			end

			if DF_config.spells[it].inRange>0 and doIt then

				local range = DF:range_isInRange()
				if range~=DF_config.spells[it].inRange then
					doIt=false
				end

			end

			if DF_spellFunctions[it].func and doIt then
	
				result = DF_spellFunctions[it].func()
				if result==true then
					DF.works.spells[it].abiFake=2
				else
					doIt=false
					DF.works.spells[it].abiFake=0
				end
			end

			DF.works.spells[it].abiActiveCond=doIt
			DF:spells_activate(it)
			
		else
			
			DF:spells_desactivate(it)
								
			if DF_spellFunctions[it].func then

				result = DF_spellFunctions[it].func()

			end			
			
		end
	
	end
	
end

function DF:spell_exist(idcheck,namecheck,cible,filtre,strong)
	
	local index=1
	local name,debuffType,unitCaster, spellId=nil
	local UnitAura=UnitAura;
	
	while true do 
		
		local name, empty, empty, empty, debuffType, empty, empty, unitCaster, empty, empty, spellId = UnitAura(cible, index, filtre) 

		-- plus de nom la liste est finie
		if not name then
			return nil
		end

		-- l'id correspond on tient le sort
		if spellId==idcheck then
			return index
		end
		
		index=index+1
		
	end
	
end

function DF:clearAbiBuff(numero,tid)

	if DF.abiBuffs[tid] and DF.abiBuffs[tid][numero] then
		DF.abiBuffs[tid][numero]=0
	end
	
end

function DF:clearAbiPower(numero,tid)

	if DF.abiPowers[tid] and DF.abiPowers[tid][numero] then
		DF.abiPowers[tid][numero]=0
	end
	
end

function DF:getCurrentPower(numero)

	local docActive=false
	
	if DF:spell_exist(145152,nil,"player","HELPFUL|PLAYER",true) then
		docActive=true
	end
	
	return DF:GetDotPower(numero,docActive,nil)
	
end

function DF:setAbiBuff(debuffID,destGUID,buffs)
	-- enregistre état des buffs sur la cible
	if not DF.abiBuffs[destGUID] then
		DF.abiBuffs[destGUID]={}
	end
														
	DF.abiBuffs[destGUID][debuffID]=buffs
end

function DF:setAbiPower(numero,tid,docActive)

	if not DF.abiPowers[tid] then
		DF.abiPowers[tid]={}
	end

	DF.abiPowers[tid][numero]=DF:GetDotPower(numero,docActive,5)

end

function DF:spell_check(num)

	local filter = nil
	local sType = nil
	local perso = nil
	local combo = nil
	local form = DF_config.spells[num].form
	local nbIds=0
	local debuffName = nil
	local thatOk = false
	local difference=0
	
	local targetID=nil
	local targetuse=nil
	
	local name=nil
	local count=nil
	local rank=nil
	local duration=nil
	local expirationTime=nil
	local timeLeft=nil
	local caster=nil
	local isPerso=false
	local lid=nil
	local index=nil
	local dotIndex,dotTime=nil

	local empty=nil	
	
	local isActive = false

	local UnitAura = UnitAura;

	-- récupére infos du spell
	sType = DF_config.spells[num].sType
	perso = DF_config.spells[num].perso
	combo = DF_config.spells[num].combo	

	nbIds = getn(DF.works.spells[num].ids)
		
	if (combo) then DF:combo_set(0) end		

	if sType=="DebuffTarget" or sType=="DebuffPlayer" or sType=="DebuffFocus" or sType=="DebuffPet" then
		
		DF.works.spells[num].abiIsaBuff=false
		
		if (perso) then
			filter="HARMFUL|PLAYER"
		else
			filter="HARMFUL"
		end

		targetuse=""
		
		if sType=="DebuffTarget" then
			
			targetuse="playertarget"
			
		elseif sType=="DebuffPlayer" then
			
			targetuse="player"
			
		elseif sType=="DebuffFocus" then
			
			targetuse="focus"
			
		elseif sType=="DebuffPet" then
			
			targetuse="pet"
			
		end
		
		if targetuse=="" then return false end
		
		targetID=UnitGUID(targetuse)
		if not targetID then return false end
			
		-- c'est un debuff
		thatOk = false

		-- cherche les debuffs
		for ide = 1,nbIds do
			
			if (DF.works.spells[num].ids[ide]) then
				
				index = DF:spell_exist(DF.works.spells[num].ids[ide],nil,targetuse,filter,DF_config.spells[num].strongcheck)
			
				-- si présent
				if (index) then
					
						thatOk = true
				
						-- sauve les infos		
						name, empty, empty, count, empty, duration, expirationTime, caster, empty, empty, empty = UnitAura(targetuse, index, filter) 
						lid=DF.works.spells[num].ids[ide]									
				end
				
			end
			
		end

		-- si c'est ok
		if thatOk then

			-- indique si le debuff appartient au joueur
			if (caster=="player") then
				isPerso=true
			else
				isPerso=false
			end
		
			-- si c'est un sort non personnel ou personnel et qui vient du joueur
			if (not perso or (perso and isPerso)) then
				
				-- indique spell active
				isActive=true

				-- si on dispose d'une fin de debuff, on retranche l'heure courante pour obtenir le temps restant
				if (expirationTime ~= nil) then
	
					timeLeft = expirationTime - DF.currentTime

					if (perso and isPerso) then
						DF:dotTracker_updDot(targetID,DF.works.spells[num].abiSpellIdForCD,expirationTime)
					end
					
					if (timeLeft<0) then
						timeLeft=0;
					end
				
					-- le sort vient d'être posé
					if DF.works.spells[num].abiStart==0 and timeLeft>duration-1 then
					
						DF:icons_pulse(num)
						DF:sound_play(DF_config.spells[num].abiSound)	
					
						if tonumber(DF_config.spells[num].abiInternalCD)>0 then
							DF:cooldown_addCD(DF.works.spells[num].abiSpellIdForCD,DF.currentTime,tonumber(DF_config.spells[num].abiInternalCD))
						end		
						DF.works.spells[num].abiAlert=true
						DF.works.spells[num].abiCDAlert=true
						
					end
					
					difference = timeLeft - DF.works.spells[num].abiOldTimeLeft
										
					if (difference>0 and difference~=timeLeft and isPerso) then

						DF.works.spells[num].abiSoundWarningOk=false							
						DF:icons_pulse(num)								
						
						if DF.works.spells[num].abiSpellIdForCD==1079 then
						
							if difference<=4 then
								
								-- lambeau
								DF.works.spells[num].abiStack = DF.works.spells[num].abiStack + 1
								if DF.works.spells[num].abiStack>3 then
									DF.works.spells[num].abiStack=3
								end
								
							else
							
								-- refresh
								DF.works.spells[num].abiStack = 0
								
							end
							
						end
						
					end
					
					DF.works.spells[num].abiOldTimeLeft = timeLeft
					
				else
					
					timeLeft=0;
					
				end
				
				-- sauve données dans le tableau
				DF.works.spells[num].abiSpellId=lid
				DF.works.spells[num].abiSpellIdForCD=DF.works.spells[num].ids[1]		
				DF.works.spells[num].abiStart=expirationTime-duration
				DF.works.spells[num].abiEnd=expirationTime				
				if (count>0) then
					DF.works.spells[num].abiStack=count
				end
				DF.works.spells[num].abiTimeLeft = timeLeft
				DF.works.spells[num].abiDuration = duration
				DF.works.spells[num].abiRank = rank
					
				-- abilités a combo pour notre barre? et count valide?
				if (combo) then DF:combo_set(count) end							

			end
				
		end

	elseif sType=="BuffPlayer" or sType=="BuffTarget" or sType=="BuffFocus" or sType=="BuffPet" then
		
		DF.works.spells[num].abiIsaBuff=true
		
		if (perso) then
			filter="HELPFUL|PLAYER"
		else
			filter="HELPFUL"
		end

		targetuse=""
	
		if sType=="BuffPlayer" then
			
			targetuse="player"
			
		elseif sType=="BuffTarget" then
			
			targetuse="playertarget"
			
		elseif sType=="BuffFocus" then
			
			targetuse="focus"
			
		elseif sType=="BuffPet" then
			
			targetuse="pet"
			
		end

		if targetuse=="" then return false end

		targetID=UnitGUID(targetuse)
		if not targetID then return false end
			
		-- c'est un debuff
		thatOk = false

		-- cherche les debuffs
		for ide = 1,nbIds do
			
			if (DF.works.spells[num].ids[ide]) then
				
				index = DF:spell_exist(DF.works.spells[num].ids[ide],nil,targetuse,filter,DF_config.spells[num].strongcheck)
			
				-- si présent
				if (index) then
					
						thatOk = true
				
						-- sauve les infos		
						name, empty, empty, count, empty, duration, expirationTime, caster, empty, empty, empty = UnitAura(targetuse, index, filter) 
						lid=DF.works.spells[num].ids[ide]									
				end
				
			end
			
		end

		-- si c'est ok
		if thatOk then
			
			-- indique si le debuff appartient au joueur
			if (caster=="player") then
				isPerso=true
			else
				isPerso=false
			end
		
			-- si c'est un sort non personnel ou personnel et qui vient du joueur
			if (not perso or (perso and isPerso)) then
				
				-- indique spell active
				isActive=true
				
				-- si on dispose d'une fin de debuff, on retranche l'heure courante pour obtenir le temps restant
				if (expirationTime and expirationTime>0) then
										
					timeLeft = expirationTime - DF.currentTime
					
					if (timeLeft<0) then
						timeLeft=0;
					end
					
					-- le sort vient d'être posé
					if DF.works.spells[num].abiStart==0 and timeLeft>duration-1 then
						
						DF:icons_pulse(num)
						DF:sound_play(DF_config.spells[num].abiSound)	
						if tonumber(DF_config.spells[num].abiInternalCD)>0 then
							DF:cooldown_addCD(DF.works.spells[num].abiSpellIdForCD,DF.currentTime,tonumber(DF_config.spells[num].abiInternalCD))
						end		
						
						DF.works.spells[num].abiAlert=true
						DF.works.spells[num].abiCDAlert=true

						if DF.works.spells[num].abiLast>0 then
							
							local abiLastCd=DF.currentTime-DF.works.spells[num].abiLast
							
							if abiLastCd<DF_config.spells[num].abiLastCd or DF_config.spells[num].abiLastCd==0 then
								DF_config.spells[num].abiLastCd=abiLastCd
							end
							
						end
					
						DF.works.spells[num].abiLast=DF.currentTime

						if DF_config.spells[num].abiBuffWarning and not DF_config.alert.showBuff then
							local name, empty, imgDebuff, empty, empty, empty, empty, empty, empty = GetSpellInfo(DF.works.spells[num].abiSpellIdForCD);
							if imgDebuff then
								DF:alert_activate("4",true,imgDebuff,name,DF.locale["BuffGain"])
							end										
						end
						
					end
					
					difference = timeLeft - DF.works.spells[num].abiOldTimeLeft
										
					if (difference>0 and difference~=timeLeft) then
						DF.works.spells[num].abiSoundWarningOk=false							
						DF:icons_pulse(num)								
					end
					
					DF.works.spells[num].abiOldTimeLeft = timeLeft					
					
				else
					
					timeLeft=200000;
					
				end
				
				-- sauve données dans le tableau
				DF.works.spells[num].abiSpellId=lid
				DF.works.spells[num].abiSpellIdForCD=DF.works.spells[num].ids[1]		
				DF.works.spells[num].abiStart=expirationTime-duration
				DF.works.spells[num].abiEnd=expirationTime				
				if (count>0) then
					DF.works.spells[num].abiStack=count
				end
				DF.works.spells[num].abiTimeLeft = timeLeft
				DF.works.spells[num].abiDuration = duration
				DF.works.spells[num].abiRank = rank
			
				-- abilités a combo pour notre barre? et count valide?
				if (combo) then DF:combo_set(count) end							

			end
			
		end
		
	elseif sType=="Custom" then	
		
		DF.works.spells[num].abiIsaBuff=false	
		
		if DF:form_goofForm(form,currentForm) then
		
			return true
			
		end
		return false
		
	else
	
		DF.works.spells[num].abiIsaBuff=false	
		return false
		
	end
	
	return isActive

end

function DF:spells_activate(numero)
	DF:icons_activate(numero)
end

function DF:spells_activateCond(numero,etat)
	DF.works.spells[numero].abiActiveCond=etat
end

function DF:spells_desactivate(numero)
	nbSpells = getn(DF_config.spells)

	if numero then

		DF.works.spells[numero].abiOldTimeLeft=0
		DF.works.spells[numero].abiStack=0
		DF.works.spells[numero].abiTimeLeft=0
		DF.works.spells[numero].abiDuration=0
		--DF.works.spells[numero].abiAlphaPulse=0
		DF.works.spells[numero].abiRotatePulse=0
		DF.works.spells[numero].abiRotatePulseInc=1
		DF.works.spells[numero].abiCD=0
		DF.works.spells[numero].abiDotIndex=0
		DF.works.spells[numero].abiEnd=0
		if not DF.configmode then
			DF.works.spells[numero].abiFake=0
		end						
		DF:icons_desactivate(numero)
		
	else
		
		for numero = 1,nbSpells do
	
			DF.works.spells[numero].abiTimeLeft=0
			DF.works.spells[numero].abiOldTimeLeft=0
			DF.works.spells[numero].abiStack=0
			DF.works.spells[numero].abiEnd=0
			DF.works.spells[numero].abiDotIndex=0
			DF:icons_desactivate(numero)		
			
		end
		
	end
	
end

function DF:spells_list_reinit()
	DF.pause=true
	DF:init_spells_list()
	DF:cooldown_initTable()
	DF:icons_reinit()
	DF:timerbar_reinit()
	DF:init_ooc_frame()
	DF.pause=false
end

function DF:changeSpellsID(num,sFind,sReplace)

	local final=""

	local spells=DF:explode ( ";", DF_config.spells[num].spellIDs )
	local nbIds = getn(spells)

	if (strfind(DF_config.spells[num].spellIDs,sReplace)) then
	
		final=DF_config.spells[num].spellIDs
	
	else

		for ide = 1,nbIds do
			
				if (spells[ide]==sFind) then
					final=final..sReplace
					DEFAULT_CHAT_FRAME:AddMessage(DF.coolName.." - Replace SpellID("..sFind..") with ("..sReplace..")")
				else
					final=final..spells[ide]
				end
				
				if (ide~=nbIds) then
					final=final..";"
				end
				
		end
		
	end
	
	DF_config.spells[num].spellIDs=final

end
