----------------------------------------------------------------------------------------------------
-- DroodFocus 5.0.8 - Core
-- Meranannon - Insane - Vol'jin (EU)
----------------------------------------------------------------------------------------------------

-- namespace
local DF = DF_namespace
local oldTalent = nil
local inspectTalent = true
local DFfirstoptions=true
local _
local DF_Global_Env = getfenv(0);
local showSpellID=0
local kickmsg=""
local version, build, _, tocversionNumber = GetBuildInfo()
local eventArg=nil

-- ID des techniques a point de combo (cible unique ou non true/false)
local DF_builders={}
DF_builders[5221] = true -- lambeau
DF_builders[114236] = true -- lambeau!
DF_builders[6785] = true -- ravage
DF_builders[102545] = true -- ravage!
DF_builders[33876] = true -- mutilation
DF_builders[1822] = true -- griffure
DF_builders[62078] = false -- balayage
DF_builders[9005] = true -- traquenard

-- ID des techniques qui consomme les points de combo
local DF_finishers={}
DF_finishers[127538] = true -- rugissement sauvage
DF_finishers[52610] = true -- rugissement sauvage
DF_finishers[1079] = true -- déchirure
DF_finishers[22568] = true -- morsure féroce
DF_finishers[22570] = true -- estropier

-- ID des techniques avec gestion de la puissance du debuff
local DF_powerId={}
DF_powerId[1079] = 1079 -- déchirure
DF_powerId[1822] = 1822 -- griffure
DF_powerId[106830] = 106830 -- rosser

DF.comboPoints=0

DF.abiBuffs={}
DF.abiPowers={}
DF.dreamCharge=0
DF.dreamChargeCount=0

-- cadre qui recoit event / framework that receives event
local DFeventFrame = CreateFrame("FRAME","DroodFeventFrame",UIParent)

---- events et scripts / events and scripts
function DF:setUp()

		-- events
	DF.pause=false
	DFeventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
	DFeventFrame:SetScript("OnEvent", DFeventHandler)
	
end

function DF:isPowerId(spellid)
	if DF_powerId[spellid]==nil then
		return false
	else
		return true
	end
end

-- init frames
function DF:init_frames()
	-- création objets ou màj / creating objects or update
	DF:init_anchor_frame()
	DF:init_powerbar_frame()
	DF:init_healthbar_frame()
	DF:init_manabar_frame()
	DF:init_eclipsebar_frame()
	DF:init_targetbar_frame()
	DF:init_defense_frame()
	DF:init_threatbar_frame()
	DF:init_spells_list()
	DF:init_icons_frame()
	DF:init_timerbars_frame()
	DF:init_combo_frame()
	DF:init_arrows_frame()
	DF:init_alert_frame()
	DF:init_dotTracker_frame()
	DF:init_cooldown_frame()	
	DF:init_blood_frame()
	DF:init_infos_frame()
	DF:init_portrait_frame()
	DF:init_gps_frame()
	DF:init_castbar_frame()
	DF:init_ooc_frame()

end

function DF:core_CheckItemCD(itemId)
	local nbSpells = getn(DF_config.spells)
	
	for iccd = 1,nbSpells do
		local nbIds = getn(DF.works.spells[iccd].ids)
		for iccdid = 1,nbIds do
			if (DF.works.spells[iccd].ids[iccdid]==itemId) then
				return iccd
			end
		end
	end
	return nil
end

function DF:getComboSim(lid)

	if DF_builders[lid]~=nil then
		return 1,DF_builders[lid]
	elseif DF_finishers[lid]~=nil then
		return 2,DF_finishers[lid]
	end
	return 0,false
end

