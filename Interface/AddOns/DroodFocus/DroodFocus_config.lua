----------------------------------------------------------------------------------------------------
-- DroodFocus 4.3.1 - config
-- Author : Meranannon - Discordia - Vol'jin (EU)
-- rev 5
----------------------------------------------------------------------------------------------------

local DF=DF_namespace
local _


DF_sharemedia = {
}

DF_namespace.DF_talents = {
}

DF_namespace.anchor={}
DF_namespace.DFREFS={}
DF_namespace.practiceNotRunning=true
DF_namespace.practiceCheckBuff=true
DF_namespace.practiceCheckDebuff=true
DF_namespace.practiceCheckAura=false
DF_namespace.currentCombos=0
DF_namespace.luaCodeSeleted=nil
DF_namespace.exportSeleted=nil

DF_namespace.lock=true
DF_namespace.configmode=false
DF_namespace.currentTime=GetTime()
DF_namespace.playerId = nil
DF_namespace.playerClass = nil
DF_namespace.playerLevel = nil
DF_namespace.playerTalent = nil
DF_namespace.playerTalentName = nil
DF_namespace.playerpoint = nil
DF_namespace.myArgs = ""
DF_namespace.menace = 0
DF_namespace.position3d = nil

DF_namespace.configToLoad = nil
DF_namespace.AnimaticToLoad = nil
DF_namespace.haveTarget=nil

DF_namespace.wipespell = true

DF_namespace.environnement = getfenv(0)

DF_namespace.DefaultSpell={
	spellIDs="0",
	abiUserText="",
	positionx=64,
	positiony=64,
	barpositionx=128,
	barpositiony=64,	
	width=32,
	height=32,
	sType="DebuffTarget",
	showcd=true,
	showdottimer=true,
	perso=true,
	combo=false,
	icon=0,
	abiInternalCD=0,
	timerbar=0,
	color={r=1,v=0,b=0,a=1},
	abiSound="",
	form={true,true,true,true,true,true,true,true},
	strongcheck=false,
	FX_enable=false,
	FX_stack=0,
	FX_name="Custom",
	FX_width=128,
	FX_height=128,
	FX_texture="Interface\\AddOns\\DroodFocus\\datas\\fx.tga",
	FX_customtexture="",
	FX_mode="BLEND",
	FX_angle=0,
	FX_start_posx=0,
	FX_middle_posx=0,
	FX_end_posx=0,
	FX_start_posy=0,
	FX_middle_posy=0,
	FX_end_posy=0,
	FX_start_alpha=0,
	FX_middle_alpha=1,
	FX_end_alpha=0,
	FX_start_scale=0.5,
	FX_middle_scale=1,
	FX_end_scale=0.5,
	FX_start_width=1,
	FX_middle_width=1,
	FX_end_width=1,		
	FX_start_height=1,
	FX_middle_height=1,
	FX_end_height=1,
	FX_speed=40,
	FX_rotatespeed=0,
	FX_chakerpower=0,
	FX_pulsepowerX=0,
	FX_pulsespeedX=0,
	FX_pulsepowerY=0,
	FX_pulsespeedY=0,
	FX_pulsepowerZ=0,
	FX_pulsespeedZ=0,
	FX_timerenable=false,			
	FX_timerposx=0,
	FX_timerposy=0,
	FX_timersmall=true,
	FX_timerabove=false,
	FX_timerscale=0.40,
	FX_timeralpha=0.35,
	FX_textenabled=false,
	FX_fontPath="Interface\\AddOns\\DroodFocus\\datas\\font_unispace.ttf",
	FX_textsize=12,
	FX_textColor={
		["a"] = 0.5,
		["r"] = 1,
		["v"] = 1,
		["b"] = 1,		
	},
	FX_textalign="CENTER",
	FX_textoffsetx=0,
	FX_textoffsety=-40,
	luaCode="",
	comboPoints=0,
	removable=true,
	FX_positionx=0,
	FX_positiony=0,
	FX_newLevel=200,
	TimerLimit=0,
	FX_progressTexture=0,
	FX_progressTextureFill=1,
	abiVieLimite=0,
	abiTextWarning=false,
	abiWarn=0,
	abiSoundWarningFile="",
	abiVieLimiteSens=1,
	abiLastCd=0,
	abiSoundWarning=0,
	TimerLimitSens=1,
	abiTalent=0,
	abiBuffWarning=false,
	abiRdyMode=false,
	FX_OffMode=1,
	inRange=0,
	objScale=1,
	txtScale=1,
}

local indexToRemove = {
	["abiDotIndex"]=true,
	["abiOldTimeLeft"]=true,
	["abiSpellId"]=true,
	["abiAlphaPulse"]=true,
	["abiSoundWarningOk"]=true,
	["abiSpelltext"]=true,
	["abiPower"]=true,
	["abiIsaBuff"]=true,
	["abiSpellIdForCD"]=true,
	["abiStack"]=true,
	["abiAlert"]=true,
	["abiCD"]=true,
	["abiLast"]=true,
	["abiEnd"]=true,
	["abiFake"]=true,
	["abiTimeLeft"]=true,
	["abiRotatePulse"]=true,
	["abiStart"]=true,
	["abiRotatePulseInc"]=true,
	["abiCDAlert"]=true,
	["names"]=true,
	["abiDuration"]=true,
	["ids"]=true,
	["abiActiveCond"]=true,
}