--function DF:OnEvent(...)
function DFeventHandler(self, eventArg, ...)

	if(eventArg == "PLAYER_ENTERING_WORLD") then
		
		DF.playerId = UnitGUID("player")
		DF.playerLevel = UnitLevel("player")
		DF.activeTalent = GetActiveSpecGroup()
		
		DF.screenHeight = GetScreenHeight()
		DF.screenWidth = GetScreenWidth()
		
		DF.uiAlwaysShow=true

		if (DFfirstoptions==true) then
			-- ligne de comm / comm line
			SLASH_DroodFocusSL1 = "/droodfocus";
			SLASH_DroodFocusSL2 = "/drood";
			SlashCmdList["DroodFocusSL"] = DroodFocusSL_SlashCmd;
	
			if not DF_config then
				DF_config = DF:deepcopy(DF.DF_pred_configs[1])
				DEFAULT_CHAT_FRAME:AddMessage(DF.locale["first"])
			end
	
			if not DF_saved_configs then
				DF_saved_configs = {}
			end
	
			if not DF_sharemedia then
				DF_sharemedia = {}
			end
	
			if not DF.DF_talents then
				DF.DF_talents = {}
			end
	
			if not DF_animaticsList then
				DF_animaticsList={}
			end

			if not DF_cdsList then
				DF_cdsList={}
			end

			DF:completeTable(DF_config,DF.DF_pred_configs[1],false)
			DF:updateTable()
	
			DF:cleanUpConfig()
	
			_,DF.playerClass=UnitClass("player")
			DF:form_initStanceList()
			DF:libs_registerUsersFiles()		
			
			if not DF_config.MiniMapAngle then
				DF_config.MiniMapAngle=0
			end
			
			DF:defense_setGoodSpec()

			DF:init_frames()
			DF:toggle_toggle()
	
			DF:DF_MinimapLoad()
			DF:DF_MinimapToggle()
			
			DF:spellslist_initTable()
			DF:cooldown_initTable()
			
			DF:export_createMyList()
			
			DF:options_setLevel()
			
			-- broker
			local DFLDB = LibStub:GetLibrary("LibDataBroker-1.1") 
			local DF_broker = DFLDB:NewDataObject("Broker_DroodFocus", {
				type = "launcher",
				icon = "Interface\\icons\\Ability_Druid_CatForm",
				label = "DroodFocus",
				text  = "DroodFocus",
				
				OnClick = function(self, DFLDBbtn)
					if (DFLDBbtn=="LeftButton") then
						DF:options_show("DFOPTIONSelement")
					elseif (DFLDBbtn=="RightButton") then
						DF:toogle_configmode()
					end
				end,
				
				OnTooltipShow = function(tooltip)
					if not tooltip or not tooltip.AddLine then return end
					tooltip:AddLine( DF.locale["versionName"].." (Broker)",1,1,0,nil )
					tooltip:AddLine( DF.locale["brokerInfo1"],1,1,1,nil )
					tooltip:AddLine( DF.locale["brokerInfo2"],1,1,1,nil )
				end,
			})	
			
			-- màj numéro de version de la config active / update version number of the active config
			DF_config.configversion=DROODFOCUS_CONFIGVERSION

			-- bienvenue / welcome
			DEFAULT_CHAT_FRAME:AddMessage(DF.locale["welcome"])

			DFeventFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
			DFeventFrame:RegisterEvent("PLAYER_REGEN_DISABLED")
			DFeventFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
			DFeventFrame:RegisterEvent("PLAYER_TARGET_CHANGED")		
			DFeventFrame:RegisterEvent("SPELL_AURA_APPLIED")		
			DFeventFrame:RegisterEvent("SPELL_AURA_REFRESH")
			DFeventFrame:RegisterEvent("SPELL_AURA_REMOVED")
			DFeventFrame:RegisterEvent("SPELL_PERIODIC_DAMAGE")	
			DFeventFrame:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")	
			DFeventFrame:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
			DFeventFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
			DFeventFrame:RegisterEvent("UNIT_COMBO_POINTS")

			hooksecurefunc("CreateFrame", DF_strata_fixLevel_CreateFrame)
			
			DFeventFrame:SetScript("OnUpdate", function(self,elapsed)
				DF:OnUpdate(elapsed)
			end)			
			
		end

--		DF_config.combo.useInternalComboText=false;
--		DF_config.combo.useInternalCombo=false;

		DFfirstoptions=false
		
		DF:strata_fixAllFrames()
		
	elseif(eventArg == "ACTIVE_TALENT_GROUP_CHANGED") then

		DF.activeTalent = GetActiveSpecGroup()
		
		if DF.activeTalent==1 and DF_config.configPrimarySpe~="" then
			
			DF_namespace:config_Loadok(DF_config.configPrimarySpe,false,true)
			
		elseif DF.activeTalent==2 and DF_config.configSecondarySpe~="" then
		
			DF_namespace:config_Loadok(DF_config.configSecondarySpe,false,true)
			
		end
		
	elseif(eventArg == "PLAYER_EQUIPMENT_CHANGED") then
		
 		local slot=select(1,...)
 		local actif=select(2,...)
 		local slotId=nil
 		local itemId=nil
 		
 		if actif==1 then
 			if slot==13 then
 				slotId = GetInventorySlotInfo("Trinket0Slot")
 			elseif slot==14 then
 				slotId = GetInventorySlotInfo("Trinket1Slot")
 			end
 			if slotId then
 				itemId = GetInventoryItemID("player", slotId)
 				local result=DF:core_CheckItemCD(itemId)
				if result then
					if DF_config.spells[result].abiInternalCD>0 then
						DF:cooldown_addCD(DF.works.spells[result].ids[1],DF.currentTime,DF_config.spells[result].abiInternalCD)
						DF.works.spells[result].abiAlert=true
						DF.works.spells[result].abiCDAlert=true
					end		 		
				end		
 			end
 		end
				
	elseif(eventArg == "PLAYER_TARGET_CHANGED") then

		DF.haveTarget=UnitGUID("target")
		DF:targetbar_clearT2D()
		DF:healthbar_clearT2D()
		
		-- màj des pts de combos
		DF.comboPoints=GetComboPoints("player", "target")
		
	elseif(eventArg == "UNIT_COMBO_POINTS") then
	
		local Arg1=select(1,...)
		local nb=GetComboPoints("player", "target")
		
		-- màj des pts de combos
		if Arg1=="player" and (nb==0 or nb>DF.comboPoints) then
			
			DF.comboPoints=nb
			
		end
		
	elseif(eventArg == "UNIT_SPELLCAST_SUCCEEDED") then

		local sourceGUID=select(1,...)
		local spellId=select(5,...)
		
		if sourceGUID==UnitGUID("player") then
			if showSpellID==1 then
				DEFAULT_CHAT_FRAME:AddMessage("Spell ID -> "..tostring(spellId))
			end
		end
		
	elseif(eventArg == "PLAYER_REGEN_ENABLED") then

		DF.abiBuffs=table.wipe(DF.abiBuffs)
		DF.abiPowers=table.wipe(DF.abiPowers)		
		DF.menace=0
		DF:combat_set_state(false)
		DF:sound_roar()
		DF:toggle_toggle()
		DF:targetbar_clearT2D()
		DF:healthbar_clearT2D()
		DF:dotTracker_reset()
		
	elseif(eventArg == "PLAYER_REGEN_DISABLED") then
		
		DF:combat_set_state(true)
		DF:spells_desactivate()
		DF:toggle_toggle()
			
	elseif(eventArg == "COMBAT_LOG_EVENT_UNFILTERED") then	

		local cType=select(2,...)
		
   	if (cType=="SWING_DAMAGE") then

			local cSourceId=select(4,...)
			local cCritical=select(18,...)
			
			if (cSourceId==DF.playerId and cCritical==1) then
				
				DF:blood_activate(0.5)
			 	
			end

		elseif strfind(cType,"SPELL_DAMAGE") then

			local cSourceId=select(4,...)
			local cCritical=select(21,...)
			local cSchool=select(14,...)	
			local cDestId=select(8,...)
			local cSpellId=select(12,...)
			local cAmount=select(15,...)
			
			if cSourceId==DF.playerId and cDestId==UnitGUID("playertarget") and (cAmount and cAmount>0) then

				DF:sound_set_state(true)
				
				if (cCritical==1) then
					DF:blood_activate(1)
		 		end

				-- points de combo critique
				local cType,cUnique = DF:getComboSim(cSpellId)
				
				if cType==1 and cCritical==1 and cUnique then

					if cSpellId==33876 then
						DF.comboPoints=DF.comboPoints+2
					else
						DF.comboPoints=DF.comboPoints+1
					end
					
					if DF.comboPoints>5 then
						DF.comboPoints=5
					end
					
				end 			
			 		
			end
			

		elseif cType=="SPELL_CAST_SUCCESS" then
		
			local timestamp,event,hideCaster,sourceGUID,sourceName,sourceFlags,sourceRaidFlags,destGUID,destName,destFlags,destRaidFlags,spellId,spellName,spellSchool = ...
			
			if sourceGUID==UnitGUID("player") then

				if showSpellID==1 then
					DEFAULT_CHAT_FRAME:AddMessage("Spell ID -> "..tostring(spellId))
				end
				
				-- bear mangle cast
				if spellId==33878 then					
		
					local berserk = GetSpellInfo(50334)
					if not UnitAura("player",berserk) then						-- mangle has no cd while in berserk
						DF_namespace:cooldown_addCD(33878,GetTime(),6)
					end
					
				elseif spellId==77758 then				-- bear thrash cast
				
					DF_namespace:cooldown_addCD(77758,GetTime(),6)
					
				elseif spellId==50334 then				-- berserk bear cast (mangle goes off cd)
				
					local index = 33878
					if DF_cdsList[index]==nil then
						local _, _, texture = GetSpellInfo(index)
						DF_namespace:cooldown_activate(texture)
					end
					DF_namespace:cooldown_stopCD(index)
				
				else
				
					local idcd,duree=DF:spells_isInList(spellId)
					
					if idcd then
					
						DF_namespace:cooldown_addCD(idcd,GetTime(),duree)
						
					end
					
				end
				
			end

		elseif (cType=="SPELL_CAST_FAILED") then

			local cSourceId=select(4,...)
			local cMessage=select(15,...)
		
			if (cSourceId==DF.playerId) then
	
				if (cMessage==SPELL_FAILED_OUT_OF_RANGE) then
					DF:alert_activate("2",true)
					
				elseif (cMessage==SPELL_FAILED_NOT_BEHIND) then
					DF:alert_activate("1",true)
					
				end
			end
			
		elseif  (cType=="SPELL_INTERRUPT") then

			local cSourceId=select(4,...)
			local cDestName=select(9,...)
			local cSpellName=select(16,...)	
			local cSourceName=select(5,...)
			local cSpellId=select(15,...)
			
			if ((DF_config.reportkickplyonly==true and cSourceId==DF.playerId) or DF_config.reportkickplyonly==false) then

				if (DF_config.reportkickchan~="") then
				
					kickmsg=DF_config.reportkickString
					kickmsg=kickmsg:gsub("#SPELL", GetSpellLink(cSpellId))
					kickmsg=kickmsg:gsub("#FROM", cDestName)
					kickmsg=kickmsg:gsub("#WHO", cSourceName)
					
					if DF_config.reportkickchan=="SAY" or DF_config.reportkickchan=="YELL" then
						
						SendChatMessage( kickmsg,DF_config.reportkickchan ,nil ,nil)
						
					elseif DF_config.reportkickchan=="RAID/PARTY" then
						
						if GetNumGroupMembers()>5 then
							SendChatMessage( kickmsg,"RAID" ,nil ,nil)
						else
							SendChatMessage( kickmsg,"PARTY" ,nil ,nil)
						end				
	
					elseif DF_config.reportkickchan=="PARTY" then
						
		    		if GetNumGroupMembers()<6 then
							SendChatMessage( kickmsg,"PARTY" ,nil ,nil)
						end				
						
					elseif DF_config.reportkickchan=="RAID" then
						
						if GetNumGroupMembers()>5 then
							SendChatMessage( kickmsg,"RAID" ,nil ,nil)
						end		
													
					elseif DF_config.reportkickchan=="CHAT" then
						
						DEFAULT_CHAT_FRAME:AddMessage(kickmsg)
						
					end
				
				end
					
			end	
			
		elseif(cType == "SPELL_AURA_REMOVED") then

			local cSourId=select(4,...)
			local cDestId=select(8,...)
			local cType=select(15,...)
			local cSpellId=select(12,...)	
			local cSchool=select(14,...)	
			local buffs=0
			
			-- provient du joueur
			if cSourId==DF.playerId then
			
				-- gestion de la puissance ?
				if DF_powerId[cSpellId] then

					DF:clearAbiBuff(cSpellId,cDestId)
					DF:clearAbiPower(cSpellId,cDestId)
					
				end
				
			end
				
		elseif(cType == "SPELL_AURA_APPLIED" or cType == "SPELL_AURA_REFRESH") then

			local cSourId=select(4,...)
			local cDestId=select(8,...)
			local cDestName=select(9,...)
			local cType=select(15,...)
			local cSpellId=select(12,...)	
			local cSchool=select(14,...)	

			if cDestId and cSourId==DF.playerId then
			
				local debuffID=DF_powerId[cSpellId]
				
				-- gestion de la puissance ?
				if debuffID and debuffID~=106830 then

					local buffs,docActive=DF:getBuffDatas()

					DF:setAbiBuff(debuffID,cDestId,buffs)
					DF:setAbiPower(debuffID,cDestId,docActive)

				end
			
			end
			
			if cDestId==DF.playerId then
			
				if (cType=="DEBUFF" and DF_config.alert.showDebuff) then
	
					-- le joueur viens de subir un debuff, affiche l'icone dans le système d'alert
					-- the player just had a debuff, displays the icon in alert system
					local name, empty, imgDebuff, empty, empty, empty, empty, empty, empty = GetSpellInfo(cSpellId);
					if imgDebuff then
						DF:alert_activate(imgDebuff,true,name,cSchool,cType)
					end
					
				elseif (cType=="BUFF" and DF_config.alert.showBuff) then
	
					-- le joueur viens de gagner un buff, affiche l'icone dans le système d'alert
					-- the player just had a buff, displays the icon in alert system
					local name, empty, imgDebuff, empty, empty, empty, empty, empty, empty = GetSpellInfo(cSpellId);
					if imgDebuff then
						DF:alert_activate(imgDebuff,true,name,cSchool,cType)
					end					
					
				end		

				if (cType=="BUFF" and cSpellId==93622) then		-- mangle proc from lacerate / thrash ("Mangle!")
					local index = 33878
					if DF_cdsList[index]==nil then
						local _, _, texture = GetSpellInfo(index)
						DF:cooldown_activate(texture)
					end
					DF:cooldown_stopCD(index)
				end		

			elseif cSourId==DF.playerId then
			
				DF:dotTracker_addDot(cDestId,cSpellId,cDestName)

				if cDestId then
				
					local debuffID=DF_powerId[cSpellId]
					
					-- gestion de la puissance pour rosser ?
					if debuffID and debuffID==106830 then
						
						local buffs,docActive=DF:getBuffDatas()

						DF:setAbiBuff(debuffID,cDestId,buffs)
						DF:setAbiPower(debuffID,cDestId,docActive)
	
					end
				
				end
						
			end

		elseif(cType == "UNIT_DIED" or cType == "UNIT_DESTROYED") then

			local cDestId=select(8,...)
			DF:dotTracker_clearDot(cDestId)

		end		

	end