function DF_namespace:cleanUpConfig()
	
	local tempConfig = {}
	DF_namespace:copyTable(DF_config,tempConfig,true,true)
	DF_config=table.wipe(DF_config)
	DF_namespace:copyTable(tempConfig,DF_config,true)
	tempConfig=table.wipe(tempConfig)
		
end

StaticPopupDialogs["WIPESPELLS"] = {
	preferredIndex = 3,
  text = DF_namespace.locale["loadconfigansw"],
  button1 = DF_namespace.locale["loadconfigkeep"],
  button2 = DF_namespace.locale["loadconfigdisc"],
	OnAccept = function()
		DF_namespace:config_Loadok(DF_namespace.configToLoad,false,false)
	end,
	OnCancel = function()
		DF_namespace:config_Loadok(DF_namespace.configToLoad,false,true)
	end,  
  timeout = 0,
  whileDead = true,
  hideOnEscape = true,
};

StaticPopupDialogs["LOADSPELLS"] = {
	preferredIndex = 3,
  text = DF_namespace.locale["loadspellconfigansw"],
  button1 = DF_namespace.locale["repyes"],
  button2 = DF_namespace.locale["repno"],
	OnAccept = function()
		DF_namespace:spellconfig_Loadok(DF_namespace.configToLoad,false,false)
	end,
  timeout = 0,
  whileDead = true,
  hideOnEscape = true,
};

-- effacement valeur d'une table / erasing a value table
function DF_namespace:clearTable(source,spellstoo)
	local function _clear(csource)
		for index, value in pairs(csource) do
			if type(csource[index]) ~= "table" then
				csource[index]=nil
			else
				if (tostring(index)~="spells" or (tostring(index)=="spells" and spellstoo==true)) then
					_clear(csource[index])
				end
			end
		end
	end
	_clear(source)
end

-- copy d'une table vers une autre / copy from one table to another
function DF_namespace:copyTable(source,destination,spellstoo,skipIndex)
	local function _copy(csource,cdestination)
		for index, value in pairs(csource) do
			if type(csource[index]) ~= "table" then
				
				if skipIndex==nil or not indexToRemove[index] then
					cdestination[index]=csource[index]
				end
				
			else
				
				if skipIndex==nil or not indexToRemove[index] then
				
					if (tostring(index)~="spells" or (tostring(index)=="spells" and spellstoo==true)) then
				
						if cdestination[index]==nil or not cdestination[index] then
							cdestination[index]={}
						end
						
						_copy(csource[index],cdestination[index])
					
					end
					
				end
				
			end
		end
	end
	
	_copy(source,destination)
	
end