end

function DF:getBuffDatas()
	
	local buffs=0
	local docActive=false
	
	-- rugissement
	if DF:spell_exist(127538,nil,"player","HELPFUL|PLAYER",true) or DF:spell_exist(52610,nil,"player","HELPFUL|PLAYER",true) then
		buffs=DF:setbit(buffs,DF:bit(1))
	else
		buffs=DF:clearbit(buffs,DF:bit(1))
	end		
				
	-- fureur
	if DF:spell_exist(5217,nil,"player","HELPFUL|PLAYER",true) then
		buffs=DF:setbit(buffs,DF:bit(2))
	else
		buffs=DF:clearbit(buffs,DF:bit(2))
	end		
	
	local isDoc=DF:isDreamCharge()						

	-- rêve
	if isDoc then
		buffs=DF:setbit(buffs,DF:bit(3))
		docActive=true
	else
		buffs=DF:clearbit(buffs,DF:bit(3))
		docActive=false

		-- veille
		if DF:spell_exist(124974,nil,"player","HELPFUL|PLAYER",true) then
			buffs=DF:setbit(buffs,DF:bit(3))
		else
			buffs=DF:clearbit(buffs,DF:bit(3))
		end	
		
	end	
	
	return buffs,docActive
	
end

function DF:GetDreamCharge(elapsed)

	-- dream of cenarius buff ?
	local index = DF:spell_exist(145152,nil,"player","HELPFUL|PLAYER",true)
	local count=0
	
	-- yes !
	if index then
	
		-- update timer
		DF.dreamCharge=1
		_, _, _, count, _, _, _, _, _, _, _ = UnitAura("player", index, "HELPFUL|PLAYER")
		
	end
	
	-- timer decay
	DF.dreamCharge=DF.dreamCharge-elapsed
	if DF.dreamCharge<0 then
		DF.dreamCharge=0
		count=0
	end
	
	DF.dreamChargeCount=count
	
end

function DF:isDreamCharge()
	if DF.dreamChargeCount==1 then
		DF.dreamChargeCount=0
		DF.dreamCharge=0.01
	end
	if DF.dreamCharge>0 then
		return true
	else
		return false
	end
end

function DF:isInRaid()
	return GetNumGroupMembers()
end

-- OnUpdate
function DF:OnUpdate(elapsed)

	if DF.pause then return end

	DF.currentTime = GetTime()
	DF:toggle_toggle()

	DF:GetDreamCharge(elapsed)
	
	DF:cooldown_update(elapsed)
	DF:spells_update(elapsed,true)
	
	DF:icons_update(elapsed)
	DF:timerbars_update(elapsed)
	DF:ooc_update(elapsed)

	DF:combo_update(elapsed)
	DF:arrows_update(elapsed)
	DF:alert_update(elapsed)
	DF:dotTracker_update(elapsed)
	DF:infos_update(elapsed)
	DF:portrait_update(elapsed)
	DF:gps_update(elapsed)
	DF:castbar_update(elapsed)
	DF:powerbar_update(elapsed)
	DF:healthbar_update(elapsed)
	DF:manabar_update(elapsed)	
	DF:eclipsebar_update(elapsed)	
	DF:targetbar_update(elapsed)
	DF:defense_update(elapsed)
	DF:threatbar_update(elapsed)
	DF:blood_update(elapsed)
	DF:practice_scanner(elapsed)
	