function DF_namespace:deepcopy(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end
    return _copy(object)
end

function DF_namespace:dumptable(baseTable)

	local chemin=""
	local chaine
	
	local function _dumpit(baseTable,chemin)
	
		for index, value in pairs(baseTable) do

			if type(baseTable[index]) ~= "table" then
				-- valeur
				chaine=tostring(index).." -> "..tostring(value).."\n"
				DEFAULT_CHAT_FRAME:AddMessage(chaine)
			else
				-- sous-table
				_dumpit(baseTable[index],chemin.."."..tostring(index))
			end
			
		end
		
	end
	
	_dumpit(baseTable,"")	

end

	-- Compléte la configuration actuel avec les variables de la config par default
	-- Complete with the current configuration variables default config
function DF_namespace:completeTable(tcurrent,tdefaut,force)
	local chemin="config"

	local function _check(current,defaut,chemin,force)
		--DF_namespace:debugLine("chemin ",chemin)
		for index, value in pairs(defaut) do
			if type(defaut[index]) ~= "table" then
				if current[index]==nil then
					current[index]=defaut[index]
					--DF_namespace:debugLine("SET "..tostring(index),defaut[index])
				end
			else
				if chemin~="config.spells" or force then
					if current[index]==nil or not current[index] then
						current[index]={}
						--DF_namespace:debugLine("INDEX "..tostring(index),true)
					end				
					_check(current[index],defaut[index],chemin.."."..tostring(index),force)
				end
			end
		end
	end
	_check(tcurrent,tdefaut,chemin,force)	
end

function DF_namespace:configSaved(name)
	local nbConf=getn(DF_saved_configs)
	for i = 1,nbConf do
		if DF_saved_configs[i].configname==name then
			return i
		end
	end
	
	return 0
	
end

function DF_namespace:configBuildin(name)
	local nbConf=getn(DF_namespace.DF_pred_configs)
	for i = 1,nbConf do
		if DF_namespace.DF_pred_configs[i].configname==name then
			return i
		end
	end
	
	return 0
	
end

function DF_namespace:configSetup(name)
	local nbConf=getn(DF_namespace.additional_configs)
	for i = 1,nbConf do
		if DF_namespace.additional_configs[i].configname==name then
			return i
		end
	end
	
	return 0
	
end

function DF_namespace:config_Save(name)
	
	local conf
	
	if not name then name=DF_config.configname end
	
	name=name:gsub("Default", "User")
	name=name:gsub("SetUp", "User")
	DF_config.configname=name
	DF_config.configversion=DROODFOCUS_CONFIGVERSION
	conf = DF_namespace:configSaved(name)

	if conf==0 then
		conf=getn(DF_saved_configs)+1
		DF_saved_configs[conf] = {}
	end

	DF_config.configversion=DROODFOCUS_CONFIGVERSION

	DF_saved_configs[conf] = DF_namespace:deepcopy(DF_config)
	DF_saved_configs[conf].configname=name

	DF_namespace:options_SavedconfigLists()
	
	DEFAULT_CHAT_FRAME:AddMessage(DF_namespace.locale["saved"]..name)
	
end

function DF_namespace:config_Load(name,showconfig)

	if not name then name=DF_namespace.configToLoad end
	DF_namespace.configToLoad=name;
	
	StaticPopup_Show("WIPESPELLS");

end

function DF_namespace:spellconfig_Load(name,showconfig)

	if not name then name=DF_namespace.configToLoad end
	DF_namespace.configToLoad=name;
	
	StaticPopup_Show("LOADSPELLS");

end

function DF_namespace:config_Loadok(name,showconfig,wipespell)

	local saveconfigPrimarySpe=DF_config.configPrimarySpe
	local saveconfigSecondarySpe=DF_config.configSecondarySpe		
	local conf
	
	DF_namespace.pause=true

	DF:options_resetselectPt()

	DF_namespace:hide_ooc_frame()
	
	if not name then name=DF_namespace.configToLoad end
	
	if string.find(name, "Default") then
	
		conf = DF_namespace:configBuildin(name)
		
		if conf~=0 then
			
			if (wipespell==true) then
				while getn(DF_config.spells)>getn(DF_namespace.DF_pred_configs[conf].spells) do
					table.remove(DF_config.spells,getn(DF_config.spells))
				end
			end
			
			DF_namespace:options_hide()
		
			DF_namespace:clearTable(DF_config,wipespell)
			DF_namespace:copyTable(DF_namespace.DF_pred_configs[conf],DF_config,wipespell)
			DF_namespace:completeTable(DF_config,DF_namespace.DF_pred_configs[1],false)
			DF_namespace:updateTable()
			
			DF_namespace:cleanUpConfig()
			
			DF_namespace:init_frames()
			DF_namespace:toggle_toggle()
			DF_namespace:DF_MinimapToggle()
		
			--DF_namespace:replace_droodfocus()
		
			DEFAULT_CHAT_FRAME:AddMessage(DF_namespace.locale["loaded"]..DF_config.configname)
			
			if (showconfig==true) then
				DF_namespace:options_hide("DFOPTIONSelement");
				DF_namespace:options_show("DFOPTIONSelement")
			end
			
			DF_namespace.environnement["DFconfignamebox"]:Hide()
			DF_namespace.environnement["DFconfignamebox"]:Show()		
			
			DF_config.configversion=DROODFOCUS_CONFIGVERSION

		end
	elseif string.find(name, "SetUp") then
	
		conf = DF_namespace:configSetup(name)
		
		if conf~=0 then

			if (wipespell==true) then
				while getn(DF_config.spells)>getn(DF_namespace.additional_configs[conf].spells) do
					table.remove(DF_config.spells,getn(DF_config.spells))
				end
			end
			
			DF_namespace:options_hide()
		
			DF_namespace:clearTable(DF_config,wipespell)
			DF_namespace:copyTable(DF_namespace.additional_configs[conf],DF_config,wipespell)
			DF_namespace:completeTable(DF_config,DF_namespace.DF_pred_configs[1],false)
			DF_namespace:updateTable()
			
			DF_namespace:cleanUpConfig()
			
			DF_namespace:init_frames()
			DF_namespace:toggle_toggle()
			DF_namespace:DF_MinimapToggle()
		
			--DF_namespace:replace_droodfocus()
		
			DEFAULT_CHAT_FRAME:AddMessage(DF_namespace.locale["loaded"]..DF_config.configname)
			
			if (showconfig==true) then
				DF_namespace:options_hide("DFOPTIONSelement");
				DF_namespace:options_show("DFOPTIONSelement")
			end
			
			DF_namespace.environnement["DFconfignamebox"]:Hide()
			DF_namespace.environnement["DFconfignamebox"]:Show()		
			
			DF_config.configversion=DROODFOCUS_CONFIGVERSION

		end
	elseif string.find(name, "Mod") then
	
		conf = DF_namespace:configSetup(name)
		
		if conf~=0 then

			DF_namespace:options_hide()
		
			DF_namespace:copyTable(DF_namespace.additional_configs[conf],DF_config,false)
			
			DF_namespace:init_frames()
			DF_namespace:toggle_toggle()
			DF_namespace:DF_MinimapToggle()
		
			DEFAULT_CHAT_FRAME:AddMessage(DF_namespace.locale["loaded"]..DF_config.configname)
			
			if (showconfig==true) then
				DF_namespace:options_hide("DFOPTIONSelement");
				DF_namespace:options_show("DFOPTIONSelement")
			end
			
			DF_namespace.environnement["DFconfignamebox"]:Hide()
			DF_namespace.environnement["DFconfignamebox"]:Show()		
			
			DF_config.configversion=DROODFOCUS_CONFIGVERSION

		end
		
	else
	
		conf = DF_namespace:configSaved(name)
		
		if conf~=0 then

			if (wipespell==true) then
				while getn(DF_config.spells)>getn(DF_saved_configs[conf].spells) do
					table.remove(DF_config.spells,getn(DF_config.spells))
				end
			end
			
			DF_namespace:options_hide()
			
			DF_namespace:clearTable(DF_config,wipespell)
			DF_namespace:copyTable(DF_saved_configs[conf],DF_config,wipespell)
			DF_namespace:completeTable(DF_config,DF_namespace.DF_pred_configs[1],false)
			DF_namespace:updateTable()
			
			DF_namespace:cleanUpConfig()
			
			DF_namespace:init_frames()
			DF_namespace:toggle_toggle()
			DF_namespace:DF_MinimapToggle()
			
			--DF_namespace:replace_droodfocus()
			
			DEFAULT_CHAT_FRAME:AddMessage(DF_namespace.locale["loaded"]..DF_config.configname)
			
			if (showconfig==true) then
				DF_namespace:options_hide("DFOPTIONSelement");
				DF_namespace:options_show("DFOPTIONSelement")
			end
			
			if DF_namespace.environnement["DFconfignamebox"] then
				DF_namespace.environnement["DFconfignamebox"]:Hide()
				DF_namespace.environnement["DFconfignamebox"]:Show()		
			end
			
			DF_config.configversion=DROODFOCUS_CONFIGVERSION
			
		end
	end

	DF_config.configPrimarySpe=saveconfigPrimarySpe
	DF_config.configSecondarySpe=saveconfigSecondarySpe
	
	DF_namespace.pause=false
	
	return
	
end

function DF_namespace:spellconfig_Loadok(name)

	local conf
	
	DF_namespace.pause=true
	DF:options_resetselectPt()
	DF_namespace:hide_ooc_frame()
	
	if not name then name=DF_namespace.configToLoad end
	
	conf = DF_namespace:configBuildin(name)
	
	if conf~=0 then
		
		while getn(DF_config.spells)>getn(DF_namespace.DF_pred_configs[conf].spells) do
			table.remove(DF_config.spells,getn(DF_config.spells))
		end
		
		DF_namespace:options_hide()
	
		DF_namespace:clearTable(DF_config.spells,true)
		DF_namespace:copyTable(DF_namespace.DF_pred_configs[conf].spells,DF_config.spells,true)
		
		DF_namespace:init_frames()
		DF_namespace:toggle_toggle()
		DF_namespace:DF_MinimapToggle()
		
	end
	
	DF_namespace.pause=false
	
	return
	
end

function DF_namespace:config_delete(numero)
	table.remove(DF_saved_configs,numero)
	DF_namespace:options_SavedconfigLists()
end

function DF_namespace:config_Reset()

	DF:options_resetselectPt()
	DF_namespace:hide_ooc_frame()

	while getn(DF_config.spells)>getn(DF_namespace.DF_pred_configs[1].spells) do
		table.remove(DF_config.spells,getn(DF_config.spells))
	end

	DF_namespace:options_hide()
	
	DF_namespace:clearTable(DF_config,true)
	DF_namespace:copyTable(DF_namespace.DF_pred_configs[1],DF_config,true)
	DF_namespace:completeTable(DF_config,DF_namespace.DF_pred_configs[1],false)
	DF_namespace:updateTable()
	
	DF_namespace:cleanUpConfig()
	
	DF_namespace:init_frames()
	DF_namespace:toggle_toggle()
	DF_namespace.environnement["DFconfignamebox"]:Hide()
	DF_namespace.environnement["DFconfignamebox"]:Show()
	DF_namespace.environnement["dfcombat"]:Hide()
	DF_namespace.environnement["dfcombat"]:Show()
	DEFAULT_CHAT_FRAME:AddMessage(DF_namespace.locale["reset"])
	DF_config.configversion=DROODFOCUS_CONFIGVERSION
end

function DF_namespace:updateTable()

	local anchorx
	local anchory
	local globalx
	local globaly
	local nbAnchors
	local oldx
	local oldy
	local tempx
	local tempy
	
	-- mise a jour des positions des ancres par rapport a l'ancre global
	-- (pas de changement sur les version supérieure a la 4.1.5)
	-- Update the positions of the anchors by the anchor global report
	-- (No change on the higher is 4.1.5)
	if tonumber(DF_config.configversion)<415 then

		-- position de l'ancre 1
		-- position of the anchor 1
		tempx=DF_config["anchor1"].positionx
		tempy=DF_config["anchor1"].positiony	

		-- initialisation de l'ancre 0 a coté de l'ancre 1
		-- initilizing 0 anchor next to one of the anchor
		DF_config["anchor0"].positionx = tempx-32
		DF_config["anchor0"].positiony = tempy+32
		globalx=DF_config["anchor0"].positionx
		globaly=DF_config["anchor0"].positiony
		
		nbAnchors = 7
		-- replacement des ancre 1 a 7 par rapport a l'ancre 0
		-- replacement of anchor 1 to 7 relative to the anchor 0
		for i = 1,nbAnchors do
			
			tempx=DF_config["anchor"..tostring(i)].positionx
			tempy=DF_config["anchor"..tostring(i)].positiony
			
			if (tempx==0 and tempy==0) then
				DF_config["anchor"..tostring(i)].positionx = -200
				DF_config["anchor"..tostring(i)].positiony = 0
			else
				DF_config["anchor"..tostring(i)].positionx = (tempx-globalx)
				DF_config["anchor"..tostring(i)].positiony = (tempy-globaly)
			end
			
		end

		DF_config["anchor0"].positionx = ( GetScreenWidth() * UIParent:GetEffectiveScale() )/2
		DF_config["anchor0"].positiony = ( GetScreenHeight() * UIParent:GetEffectiveScale() )/2

	end
	
	if tonumber(DF_config.configversion)<419 then
		
		-- ajout auto de l'effet special OOC
		-- auto-add special effect OOC
		if DF_config.ooc.enable then

			table.insert(DF_config.spells, 1, {})
			DF_namespace:copyTable(DF_namespace.DefaultSpell,DF_config.spells[1],true)
			
			DF_config.spells[1].spellIDs="16870"
			DF_config.spells[1].sType="BuffPlayer"
			DF_config.spells[1].icon=0
			DF_config.spells[1].timerbar=0
			
			DF_config.spells[1].FX_enable=true
			DF_config.spells[1].FX_positionx=DF_config.ooc.positionx
			DF_config.spells[1].FX_positiony=DF_config.ooc.positiony
			DF_config.spells[1].FX_width=DF_config.ooc.width
			DF_config.spells[1].FX_height=DF_config.ooc.height
			DF_config.spells[1].FX_level=DF_config.ooc.level
			DF_config.spells[1].FX_mode=DF_config.ooc.mode
			DF_config.spells[1].FX_texture="Interface\\AddOns\\DroodFocus\\datas\\fx_ooc.tga"

			DF_config.spells[1].FX_start_scale=2.5
			DF_config.spells[1].FX_middle_scale=1.25
			DF_config.spells[1].FX_end_scale=2.5

			DF_config.spells[1].FX_start_posx=0
			DF_config.spells[1].FX_middle_posx=0
			DF_config.spells[1].FX_end_posx=0
			
			DF_config.spells[1].FX_start_posy=0
			DF_config.spells[1].FX_middle_posy=0
			DF_config.spells[1].FX_end_posy=0	

			DF_config.spells[1].FX_start_alpha=0
			DF_config.spells[1].FX_middle_alpha=1
			DF_config.spells[1].FX_end_alpha=0

			DF_config.spells[1].FX_speed=40

			DF_config.spells[1].FX_rotatespeed=0.5
			DF_config.spells[1].FX_chakerpower=1
			
		end
		
	end

	if tonumber(DF_config.configversion)<427 then

		DF_config.timerbars[1].width=DF_config.timerbar.width
		DF_config.timerbars[1].height=DF_config.timerbar.height
		DF_config.timerbars[1].texturePath=DF_config.timerbar.texturePath
		DF_config.timerbars[1].font1Path=DF_config.timerbar.font1Path
		DF_config.timerbars[1].font1Size=DF_config.timerbar.font1Size
		DF_config.timerbars[1].font2Path=DF_config.timerbar.font2Path
		DF_config.timerbars[1].font2Size=DF_config.timerbar.font2Size
		DF_config.timerbars[1].activeAlpha=DF_config.timerbar.activeAlpha
		DF_config.timerbars[1].inactiveAlpha=DF_config.timerbar.inactiveAlpha
		DF_config.timerbars[1].border=DF_config.timerbar.border
		DF_config.timerbars[1].borderSize=DF_config.timerbar.borderSize
		DF_config.timerbars[1].timeline=DF_config.timerbar.timeline
		DF_config.timerbars[1].prop=DF_config.timerbar.prop
		DF_config.timerbars[1].orderByTime=DF_config.timerbar.orderByTime
		DF_config.timerbars[1].level=DF_config.timerbar.level
		DF_config.timerbars[1].growup=DF_config.timerbar.growup
		DF_config.timerbars[1].stackup1=DF_config.timerbar.stackup1
		DF_config.timerbars[1].showSpark=DF_config.timerbar.showSpark
		DF_config.timerbars[1].activeAlphaCD=DF_config.timerbar.activeAlphaCD
		DF_config.timerbars[1].cdoffsety=DF_config.timerbar.cdoffsety
		DF_config.timerbars[1].textColor.a=DF_config.timerbar.textColor.a
		DF_config.timerbars[1].textColor.r=DF_config.timerbar.textColor.r
		DF_config.timerbars[1].textColor.v=DF_config.timerbar.textColor.v
		DF_config.timerbars[1].textColor.b=DF_config.timerbar.textColor.b
		DF_config.timerbars[1].borderColor.a=DF_config.timerbar.borderColor.a
		DF_config.timerbars[1].borderColor.r=DF_config.timerbar.borderColor.r
		DF_config.timerbars[1].borderColor.v=DF_config.timerbar.borderColor.v
		DF_config.timerbars[1].borderColor.b=DF_config.timerbar.borderColor.b
		DF_config.timerbars[1].cdColor.a=DF_config.timerbar.cdColor.a
		DF_config.timerbars[1].cdColor.r=DF_config.timerbar.cdColor.r
		DF_config.timerbars[1].cdColor.v=DF_config.timerbar.cdColor.v
		DF_config.timerbars[1].cdColor.b=DF_config.timerbar.cdColor.b
		DF_config.timerbars[1].textsoffsets[1].offsetx=DF_config.timerbar.textsoffsets[1].offsetx
		DF_config.timerbars[1].textsoffsets[1].offsety=DF_config.timerbar.textsoffsets[1].offsety
		DF_config.timerbars[1].textsoffsets[2].offsetx=DF_config.timerbar.textsoffsets[2].offsetx
		DF_config.timerbars[1].textsoffsets[2].offsety=DF_config.timerbar.textsoffsets[2].offsety

		DF_config.timerbars[2].width=DF_config.timerbar.width2
		DF_config.timerbars[2].height=DF_config.timerbar.height2
		DF_config.timerbars[2].texturePath=DF_config.timerbar.texturePath
		DF_config.timerbars[2].font1Path=DF_config.timerbar.font1Path
		DF_config.timerbars[2].font1Size=DF_config.timerbar.font1Size
		DF_config.timerbars[2].font2Path=DF_config.timerbar.font2Path
		DF_config.timerbars[2].font2Size=DF_config.timerbar.font2Size
		DF_config.timerbars[2].activeAlpha=DF_config.timerbar.activeAlpha2
		DF_config.timerbars[2].inactiveAlpha=DF_config.timerbar.inactiveAlpha2
		DF_config.timerbars[2].border=DF_config.timerbar.border
		DF_config.timerbars[2].borderSize=DF_config.timerbar.borderSize
		DF_config.timerbars[2].timeline=DF_config.timerbar.timeline
		DF_config.timerbars[2].prop=DF_config.timerbar.prop2
		DF_config.timerbars[2].orderByTime=DF_config.timerbar.orderByTime
		DF_config.timerbars[2].level=DF_config.timerbar.level
		DF_config.timerbars[2].growup=DF_config.timerbar.growup
		DF_config.timerbars[2].stackup1=DF_config.timerbar.stackup2
		DF_config.timerbars[2].showSpark=DF_config.timerbar.showSpark
		DF_config.timerbars[2].activeAlphaCD=DF_config.timerbar.activeAlphaCD2
		DF_config.timerbars[2].cdoffsety=DF_config.timerbar.cdoffsety
		DF_config.timerbars[2].textColor.a=DF_config.timerbar.textColor.a
		DF_config.timerbars[2].textColor.r=DF_config.timerbar.textColor.r
		DF_config.timerbars[2].textColor.v=DF_config.timerbar.textColor.v
		DF_config.timerbars[2].textColor.b=DF_config.timerbar.textColor.b
		DF_config.timerbars[2].borderColor.a=DF_config.timerbar.borderColor.a
		DF_config.timerbars[2].borderColor.r=DF_config.timerbar.borderColor.r
		DF_config.timerbars[2].borderColor.v=DF_config.timerbar.borderColor.v
		DF_config.timerbars[2].borderColor.b=DF_config.timerbar.borderColor.b
		DF_config.timerbars[2].cdColor.a=DF_config.timerbar.cdColor.a
		DF_config.timerbars[2].cdColor.r=DF_config.timerbar.cdColor.r
		DF_config.timerbars[2].cdColor.v=DF_config.timerbar.cdColor.v
		DF_config.timerbars[2].cdColor.b=DF_config.timerbar.cdColor.b
		DF_config.timerbars[2].textsoffsets[1].offsetx=DF_config.timerbar.textsoffsets[1].offsetx
		DF_config.timerbars[2].textsoffsets[1].offsety=DF_config.timerbar.textsoffsets[1].offsety
		DF_config.timerbars[2].textsoffsets[2].offsetx=DF_config.timerbar.textsoffsets[2].offsetx
		DF_config.timerbars[2].textsoffsets[2].offsety=DF_config.timerbar.textsoffsets[2].offsety

		DF_config.iconbars[1].fontSize=DF_config.icons.fontSize
		DF_config.iconbars[1].orderByTime=DF_config.icons.orderByTime
		DF_config.iconbars[1].decimal=DF_config.icons.decimal
		DF_config.iconbars[1].automatic=DF_config.icons.automatic
		DF_config.iconbars[1].showSpiral=DF_config.icons.showSpiral
		DF_config.iconbars[1].inactiveAlpha=DF_config.icons.inactiveAlpha
		DF_config.iconbars[1].level=DF_config.icons.level
		DF_config.iconbars[1].textsoffsets[1].visible=DF_config.icons.textsoffsets[1].visible
		DF_config.iconbars[1].textsoffsets[1].offsety=DF_config.icons.textsoffsets[1].offsety
		DF_config.iconbars[1].textsoffsets[1].align=DF_config.icons.textsoffsets[1].align
		DF_config.iconbars[1].textsoffsets[1].offsetx=DF_config.icons.textsoffsets[1].offsetx
		DF_config.iconbars[1].textsoffsets[1].size=DF_config.icons.textsoffsets[1].size
		DF_config.iconbars[1].textsoffsets[2].visible=DF_config.icons.textsoffsets[2].visible
		DF_config.iconbars[1].textsoffsets[2].offsety=DF_config.icons.textsoffsets[2].offsety
		DF_config.iconbars[1].textsoffsets[2].align=DF_config.icons.textsoffsets[2].align
		DF_config.iconbars[1].textsoffsets[2].offsetx=DF_config.icons.textsoffsets[2].offsetx
		DF_config.iconbars[1].textsoffsets[2].size=DF_config.icons.textsoffsets[2].size
		DF_config.iconbars[1].textsoffsets[3].visible=DF_config.icons.textsoffsets[3].visible
		DF_config.iconbars[1].textsoffsets[3].offsety=DF_config.icons.textsoffsets[3].offsety
		DF_config.iconbars[1].textsoffsets[3].align=DF_config.icons.textsoffsets[3].align
		DF_config.iconbars[1].textsoffsets[3].offsetx=DF_config.icons.textsoffsets[3].offsetx
		DF_config.iconbars[1].textsoffsets[3].size=DF_config.icons.textsoffsets[3].size
		DF_config.iconbars[1].colonne=DF_config.icons.colonne
		DF_config.iconbars[1].fontPath=DF_config.icons.fontPath
		DF_config.iconbars[1].mode=DF_config.icons.mode
		DF_config.iconbars[1].pointpa=DF_config.icons.pointpa
		DF_config.iconbars[1].width=DF_config.icons.width
		DF_config.iconbars[1].height=DF_config.icons.height
		DF_config.iconbars[1].speed=DF_config.icons.speed
		DF_config.iconbars[1].pulse=DF_config.icons.pulse
		DF_config.iconbars[1].activeAlpha=DF_config.icons.activeAlpha
		DF_config.iconbars[1].growup=DF_config.icons.growup
		DF_config.iconbars[1].textColor.a=DF_config.icons.textColor.a
		DF_config.iconbars[1].textColor.r=DF_config.icons.textColor.r
		DF_config.iconbars[1].textColor.v=DF_config.icons.textColor.v
		DF_config.iconbars[1].textColor.b=DF_config.icons.textColor.b

		DF_config.iconbars[2].fontSize=DF_config.icons.fontSize
		DF_config.iconbars[2].orderByTime=DF_config.icons.orderByTime
		DF_config.iconbars[2].decimal=DF_config.icons.decimal
		DF_config.iconbars[2].automatic=DF_config.icons.automatic
		DF_config.iconbars[2].showSpiral=DF_config.icons.showSpiral
		DF_config.iconbars[2].inactiveAlpha=DF_config.icons.inactiveAlpha
		DF_config.iconbars[2].level=DF_config.icons.level
		DF_config.iconbars[2].textsoffsets[1].visible=DF_config.icons.textsoffsets[1].visible
		DF_config.iconbars[2].textsoffsets[1].offsety=DF_config.icons.textsoffsets[1].offsety
		DF_config.iconbars[2].textsoffsets[1].align=DF_config.icons.textsoffsets[1].align
		DF_config.iconbars[2].textsoffsets[1].offsetx=DF_config.icons.textsoffsets[1].offsetx
		DF_config.iconbars[2].textsoffsets[1].size=DF_config.icons.textsoffsets[1].size
		DF_config.iconbars[2].textsoffsets[2].visible=DF_config.icons.textsoffsets[2].visible
		DF_config.iconbars[2].textsoffsets[2].offsety=DF_config.icons.textsoffsets[2].offsety
		DF_config.iconbars[2].textsoffsets[2].align=DF_config.icons.textsoffsets[2].align
		DF_config.iconbars[2].textsoffsets[2].offsetx=DF_config.icons.textsoffsets[2].offsetx
		DF_config.iconbars[2].textsoffsets[2].size=DF_config.icons.textsoffsets[2].size
		DF_config.iconbars[2].textsoffsets[3].visible=DF_config.icons.textsoffsets[3].visible
		DF_config.iconbars[2].textsoffsets[3].offsety=DF_config.icons.textsoffsets[3].offsety
		DF_config.iconbars[2].textsoffsets[3].align=DF_config.icons.textsoffsets[3].align
		DF_config.iconbars[2].textsoffsets[3].offsetx=DF_config.icons.textsoffsets[3].offsetx
		DF_config.iconbars[2].textsoffsets[3].size=DF_config.icons.textsoffsets[3].size
		DF_config.iconbars[2].colonne=DF_config.icons.colonne2
		DF_config.iconbars[2].fontPath=DF_config.icons.fontPath
		DF_config.iconbars[2].mode=DF_config.icons.mode
		DF_config.iconbars[2].pointpa=DF_config.icons.pointpa
		DF_config.iconbars[2].width=DF_config.icons.width2
		DF_config.iconbars[2].height=DF_config.icons.height2
		DF_config.iconbars[2].speed=DF_config.icons.speed
		DF_config.iconbars[2].pulse=DF_config.icons.pulse
		DF_config.iconbars[2].activeAlpha=DF_config.icons.activeAlpha
		DF_config.iconbars[2].growup=DF_config.icons.growup
		DF_config.iconbars[2].textColor.a=DF_config.icons.textColor.a
		DF_config.iconbars[2].textColor.r=DF_config.icons.textColor.r
		DF_config.iconbars[2].textColor.v=DF_config.icons.textColor.v
		DF_config.iconbars[2].textColor.b=DF_config.icons.textColor.b

		-- ajout gestion blood in the water / adding blood in the water management
		table.insert(DF_config.spells, 1, {})
		DF_namespace:copyTable(DF_namespace.DefaultSpell,DF_config.spells[1],true)
		
		DF_config.spells[1].spellIDs="0"
		DF_config.spells[1].sType="Custom"
		DF_config.spells[1].abiUserText="Blood in the water"
	
		DF_config.spells[1].icon=0
		DF_config.spells[1].timerbar=0
		DF_config.spells[1].luaCode="current = UnitHealth(\"target\")\nmaxi = UnitHealthMax(\"target\")\npercent = current/maxi\nif percent<0.25 then\nreturn true\nelse\nreturn false\nend\n"	
		
		DF_config.spells[1].FX_enable=true
		DF_config.spells[1].FX_positionx=74
		DF_config.spells[1].FX_positiony=-38
		DF_config.spells[1].FX_width=128
		DF_config.spells[1].FX_height=128
		DF_config.spells[1].FX_level=127
		DF_config.spells[1].FX_mode="BLEND"
		DF_config.spells[1].FX_texture="Interface\\AddOns\\DroodFocus\\datas\\fx_glow10.tga"

		DF_config.spells[1].FX_start_scale=1.25
		DF_config.spells[1].FX_middle_scale=1.25
		DF_config.spells[1].FX_end_scale=1.25

		DF_config.spells[1].FX_start_posx=0
		DF_config.spells[1].FX_middle_posx=0
		DF_config.spells[1].FX_end_posx=-0
		
		DF_config.spells[1].FX_start_posy=250
		DF_config.spells[1].FX_middle_posy=0
		DF_config.spells[1].FX_end_posy=-65	

		DF_config.spells[1].FX_start_alpha=0
		DF_config.spells[1].FX_middle_alpha=0.65
		DF_config.spells[1].FX_end_alpha=0

		DF_config.spells[1].FX_start_height=0
		DF_config.spells[1].FX_middle_height=1
		DF_config.spells[1].FX_end_height=0.5

		DF_config.spells[1].FX_speed=5

		DF_config.spells[1].FX_pulsepowerZ=0.5
		DF_config.spells[1].FX_pulsespeedZ=2
		DF_config.spells[1].FX_rotatespeed=0
		DF_config.spells[1].FX_chakerpower=0		

	end

	if tonumber(DF_config.configversion)<429 then
		DF_config.iconbars[1].inactiveCDAlpha=DF_config.iconbars[1].inactiveAlpha
		DF_config.iconbars[2].inactiveCDAlpha=DF_config.iconbars[2].inactiveAlpha
	end

	if tonumber(DF_config.configversion)<430 then
 		anchorx=DF_config["anchor0"].positionx
 		anchory=DF_config["anchor0"].positiony		
 		oldx=DF_config.alert.positionx
 		oldy=DF_config.alert.positiony
 		DF_config.alert.positionx = anchorx+oldx
 		DF_config.alert.positiony = anchory+oldy
	end
	
	if tonumber(DF_config.configversion)<505 then
 		DF_config.alert.positionx=0
 		DF_config.alert.positiony=0
		DF_config.alert.update505=true
	end
	
	DF_config.combo.defenseCharge=false
	--DF_config.combo.useInternalCombo=false
	
	if DF_config.iconsRDYtext==nil then
		DF_config.iconsRDYtext=DF_namespace.locale["RDY"]
	end
	if DF_config.barsRDYtext==nil then
		DF_config.barsRDYtext=DF_namespace.locale["RDY"]
	end

	if tonumber(DF_config.configversion)<512 then
		DF_config.combo.useInternalCombo=true
 		DF_config.combo.useInternalComboText=true
 		DF_config.dotTracker.enable=false
	end

	if tonumber(DF_config.configversion)<514 then
		local nbSpells = getn(DF_config.spells)
		local sp
		for sp = 1,nbSpells do
			if DF_config.spells[sp].luaCode~="" then
				DF_config.spells[sp].luaCode=DF:enc64(DF_config.spells[sp].luaCode)
			end
		end
	end
		
end

function DF_namespace:config_getname(numero)
	if DF_saved_configs[numero] then
		return DF_saved_configs[numero].configname
	else
		return ""
	end
end