end

function DF:toogle_lock()
	local itsok
	if DF.lock then
		itsok=false
		DEFAULT_CHAT_FRAME:AddMessage(DF.locale["locked"])
	else
		itsok=true
		DEFAULT_CHAT_FRAME:AddMessage(DF.locale["unlocked"])
	end
	
	DF.configmode = itsok
	
	DF:toggle_toggle()
	
	DF:anchor_toogle_lock(itsok)
	DF:powerbar_toogle_lock(itsok)
	DF:healthbar_toogle_lock(itsok)
	DF:manabar_toogle_lock(itsok)
	DF:eclipsebar_toogle_lock(itsok)
	DF:targetbar_toogle_lock(itsok)
	DF:defense_toogle_lock(itsok)
	DF:threatbar_toogle_lock(itsok)
	DF:combo_toogle_lock(itsok)
	DF:icons_toogle_lock(itsok)
	DF:timerbars_toogle_lock(itsok)
	DF:alert_toogle_lock(itsok)
	DF:dotTracker_toogle_lock(itsok)
	DF:gps_toogle_lock(itsok)
	DF:castbar_toogle_lock(itsok)
	DF:cooldown_toogle_lock(itsok)
	DF:infos_toogle_lock(itsok)
	DF:portrait_toogle_lock(itsok)
	DF:ooc_toogle_lock(itsok)
	
	DF:blood_activate(0.5)
	DF:blood_activate(1)
	DF:blood_activate(0.5)
	DF:blood_activate(1)

	DF:options_setLevel()
	
end

-- gestion ligne de commande / management control line
function DroodFocusSL_SlashCmd(arg)

	local conf=0
	local arg2
	local arg3
	local listargs
	
	-- parse
	if (arg==nil) then
		
		arg="";
		
	else
		
		listargs = DF:explode ( " ", string.lower(arg) );
		
		arg = string.upper(listargs[1]);

		if (listargs[2]) then
			arg2 = string.upper(listargs[2]);
		else
			arg2="";
		end
		if (listargs[3]) then
			arg3 = string.upper(listargs[3]);
		else
			arg3="";
		end	
			
	end

	-- action
	if (arg=="CONFIGMODE") then
		DF:toogle_configmode()
		
	elseif (arg=="OPTIONS") then	
		
		DF:options_show("DFOPTIONSelement")

	elseif (arg=="RESET") then	
		
		DF:config_Reset()

	elseif (arg=="BUFF") then	

		DF:ShowID("buff")
		
	elseif (arg=="DEBUFF") then	

		DF:ShowID("debuff")		
		
	elseif (arg=="SPELLS") then
	
		DF:show_spellslist()
	
	elseif (arg=="NEWS") then
	
		DEFAULT_CHAT_FRAME:AddMessage(DF.locale["DF413_REMINDERTEXT"]);
			
	elseif (arg=="PRACTICE") then
	
		if DF.practiceNotRunning==false then
			DF.practiceNotRunning=true
		else
			DF.practiceNotRunning=false
		end
		DF:practice_toggle()

	elseif (arg=="CENTER") then
	
		DF:replace_droodfocus()

	elseif (arg=="LEVEL") then
	
		DF:strata_fixAllFrames()
			
	elseif (arg=="REPORT") then

		if arg2~="NONE" and arg2~="SAY" and arg2~="YELL" and arg2~="PARTY" and arg2~="RAID" and arg2~="LOCAL" then
			DEFAULT_CHAT_FRAME:AddMessage(DF.coolName.." - /droodfocus report NONE||SAY||YELL||PARTY||RAID||LOCAL")
		else
			DEFAULT_CHAT_FRAME:AddMessage(DF.coolName.." - Report set to: "..arg2)
			if arg2=="NONE" then arg2="" end
			if arg2=="LOCAL" then arg2="CHAT" end
			DF_config.reportkickchan=arg2
		end

	elseif (arg=="SHOWSPELLID") then
		
		showSpellID=1-showSpellID
		DEFAULT_CHAT_FRAME:AddMessage("showSpellID is "..tostring(showSpellID))
		
	elseif (arg=="REFS") then
		
		DF:luaCode_showRefs()

	elseif (arg=="TARGETID") then
		
		DEFAULT_CHAT_FRAME:AddMessage(tostring(UnitGUID("target")))

	elseif (arg=="MOUSEOVER") then
		
		local objet=GetMouseFocus()
		DEFAULT_CHAT_FRAME:AddMessage(tostring(objet:GetName()).." ["..tostring(objet:GetObjectType()).."]")
		local childrens = {objet:GetChildren()}
		
		for _, child in ipairs(childrens) do
				  
		  DEFAULT_CHAT_FRAME:AddMessage(tostring(child:GetName()).." ["..tostring(child:GetObjectType()).."]")
		  
		end
							
	else
		
		DEFAULT_CHAT_FRAME:AddMessage(DF.locale["commands"])
		
	end
	
end

function DF:replace_droodfocus()
	DF_config["anchor0"].positionx = ( GetScreenWidth() * UIParent:GetEffectiveScale() )/2
	DF_config["anchor0"].positiony = ( GetScreenHeight() * UIParent:GetEffectiveScale() )/2
	DF.baseanchor.base:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", DF_config["anchor0"].positionx, DF_config["anchor0"].positiony)
end

function DF:toogle_configmode()
	DF:CheckConfigurationPanel()
	if DF.lock then	DF.lock = false	else DF.lock = true	end
	DF:toogle_lock()
	
end

function DF:ShowID(ftype)

	local name
	local empty
	local debuffType
	local unitCaster
	local spellId

	DF:debugLine("Begin list of ",ftype)		
	
	local index=1
	while true do 

		if ftype=="buff" then
			
			name, empty, empty, empty, debuffType, empty, empty, unitCaster, empty, empty, spellId = UnitAura("player", index, "HELPFUL") 
		
		elseif ftype=="debuff" then
			
			name, empty, empty, empty, debuffType, empty, empty, unitCaster, empty, empty, spellId = UnitAura("playertarget", index, "HARMFUL") 
		
		else
		
			name=nil
		
		end

		if not name then break end

		DF:debugLine(ftype.." "..tostring(index)..": "..tostring(name),spellId)		
		
		index=index+1
		
	end
	DF:debugLine("End list of ",ftype)
end

-- démarrage / start-up
DF:setUp()