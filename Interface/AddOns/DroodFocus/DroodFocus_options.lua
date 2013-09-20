----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - options
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 2
----------------------------------------------------------------------------------------------------

-- namespace
local DF = DF_namespace
local _

local pt

local configurationPanelExist=false

local DroodFocusOptions = {}
local debuffListButton = {}

local selectPt=nil
local copyPt=nil

local currentPosition=1
local nbLines = 8

local startX=16
local startY=-16
local startLevel=1

local trash = {}
local lignes = {}
local fxcopy=nil
local police=nil
local DF_dropdownlist=nil

local DF_Global_Env = getfenv(0);

local options_sharemedia = {["fpath"]="",["ftype"]="",["fname"]=""}
local shareMediaFrame = nil
local shareMediaTexture = nil
local shareMediaBox = nil
local shareMediaFont=nil

local apercutexture = nil
local apercutexture_texture= nil

local activewndr=38/256		 
local activewndv=42/256
local activewndb=51/256

local inactivewndr=10/256		 
local inactivewndv=11/256
local inactivewndb=13/256

DF.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_NONE")

DF.selectedSpell=nil

StaticPopupDialogs["MEDIAERREUR"] = {
	preferredIndex = 3,
  text = "- DroodFocus -\n\n%s",
  button1 = "Ok",
  timeout = 0,
  whileDead = 1,
  hideOnEscape = 1
};

StaticPopupDialogs["DFDELETECONFIG"] = {
	preferredIndex = 3,
  text = DF_namespace.locale["deleteconfigansw"].."\n\n%s ?\n",
  button1 = DF_namespace.locale["repyes"],
  button2 = DF_namespace.locale["repno"],
	OnAccept = function()
		DF_namespace:config_delete(DF_namespace.configToLoad)
	end,
	OnCancel = function()
	end,  
  timeout = 0,
  whileDead = true,
  hideOnEscape = true,
};

DF.optionsAnimatic={}
DF.optionsLuaCode={}

DF.optionsTarget={
	{texte="none",valeur="",form=nil},
	{texte="target",valeur="target",form=nil},
	{texte="focus",valeur="focus",form=nil},
	{texte="pet",valeur="pet",form=nil},
}

DF.textBorder={
	{texte="none",valeur="",form=nil},
	{texte="OUTLINE",valeur="OUTLINE",form=nil},
	{texte="THICKOUTLINE",valeur="THICKOUTLINE",form=nil},
	{texte="MONOCHROME",valeur="MONOCHROME",form=nil},
}

DF.progressiveTextureOpt={
	{texte=DF.locale["no"],valeur=0,form=nil},
	{texte=DF.locale["fill"],valeur=1,form=nil},
	{texte=DF.locale["empty"],valeur=2,form=nil},
}

DF.inRangeOpt={
	{texte=DF.locale["noRange"],valeur=0,form=nil},
	{texte=DF.locale["mustInRange"],valeur=1,form=nil},
	{texte=DF.locale["mustOutRange"],valeur=2,form=nil},
}

DF.progressiveTextureFillOpt={
	{texte=DF.locale["fBtoT"],valeur=1,form=nil},
	{texte=DF.locale["fTtoB"],valeur=2,form=nil},
	{texte=DF.locale["fLtoR"],valeur=3,form=nil},
	{texte=DF.locale["fRtoL"],valeur=4,form=nil},

}

DF.optionsReportkick={
	{texte="no report",valeur="",form=nil},
	{texte="SAY",valeur="SAY",form=nil},
	{texte="YELL",valeur="YELL",form=nil},
	{texte="PARTY",valeur="PARTY",form=nil},
	{texte="RAID",valeur="RAID",form=nil},
	{texte="RAID & PARTY",valeur="RAID/PARTY",form=nil},
	{texte="LOCAL",valeur="CHAT",form=nil},
}

DF.optionsTalents={
	{texte=DF.locale["Allspecs"],valeur=0,form=nil},
	{texte=DF.locale["Primaryspec"],valeur=1,form=nil},
	{texte=DF.locale["Secondaryspec"],valeur=2,form=nil},
}

DF.optionsSens={
	{texte=DF.locale["sensInf"],valeur=1,form=nil},
	{texte=DF.locale["sensSup"],valeur=2,form=nil},
}

-- table pour listes de choix

DF.optionsBlend={
	{texte="BLEND",valeur="BLEND",form=nil},
	{texte="ADD",valeur="ADD",form=nil},
	{texte="MOD",valeur="MOD",form=nil},
	{texte="ALPHAKEY",valeur="ALPHAKEY",form=nil},
	{texte="DISABLE",valeur="DISABLE",form=nil},
}

DF.optionsTimerbar={
	{texte=DF.locale["none"],valeur=0,form=nil},
	{texte=DF.locale["timerbar"].." 1",valeur=1,form=nil},
	{texte=DF.locale["timerbar"].." 2",valeur=2,form=nil},
	{texte=DF.locale["timerbar"].." 1 "..DF.locale["floatmode"],valeur=3,form=nil},
	{texte=DF.locale["timerbar"].." 2 "..DF.locale["floatmode"],valeur=4,form=nil},
}

DF.optionsFxmode={
	{texte=DF.locale["fxmodeactive"],valeur=1,form=nil},
	{texte=DF.locale["fxmodeinactive"],valeur=2,form=nil},
	{texte=DF.locale["fxmodeactivet"],valeur=3,form=nil},
	{texte=DF.locale["fxmodeinactivet"],valeur=4,form=nil},	
	{texte=DF.locale["fxmodenocd"],valeur=5,form=nil},	
	{texte=DF.locale["fxmodecd"],valeur=6,form=nil},	
	{texte=DF.locale["activedefault"],valeur=7,form=nil},	
}

DF.optionsIconbar={
	{texte=DF.locale["none"],valeur=0,form=nil},
	{texte=DF.locale["iconbar"].." 1",valeur=1,form=nil},
	{texte=DF.locale["iconbar"].." 2",valeur=2,form=nil},
	{texte=DF.locale["iconbar"].." 1 "..DF.locale["floatmode"],valeur=3,form=nil},
	{texte=DF.locale["iconbar"].." 2 "..DF.locale["floatmode"],valeur=4,form=nil},
}

DF.optionsSpiral={
	{texte=DF.locale["spiral1"],valeur=1,form=nil},
	{texte=DF.locale["spiral2"],valeur=2,form=nil},
	{texte=DF.locale["spiral3"],valeur=3,form=nil},
--	{texte=DF.locale["spiral4"],valeur=4,form=nil},
}

DF.flashWhenOffChoices={
	{texte=DF.locale["none"],valeur=0,form=nil},
	{texte=DF.locale["flashWhenOffChoice1"],valeur=1,form=nil},
	{texte=DF.locale["flashWhenOffChoice2"],valeur=2,form=nil},
--	{texte=DF.locale["spiral4"],valeur=4,form=nil},
}



DF.optionsCombotype={
	{texte=DF.locale["linear"],valeur=1,form=nil},
	{texte=DF.locale["radial"],valeur=2,form=nil},
}

DF.optionsBigdotsValue={
	{texte=DF.locale["BigdotsValue1"],valeur=1,form=nil},
	{texte=DF.locale["BigdotsValue2"],valeur=2,form=nil},
	{texte=DF.locale["BigdotsValue3"],valeur=3,form=nil},
	{texte=DF.locale["BigdotsValue4"],valeur=4,form=nil},
}

DF.optionsTextalign={
	{texte=DF.locale["TOPLEFT"],valeur="TOPLEFT",form=nil},
	{texte=DF.locale["TOP"],valeur="TOP",form=nil},
	{texte=DF.locale["TOPRIGHT"],valeur="TOPRIGHT",form=nil},
	{texte=DF.locale["LEFT"],valeur="LEFT",form=nil},
	{texte=DF.locale["CENTER"],valeur="CENTER",form=nil},
	{texte=DF.locale["RIGHT"],valeur="RIGHT",form=nil},
	{texte=DF.locale["BOTTOMLEFT"],valeur="BOTTOMLEFT",form=nil},
	{texte=DF.locale["BOTTOM"],valeur="BOTTOM",form=nil},
	{texte=DF.locale["BOTTOMRIGHT"],valeur="BOTTOMRIGHT",form=nil},	
}

DF.optionsStype={
	{texte=DF.locale["plbuff"],valeur="BuffPlayer",form=nil},
	{texte=DF.locale["pldebuff"],valeur="DebuffPlayer",form=nil},
	{texte=DF.locale["tabuff"],valeur="BuffTarget",form=nil},
	{texte=DF.locale["tadebuff"],valeur="DebuffTarget",form=nil},
	{texte=DF.locale["fobuff"],valeur="BuffFocus",form=nil},
	{texte=DF.locale["fodebuff"],valeur="DebuffFocus",form=nil},
	{texte=DF.locale["pebuff"],valeur="BuffPet",form=nil},
	{texte=DF.locale["pedebuff"],valeur="DebuffPet",form=nil},		
	{texte=DF.locale["plcustom"],valeur="Custom",form=nil},		

}

DF.optionsMediatype={
	{texte="Font",valeur="font",form=nil},
	{texte="Statusbar",valeur="statusbar",form=nil},
	{texte="Texture",valeur="background",form=nil},
	{texte="Sound",valeur="sound",form=nil},
}

DF.optionsOrientation={
	{texte="Horizontal",valeur="HORIZONTAL",form=nil},
	{texte="Vertical",valeur="VERTICAL",form=nil},
}

function DF:options_getTextureNumber(val)

	local latexture="Interface\\icons\\INV_Misc_QuestionMark"
	local temp=tonumber(val)
	local texte=tostring(val)
	local abiImg

	 _, _, abiImg, _, _, _, _, _, _ = GetSpellInfo(temp);
	if abiImg then return abiImg end

	if strfind(texte,string.char(92)) then
		latexture=texte
	else
		latexture="Interface\\AddOns\\DroodFocus\\custom\\"..tostring(val)
	end		

	return latexture
	
end

function DF:options_AnimaticsList()
	local index=1
	DF.optionsAnimatic=table.wipe(DF.optionsAnimatic)
	for tkey,tvalue in pairs(DF.DF_animaticsListDefaut) do
		DF.optionsAnimatic[index]={texte="[BUILDIN] "..DF.DF_animaticsListDefaut[tkey].FX_name,valeur=index}
		index=index+1
	end	
	local index2=1
	for tkey,tvalue in pairs(DF_animaticsList) do
		DF.optionsAnimatic[index]={texte="[USER] "..DF_animaticsList[tkey].FX_name,valeur=1000+index2}
		index=index+1
		index2=index2+1
	end		
end

DF.optionsSavedconfig= {}
DF.optionsSavedconfigForSpe= {}
local optionsSavedspellconfig= {}

function DF:options_SavedconfigLists()

	local index=1
	DF.optionsSavedconfig=table.wipe(DF.optionsSavedconfig)

	for tkey,tvalue in pairs(DF_saved_configs) do
		DF.optionsSavedconfig[index]={texte=DF_saved_configs[tkey].configname,valeur=DF_saved_configs[tkey].configname}
		index=index+1
	end	
	for tkey,tvalue in pairs(DF.DF_pred_configs) do
		DF.optionsSavedconfig[index]={texte=DF.DF_pred_configs[tkey].configname,valeur=DF.DF_pred_configs[tkey].configname}
		index=index+1
	end	
	if DF.additional_configs then
		for tkey,tvalue in pairs(DF.additional_configs) do
			DF.optionsSavedconfig[index]={texte=DF.additional_configs[tkey].configname,valeur=DF.additional_configs[tkey].configname}
			index=index+1
		end		
	end

	index=1
	DF.optionsSavedconfigForSpe=table.wipe(DF.optionsSavedconfigForSpe)
	DF.optionsSavedconfigForSpe[index]={texte="NONE",valeur=""}
	index=index+1
	for tkey,tvalue in pairs(DF_saved_configs) do
		DF.optionsSavedconfigForSpe[index]={texte=DF_saved_configs[tkey].configname,valeur=DF_saved_configs[tkey].configname}
		index=index+1
	end	
	for tkey,tvalue in pairs(DF.DF_pred_configs) do
		DF.optionsSavedconfigForSpe[index]={texte=DF.DF_pred_configs[tkey].configname,valeur=DF.DF_pred_configs[tkey].configname}
		index=index+1
	end	
	
end

function DF:options_SavedspellconfigLists()
	local index=1
	optionsSavedspellconfig=table.wipe(optionsSavedspellconfig)
	for tkey,tvalue in pairs(DF.DF_pred_configs) do
		optionsSavedspellconfig[index]={texte=DF.DF_pred_configs[tkey].configname,valeur=DF.DF_pred_configs[tkey].configname}
		index=index+1
	end	
	
end

DF.optionsTextures={}
DF.optionsFXTextures={}
DF.optionsComboTextures={}
DF.optionsdefenseTextures={}

DF.optionsFonts={}
DF.optionsStatusbars={}
DF.optionsSounds={}

local falseEditBox = CreateFrame("EditBox", "DroodFfalseEditBox", UIParent,"InputBoxTemplate")
falseEditBox:SetAlpha(0)
falseEditBox:EnableMouse(false)
falseEditBox:SetAutoFocus(false)
falseEditBox:SetScript("OnEditFocusGained", function(self)
  self:ClearFocus()
end)		

local DF_panelsList={}

function DF:options_FXMediaLists()

	local temp = DF.LSM:List("background")
	local fetch=nil
	local index=1
	
	DF.optionsFXTextures[index]={texte="None",valeur="Interface\\AddOns\\DroodFocus\\datas\\empty.tga",form="background"}; index=index+1
	for tkey,tvalue in pairs(temp) do
		fetch=DF.LSM:Fetch("background", tvalue)
		if (string.find(tvalue, "DF Aura") or string.find(tvalue, "DF Glow")) then
			DF.optionsFXTextures[index]={texte=tvalue,valeur=fetch,form="background"}; index=index+1
		end
	end

	temp = DF.LSM:List("background")
	fetch=nil
	index=1
	
	DF.optionsComboTextures[index]={texte="None",valeur="Interface\\AddOns\\DroodFocus\\datas\\empty.tga",form="background"}; index=index+1
	for tkey,tvalue in pairs(temp) do
		fetch=DF.LSM:Fetch("background", tvalue)
		if (string.find(tvalue, "DF Combo")) then
			DF.optionsComboTextures[index]={texte=tvalue,valeur=fetch,form="background"}; index=index+1
		end
	end

	temp = DF.LSM:List("background")
	fetch=nil
	index=1
		
	DF.optionsdefenseTextures[index]={texte="None",valeur="Interface\\AddOns\\DroodFocus\\datas\\empty.tga",form="background"}; index=index+1
	for tkey,tvalue in pairs(temp) do
		fetch=DF.LSM:Fetch("background", tvalue)
		if (string.find(tvalue, "DF Defense") or string.find(tvalue, "DF Combo")) then
			DF.optionsdefenseTextures[index]={texte=tvalue,valeur=fetch,form="background"}; index=index+1
		end
	end	
	
end

-- construit liste pour options
function DF:options_ShareMediaLists()

	local temp = DF.LSM:List("background")
	local fetch=nil
	local index=1
	
	DF.optionsTextures[index]={texte="None",valeur="Interface\\AddOns\\DroodFocus\\datas\\empty.tga",form="background"}; index=index+1
	for tkey,tvalue in pairs(temp) do
		fetch=DF.LSM:Fetch("background", tvalue)
		DF.optionsTextures[index]={texte=tvalue,valeur=fetch,form="background"}; index=index+1
	end

	temp = DF.LSM:List("font")
	fetch=nil
	index=1

	for tkey,tvalue in pairs(temp) do
		fetch=DF.LSM:Fetch("font", tvalue)
		DF.optionsFonts[index]={texte=tvalue,valeur=fetch,form="font"}; index=index+1
	end

	temp = DF.LSM:List("statusbar")
	fetch=nil
	index=1
	
	for tkey,tvalue in pairs(temp) do
		fetch=DF.LSM:Fetch("statusbar", tvalue)
		DF.optionsStatusbars[index]={texte=tvalue,valeur=fetch,form="statusbar"}; index=index+1
	end

	temp = DF.LSM:List("sound")
	fetch=nil
	index=1
	
	DF.optionsSounds[index]={texte="None",valeur="",form="sound"}; index=index+1
	for tkey,tvalue in pairs(temp) do
		fetch=DF.LSM:Fetch("sound", tvalue)
		DF.optionsSounds[index]={texte=tvalue,valeur=fetch,form="sound"}; index=index+1
	end
	
end

function DF:options_addID()
	if DF.selectedSpell then
		
		local value =DF_Global_Env["DFSPELLOPT_ids"]:GetText()
		
		if (value=="" or value=="0") then
			DF_Global_Env["DFSPELLOPT_ids"]:SetText(DF.selectedSpell)
		else
			DF_Global_Env["DFSPELLOPT_ids"]:SetText(value..";"..DF.selectedSpell)
		end
		DF_Global_Env["DFSPELLOPT_ids"]:SetFocus()

	end
	
end

function DF:CheckConfigurationPanel()
	if configurationPanelExist==false then
		DF:options_createpanels()	
		configurationPanelExist=true
	end
end

function DF:options_createSinglePanel(panelName)
	
	if not DroodFocusOptions[panelName] then

		local theCode="local DF = DF_namespace\nlocal _\n"..DF_panelsList[panelName]
		local func,err = loadstring(theCode, "DroodFocusOptCode")()

		if DroodFocusOptions[panelName].isMovable and DroodFocusOptions[panelName].name~="DFOPTIONSelement" then
			DroodFocusOptions[panelName]:SetScale(DF_config.optionsScale)
		end
		
		DroodFocusOptions[panelName]:Hide()
		
	end
end

DF_panelsList["DFblood"]=
	'local pt = DF:options_createPanel("DFblood",2,2,true,DF.locale["blood"])\n'
	..'DF:options_createCheckBox(pt,"DFbloodCB",DF_config.blood,"enable",DF.locale["blood"].." "..DF.locale["active"],0,0,nil,"blood")\n'
	..'DF:options_createCheckBox(pt,"DFbloodCBraid",DF_config.blood,"NotInRaid",DF.locale["NotInRaid"],17,0,nil,nil)\n'
	..'DF:options_createSlider(pt,"DFbloodslidersize",DF_config.blood,"size",0.20,2,0.10,DF.locale["scale"],0,1,DF.blood_reinit,"Scale")\n'
	..'DF:options_createSlider(pt,"DFbloodsliderpers",DF_config.blood,"persistence",1,20,1,DF.locale["persistence"],17,1,DF.blood_reinit,"Persistence")\n'
	..'DF:options_createSlider(pt,"DFbloodslideralpha",DF_config.blood,"alpha",0.1,1,0.05,DF.locale["alpha"],0,2,DF.blood_reinit,"alpha")\n'
	..'DF:options_createButton(pt,"DFbloodsliderfake",DF.locale["fake"],17,2,DF.options_bloodtest,nil)\n'

DF_panelsList["DFgrid"]=
	'local pt = DF:options_createPanel("DFgrid",2,1,true,DF.locale["grid"])\n'
	..'DF:options_createCheckBox(pt,"DFgridCB",DF_config,"alignToGrid",DF.locale["aligngrid"],0,0,nil)\n'
	..'DF:options_createSlider(pt,"DFgridslidersizex",DF_config,"gridSizeX",0.25,16,0.25,DF.locale["gridsizex"],0,1,nil)\n'
	..'DF:options_createSlider(pt,"DFgridslidersizey",DF_config,"gridSizeY",0.25,16,0.25,DF.locale["gridsizey"],17,1,nil)\n'

DF_panelsList["DFdotTracker"]=
	'local pt = DF:options_createPanel("DFdotTracker",3,9,true,DF.locale["DFdotTracker"])\n'
	..'DF:options_createCheckBox(pt,"DFdotTrackercheck",DF_config.dotTracker,"enable",DF.locale["active"],0,0,DF.dotTracker_reinit,"dotTracker")\n'
	..'DF:options_createSlider(pt,"DFdotTrackerw",DF_config.dotTracker,"width",32,512,1,DF.locale["width"],0,1,DF.dotTracker_reinit)\n'
	..'DF:options_createSlider(pt,"DFdotTrackerh",DF_config.dotTracker,"height",8,128,1,DF.locale["height"],17,1,DF.dotTracker_reinit)\n'
	..'DF:options_createListbox(pt,"DFdotTrackerfont1",DF_config.dotTracker,"fontPath",DF.locale["text"].." "..DF.locale["fontPath"],0,2,DF.dotTracker_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFdotTrackerslidersize1",DF_config.dotTracker,"fontSize",6,28,1,DF.locale["text"].." "..DF.locale["fontSize"],17,2,DF.dotTracker_reinit)\n'
	..'DF:options_createListbox(pt,"DFdotTrackertextalign1",DF_config.dotTracker,"textAlign",DF.locale["text"].." "..DF.locale["align"],0,3,DF.dotTracker_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFdotTrackerslideralignx1",DF_config.dotTracker,"textx",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,3,DF.dotTracker_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFdotTrackerslideraligny1",DF_config.dotTracker,"texty",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsety"],17,4,DF.dotTracker_reinit,"Text offset")\n'
	..'DF:options_createListbox(pt,"DFdotTrackerfont2",DF_config.dotTracker,"fontPathIcons",DF.locale["timer"].." "..DF.locale["fontPath"],0,5,DF.dotTracker_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFdotTrackerslidersize2",DF_config.dotTracker,"fontSizeIcons",6,28,1,DF.locale["timer"].." "..DF.locale["fontSize"],17,5,DF.dotTracker_reinit)\n'
	..'DF:options_createListbox(pt,"DFdotTrackertextalign2",DF_config.dotTracker,"textAlignIcons",DF.locale["timer"].." "..DF.locale["align"],0,6,DF.dotTracker_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFdotTrackerslideralignx2",DF_config.dotTracker,"textxIcons",-32,32,0.5,DF.locale["timer"].." "..DF.locale["offsetx"],17,6,DF.dotTracker_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFdotTrackerslideraligny2",DF_config.dotTracker,"textyIcons",-32,32,0.5,DF.locale["timer"].." "..DF.locale["offsety"],17,7,DF.dotTracker_reinit,"Text offset")\n'
	..'DF:options_createColorBox(pt,"DFdotTrackertextcolor",DF_config.dotTracker,"textColor",DF.locale["text"].." "..DF.locale["color"],0,7,DF.dotTracker_reinit)\n'
	..'DF:options_createSlider(pt,"DFdotTrackerslideralphamin",DF_config.dotTracker,"alphaActive",0,1,0.05,DF.locale["activeAlpha"],0,8,DF.dotTracker_reinit,"Alpha")\n'
	..'DF:options_createSlider(pt,"DFdotTrackerslideralphamax",DF_config.dotTracker,"alphaInactive",0,1,0.05,DF.locale["inactiveAlpha"],17,8,DF.dotTracker_reinit,"Alpha")\n'
	..'DF:options_createEditbox(pt,"DFdotTrackerliste",DF_config.dotTracker,"dotsList",false,DF.locale["dotsList"],0,9,DF.dotTracker_reinit,true,"dotsList")\n'
	..'DF:options_createText(pt,"DFdotTrackerText1",DF.locale["infostance"],34,1)\n'
	..'DF:options_createCheckBox(pt,"DFdotTracker_form0",DF_config.dotTracker.form,1,DF.locale["form0"],34,1+(0.66*1),DF.dotTracker_reinit,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"DFdotTracker_form1",DF_config.dotTracker.form,2,DF.locale["form1"],34,1+(0.66*2),DF.dotTracker_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdotTracker_form2",DF_config.dotTracker.form,3,DF.locale["form2"],34,1+(0.66*3),DF.dotTracker_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdotTracker_form3",DF_config.dotTracker.form,4,DF.locale["form3"],34,1+(0.66*4),DF.dotTracker_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdotTracker_form4",DF_config.dotTracker.form,5,DF.locale["form4"],34,1+(0.66*5),DF.dotTracker_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdotTracker_form5",DF_config.dotTracker.form,6,DF.locale["form5"],34,1+(0.66*6),DF.dotTracker_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdotTracker_form6",DF_config.dotTracker.form,7,DF.locale["form6"],34,1+(0.66*7),DF.dotTracker_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdotTracker_form7",DF_config.dotTracker.form,8,DF.locale["form7"],34,1+(0.66*8),DF.dotTracker_reinit,"Stance")\n'

DF_panelsList["DFdotPower"]=
	'local pt = DF:options_createPanel("DFdotPower",2,18,true,DF.locale["DFdotPower"])\n'
	..'DF:options_createCheckBox(pt,"DFdotPowershowtext",DF_config.dotPower,"showText",DF.locale["text"].." "..DF.locale["active"],17,0,DF.icons_reinit,nil)\n'
	..'DF:options_createCheckBox(pt,"DFdotPowershowgfx",DF_config.dotPower,"showGfx",DF.locale["dotcolor"].." "..DF.locale["active"],0,0,DF.icons_reinit,nil)\n'
	..'DF:options_createText(pt,"DFdotPowerText1",DF.locale["bigdots"],0,1)\n'
	..'DF:options_createListbox(pt,"DFbigdotPowerdotsalign",DF_config.dotPower,"bigdotsAlign",DF.locale["align"],0,2,DF.icons_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFbigdotPowerdotsoffsetx",DF_config.dotPower,"bigdotsOffsetX",-128,128,1,DF.locale["offsetx"],0,3,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFbigdotPowerdotsoffsety",DF_config.dotPower,"bigdotsOffsetY",-128,128,1,DF.locale["offsety"],17,3,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFbigdotPowerdotsWidth",DF_config.dotPower,"bigdotsWidth",4,128,1,DF.locale["width"],0,4,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFbigdotPowerdotsHeight",DF_config.dotPower,"bigdotsHeight",4,128,1,DF.locale["height"],17,4,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createListbox(pt,"DFbigdotPowerdotsTexture",DF_config.dotPower,"bigdotsTexture",DF.locale["texture"],0,5,DF.icons_reinit,DF.optionsTextures,true,"editableTexture",false,true,true)\n'
	..'DF:options_createCheckBox(pt,"DFbigdotPowerdotsAbove",DF_config.dotPower,"bigdotsAbove",DF.locale["aboveIcon"],17,2,DF.icons_reinit,nil)\n'
	..'DF:options_createText(pt,"DFdotPowerText2",DF.locale["dots"],0,6)\n'
	..'DF:options_createListbox(pt,"DFdotPowerdotsalign",DF_config.dotPower,"dotsAlign",DF.locale["align"],0,7,DF.icons_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFdotPowerdotsoffsetx",DF_config.dotPower,"dotsOffsetX",-128,128,1,DF.locale["offsetx"],17,7,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFdotPowerdotsoffsety",DF_config.dotPower,"dotsOffsetY",-128,128,1,DF.locale["offsety"],17,8,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFdotPowerdotssize",DF_config.dotPower,"dotsSize",4,32,1,DF.locale["size"],0,8,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createText(pt,"DFdotPowerText3",DF.locale["text"],0,9)\n'
	..'DF:options_createListbox(pt,"DFdotPowerfont1",DF_config.dotPower,"fontPath",DF.locale["fontPath"],0,10,DF.icons_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFdotPowerslidersize1",DF_config.dotPower,"fontSize",4,28,1,DF.locale["fontSize"],17,10,DF.icons_reinit)\n'
	..'DF:options_createListbox(pt,"DFotPowertextalign",DF_config.dotPower,"textAlign",DF.locale["text"].." "..DF.locale["align"],0,11,DF.icons_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFdotPowerslideralignx1",DF_config.dotPower,"textx",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,11,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFdotPowerslideraligny1",DF_config.dotPower,"texty",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsety"],17,12,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createColorBox(pt,"DFdotPowertextcolor",DF_config.dotPower,"textColor",DF.locale["text"].." "..DF.locale["color"],0,12,DF.icons_reinit)\n'
	..'DF:options_createListbox(pt,"DFdotPowerTextBorder",DF_config.dotPower,"textBorder",DF.locale["fontPath"].." "..DF.locale["border"],0,13,DF.icons_reinit,DF.textBorder)\n'
	..'DF:options_createCheckBox(pt,"DFdotPowerDynTextCol",DF_config.dotPower,"textDynamicColor",DF.locale["textDynamicColor"],17,13,DF.icons_reinit,"textDynamicColor")\n'
	..'DF:options_createText(pt,"DFdotPowerText4",DF.locale["colors"],0,15)\n'
	..'DF:options_createColorBox(pt,"DFdotPowerredcolor",DF_config.dotPower,"redColor",DF.locale["redColor"],0,18,DF.icons_reinit)\n'
	..'DF:options_createColorBox(pt,"DFdotPoweryellowcolor",DF_config.dotPower,"yellowColor",DF.locale["yellowColor"],0,17,DF.icons_reinit)\n'
	..'DF:options_createColorBox(pt,"DFdotPowergreencolor",DF_config.dotPower,"greenColor",DF.locale["greenColor"],0,16,DF.icons_reinit)\n'
	..'DF:options_createSlider(pt,"DFdotPowerCap",DF_config.dotPower,"cap",0,100,1,DF.locale["cap"],17,16,DF.icons_reinit,"cap")\n'
	..'DF:options_createListbox(pt,"DFdotPowerdotsShowValue",DF_config.dotPower,"bigdotsValue",DF.locale["bigdotsValue"],0,14,DF.icons_reinit,DF.optionsBigdotsValue,false,nil)\n'

DF_panelsList["DFdotPowerBars"]=
	'local pt = DF:options_createPanel("DFdotPowerBars",2,3,true,DF.locale["DFdotPower"])\n'
	..'DF:options_createColorBox(pt,"DFdotPowerBarsredcolor",DF_config.dotPower,"redColor",DF.locale["redColor"],0,2.5,DF.icons_reinit)\n'
	..'DF:options_createColorBox(pt,"DFdotPowerBarsyellowcolor",DF_config.dotPower,"yellowColor",DF.locale["yellowColor"],0,1.5,DF.icons_reinit)\n'
	..'DF:options_createColorBox(pt,"DFdotPowerBarsgreencolor",DF_config.dotPower,"greenColor",DF.locale["greenColor"],0,0.5,DF.icons_reinit)\n'
	..'DF:options_createSlider(pt,"DFdotPowerBarsCap",DF_config.dotPower,"cap",0,100,1,DF.locale["cap"],17,0.5,DF.icons_reinit,"cap")\n'

DF_panelsList["DFsound"]=
	'local pt = DF:options_createPanel("DFsound",2,5,true,DF.locale["sound"])\n'
	..'DF:options_createCheckBox(pt,"DFsoundCB",DF_config.sound,"enable",DF.locale["active"],0,0,nil,"sound")\n'
	..'DF:options_createListbox(pt,"DFsoundfile0",DF_config.sound.soundfiles,1,DF.locale["sound"].." "..DF.locale["form0"],0,1,nil,DF.optionsSounds,false,"Humanoïd")\n'
	..'DF:options_createListbox(pt,"DFsoundfile1",DF_config.sound.soundfiles,2,DF.locale["sound"].." "..DF.locale["form1"],0,2,nil,DF.optionsSounds,false,"Stance")\n'
	..'DF:options_createListbox(pt,"DFsoundfile2",DF_config.sound.soundfiles,3,DF.locale["sound"].." "..DF.locale["form2"],17,2,nil,DF.optionsSounds,false,"Stance")\n'
	..'DF:options_createListbox(pt,"DFsoundfile3",DF_config.sound.soundfiles,4,DF.locale["sound"].." "..DF.locale["form3"],0,3,nil,DF.optionsSounds,false,"Stance")\n'
	..'DF:options_createListbox(pt,"DFsoundfile4",DF_config.sound.soundfiles,5,DF.locale["sound"].." "..DF.locale["form4"],17,3,nil,DF.optionsSounds,false,"Stance")\n'
	..'DF:options_createListbox(pt,"DFsoundfile5",DF_config.sound.soundfiles,6,DF.locale["sound"].." "..DF.locale["form5"],0,4,nil,DF.optionsSounds,false,"Stance")\n'
	..'DF:options_createListbox(pt,"DFsoundfile6",DF_config.sound.soundfiles,7,DF.locale["sound"].." "..DF.locale["form6"],17,4,nil,DF.optionsSounds,false,"Stance")\n'
	..'DF:options_createListbox(pt,"DFsoundfile7",DF_config.sound.soundfiles,8,DF.locale["sound"].." "..DF.locale["form7"],0,5,nil,DF.optionsSounds,false,"Stance")\n'

DF_panelsList["DFinfos"]=
	'local pt = DF:options_createPanel("DFinfos",2,5,true,DF.locale["infos"])\n'
	..'DF:options_createCheckBox(pt,"DFinfoscheck",DF_config.infos,"enable",DF.locale["active"],0,0,DF.infos_reinit,"infos")\n'
	..'DF:options_createListbox(pt,"DFinfosfont1",DF_config.infos,"fontPath",DF.locale["fontPath"],0,1,DF.infos_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFinfosslidersize",DF_config.infos,"fontSize",6,28,1,DF.locale["fontSize"],17,1,DF.infos_reinit)\n'
	..'DF:options_createEditbox(pt,"DFinfostext",DF_config.infos,"infolines",false,DF.locale["infostext"],0,2,DF.infos_reinit,true,"Infos format")\n'
	..'DF:options_createSlider(pt,"DFinfossliderlevel",DF_config.infos,"newLevel",1,255,1,DF.locale["level"],0,3,DF.infos_reinit,"Level","Level")\n'
	..'DF:options_createSubTitle("DFtitledfinfoscheck",pt,DF.locale["colors"],0,4)\n'
	..'DF:options_createColorBox(pt,"DFinfostextcolor",DF_config.infos,"textColor",DF.locale["text"].." "..DF.locale["color"],0,5,DF.infos_reinit)\n'
	..'DF:options_createColorBox(pt,"DFinfosbackcolor",DF_config.infos,"backColor",DF.locale["background"].." "..DF.locale["color"],17,5,DF.infos_reinit)\n'

DF_panelsList["DFvisibility"]=
	'local pt = DF:options_createPanel("DFvisibility",2,13,true,DF.locale["visibility"])\n'
	..'DF:options_createText(pt,"DFvisibilityText1",DF.locale["infovisibility"],0,0)\n'
	..'DF:options_createCheckBox(pt,"dfcombat",DF_config,"inCombat",DF.locale["incombat"],0,1,DF.toggle_toggle)	\n'
	..'DF:options_createCheckBox(pt,"dfhavetarget",DF_config,"haveTarget",DF.locale["haveTarget"],17,1,DF.toggle_toggle)\n'
	..'DF:options_createCheckBox(pt,"dfnotMounted",DF_config,"notMounted",DF.locale["notMounted"],0,2,DF.toggle_toggle)\n'
	..'DF:options_createCheckBox(pt,"dfvisibility0",DF_config.activeForms,1,DF.locale["form0"],0,3,DF.toggle_toggle,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"dfvisibility1",DF_config.activeForms,2,DF.locale["form1"],0,4,DF.toggle_toggle,"Stance")\n'
	..'DF:options_createCheckBox(pt,"dfvisibility2",DF_config.activeForms,3,DF.locale["form2"],17,3,DF.toggle_toggle,"Stance")\n'
	..'DF:options_createCheckBox(pt,"dfvisibility3",DF_config.activeForms,4,DF.locale["form3"],0,5,DF.toggle_toggle,"Stance")\n'
	..'DF:options_createCheckBox(pt,"dfvisibility4",DF_config.activeForms,5,DF.locale["form4"],17,4,DF.toggle_toggle,"Stance")\n'
	..'DF:options_createCheckBox(pt,"dfvisibility5",DF_config.activeForms,6,DF.locale["form5"],0,6,DF.toggle_toggle,"Stance")\n'
	..'DF:options_createCheckBox(pt,"dfvisibility6",DF_config.activeForms,7,DF.locale["form6"],17,5,DF.toggle_toggle,"Stance")\n'
	..'DF:options_createCheckBox(pt,"dfvisibility7",DF_config.activeForms,8,DF.locale["form7"],17,6,DF.toggle_toggle,"Stance")\n'
	..'DF:options_createText(pt,"DFvisibilityText2",DF.locale["infovarious"],0,7)\n'
	..'DF:options_createListbox(pt,"dfreportkick",DF_config,"reportkickchan",DF.locale["reportkick"],0,8,DF.toggle_toggle,DF.optionsReportkick,false,nil)\n'
	..'DF:options_createCheckBox(pt,"dfreportkickplayonly",DF_config,"reportkickplyonly",DF.locale["reportkickplyonly"],17,8,DF.toggle_toggle,nil)\n'
	..'DF:options_createEditbox(pt,"dfreportkickstring",DF_config,"reportkickString",false,DF.locale["reportkickString"],0,9,DF.toggle_toggle,true,"reportkickString")\n'
	..'DF:options_createText(pt,"DFvisibilityText3",DF.locale["inforange"],0,10)\n'
	..'DF:options_createEditbox(pt,"DFrangerange1",DF_config.range,"range1",true,DF.locale["range1"],0,11,nil,false,"rangeid")\n'
	..'DF:options_createEditbox(pt,"DFrangerange2",DF_config.range,"range2",true,DF.locale["range2"],17,11,nil,false,"rangeid")\n'
	..'DF:options_createText(pt,"DFvisibilityText3",DF.locale["infospe"],0,12)\n'
	..'DF:options_createListbox(pt,"DFconfigPrimarySpe",DF_config,"configPrimarySpe",DF.locale["configPrimarySpe"],0,13,nil,DF.optionsSavedconfigForSpe,false,"configPrimarySpe")\n'
	..'DF:options_createListbox(pt,"DFconfigSecondarySpe",DF_config,"configSecondarySpe",DF.locale["configSecondarySpe"],17,13,nil,DF.optionsSavedconfigForSpe,false,"configPrimarySpe")\n'

DF_panelsList["dfancre8"]=
	'local pt = DF:options_createPanel("dfancre8",2,4,true,DF.locale["anchor"].." "..DF_config.anchor8.info)\n'
	..'DF:options_createCheckBox(pt,"anchor8check",DF_config.anchor8,"visible",DF.locale["visible"],0,0,DF.anchor_reinit)\n'
	..'DF:options_createConfigButton(pt,"anchoruicheck",DF.locale["DFOPTIONSelement"],17,0,DF.options_show,"DFOPTIONSelement")\n'
	..'DF:options_createEditbox(pt,"DFanchor8left",DF_config.anchor8,"positionx",true,DF.locale["positionx"],0,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFanchor8top",DF_config.anchor8,"positiony",true,DF.locale["positiony"],17,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFanchor8w",DF_config.anchor8,"width",2,500,1,DF.locale["width"],0,2,DF.anchor_reinit)\n'
	..'DF:options_createSlider(pt,"DFanchor8h",DF_config.anchor8,"height",2,500,1,DF.locale["height"],17,2,DF.anchor_reinit)\n'
	..'DF:options_createListbox(pt,"DFanchor8texture",DF_config.anchor8,"texture",DF.locale["texture"],0,3,DF.anchor_reinit,DF.optionsTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFanchor8mode",DF_config.anchor8,"mode",DF.locale["mode"],17,3,DF.anchor_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFanchor8sliderlevel",DF_config.anchor8,"newLevel",1,255,1,DF.locale["level"],0,4,DF.anchor_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFanchor8sliderscale",DF_config.anchor8,"scale",0.05,2,0.05,DF.locale["scale"],17,4,DF.anchor_reinit,"Scale")\n'

DF_panelsList["dfancre1"]=
	'local pt = DF:options_createPanel("dfancre1",2,4,true,DF.locale["anchor"].." "..DF_config.anchor1.info)\n'
	..'DF:options_createCheckBox(pt,"DFanchor1check",DF_config.anchor1,"visible",DF.locale["visible"],0,0,DF.anchor_reinit)\n'
	..'DF:options_createConfigButton(pt,"DFanchoruicheck",DF.locale["DFOPTIONSelement"],17,0,DF.options_show,"DFOPTIONSelement")\n'
	..'DF:options_createEditbox(pt,"DFanchor1left",DF_config.anchor1,"positionx",true,DF.locale["positionx"],0,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFanchor1top",DF_config.anchor1,"positiony",true,DF.locale["positiony"],17,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFanchor1w",DF_config.anchor1,"width",2,500,1,DF.locale["width"],0,2,DF.anchor_reinit)\n'
	..'DF:options_createSlider(pt,"DFanchor1h",DF_config.anchor1,"height",2,500,1,DF.locale["height"],17,2,DF.anchor_reinit)\n'
	..'DF:options_createListbox(pt,"DFanchor1texture",DF_config.anchor1,"texture",DF.locale["texture"],0,3,DF.anchor_reinit,DF.optionsTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFanchor1mode",DF_config.anchor1,"mode",DF.locale["mode"],17,3,DF.anchor_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFanchor1sliderlevel",DF_config.anchor1,"newLevel",1,255,1,DF.locale["level"],0,4,DF.anchor_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFanchor1sliderscale",DF_config.anchor1,"scale",0.05,2,0.05,DF.locale["scale"],17,4,DF.anchor_reinit,"Scale")\n'

DF_panelsList["dfancre2"]=
	'local pt = DF:options_createPanel("dfancre2",2,4,true,DF.locale["anchor"].." "..DF_config.anchor2.info)\n'
	..'DF:options_createCheckBox(pt,"DFanchor2check",DF_config.anchor2,"visible",DF.locale["visible"],0,0,DF.anchor_reinit)\n'
	..'DF:options_createConfigButton(pt,"DFanchoriconcheck",DF.locale["icons"],17,0,DF.options_show,"DFicons")\n'
	..'DF:options_createEditbox(pt,"DFanchor2left",DF_config.anchor2,"positionx",true,DF.locale["positionx"],0,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFanchor2top",DF_config.anchor2,"positiony",true,DF.locale["positiony"],17,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFanchor2w",DF_config.anchor2,"width",2,500,1,DF.locale["width"],0,2,DF.anchor_reinit)\n'
	..'DF:options_createSlider(pt,"DFanchor2h",DF_config.anchor2,"height",2,500,1,DF.locale["height"],17,2,DF.anchor_reinit)\n'
	..'DF:options_createListbox(pt,"DFanchor2texture",DF_config.anchor2,"texture",DF.locale["texture"],0,3,DF.anchor_reinit,DF.optionsTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFanchor2mode",DF_config.anchor2,"mode",DF.locale["mode"],17,3,DF.anchor_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFanchor2sliderlevel",DF_config.anchor2,"newLevel",1,255,1,DF.locale["level"],0,4,DF.anchor_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFanchor2sliderscale",DF_config.anchor2,"scale",0.05,2,0.05,DF.locale["scale"],17,4,DF.anchor_reinit,"Scale")\n'

DF_panelsList["dfancre3"]=
	'local pt = DF:options_createPanel("dfancre3",2,4,true,DF.locale["anchor"].." "..DF_config.anchor3.info)\n'
	..'DF:options_createCheckBox(pt,"DFanchor3check",DF_config.anchor3,"visible",DF.locale["visible"],0,0,DF.anchor_reinit)\n'
	..'DF:options_createConfigButton(pt,"DFanchortb1check",DF.locale["timerbar"],17,0,DF.options_show,"DFtimerbar")\n'
	..'DF:options_createEditbox(pt,"DFanchor3left",DF_config.anchor3,"positionx",true,DF.locale["positionx"],0,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFanchor3top",DF_config.anchor3,"positiony",true,DF.locale["positiony"],17,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFanchor3w",DF_config.anchor3,"width",2,500,1,DF.locale["width"],0,2,DF.anchor_reinit)\n'
	..'DF:options_createSlider(pt,"DFanchor3h",DF_config.anchor3,"height",2,500,1,DF.locale["height"],17,2,DF.anchor_reinit)\n'
	..'DF:options_createListbox(pt,"DFanchor3texture",DF_config.anchor3,"texture",DF.locale["texture"],0,3,DF.anchor_reinit,DF.optionsTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFanchor3mode",DF_config.anchor3,"mode",DF.locale["mode"],17,3,DF.anchor_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFanchor3sliderlevel",DF_config.anchor3,"newLevel",1,255,1,DF.locale["level"],0,4,DF.anchor_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFanchor3sliderscale",DF_config.anchor3,"scale",0.05,2,0.05,DF.locale["scale"],17,4,DF.anchor_reinit,"Scale")\n'

DF_panelsList["dfancre4"]=
	'local pt = DF:options_createPanel("dfancre4",2,4,true,DF.locale["anchor"].." "..DF_config.anchor4.info)\n'
	..'DF:options_createCheckBox(pt,"DFanchor4check",DF_config.anchor4,"visible",DF.locale["visible"],0,0,DF.anchor_reinit)\n'
	..'DF:options_createConfigButton(pt,"DFanchortb2check",DF.locale["timerbar"],17,0,DF.options_show,"DFtimerbar")\n'
	..'DF:options_createEditbox(pt,"DFanchor4left",DF_config.anchor4,"positionx",true,DF.locale["positionx"],0,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFanchor4top",DF_config.anchor4,"positiony",true,DF.locale["positiony"],17,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFanchor4w",DF_config.anchor4,"width",2,500,1,DF.locale["width"],0,2,DF.anchor_reinit)\n'
	..'DF:options_createSlider(pt,"DFanchor4h",DF_config.anchor4,"height",2,500,1,DF.locale["height"],17,2,DF.anchor_reinit)\n'
	..'DF:options_createListbox(pt,"DFanchor4texture",DF_config.anchor4,"texture",DF.locale["texture"],0,3,DF.anchor_reinit,DF.optionsTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFancho4rmode",DF_config.anchor4,"mode",DF.locale["mode"],17,3,DF.anchor_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFanchor4sliderlevel",DF_config.anchor4,"newLevel",1,255,1,DF.locale["level"],0,4,DF.anchor_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFanchor4sliderscale",DF_config.anchor4,"scale",0.05,2,0.05,DF.locale["scale"],17,4,DF.anchor_reinit,"Scale")\n'

DF_panelsList["dfancre5"]=
	'local pt = DF:options_createPanel("dfancre5",2,4,true,DF.locale["anchor"].." "..DF_config.anchor5.info)\n'
	..'DF:options_createCheckBox(pt,"DFanchor5check",DF_config.anchor5,"visible",DF.locale["visible"],0,0,DF.anchor_reinit)\n'
	..'DF:options_createConfigButton(pt,"DFanchorinfoscheck",DF.locale["infos"],17,0,DF.options_show,"DFinfos")\n'
	..'DF:options_createEditbox(pt,"DFanchor5left",DF_config.anchor5,"positionx",true,DF.locale["positionx"],0,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFanchor5top",DF_config.anchor5,"positiony",true,DF.locale["positiony"],17,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFanchor5w",DF_config.anchor5,"width",2,500,1,DF.locale["width"],0,2,DF.anchor_reinit)\n'
	..'DF:options_createSlider(pt,"DFanchor5h",DF_config.anchor5,"height",2,500,1,DF.locale["height"],17,2,DF.anchor_reinit)\n'
	..'DF:options_createListbox(pt,"DFanchor5texture",DF_config.anchor5,"texture",DF.locale["texture"],0,3,DF.anchor_reinit,DF.optionsTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFanchor5mode",DF_config.anchor5,"mode",DF.locale["mode"],17,3,DF.anchor_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFanchor5sliderlevel",DF_config.anchor5,"newLevel",1,255,1,DF.locale["level"],0,4,DF.anchor_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFanchor5sliderscale",DF_config.anchor5,"scale",0.05,2,0.05,DF.locale["scale"],17,4,DF.anchor_reinit,"Scale")\n'

DF_panelsList["dfancre6"]=
	'local pt = DF:options_createPanel("dfancre6",2,4,true,DF.locale["anchor"].." "..DF_config.anchor6.info)\n'
	..'DF:options_createCheckBox(pt,"DFanchor6check",DF_config.anchor6,"visible",DF.locale["visible"],0,0,DF.anchor_reinit)\n'
	..'DF:options_createConfigButton(pt,"DFanchorcdcheck",DF.locale["cooldown"],17,0,DF.options_show,"DFcooldown")\n'
	..'DF:options_createEditbox(pt,"DFanchor6left",DF_config.anchor6,"positionx",true,DF.locale["positionx"],0,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFanchor6top",DF_config.anchor6,"positiony",true,DF.locale["positiony"],17,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFanchor6w",DF_config.anchor6,"width",2,500,1,DF.locale["width"],0,2,DF.anchor_reinit)\n'
	..'DF:options_createSlider(pt,"DFanchor6w",DF_config.anchor6,"height",2,500,1,DF.locale["height"],17,2,DF.anchor_reinit)\n'
	..'DF:options_createListbox(pt,"DFanchor6texture",DF_config.anchor6,"texture",DF.locale["texture"],0,3,DF.anchor_reinit,DF.optionsTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFanchor6mode",DF_config.anchor6,"mode",DF.locale["mode"],17,3,DF.anchor_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFanchor6sliderlevel",DF_config.anchor6,"newLevel",1,255,1,DF.locale["level"],0,4,DF.anchor_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFanchor6sliderscale",DF_config.anchor6,"scale",0.05,2,0.05,DF.locale["scale"],17,4,DF.anchor_reinit,"Scale")\n'

DF_panelsList["dfancre7"]=
	'local pt = DF:options_createPanel("dfancre7",2,4,true,DF.locale["anchor"].." "..DF_config.anchor7.info)\n'
	..'DF:options_createCheckBox(pt,"DFanchor7check",DF_config.anchor7,"visible",DF.locale["visible"],0,0,DF.anchor_reinit)\n'
	..'DF:options_createConfigButton(pt,"DFanchoricon2check",DF.locale["icons"],17,0,DF.options_show,"DFicons")\n'
	..'DF:options_createEditbox(pt,"DFanchor7left",DF_config.anchor7,"positionx",true,DF.locale["positionx"],0,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFanchor7top",DF_config.anchor7,"positiony",true,DF.locale["positiony"],17,1,DF.anchor_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFanchor7w",DF_config.anchor7,"width",2,500,1,DF.locale["width"],0,2,DF.anchor_reinit)\n'
	..'DF:options_createSlider(pt,"DFanchor7w",DF_config.anchor7,"height",2,500,1,DF.locale["height"],17,2,DF.anchor_reinit)\n'
	..'DF:options_createListbox(pt,"DFanchor7texture",DF_config.anchor7,"texture",DF.locale["texture"],0,3,DF.anchor_reinit,DF.optionsTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFanchor7mode",DF_config.anchor7,"mode",DF.locale["mode"],17,3,DF.anchor_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFanchor7sliderlevel",DF_config.anchor7,"newLevel",1,255,1,DF.locale["level"],0,4,DF.anchor_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFanchor7sliderscale",DF_config.anchor7,"scale",0.05,2,0.05,DF.locale["scale"],17,4,DF.anchor_reinit,"Scale")\n'

DF_panelsList["DFgps"]=
	'local pt = DF:options_createPanel("DFgps",2,8,true,DF.locale["gps"])\n'
	..'DF:options_createCheckBox(pt,"DFgpscheck",DF_config.gps,"enable",DF.locale["active"],0,0,DF.gps_reinit,"gps")\n'
	..'DF:options_createListbox(pt,"DFgpstarget1",DF_config.gps.gpsTarget,1,DF.locale["target"].." 1",0,1,DF.gps_reinit,DF.optionsTarget,false,"target")\n'
	..'DF:options_createListbox(pt,"DFgpstarget2",DF_config.gps.gpsTarget,2,DF.locale["target"].." 2",17,1,DF.gps_reinit,DF.optionsTarget,false,"target")\n'
	..'DF:options_createSlider(pt,"DFgpsw",DF_config.gps,"width",2,500,1,DF.locale["width"],0,2,DF.gps_reinit)\n'
	..'DF:options_createSlider(pt,"DFgpsh",DF_config.gps,"height",2,500,1,DF.locale["height"],17,2,DF.gps_reinit)\n'
	..'DF:options_createListbox(pt,"DFgpsmode",DF_config.gps,"mode",DF.locale["mode"],0,3,DF.gps_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFgpsslideralpha",DF_config.gps,"alpha",0,1,0.05,DF.locale["activeAlpha"],17,3,DF.gps_reinit,"alpha")\n'
	..'DF:options_createListbox(pt,"DFgpsfont1",DF_config.gps,"fontPath",DF.locale["fontPath"],0,4,DF.gps_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFgpsslidersize",DF_config.gps,"fontSize",6,28,1,DF.locale["fontSize"],17,4,DF.gps_reinit)\n'
	..'DF:options_createSlider(pt,"DFgpsslideroffset1x",DF_config.gps,"offsetx",-128,128,1,DF.locale["toffsetx"],0,5,DF.gps_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFgpsslideroffset1y",DF_config.gps,"offsety",-128,128,1,DF.locale["toffsety"],17,5,DF.gps_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFgpssliderlevel",DF_config.gps,"newLevel",1,255,1,DF.locale["level"],0,6,DF.gps_reinit,"Level")\n'
	..'DF:options_createSubTitle("DFtitledfgpsinfos",pt,DF.locale["colors"],0,7)\n'
	..'DF:options_createColorBox(pt,"DFgpstextcolor",DF_config.gps,"textColor",DF.locale["text"].." "..DF.locale["color"],0,8,DF.gps_reinit)\n'

DF_panelsList["DFalert"]=
	'local pt = DF:options_createPanel("DFalert",2,10,true,DF.locale["alert"])\n'
	..'DF:options_createCheckBox(pt,"DFalertcheck",DF_config.alert,"enable",DF.locale["active"],0,0,DF.alert_reinit,"alert")\n'
	..'DF:options_createEditbox(pt,"DFalertleft",DF_config.alert,"positionx",true,DF.locale["positionx"],0,1,DF.alert_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFalerttop",DF_config.alert,"positiony",true,DF.locale["positiony"],17,1,DF.alert_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFalertw",DF_config.alert,"width",2,500,1,DF.locale["width"],0,2,DF.alert_reinit)\n'
	..'DF:options_createSlider(pt,"DFalerth",DF_config.alert,"height",2,500,1,DF.locale["height"],17,2,DF.alert_reinit)\n'
	..'DF:options_createSlider(pt,"DFalertdecalx",DF_config.alert,"decalx",-250,250,1,DF.locale["offsetx"],0,3,DF.alert_reinit)\n'
	..'DF:options_createSlider(pt,"DFalertdecaly",DF_config.alert,"decaly",-250,250,1,DF.locale["offsety"],17,3,DF.alert_reinit)\n'
	..'DF:options_createListbox(pt,"DFalerttexture1",DF_config.alert,"texture1",DF.locale["texture1"],0,4,DF.alert_reinit,DF.optionsTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFalerttexture2",DF_config.alert,"texture2",DF.locale["texture2"],0,5,DF.alert_reinit,DF.optionsTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFalertmode",DF_config.alert,"mode",DF.locale["mode"],17,4,DF.alert_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFalertsliderlevel",DF_config.alert,"newLevel",1,255,1,DF.locale["level"],0,7,DF.alert_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFalertsliderpers",DF_config.alert,"persistence",1,10,0.5,DF.locale["persistence"],17,5,DF.alert_reinit,"Persistence")\n'
	..'DF:options_createSlider(pt,"DFalertslideralpha",DF_config.alert,"alpha",0,1,0.05,DF.locale["activeAlpha"],17,6,DF.alert_reinit,"alpha")\n'
	..'DF:options_createCheckBox(pt,"DFalertcheckdebuff",DF_config.alert,"showDebuff",DF.locale["AlertShowDebuff"],17,7,nil)\n'
	..'DF:options_createCheckBox(pt,"DFalertcheckbuff",DF_config.alert,"showBuff",DF.locale["AlertShowBuff"],17,8,nil)\n'
	..'DF:options_createCheckBox(pt,"DFalertchecktext",DF_config.alert,"showText",DF.locale["showText"],0,8,DF.alert_reinit,nil)\n'
	..'DF:options_createListbox(pt,"DFalertfont1",DF_config.alert,"fontPath",DF.locale["fontPath"],0,9,DF.alert_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFalertslidersize",DF_config.alert,"fontSize",6,28,1,DF.locale["fontSize"],17,9,DF.alert_reinit)\n'
	..'DF:options_createSlider(pt,"DFalertslideralignx",DF_config.alert,"textOffsetX",-64,64,1,DF.locale["text"].." "..DF.locale["offsetx"],0,10,DF.alert_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFalertslideraligny",DF_config.alert,"textOffsetY",-64,64,1,DF.locale["text"].." "..DF.locale["offsety"],17,10,DF.alert_reinit,"Text offset")\n'

DF_panelsList["DFportrait"]=
	'local pt = DF:options_createPanel("DFportrait",2,8,true,DF.locale["portrait"])\n'
	..'DF:options_createCheckBox(pt,"DFportraitcheck",DF_config.portrait,"enable",DF.locale["active"],0,0,DF.portrait_reinit,"portrait")\n'
	..'DF:options_createEditbox(pt,"DFportraitleft",DF_config.portrait,"positionx",true,DF.locale["positionx"],0,1,DF.portrait_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFportraittop",DF_config.portrait,"positiony",true,DF.locale["positiony"],17,1,DF.portrait_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFportraitw",DF_config.portrait,"width",2,500,1,DF.locale["width"],0,2,DF.portrait_reinit)\n'
	..'DF:options_createSlider(pt,"DFportraith",DF_config.portrait,"height",2,500,1,DF.locale["height"],17,2,DF.portrait_reinit)\n'
	..'DF:options_createListbox(pt,"DFportraittexture0",DF_config.portrait.textures,1,DF.locale["texture"].." "..DF.locale["form0"],0,3,DF.portrait_reinit,DF.optionsTextures,false,"Humanoïd",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFportraittexture1",DF_config.portrait.textures,2,DF.locale["texture"].." "..DF.locale["form1"],0,4,DF.portrait_reinit,DF.optionsTextures,false,"Stance",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFportraittexture2",DF_config.portrait.textures,3,DF.locale["texture"].." "..DF.locale["form2"],17,4,DF.portrait_reinit,DF.optionsTextures,false,"Stance",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFportraittexture3",DF_config.portrait.textures,4,DF.locale["texture"].." "..DF.locale["form3"],0,5,DF.portrait_reinit,DF.optionsTextures,false,"Stance",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFportraittexture4",DF_config.portrait.textures,5,DF.locale["texture"].." "..DF.locale["form4"],17,5,DF.portrait_reinit,DF.optionsTextures,false,"Stance",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFportraittexture5",DF_config.portrait.textures,6,DF.locale["texture"].." "..DF.locale["form5"],0,6,DF.portrait_reinit,DF.optionsTextures,false,"Stance",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFportraittexture6",DF_config.portrait.textures,7,DF.locale["texture"].." "..DF.locale["form6"],17,6,DF.portrait_reinit,DF.optionsTextures,false,"Stance",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFportraittexture7",DF_config.portrait.textures,8,DF.locale["texture"].." "..DF.locale["form7"],0,7,DF.portrait_reinit,DF.optionsTextures,false,"Stance",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFportraitmode",DF_config.portrait,"mode",DF.locale["mode"],0,8,DF.portrait_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFportraitsliderlevel",DF_config.portrait,"newLevel",1,255,1,DF.locale["level"],17,8,DF.portrait_reinit,"Level")\n'

DF_panelsList["DFpowerbar"]=
	'local pt = DF:options_createPanel("DFpowerbar",3,19,true,DF.locale["powerbar"])\n'
	..'DF:options_createCheckBox(pt,"DFpowerbarcheck",DF_config.powerbar,"enable",DF.locale["active"],0,0,DF.powerbar_reinit)\n'
	..'DF:options_createCheckBox(pt,"DFpowerbararrowcheck",DF_config.powerbar,"enableArrows",DF.locale["arrows"].." "..DF.locale["active"],34,10,DF.powerbar_reinit,"Arrows")\n'
	..'DF:options_createEditbox(pt,"DFpowerbarleft",DF_config.powerbar,"positionx",true,DF.locale["positionx"],0,1,DF.powerbar_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFpowerbartop",DF_config.powerbar,"positiony",true,DF.locale["positiony"],17,1,DF.powerbar_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFpowerbarw",DF_config.powerbar,"width",2,500,1,DF.locale["width"],0,2,DF.powerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFpowerbarh",DF_config.powerbar,"height",2,500,1,DF.locale["height"],17,2,DF.powerbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFpowerbartexture1",DF_config.powerbar,"texturePath",DF.locale["texturePath"],0,3,DF.powerbar_reinit,DF.optionsStatusbars,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFpowerbarorient",DF_config.powerbar,"orientation",DF.locale["orientation"],17,3,DF.powerbar_reinit,DF.optionsOrientation)\n'
	..'DF:options_createCheckBox(pt,"DFpowerbarshowspark",DF_config.powerbar,"showSpark",DF.locale["showSpark"],0,4,DF.powerbar_reinit,"spark")\n'
	..'DF:options_createSlider(pt,"DFpowerbarscursorspeed",DF_config,"cursorspeed",1,100,1,DF.locale["cursorspeed"],17,4,nil,"Cursor speed")\n'
	..'DF:options_createCheckBox(pt,"DFpowerbarshowt",DF_config.powerbar,"showText",DF.locale["showText"],0,5,DF.powerbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFpowerbarfont1",DF_config.powerbar,"fontPath",DF.locale["fontPath"],0,6,DF.powerbar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFpowerbarslidersize",DF_config.powerbar,"fontSize",6,28,1,DF.locale["fontSize"],17,6,DF.powerbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFpowerbartextalign",DF_config.powerbar,"textAlign",DF.locale["text"].." "..DF.locale["align"],0,7,DF.powerbar_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFpowerbarslideralignx",DF_config.powerbar,"textx",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,7,DF.powerbar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFpowerbarslideraligny",DF_config.powerbar,"texty",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsety"],17,8,DF.powerbar_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFpowerbarborder",DF_config.powerbar,"border",DF.locale["border"].." "..DF.locale["active"],0,8,DF.powerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFpowerbarbordersize",DF_config.powerbar,"borderSize",0,8,1,DF.locale["border"].." "..DF.locale["size"],0,9,DF.powerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFpowerbarsliderlevel",DF_config.powerbar,"newLevel",1,255,1,DF.locale["level"],17,9,DF.powerbar_reinit,"Level")\n'
	..'DF:options_createSubTitle("DFtitledfpowerbarinfos",pt,DF.locale["colors"],0,10)\n'
	..'DF:options_createColorBox(pt,"DFpowerbardefcolor",DF_config.powerbar,"colorDef",DF.locale["default"].." "..DF.locale["color"],0,11,DF.powerbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFpowerbarmanacolor",DF_config.powerbar,"colorMana",DF.locale["mana"].." "..DF.locale["color"],17,11,DF.powerbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFpowerbarnrjcolor",DF_config.powerbar,"colorNrj",DF.locale["nrj"].." "..DF.locale["color"],0,12,DF.powerbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFpowerbarragecolor",DF_config.powerbar,"colorRage",DF.locale["rage"].." "..DF.locale["color"],17,12,DF.powerbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFpowerbarbordercolor",DF_config.powerbar,"borderColor",DF.locale["border"].." "..DF.locale["color"],0,13,DF.powerbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFpowerbartextcolor",DF_config.powerbar,"textColor",DF.locale["text"].." "..DF.locale["color"],17,13,DF.powerbar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFpowerbartextformat",DF_config.powerbar,"sformat",false,DF.locale["sformat"],17,5,DF.powerbar_reinit,false,"sformat")\n'
	..'DF:options_createText(pt,"DFpowerbartext1",DF.locale["infostance"],34,1)\n'
	..'DF:options_createCheckBox(pt,"DFpowerbar_form0",DF_config.powerbar.form,1,DF.locale["form0"],34,2,DF.powerbar_reinit,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"DFpowerbar_form1",DF_config.powerbar.form,2,DF.locale["form1"],34,3,DF.powerbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpowerbar_form2",DF_config.powerbar.form,3,DF.locale["form2"],34,4,DF.powerbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpowerbar_form3",DF_config.powerbar.form,4,DF.locale["form3"],34,5,DF.powerbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpowerbar_form4",DF_config.powerbar.form,5,DF.locale["form4"],34,6,DF.powerbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpowerbar_form5",DF_config.powerbar.form,6,DF.locale["form5"],34,7,DF.powerbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpowerbar_form6",DF_config.powerbar.form,7,DF.locale["form6"],34,8,DF.powerbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpowerbar_form7",DF_config.powerbar.form,8,DF.locale["form7"],34,9,DF.powerbar_reinit,"Stance")\n'
	..'DF:options_createEditbox(pt,"DFpowerbararrow1",DF_config.powerbar.arrows,1,true,DF.locale["arrowpos1"],34,11,DF.powerbar_reinit,false,"arrowposition")\n'
	..'DF:options_createEditbox(pt,"DFpowerbararrow2",DF_config.powerbar.arrows,2,true,DF.locale["arrowpos2"],34,12,DF.powerbar_reinit,false,"arrowposition")\n'
	..'DF:options_createEditbox(pt,"DFpowerbararrow3",DF_config.powerbar.arrows,3,true,DF.locale["arrowpos3"],34,13,DF.powerbar_reinit,false,"arrowposition")\n'
	..'DF:options_createEditbox(pt,"DFpowerbararrow4",DF_config.powerbar.arrows,4,true,DF.locale["arrowpos4"],34,14,DF.powerbar_reinit,false,"arrowposition")\n'
	..'DF:options_createEditbox(pt,"DFpowerbararrow5",DF_config.powerbar.arrows,5,true,DF.locale["arrowpos5"],34,15,DF.powerbar_reinit,false,"arrowposition")\n'
	..'DF:options_createEditbox(pt,"DFpowerbararrow6",DF_config.powerbar.arrows,6,true,DF.locale["arrowpos6"],34,16,DF.powerbar_reinit,false,"arrowposition")\n'
	..'DF:options_createText(pt,"DFpowerbartext2",DF.locale["PBautocolor"],0,14)\n'
	..'DF:options_createCheckBox(pt,"DFpowerbarcheckautocolor",DF_config.powerbar,"autocolor",DF.locale["PBautocolor"].." "..DF.locale["active"],0,15,DF.powerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFpowerbarpart1limit",DF_config.powerbar,"part1Limit",0,100,1,DF.locale["PBpart"].." 1",0,16,DF.powerbar_reinit,nil)\n'
	..'DF:options_createColorBox(pt,"DFpowerbarpart1color",DF_config.powerbar,"part1Color",DF.locale["PBpart"].." 1 "..DF.locale["color"],17,16,DF.powerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFpowerbarpart2limit",DF_config.powerbar,"part2Limit",0,100,1,DF.locale["PBpart"].." 2",0,17,DF.powerbar_reinit,nil)\n'
	..'DF:options_createColorBox(pt,"DFpowerbarpart2color",DF_config.powerbar,"part2Color",DF.locale["PBpart"].." 2 "..DF.locale["color"],17,17,DF.powerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFpowerbarpart3limit",DF_config.powerbar,"part3Limit",0,100,1,DF.locale["PBpart"].." 3",0,18,DF.powerbar_reinit,nil)\n'
	..'DF:options_createColorBox(pt,"DFpowerbarpart3color",DF_config.powerbar,"part3Color",DF.locale["PBpart"].." 3 "..DF.locale["color"],17,18,DF.powerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFpowerbarpart4limit",DF_config.powerbar,"part4Limit",0,100,1,DF.locale["PBpart"].." 4",0,19,DF.powerbar_reinit,nil)\n'
	..'DF:options_createColorBox(pt,"DFpowerbarpart4color",DF_config.powerbar,"part4Color",DF.locale["PBpart"].." 4 "..DF.locale["color"],17,19,DF.powerbar_reinit)\n'


DF_panelsList["DFcastbar"]=
	'local pt = DF:options_createPanel("DFcastbar",3,14,true,DF.locale["castbar"])\n'
	..'DF:options_createCheckBox(pt,"DFcastbarcheck",DF_config.castbar,"enable",DF.locale["active"],0,0,DF.castbar_reinit,"castbar")\n'
	..'DF:options_createEditbox(pt,"DFcastbarleft",DF_config.castbar,"positionx",true,DF.locale["positionx"],0,1,DF.castbar_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFcastbartop",DF_config.castbar,"positiony",true,DF.locale["positiony"],17,1,DF.castbar_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFcastbarw",DF_config.castbar,"width",2,500,1,DF.locale["width"],0,2,DF.castbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFcastbarh",DF_config.castbar,"height",2,500,1,DF.locale["height"],17,2,DF.castbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFcastbartexture1",DF_config.castbar,"texturePath",DF.locale["texturePath"],0,3,DF.castbar_reinit,DF.optionsStatusbars,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcastbarorient",DF_config.castbar,"orientation",DF.locale["orientation"],17,3,DF.castbar_reinit,DF.optionsOrientation)\n'
	..'DF:options_createCheckBox(pt,"DFcastbarshowspark",DF_config.castbar,"showSpark",DF.locale["showSpark"],0,4,DF.castbar_reinit,"spark")\n'
	..'DF:options_createSlider(pt,"DFcastbarsliderimpulsion",DF_config.castbar,"impulsion",0,4,0.1,DF.locale["pulse"],17,4,DF.castbar_reinit,"pulse2")\n'
	..'DF:options_createCheckBox(pt,"DFcastbarshowt",DF_config.castbar,"showText",DF.locale["showText"],0,5,DF.castbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFcastbarfont1",DF_config.castbar,"fontPath",DF.locale["text"].." "..DF.locale["fontPath"],17,5,DF.castbar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFcastbarslidersize",DF_config.castbar,"fontSize",6,28,1,DF.locale["text"].." "..DF.locale["fontSize"],34,5,DF.castbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFcastbartextalign",DF_config.castbar,"textAlign",DF.locale["text"].." "..DF.locale["align"],0,6,DF.castbar_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFcastbarslideralignx",DF_config.castbar,"textx",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,6,DF.castbar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFcastbarslideraligny",DF_config.castbar,"texty",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsety"],34,6,DF.castbar_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFcastbarshowttimer",DF_config.castbar,"showTimer",DF.locale["number"].." "..DF.locale["active"],0,7,DF.castbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFcastbarfont1timer",DF_config.castbar,"fontPathtimer",DF.locale["number"].." "..DF.locale["fontPath"],17,7,DF.castbar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFcastbarslidersizetimer",DF_config.castbar,"fontSizetimer",6,28,1,DF.locale["number"].." "..DF.locale["fontSize"],34,7,DF.castbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFcastbartextaligntimer",DF_config.castbar,"timerAlign",DF.locale["number"].." "..DF.locale["align"],0,8,DF.castbar_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFcastbarslideralignxtimer",DF_config.castbar,"timerx",-32,32,0.5,DF.locale["number"].." "..DF.locale["offsetx"],17,8,DF.castbar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFcastbarslideralignytimer",DF_config.castbar,"timery",-32,32,0.5,DF.locale["number"].." "..DF.locale["offsety"],34,8,DF.castbar_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFcastbarborder",DF_config.castbar,"border",DF.locale["border"].." "..DF.locale["active"],0,9,DF.castbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFcastbarbordersize",DF_config.castbar,"borderSize",0,8,1,DF.locale["border"].." "..DF.locale["size"],17,9,DF.castbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFcastbarsliderlevel",DF_config.castbar,"newLevel",1,255,1,DF.locale["level"],0,10,DF.castbar_reinit,"Level")\n'
	..'DF:options_createListbox(pt,"DFcastbarsound1",DF_config.castbar,"sound1",DF.locale["sound"].." "..DF.locale["normal"],0,11,DF.castbar_reinit,DF.optionsSounds,false,"normalCast")\n'
	..'DF:options_createListbox(pt,"DFcastbarsound2",DF_config.castbar,"sound2",DF.locale["sound"].." "..DF.locale["interrupt"],17,11,DF.castbar_reinit,DF.optionsSounds,false,"interruptCast")\n'
	..'DF:options_createSubTitle("DFtitledfcastbarinfos",pt,DF.locale["colors"],0,12)\n'
	..'DF:options_createColorBox(pt,"DFcastbardefcolor",DF_config.castbar,"color",DF.locale["color"].." "..DF.locale["normal"],0,13,DF.castbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFcastbarintcolor",DF_config.castbar,"colori",DF.locale["color"].." "..DF.locale["interrupt"],17,13,DF.castbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFcastbarbordercolor",DF_config.castbar,"borderColor",DF.locale["border"].." "..DF.locale["color"],0,14,DF.castbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFcastbartextcolor",DF_config.castbar,"textColor",DF.locale["text"].." "..DF.locale["color"],17,14,DF.castbar_reinit)\n'

DF_panelsList["DFhealthbar"]=
	'local pt = DF:options_createPanel("DFhealthbar",3,12,true,DF.locale["healthbar"])\n'
	..'DF:options_createCheckBox(pt,"DFhealthbarcheck",DF_config.healthbar,"enable",DF.locale["active"],0,0,DF.healthbar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFhealthbarleft",DF_config.healthbar,"positionx",true,DF.locale["positionx"],0,1,DF.healthbar_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFhealthbartop",DF_config.healthbar,"positiony",true,DF.locale["positiony"],17,1,DF.healthbar_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFhealthbarw",DF_config.healthbar,"width",2,500,1,DF.locale["width"],0,2,DF.healthbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFhealthbarh",DF_config.healthbar,"height",2,500,1,DF.locale["height"],17,2,DF.healthbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFhealthbartexture1",DF_config.healthbar,"texturePath",DF.locale["texturePath"],0,3,DF.healthbar_reinit,DF.optionsStatusbars,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFhealthbarorient",DF_config.healthbar,"orientation",DF.locale["orientation"],17,3,DF.healthbar_reinit,DF.optionsOrientation)\n'
	..'DF:options_createCheckBox(pt,"DFhealthbarshowt",DF_config.healthbar,"showText",DF.locale["showText"],0,4,DF.healthbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFhealthbarfont1",DF_config.healthbar,"fontPath",DF.locale["fontPath"],0,5,DF.healthbar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFhealthbarslidersize",DF_config.healthbar,"fontSize",6,28,1,DF.locale["fontSize"],17,5,DF.healthbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFhealthbartextalign",DF_config.healthbar,"textAlign",DF.locale["text"].." "..DF.locale["align"],0,6,DF.healthbar_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFhealthbarslideralignx",DF_config.healthbar,"textx",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,6,DF.healthbar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFhealthbarslideraligny",DF_config.healthbar,"texty",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsety"],17,7,DF.healthbar_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFhealthbarborder",DF_config.healthbar,"border",DF.locale["border"].." "..DF.locale["active"],0,7,DF.healthbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFhealthbarbordersize",DF_config.healthbar,"borderSize",0,8,1,DF.locale["border"].." "..DF.locale["size"],0,8,DF.healthbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFhealthbarsliderlevel",DF_config.healthbar,"newLevel",1,255,1,DF.locale["level"],17,8,DF.healthbar_reinit,"Level")\n'
	..'DF:options_createCheckBox(pt,"DFhealthbarcolorchgcheck",DF_config.healthbar,"colorchg",DF.locale["colorchg"],17,9,DF.healthbar_reinit,"colorchg")\n'
	..'DF:options_createSubTitle("DFtitledfhealthbarinfos",pt,DF.locale["colors"],0,9)\n'
	..'DF:options_createColorBox(pt,"DFhealthbarcolorGood",DF_config.healthbar,"colorDef",DF.locale["color"],0,10,DF.healthbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFhealthbarcolorGood",DF_config.healthbar,"colorGood",DF.locale["colorGood"].." "..DF.locale["color"],17,10,DF.healthbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFhealthbarcolorAverage",DF_config.healthbar,"colorAverage",DF.locale["colorAverage"].." "..DF.locale["color"],17,11,DF.healthbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFhealthbarcolorBad",DF_config.healthbar,"colorBad",DF.locale["colorBad"].." "..DF.locale["color"],17,12,DF.healthbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFhealthbarbordercolor",DF_config.healthbar,"borderColor",DF.locale["border"].." "..DF.locale["color"],0,11,DF.healthbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFhealthbartextcolor",DF_config.healthbar,"textColor",DF.locale["text"].." "..DF.locale["color"],0,12,DF.healthbar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFhealthbartextformat",DF_config.healthbar,"sformat",false,DF.locale["sformat"],17,4,DF.healthbar_reinit,false,"sformat")\n'
	..'DF:options_createText(pt,"DFhealthbartext1",DF.locale["infostance"],34,0)\n'
	..'DF:options_createCheckBox(pt,"DFhealthbar_form0",DF_config.healthbar.form,1,DF.locale["form0"],34,1,DF.healthbar_reinit,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"DFhealthbar_form1",DF_config.healthbar.form,2,DF.locale["form1"],34,2,DF.healthbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFhealthbar_form2",DF_config.healthbar.form,3,DF.locale["form2"],34,3,DF.healthbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFhealthbar_form3",DF_config.healthbar.form,4,DF.locale["form3"],34,4,DF.healthbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFhealthbar_form4",DF_config.healthbar.form,5,DF.locale["form4"],34,5,DF.healthbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFhealthbar_form5",DF_config.healthbar.form,6,DF.locale["form5"],34,6,DF.healthbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFhealthbar_form6",DF_config.healthbar.form,7,DF.locale["form6"],34,7,DF.healthbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFhealthbar_form7",DF_config.healthbar.form,8,DF.locale["form7"],34,8,DF.healthbar_reinit,"Stance")\n'

DF_panelsList["DFmanabar"]=
	'local pt = DF:options_createPanel("DFmanabar",3,11,true,DF.locale["manabar"])\n'
	..'DF:options_createCheckBox(pt,"DFmanabarcheck",DF_config.manabar,"enable",DF.locale["active"],0,0,DF.manabar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFmanabarleft",DF_config.manabar,"positionx",true,DF.locale["positionx"],0,1,DF.manabar_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFmanabartop",DF_config.manabar,"positiony",true,DF.locale["positiony"],17,1,DF.manabar_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFmanabarw",DF_config.manabar,"width",2,500,1,DF.locale["width"],0,2,DF.manabar_reinit)\n'
	..'DF:options_createSlider(pt,"DFmanabarh",DF_config.manabar,"height",2,500,1,DF.locale["height"],17,2,DF.manabar_reinit)\n'
	..'DF:options_createListbox(pt,"DFmanabartexture1",DF_config.manabar,"texturePath",DF.locale["texturePath"],0,3,DF.manabar_reinit,DF.optionsStatusbars,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFmanabarorient",DF_config.manabar,"orientation",DF.locale["orientation"],17,3,DF.manabar_reinit,DF.optionsOrientation)\n'
	..'DF:options_createCheckBox(pt,"DFmanabarshowt",DF_config.manabar,"showText",DF.locale["showText"],0,4,DF.manabar_reinit)\n'
	..'DF:options_createListbox(pt,"DFmanabarfont1",DF_config.manabar,"fontPath",DF.locale["fontPath"],0,5,DF.manabar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFmanabarslidersize",DF_config.manabar,"fontSize",6,28,1,DF.locale["fontSize"],17,5,DF.manabar_reinit)\n'
	..'DF:options_createListbox(pt,"DFmanabartextalign",DF_config.manabar,"textAlign",DF.locale["text"].." "..DF.locale["align"],0,6,DF.manabar_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFmanabarslideralignx",DF_config.manabar,"textx",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,6,DF.manabar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFmanabarslideraligny",DF_config.manabar,"texty",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsety"],17,7,DF.manabar_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFmanabarborder",DF_config.manabar,"border",DF.locale["border"].." "..DF.locale["active"],0,7,DF.manabar_reinit)\n'
	..'DF:options_createSlider(pt,"DFmanabarbordersize",DF_config.manabar,"borderSize",0,8,1,DF.locale["border"].." "..DF.locale["size"],0,8,DF.manabar_reinit)\n'
	..'DF:options_createSlider(pt,"DFmanabarsliderlevel",DF_config.manabar,"newLevel",1,255,1,DF.locale["level"],17,8,DF.manabar_reinit,"Level")\n'
	..'DF:options_createSubTitle("DFtitledfmanabarinfos",pt,DF.locale["colors"],0,9)\n'
	..'DF:options_createColorBox(pt,"DFmanabarcolor",DF_config.manabar,"color",DF.locale["color"],0,10,DF.manabar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFmanabarbordercolor",DF_config.manabar,"borderColor",DF.locale["border"].." "..DF.locale["color"],17,10,DF.manabar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFmanabartextcolor",DF_config.manabar,"textColor",DF.locale["text"].." "..DF.locale["color"],0,11,DF.manabar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFmanabartextformat",DF_config.manabar,"sformat",false,DF.locale["sformat"],17,4,DF.manabar_reinit,false,"sformat")\n'
	..'DF:options_createText(pt,"DFmanabartext1",DF.locale["infostance"],34,0)\n'
	..'DF:options_createCheckBox(pt,"DFmanabar_form0",DF_config.manabar.form,1,DF.locale["form0"],34,1,DF.manabar_reinit,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"DFmanabar_form1",DF_config.manabar.form,2,DF.locale["form1"],34,2,DF.manabar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFmanabar_form2",DF_config.manabar.form,3,DF.locale["form2"],34,3,DF.manabar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFmanabar_form3",DF_config.manabar.form,4,DF.locale["form3"],34,4,DF.manabar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFmanabar_form4",DF_config.manabar.form,5,DF.locale["form4"],34,5,DF.manabar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFmanabar_form5",DF_config.manabar.form,6,DF.locale["form5"],34,6,DF.manabar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFmanabar_form6",DF_config.manabar.form,7,DF.locale["form6"],34,7,DF.manabar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFmanabar_form7",DF_config.manabar.form,8,DF.locale["form7"],34,8,DF.manabar_reinit,"Stance")\n'

DF_panelsList["DFeclipsebar"]=
	'local pt = DF:options_createPanel("DFeclipsebar",3,11,true,DF.locale["eclipsebar"])\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebarcheck",DF_config.eclipsebar,"enable",DF.locale["active"],0,0,DF.eclipsebar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFeclipsebarleft",DF_config.eclipsebar,"positionx",true,DF.locale["positionx"],0,1,DF.eclipsebar_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFeclipsebartop",DF_config.eclipsebar,"positiony",true,DF.locale["positiony"],17,1,DF.eclipsebar_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFeclipsebarw",DF_config.eclipsebar,"width",2,500,1,DF.locale["width"],0,2,DF.eclipsebar_reinit)\n'
	..'DF:options_createSlider(pt,"DFeclipsebarh",DF_config.eclipsebar,"height",2,500,1,DF.locale["height"],17,2,DF.eclipsebar_reinit)\n'
	..'DF:options_createListbox(pt,"DFeclipsebartexture1",DF_config.eclipsebar,"texturePath",DF.locale["texturePath"],0,3,DF.eclipsebar_reinit,DF.optionsStatusbars,false,"editableTexture",false,true,true)\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebarshowt",DF_config.eclipsebar,"showText",DF.locale["showText"],0,4,DF.eclipsebar_reinit)\n'
	..'DF:options_createListbox(pt,"DFeclipsebarfont1",DF_config.eclipsebar,"fontPath",DF.locale["fontPath"],0,5,DF.eclipsebar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFeclipsebarslidersize",DF_config.eclipsebar,"fontSize",6,28,1,DF.locale["fontSize"],17,5,DF.eclipsebar_reinit)\n'
	..'DF:options_createListbox(pt,"DFeclipsebartextalign",DF_config.eclipsebar,"textAlign",DF.locale["text"].." "..DF.locale["align"],0,6,DF.eclipsebar_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFeclipsebarslideralignx",DF_config.eclipsebar,"textx",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,6,DF.eclipsebar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFeclipsebarslideraligny",DF_config.eclipsebar,"texty",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsety"],17,7,DF.eclipsebar_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebarborder",DF_config.eclipsebar,"border",DF.locale["border"].." "..DF.locale["active"],0,7,DF.eclipsebar_reinit)\n'
	..'DF:options_createSlider(pt,"DFeclipsebarbordersize",DF_config.eclipsebar,"borderSize",0,8,1,DF.locale["border"].." "..DF.locale["size"],0,8,DF.eclipsebar_reinit)\n'
	..'DF:options_createSlider(pt,"DFeclipsebarsliderlevel",DF_config.eclipsebar,"newLevel",1,255,1,DF.locale["level"],17,8,DF.eclipsebar_reinit,"Level")\n'
	..'DF:options_createSubTitle("DFtitledfeclipeinfos",pt,DF.locale["colors"],0,9)\n'
	..'DF:options_createColorBox(pt,"DFeclipsebarcolor",DF_config.eclipsebar,"color",DF.locale["lunaire"].." "..DF.locale["color"],0,10,DF.eclipsebar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFeclipsebarcolor2",DF_config.eclipsebar,"color2",DF.locale["solaire"].." "..DF.locale["color"],17,10,DF.eclipsebar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFeclipsebarbordercolor",DF_config.eclipsebar,"borderColor",DF.locale["border"].." "..DF.locale["color"],17,11,DF.eclipsebar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFeclipsebartextcolor",DF_config.eclipsebar,"textColor",DF.locale["text"].." "..DF.locale["color"],0,11,DF.eclipsebar_reinit)\n'
	..'DF:options_createText(pt,"DFeclipsebartext1",DF.locale["infostance"],34,0)\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebar_form0",DF_config.eclipsebar.form,1,DF.locale["form0"],34,1,DF.eclipsebar_reinit,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebar_form1",DF_config.eclipsebar.form,2,DF.locale["form1"],34,2,DF.eclipsebar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebar_form2",DF_config.eclipsebar.form,3,DF.locale["form2"],34,3,DF.eclipsebar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebar_form3",DF_config.eclipsebar.form,4,DF.locale["form3"],34,4,DF.eclipsebar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebar_form4",DF_config.eclipsebar.form,5,DF.locale["form4"],34,5,DF.eclipsebar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebar_form5",DF_config.eclipsebar.form,6,DF.locale["form5"],34,6,DF.eclipsebar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebar_form6",DF_config.eclipsebar.form,7,DF.locale["form6"],34,7,DF.eclipsebar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFeclipsebar_form7",DF_config.eclipsebar.form,8,DF.locale["form7"],34,8,DF.eclipsebar_reinit,"Stance")\n'

DF_panelsList["DFtargetbar"]=
	'local pt = DF:options_createPanel("DFtargetbar",3,11,true,DF.locale["targetbar"])\n'
	..'DF:options_createCheckBox(pt,"DFtargetbarcheck",DF_config.targetbar,"enable",DF.locale["active"],0,0,DF.targetbar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFtargetbarleft",DF_config.targetbar,"positionx",true,DF.locale["positionx"],0,1,DF.targetbar_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFtargetbartop",DF_config.targetbar,"positiony",true,DF.locale["positiony"],17,1,DF.targetbar_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFtargetbarw",DF_config.targetbar,"width",2,500,1,DF.locale["width"],0,2,DF.targetbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFtargetbarh",DF_config.targetbar,"height",2,500,1,DF.locale["height"],17,2,DF.targetbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFtargetbartexture1",DF_config.targetbar,"texturePath",DF.locale["texturePath"],0,3,DF.targetbar_reinit,DF.optionsStatusbars,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFtargetbarorient",DF_config.targetbar,"orientation",DF.locale["orientation"],17,3,DF.targetbar_reinit,DF.optionsOrientation)\n'
	..'DF:options_createCheckBox(pt,"DFtargetbarshowt",DF_config.targetbar,"showText",DF.locale["showText"],0,4,DF.targetbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFtargetbarfont1",DF_config.targetbar,"fontPath",DF.locale["fontPath"],0,5,DF.targetbar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFtargetbarslidersize",DF_config.targetbar,"fontSize",6,28,1,DF.locale["fontSize"],17,5,DF.targetbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFtargetbartextalign",DF_config.targetbar,"textAlign",DF.locale["text"].." "..DF.locale["align"],0,6,DF.targetbar_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFtargetbarslideralignx",DF_config.targetbar,"textx",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,6,DF.targetbar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFtargetbarslideraligny",DF_config.targetbar,"texty",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsety"],17,7,DF.targetbar_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFtargetbarborder",DF_config.targetbar,"border",DF.locale["border"].." "..DF.locale["active"],0,7,DF.targetbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFtargetbarbordersize",DF_config.targetbar,"borderSize",0,8,1,DF.locale["border"].." "..DF.locale["size"],0,8,DF.targetbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFtargetbarsliderlevel",DF_config.targetbar,"newLevel",1,255,1,DF.locale["level"],17,8,DF.targetbar_reinit,"Level")\n'
	..'DF:options_createSubTitle("DFtitledftargetinfos",pt,DF.locale["colors"],0,9)\n'
	..'DF:options_createColorBox(pt,"DFtargetbarcolor",DF_config.targetbar,"color",DF.locale["targetbar"].." "..DF.locale["color"],0,10,DF.targetbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFtargetbarbordercolor",DF_config.targetbar,"borderColor",DF.locale["border"].." "..DF.locale["color"],17,10,DF.targetbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFtargetbartextcolor",DF_config.targetbar,"textColor",DF.locale["text"].." "..DF.locale["color"],0,11,DF.targetbar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFtargetbartextformat",DF_config.targetbar,"sformat",false,DF.locale["sformat"],17,4,DF.targetbar_reinit,false,"sformat")\n'
	..'DF:options_createText(pt,"DFtargetbartext1",DF.locale["infostance"],34,0)\n'
	..'DF:options_createCheckBox(pt,"DFtargetbar_form0",DF_config.targetbar.form,1,DF.locale["form0"],34,1,DF.targetbar_reinit,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"DFtargetbar_form1",DF_config.targetbar.form,2,DF.locale["form1"],34,2,DF.targetbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFtargetbar_form2",DF_config.targetbar.form,3,DF.locale["form2"],34,3,DF.targetbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFtargetbar_form3",DF_config.targetbar.form,4,DF.locale["form3"],34,4,DF.targetbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFtargetbar_form4",DF_config.targetbar.form,5,DF.locale["form4"],34,5,DF.targetbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFtargetbar_form5",DF_config.targetbar.form,6,DF.locale["form5"],34,6,DF.targetbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFtargetbar_form6",DF_config.targetbar.form,7,DF.locale["form6"],34,7,DF.targetbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFtargetbar_form7",DF_config.targetbar.form,8,DF.locale["form7"],34,8,DF.targetbar_reinit,"Stance")\n'

DF_panelsList["DFpetbar"]=
	'local pt = DF:options_createPanel("DFpetbar",3,12,true,DF.locale["petbar"])\n'
	..'DF:options_createCheckBox(pt,"DFpetbarcheck",DF_config.petbar,"enable",DF.locale["active"],0,0,DF.petbar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFpetbarleft",DF_config.petbar,"positionx",true,DF.locale["positionx"],0,1,DF.petbar_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFpetbartop",DF_config.petbar,"positiony",true,DF.locale["positiony"],17,1,DF.petbar_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFpetbarw",DF_config.petbar,"width",2,500,1,DF.locale["width"],0,2,DF.petbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFpetbarh",DF_config.petbar,"height",2,500,1,DF.locale["height"],17,2,DF.petbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFpetbartexture1",DF_config.petbar,"texturePath",DF.locale["texturePath"],0,3,DF.petbar_reinit,DF.optionsStatusbars,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFpetbarorient",DF_config.petbar,"orientation",DF.locale["orientation"],17,3,DF.petbar_reinit,DF.optionsOrientation)\n'
	..'DF:options_createCheckBox(pt,"DFpetbarshowt",DF_config.petbar,"showText",DF.locale["showText"],0,4,DF.petbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFpetbarfont1",DF_config.petbar,"fontPath",DF.locale["fontPath"],0,5,DF.petbar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFpetbarslidersize",DF_config.petbar,"fontSize",6,28,1,DF.locale["fontSize"],17,5,DF.petbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFpetbartextalign",DF_config.petbar,"textAlign",DF.locale["text"].." "..DF.locale["align"],0,6,DF.petbar_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFpetbarslideralignx",DF_config.petbar,"textx",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,6,DF.petbar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFpetbarslideraligny",DF_config.petbar,"texty",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsety"],17,7,DF.petbar_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFpetbarborder",DF_config.petbar,"border",DF.locale["border"].." "..DF.locale["active"],0,8,DF.petbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFpetbarbordersize",DF_config.petbar,"borderSize",0,8,1,DF.locale["border"].." "..DF.locale["size"],17,8,DF.petbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFpetbarsliderlevel",DF_config.petbar,"newLevel",1,255,1,DF.locale["level"],0,9,DF.petbar_reinit,"Level")\n'
	..'DF:options_createSubTitle("DFtitledfpetbarinfos",pt,DF.locale["colors"],0,10)\n'
	..'DF:options_createColorBox(pt,"DFpetbarcolor",DF_config.petbar,"color",DF.locale["petbar"].." "..DF.locale["color"],0,11,DF.petbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFpetbarbordercolor",DF_config.petbar,"borderColor",DF.locale["border"].." "..DF.locale["color"],17,11,DF.petbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFpetbartextcolor",DF_config.petbar,"textColor",DF.locale["text"].." "..DF.locale["color"],0,12,DF.petbar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFpetbartextformat",DF_config.petbar,"sformat",false,DF.locale["sformat"],17,4,DF.petbar_reinit,false,"sformat")\n'
	..'DF:options_createText(pt,"DFpetbartext1",DF.locale["infostance"],34,0)\n'
	..'DF:options_createCheckBox(pt,"DFpetbar_form0",DF_config.petbar.form,1,DF.locale["form0"],34,1,DF.petbar_reinit,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"DFpetbar_form1",DF_config.petbar.form,2,DF.locale["form1"],34,2,DF.petbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpetbar_form2",DF_config.petbar.form,3,DF.locale["form2"],34,3,DF.petbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpetbar_form3",DF_config.petbar.form,4,DF.locale["form3"],34,4,DF.petbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpetbar_form4",DF_config.petbar.form,5,DF.locale["form4"],34,5,DF.petbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpetbar_form5",DF_config.petbar.form,6,DF.locale["form5"],34,6,DF.petbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpetbar_form6",DF_config.petbar.form,7,DF.locale["form6"],34,7,DF.petbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFpetbar_form7",DF_config.petbar.form,8,DF.locale["form7"],34,8,DF.petbar_reinit,"Stance")\n'

DF_panelsList["DFthreatbar"]=
	'local pt = DF:options_createPanel("DFthreatbar",3,11,true,DF.locale["threatbar"])\n'
	..'DF:options_createCheckBox(pt,"DFthreatbarcheck",DF_config.threatbar,"enable",DF.locale["active"],0,0,DF.threatbar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFthreatbarleft",DF_config.threatbar,"positionx",true,DF.locale["positionx"],0,1,DF.threatbar_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFthreatbartop",DF_config.threatbar,"positiony",true,DF.locale["positiony"],17,1,DF.threatbar_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFthreatbarw",DF_config.threatbar,"width",2,500,1,DF.locale["width"],0,2,DF.threatbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFthreatbarh",DF_config.threatbar,"height",2,500,1,DF.locale["height"],17,2,DF.threatbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFthreatbartexture1",DF_config.threatbar,"texturePath",DF.locale["texturePath"],0,3,DF.threatbar_reinit,DF.optionsStatusbars,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFthreatbarorient",DF_config.threatbar,"orientation",DF.locale["orientation"],17,3,DF.threatbar_reinit,DF.optionsOrientation)\n'
	..'DF:options_createCheckBox(pt,"DFthreatbarshowt",DF_config.threatbar,"showText",DF.locale["showText"],0,4,DF.threatbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFthreatbarfont1",DF_config.threatbar,"fontPath",DF.locale["fontPath"],0,5,DF.threatbar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFthreatbarslidersize",DF_config.threatbar,"fontSize",6,28,1,DF.locale["fontSize"],17,5,DF.threatbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFthreatbartextalign",DF_config.threatbar,"textAlign",DF.locale["text"].." "..DF.locale["align"],0,6,DF.threatbar_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFthreatbarslideralignx",DF_config.threatbar,"textx",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,6,DF.threatbar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFthreatbarslideraligny",DF_config.threatbar,"texty",-32,32,0.5,DF.locale["text"].." "..DF.locale["offsety"],17,7,DF.threatbar_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFthreatbarborder",DF_config.threatbar,"border",DF.locale["border"].." "..DF.locale["active"],0,7,DF.threatbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFthreatbarbordersize",DF_config.threatbar,"borderSize",0,8,1,DF.locale["border"].." "..DF.locale["size"],0,8,DF.threatbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFthreatbarsliderlevel",DF_config.threatbar,"newLevel",1,255,1,DF.locale["level"],17,8,DF.threatbar_reinit,"Level")\n'
	..'DF:options_createSubTitle("DFtitledfthreatinfos",pt,DF.locale["colors"],0,9)\n'
	..'DF:options_createColorBox(pt,"DFthreatbarcolor",DF_config.threatbar,"color",DF.locale["threatbar"].." "..DF.locale["color"],0,10,DF.threatbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFthreatbarbordercolor",DF_config.threatbar,"borderColor",DF.locale["border"].." "..DF.locale["color"],17,10,DF.threatbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFthreatbartextcolor",DF_config.threatbar,"textColor",DF.locale["text"].." "..DF.locale["color"],0,11,DF.threatbar_reinit)\n'
	..'DF:options_createEditbox(pt,"DFthreatbartextformat",DF_config.threatbar,"sformat",false,DF.locale["sformat"],17,4,DF.threatbar_reinit,false,"sformat")\n'
	..'DF:options_createText(pt,"DFthreatbartext1",DF.locale["infostance"],34,0)\n'
	..'DF:options_createCheckBox(pt,"DFthreatbar_form0",DF_config.threatbar.form,1,DF.locale["form0"],34,1,DF.threatbar_reinit,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"DFthreatbar_form1",DF_config.threatbar.form,2,DF.locale["form1"],34,2,DF.threatbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFthreatbar_form2",DF_config.threatbar.form,3,DF.locale["form2"],34,3,DF.threatbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFthreatbar_form3",DF_config.threatbar.form,4,DF.locale["form3"],34,4,DF.threatbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFthreatbar_form4",DF_config.threatbar.form,5,DF.locale["form4"],34,5,DF.threatbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFthreatbar_form5",DF_config.threatbar.form,6,DF.locale["form5"],34,6,DF.threatbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFthreatbar_form6",DF_config.threatbar.form,7,DF.locale["form6"],34,7,DF.threatbar_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFthreatbar_form7",DF_config.threatbar.form,8,DF.locale["form7"],34,8,DF.threatbar_reinit,"Stance")\n'

DF_panelsList["DFcooldown"]=
	'local pt = DF:options_createPanel("DFcooldown",2,5,true,DF.locale["cooldown"])\n'
	..'DF:options_createCheckBox(pt,"DFcooldowncheck",DF_config.cooldown,"enable",DF.locale["active"],0,0,DF.cooldown_reinit,"cooldown")\n'
	..'DF:options_createSlider(pt,"DFcooldownw",DF_config.cooldown,"width",8,128,1,DF.locale["width"],0,2,DF.cooldown_reinit)\n'
	..'DF:options_createSlider(pt,"DFcooldownh",DF_config.cooldown,"height",8,128,1,DF.locale["height"],17,2,DF.cooldown_reinit)\n'
	..'DF:options_createSlider(pt,"DFcooldownoffsetx",DF_config.cooldown,"offsetx",-128,128,4,DF.locale["offsetx"],0,3,DF.cooldown_reinit,"Point offset")\n'
	..'DF:options_createSlider(pt,"DFcooldownoffsety",DF_config.cooldown,"offsety",-128,128,4,DF.locale["offsety"],17,3,DF.cooldown_reinit,"Point offset")\n'
	..'DF:options_createListbox(pt,"DFcooldowntexturemode",DF_config.cooldown,"mode",DF.locale["mode"],0,4,DF.cooldown_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFcooldownsliderlevel",DF_config.cooldown,"newLevel",1,255,1,DF.locale["level"],17,5,DF.cooldown_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFcooldowntemps",DF_config.cooldown,"temps",1,15,1,DF.locale["persistence"],0,5,DF.cooldown_reinit,"Persistence")\n'
	..'DF:options_createSlider(pt,"DFcooldownalpha",DF_config.cooldown,"alpha",0,1,0.05,DF.locale["activeAlpha"],17,4,DF.cooldown_reinit,"Alpha")\n'
	..'DF:options_createListbox(pt,"DFcooldownchecklist",nil,nil,DF.locale["cooldown"].." Checklist",0,1,DF.spellsList_activeCDs,DF.spellsListCheck,false,nil,"Select used spells")\n'

DF_panelsList["DFcombo"]=
	'local pt = DF:options_createPanel("DFcombo",3,14,true,DF.locale["combo"])\n'
	..'DF:options_createCheckBox(pt,"DFcombocheck",DF_config.combo,"enable",DF.locale["active"],0,0,DF.combo_reinit,"combo")\n'
	..'DF:options_createEditbox(pt,"DFcomboleft",DF_config.combo,"positionx",true,DF.locale["positionx"],0,1,DF.combo_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFcombotop",DF_config.combo,"positiony",true,DF.locale["positiony"],17,1,DF.combo_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFcombow",DF_config.combo,"width",8,128,1,DF.locale["width"],0,2,DF.combo_reinit)\n'
	..'DF:options_createSlider(pt,"DFcomboh",DF_config.combo,"height",8,128,1,DF.locale["height"],17,2,DF.combo_reinit)\n'
	..'DF:options_createSlider(pt,"DFcombooffsetx",DF_config.combo,"offsetx",-64,64,1,DF.locale["offsetx"],0,5,DF.combo_reinit,"Point offset")\n'
	..'DF:options_createSlider(pt,"DFcombooffsety",DF_config.combo,"offsety",-64,64,1,DF.locale["offsety"],0,6,DF.combo_reinit,"Point offset")\n'
	..'DF:options_createListbox(pt,"DFcombotexturemode",DF_config.combo,"mode",DF.locale["mode"],0,3,DF.combo_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createListbox(pt,"DFcomboplacemode",DF_config.combo,"ptype",DF.locale["ptype"],0,4,DF.combo_reinit,DF.optionsCombotype,false,"ptype")\n'
	..'DF:options_createSlider(pt,"DFcombosliderlevel",DF_config.combo,"newLevel",1,255,1,DF.locale["level"],0,7,DF.combo_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFcombosliderrayon",DF_config.combo,"rayon",8,256,1,DF.locale["rayon"],17,5,DF.combo_reinit)\n'
	..'DF:options_createSlider(pt,"DFcomboslidersangle",DF_config.combo,"angleA",0,359,1,DF.locale["sangle"],17,6,DF.combo_reinit)\n'
	..'DF:options_createSlider(pt,"DFcomboslidereangle",DF_config.combo,"angleB",0,359,1,DF.locale["eangle"],17,7,DF.combo_reinit)\n'
	..'DF:options_createCheckBox(pt,"DFcomboshowt",DF_config.combo,"showText",DF.locale["showText"],0,8,DF.combo_reinit)\n'
	..'DF:options_createColorBox(pt,"DFcombotextcolor",DF_config.combo,"textColor",DF.locale["text"].." "..DF.locale["color"],17,8,DF.combo_reinit)\n'
	..'DF:options_createListbox(pt,"DFcombosfont1",DF_config.combo,"fontPath",DF.locale["fontPath"].." "..DF.locale["texts"],0,9,DF.combo_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFcombosslidersize1",DF_config.combo,"fontSize",6,28,1,DF.locale["fontSize"].." "..DF.locale["texts"],17,9,DF.combo_reinit)\n'
	..'DF:options_createText(pt,"DFcombostext1",DF.locale["infostance"],0,10)\n'
	..'DF:options_createCheckBox(pt,"DFcombo_form0",DF_config.combo.form,1,DF.locale["form0"],0,11,DF.combo_reinit,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"DFcombo_form1",DF_config.combo.form,2,DF.locale["form1"],0,12,DF.combo_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFcombo_form2",DF_config.combo.form,3,DF.locale["form2"],0,13,DF.combo_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFcombo_form3",DF_config.combo.form,4,DF.locale["form3"],0,14,DF.combo_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFcombo_form4",DF_config.combo.form,5,DF.locale["form4"],17,14,DF.combo_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFcombo_form5",DF_config.combo.form,6,DF.locale["form5"],17,11,DF.combo_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFcombo_form6",DF_config.combo.form,7,DF.locale["form6"],17,12,DF.combo_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFcombo_form7",DF_config.combo.form,8,DF.locale["form7"],17,13,DF.combo_reinit,"Stance")\n'
	..'DF:options_createSlider(pt,"DFcomboimpulsion",DF_config.combo,"impulsion",0,3,0.05,DF.locale["pulse2"],17,4,DF.combo_reinit,"pulse2")\n'
	..'DF:options_createText(pt,"DFcombostext2",DF.locale["combotextures"],34,1)\n'
	..'DF:options_createListbox(pt,"DFcombotexture1",DF_config.combo.textures,1,DF.locale["combo_cat_off"],34,2,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture2",DF_config.combo.textures,2,DF.locale["combo_cat_on"],34,3,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture3",DF_config.combo.textures,3,DF.locale["combo_bear_off"],34,4,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture4",DF_config.combo.textures,4,DF.locale["combo_bear_on"],34,5,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture5",DF_config.combo.textures,5,DF.locale["combo_rune_blood_off"],34,6,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture6",DF_config.combo.textures,6,DF.locale["combo_rune_blood_on"],34,7,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture7",DF_config.combo.textures,7,DF.locale["combo_rune_frost_off"],34,8,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture8",DF_config.combo.textures,8,DF.locale["combo_rune_frost_on"],34,9,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture9",DF_config.combo.textures,9,DF.locale["combo_rune_unholy_off"],34,10,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture10",DF_config.combo.textures,10,DF.locale["combo_rune_unholy_on"],34,11,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture11",DF_config.combo.textures,13,DF.locale["combo_holy_off"],34,12,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFcombotexture12",DF_config.combo.textures,14,DF.locale["combo_holy_on"],34,13,DF.combo_reinit,DF.optionsComboTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createCheckBox(pt,"DFcomboInternal",DF_config.combo,"useInternalCombo",DF.locale["useInternalCombo"],17,0,DF.combo_reinit,"useInternalCombo")\n'
	..'DF:options_createCheckBox(pt,"DFcomboInternalText",DF_config.combo,"useInternalComboText",DF.locale["useInternalComboText"],34,0,DF.combo_reinit,"useInternalComboText")\n'

DF_panelsList["DFdefense"]=
	'local pt = DF:options_createPanel("DFdefense",3,12,true,DF.locale["defensebar"])\n'
	..'DF:options_createCheckBox(pt,"DFdefensecheck",DF_config.defense,"enable",DF.locale["active"],0,0,DF.defense_reinit,"defense")\n'
	..'DF:options_createEditbox(pt,"DFdefenseleft",DF_config.defense,"positionx",true,DF.locale["positionx"],0,1,DF.defense_reinit,false,"position")\n'
	..'DF:options_createEditbox(pt,"DFdefensetop",DF_config.defense,"positiony",true,DF.locale["positiony"],17,1,DF.defense_reinit,false,"position")\n'
	..'DF:options_createSlider(pt,"DFdefensew",DF_config.defense,"width",8,128,1,DF.locale["width"],0,2,DF.defense_reinit)\n'
	..'DF:options_createSlider(pt,"DFdefenseh",DF_config.defense,"height",8,128,1,DF.locale["height"],17,2,DF.defense_reinit)\n'
	..'DF:options_createSlider(pt,"DFdefenseoffsetx",DF_config.defense,"offsetx",-64,64,1,DF.locale["offsetx"],0,5,DF.defense_reinit,"Point offset")\n'
	..'DF:options_createSlider(pt,"DFdefenseoffsety",DF_config.defense,"offsety",-64,64,1,DF.locale["offsety"],0,6,DF.defense_reinit,"Point offset")\n'
	..'DF:options_createListbox(pt,"DFdefensetexturemode",DF_config.defense,"mode",DF.locale["mode"],0,3,DF.defense_reinit,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createListbox(pt,"DFdefenseplacemode",DF_config.defense,"ptype",DF.locale["ptype"],0,4,DF.defense_reinit,DF.optionsCombotype,false,"ptype")\n'
	..'DF:options_createSlider(pt,"DFdefensesliderlevel",DF_config.defense,"newLevel",1,255,1,DF.locale["level"],0,7,DF.defense_reinit,"Level")\n'
	..'DF:options_createSlider(pt,"DFdefensesliderrayon",DF_config.defense,"rayon",8,256,1,DF.locale["rayon"],17,5,DF.defense_reinit)\n'
	..'DF:options_createSlider(pt,"DFdefenseslidersangle",DF_config.defense,"angleA",0,359,1,DF.locale["sangle"],17,6,DF.defense_reinit)\n'
	..'DF:options_createSlider(pt,"DFdefenseslidereangle",DF_config.defense,"angleB",0,359,1,DF.locale["eangle"],17,7,DF.defense_reinit)\n'
	..'DF:options_createText(pt,"DFdefensetext1",DF.locale["infostance"],0,8)\n'
	..'DF:options_createCheckBox(pt,"DFdefense_form0",DF_config.defense.form,1,DF.locale["form0"],0,9,DF.defense_reinit,"Humanoïd")\n'
	..'DF:options_createCheckBox(pt,"DFdefense_form1",DF_config.defense.form,2,DF.locale["form1"],0,10,DF.defense_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdefense_form2",DF_config.defense.form,3,DF.locale["form2"],0,11,DF.defense_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdefense_form3",DF_config.defense.form,4,DF.locale["form3"],0,12,DF.defense_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdefense_form4",DF_config.defense.form,5,DF.locale["form4"],17,12,DF.defense_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdefense_form5",DF_config.defense.form,6,DF.locale["form5"],17,9,DF.defense_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdefense_form6",DF_config.defense.form,7,DF.locale["form6"],17,10,DF.defense_reinit,"Stance")\n'
	..'DF:options_createCheckBox(pt,"DFdefense_form7",DF_config.defense.form,8,DF.locale["form7"],17,11,DF.defense_reinit,"Stance")\n'
	..'DF:options_createSlider(pt,"DFdefenseimpulsion",DF_config.defense,"impulsion",0,3,0.05,DF.locale["pulse2"],17,4,DF.defense_reinit,"pulse2")\n'
	..'DF:options_createText(pt,"DFdefensetext2",DF.locale["defensetextures"],34,1)\n'
	..'DF:options_createListbox(pt,"DFdefensetexture1",DF_config.defense.textures,1,DF.locale["defense_on"],34,3,DF.defense_reinit,DF.optionsdefenseTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFdefensetexture2",DF_config.defense.textures,2,DF.locale["defense_off"],34,4,DF.defense_reinit,DF.optionsdefenseTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFdefensetexture3",DF_config.defense.textures,3,DF.locale["defense_norage"],34,5,DF.defense_reinit,DF.optionsdefenseTextures,false,"editableTexture",false,true,true)\n'
	..'DF:options_createEditbox(pt,"DFdefenseSpellID",DF_config.defense,"spellid",true,DF.locale["spellid"],34,1,DF.defense_reinit,false,"defensespellid")\n'
	..'DF:options_createSlider(pt,"DFdefensesliderecount",DF_config.defense,"nbcount",1,6,1,DF.locale["defensecount"],34,2,DF.defense_reinit)\n'

DF_panelsList["DFicons"]=
	'local pt = DF:options_createPanel("DFicons",3,17,true,DF.locale["icons"])\n'
	..'DF:options_createCheckBox(pt,"DFiconscheck",DF_config.icons,"enable",DF.locale["active"],0,0,DF.icons_reinit)\n'
	..'DF:options_createConfigButton(pt,"DFiconscheckspellscheck",DF.locale["spells"],34,0,DF.options_show,"DFspells")\n'
	..'DF:options_createButton(pt,"DFiconbarsswap1",DF.locale["bar1"],7,0,DF.options_iconBar_change,1)\n'
	..'DF:options_createButton(pt,"DFiconbarsswap2",DF.locale["bar2"],14,0,DF.options_iconBar_change,2)\n'
	..'DF:options_createSlider(pt,"DFiconssliderwidth",DF_config.iconbars[1],"width",8,128,1,DF.locale["width"],17,1,DF.icons_reinit)\n'
	..'DF:options_createSlider(pt,"DFiconssliderheight",DF_config.iconbars[1],"height",8,128,1,DF.locale["height"],34,1,DF.icons_reinit)\n'
	..'DF:options_createSlider(pt,"DFiconssliderspacex",DF_config.iconbars[1],"spacex",8,128,1,DF.locale["spacex"],17,2,DF.icons_reinit)\n'
	..'DF:options_createSlider(pt,"DFiconssliderspacey",DF_config.iconbars[1],"spacey",8,128,1,DF.locale["spacey"],34,2,DF.icons_reinit)\n'
	..'DF:options_createSlider(pt,"DFiconsslidercolone",DF_config.iconbars[1],"colonne",1,20,1,DF.locale["colonne"],17,3,DF.icons_reinit,"colonne")\n'
	..'DF:options_createCheckBox(pt,"DFiconsorder",DF_config.iconbars[1],"orderByTime",DF.locale["order"],0,2,DF.icons_reinit,"Sort by timeleft")\n'
	..'DF:options_createCheckBox(pt,"DFiconstimeformat",DF_config.iconbars[1],"timerformat",DF.locale["timerformat"],0,3,DF.icons_reinit)\n'
	..'DF:options_createSlider(pt,"DFiconsspeed",DF_config.iconbars[1],"speed",1,64,1,DF.locale["speed"],34,3,DF.icons_reinit,"Slide speed")\n'
	..'DF:options_createSlider(pt,"DFiconssliderpulse",DF_config.iconbars[1],"pulse",1,2,0.10,DF.locale["pulse"],17,4,DF.icons_reinit,"pulse")\n'
	..'DF:options_createListbox(pt,"DFiconsspiral",DF_config.iconbars[1],"showSpiral",DF.locale["spiral"],34,4,DF.icons_reinit,DF.optionsSpiral,false,"spiral")\n'
	..'DF:options_createListbox(pt,"DFiconstextborder",DF_config.iconbars[1],"textBorder",DF.locale["fontPath"].." "..DF.locale["border"],17,5,DF.icons_reinit,DF.textBorder,false,nil)\n'
	..'DF:options_createListbox(pt,"DFiconsflashwhenoff",DF_config.iconbars[1],"flashWhenOff",DF.locale["flashWhenOff"],34,5,DF.icons_reinit,DF.flashWhenOffChoices,false,nil)\n'
	..'DF:options_createCheckBox(pt,"DFiconscheckdecimal",DF_config.iconbars[1],"decimal",DF.locale["decimal"],0,4,DF.icons_reinit,"decimal")\n'
	..'DF:options_createListbox(pt,"DFiconsfont1",DF_config.iconbars[1],"fontPath",DF.locale["fontPath"],0,5,DF.icons_reinit,DF.optionsFonts)\n'
	..'DF:options_createCheckBox(pt,"DFiconschecktimer1",DF_config.iconbars[1].textsoffsets[1],"visible",DF.locale["text"].." "..DF.locale["number"].." "..DF.locale["active"],0,6,DF.icons_reinit)\n'
	..'DF:options_createSlider(pt,"DFiconsslidersize1",DF_config.iconbars[1].textsoffsets[1],"size",6,28,1,DF.locale["number"].." "..DF.locale["fontSize"],17,6,DF.icons_reinit)\n'
	..'DF:options_createListbox(pt,"DFiconsslideralign1x",DF_config.iconbars[1].textsoffsets[1],"align",DF.locale["number"].." "..DF.locale["align"],0,7,DF.icons_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFiconsslideroffset1x",DF_config.iconbars[1].textsoffsets[1],"offsetx",-128,128,1,DF.locale["toffsetx"].." "..DF.locale["number"],17,7,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFiconsslideroffset1y",DF_config.iconbars[1].textsoffsets[1],"offsety",-128,128,1,DF.locale["toffsety"].." "..DF.locale["number"],34,7,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFiconschecktimer2",DF_config.iconbars[1].textsoffsets[2],"visible",DF.locale["text"].." "..DF.locale["stack"].." "..DF.locale["active"],0,8,DF.icons_reinit)\n'
	..'DF:options_createSlider(pt,"DFiconsslidersize2",DF_config.iconbars[1].textsoffsets[2],"size",6,28,1,DF.locale["stack"].." "..DF.locale["fontSize"],17,8,DF.icons_reinit)\n'
	..'DF:options_createListbox(pt,"DFiconsslideralign2x",DF_config.iconbars[1].textsoffsets[2],"align",DF.locale["stack"].." "..DF.locale["align"],0,9,DF.icons_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFiconsslideroffset2x",DF_config.iconbars[1].textsoffsets[2],"offsetx",-128,128,1,DF.locale["toffsetx"].." "..DF.locale["stack"],17,9,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFiconsslideroffset2y",DF_config.iconbars[1].textsoffsets[2],"offsety",-128,128,1,DF.locale["toffsety"].." "..DF.locale["stack"],34,9,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createCheckBox(pt,"DFiconschecktimer3",DF_config.iconbars[1].textsoffsets[3],"visible",DF.locale["text"].." CD "..DF.locale["active"],0,10,DF.icons_reinit)\n'
	..'DF:options_createSlider(pt,"DFiconsslidersize3",DF_config.iconbars[1].textsoffsets[3],"size",6,28,1,"CD "..DF.locale["fontSize"],17,10,DF.icons_reinit)\n'
	..'DF:options_createListbox(pt,"DFiconsslideralign3x",DF_config.iconbars[1].textsoffsets[3],"align","CD "..DF.locale["align"],0,11,DF.icons_reinit,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFiconsslideroffset3x",DF_config.iconbars[1].textsoffsets[3],"offsetx",-128,128,1,DF.locale["toffsetx"].." CD",17,11,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFiconsslideroffset3y",DF_config.iconbars[1].textsoffsets[3],"offsety",-128,128,1,DF.locale["toffsety"].." CD",34,11,DF.icons_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFiconsslidermin",DF_config.iconbars[1],"activeAlpha",0,1,0.05,DF.locale["activeAlpha"],0,12,DF.icons_reinit,"Alpha")\n'
	..'DF:options_createSlider(pt,"DFiconsslidermax",DF_config.iconbars[1],"inactiveAlpha",0,1,0.05,DF.locale["inactiveAlpha"],17,12,DF.icons_reinit,"Alpha")\n'
	..'DF:options_createSlider(pt,"DFiconsslidermaxCD",DF_config.iconbars[1],"inactiveCDAlpha",0,1,0.05,DF.locale["activeAlphaCD"],34,12,DF.icons_reinit,"Alpha")\n'
	..'DF:options_createSlider(pt,"DFiconssliderlevel",DF_config.iconbars[1],"newLevel",1,255,1,DF.locale["level"],34,13,DF.icons_reinit,"Level")\n'
	..'DF:options_createSubTitle("DFtitledficonsinfos",pt,DF.locale["colors"],0,13)\n'
	..'DF:options_createColorBox(pt,"DFiconscolor",DF_config.iconbars[1],"textColor",DF.locale["text"].." "..DF.locale["color"],0,14,DF.icons_reinit)\n'
	..'DF:options_createColorBox(pt,"DFiconscolorActive",DF_config.iconbars[1],"activeColor",DF.locale["IconActive"].." "..DF.locale["color"],0,15,DF.icons_reinit)\n'
	..'DF:options_createColorBox(pt,"DFiconscolorInactive",DF_config.iconbars[1],"inactiveColor",DF.locale["IconInactive"].." "..DF.locale["color"],0,16,DF.icons_reinit)\n'
	..'DF:options_createColorBox(pt,"DFiconscolorInactiveCD",DF_config.iconbars[1],"inactiveCDColor",DF.locale["IconInactiveCD"].." "..DF.locale["color"],0,17,DF.icons_reinit)\n'
	..'DF:options_OrderList_create(pt,"DFiconbarsOrderList",DF_config.iconbars[1].stack,17,13,DF.locale["stackbars"])\n'
	..'DF:options_createEditbox(pt,"DFiconRdyText",DF_config,"iconsRDYtext",false,DF.locale["iconsRdyText"],34,14,DF.icons_reinit,false,nil)\n'
	..'DF:options_createCheckBox(pt,"DFiconspapoint",DF_config.iconbars[1],"pointpa",DF.locale["DFdotPower"],34,15,DF.icons_reinit,"pointpa")\n'
	..'DF:options_createConfigButton(pt,"DFiconshowdotpower",DF.locale["DFdotPower"],34,16,DF.options_show,"DFdotPower")\n'
	..'DF:options_iconBar_change(1)\n'

DF_panelsList["DFtimerbar"]=
	'local pt = DF:options_createPanel("DFtimerbar",2,19,true,DF.locale["timerbar"])\n'
	..'DF:options_createCheckBox(pt,"DFtimerbarcheck",DF_config.timerbar,"enable",DF.locale["active"],0,0,DF.timerbar_reinit)\n'
	..'DF:options_createConfigButton(pt,"DFtimerbarspellscheck",DF.locale["spells"],17,0,DF.options_show,"DFspells")\n'
	..'DF:options_createButton(pt,"DFtimerbarsswap1",DF.locale["bar1"],0,1.25,DF.options_timerBar_change,1)\n'
	..'DF:options_createButton(pt,"DFtimerbarsswap2",DF.locale["bar2"],7,1.25,DF.options_timerBar_change,2)\n'
	..'DF:options_createSlider(pt,"DFtimerbarw",DF_config.timerbars[1],"width",2,500,1,DF.locale["width"],0,3,DF.timerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFtimerbarh",DF_config.timerbars[1],"height",2,500,1,DF.locale["height"],17,3,DF.timerbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFtimerbartexture1",DF_config.timerbars[1],"texturePath",DF.locale["texturePath"],0,4,DF.timerbar_reinit,DF.optionsStatusbars,false,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFtimerbarfont1",DF_config.timerbars[1],"font1Path",DF.locale["fontPath"].." "..DF.locale["texts"],0,5,DF.timerbar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFtimerbarslidersize1",DF_config.timerbars[1],"font1Size",6,28,1,DF.locale["fontSize"].." "..DF.locale["texts"],17,5,DF.timerbar_reinit)\n'
	..'DF:options_createListbox(pt,"DFtimerbarfont2",DF_config.timerbars[1],"font2Path",DF.locale["fontPath"].." "..DF.locale["numbers"],0,7,DF.timerbar_reinit,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFtimerbarslidersize2",DF_config.timerbars[1],"font2Size",6,28,1,DF.locale["fontSize"].." "..DF.locale["numbers"],17,7,DF.timerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFtimerbarslidermin",DF_config.timerbars[1],"activeAlpha",0,1,0.05,DF.locale["activeAlpha"],0,9,DF.timerbar_reinit,"Alpha")\n'
	..'DF:options_createSlider(pt,"DFtimerbarslidermax",DF_config.timerbars[1],"inactiveAlpha",0,1,0.05,DF.locale["inactiveAlpha"],17,9,DF.timerbar_reinit,"Alpha")\n'
	..'DF:options_createCheckBox(pt,"DFtimerbarborder",DF_config.timerbars[1],"border",DF.locale["border"].." "..DF.locale["active"],0,11,DF.timerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFtimerbarbordersize",DF_config.timerbars[1],"borderSize",0,8,1,DF.locale["border"].." "..DF.locale["size"],17,11,DF.timerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFtimerbartimeline",DF_config.timerbars[1],"timeline",8,60,1,DF.locale["timerange"],17,12,DF.timerbar_reinit,"Time range")\n'
	..'DF:options_createCheckBox(pt,"DFtimerbarpropcheck",DF_config.timerbars[1],"prop",DF.locale["prop"],0,12,DF.timerbar_reinit,"prop")\n'
	..'DF:options_createCheckBox(pt,"DFtimerbarorder",DF_config.timerbars[1],"orderByTime",DF.locale["order"],0,13,DF.timerbar_reinit,"Sort by timeleft")\n'
	..'DF:options_createSlider(pt,"DFtimerbarsliderlevel",DF_config.timerbars[1],"newLevel",1,255,1,DF.locale["level"],0,14,DF.timerbar_reinit,"Level")\n'
	..'DF:options_createCheckBox(pt,"DFtimerbarstackup1",DF_config.timerbars[1],"stackup1",DF.locale["stackup1"],17,13,DF.timerbar_reinit,nil)\n'
	..'DF:options_createCheckBox(pt,"DFtimerbarshowspark",DF_config.timerbars[1],"showSpark",DF.locale["showSpark"],0,15,DF.timerbar_reinit,"spark")\n'
	..'DF:options_createSlider(pt,"DFtimerbarcdslidermin",DF_config.timerbars[1],"activeAlphaCD",0,1,0.05,DF.locale["activeAlphaCD"],0,10,DF.timerbar_reinit,"Alpha")\n'
	..'DF:options_createSlider(pt,"DFtimerbarslideroffsetcdy",DF_config.timerbars[1],"cdoffsety",-128,128,1,DF.locale["cdoffsety"],17,10,DF.timerbar_reinit)\n'
	..'DF:options_createSubTitle("DFtitledftimerbarsinfos",pt,DF.locale["colors"],0,17)\n'
	..'DF:options_createColorBox(pt,"DFtimerbarcolor",DF_config.timerbars[1],"textColor",DF.locale["text"].." "..DF.locale["color"],0,18,DF.timerbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFtimerbarbcolor",DF_config.timerbars[1],"borderColor",DF.locale["border"].." "..DF.locale["color"],17,18,DF.timerbar_reinit)\n'
	..'DF:options_createColorBox(pt,"DFtimerbarcdcolor",DF_config.timerbars[1],"cdColor",DF.locale["cdbar"].." "..DF.locale["color"],0,19,DF.timerbar_reinit)\n'
	..'DF:options_createSlider(pt,"DFtimerbarslideroffset1x",DF_config.timerbars[1].textsoffsets[1],"offsetx",-128,128,1,DF.locale["toffsetx"],0,6,DF.timerbar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFtimerbarslideroffset1y",DF_config.timerbars[1].textsoffsets[1],"offsety",-128,128,1,DF.locale["toffsety"],17,6,DF.timerbar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFtimerbarslideroffset2x",DF_config.timerbars[1].textsoffsets[2],"offsetx",-128,128,1,DF.locale["toffsetx"].." "..DF.locale["number"],0,8,DF.timerbar_reinit,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFtimerbarslideroffset2y",DF_config.timerbars[1].textsoffsets[2],"offsety",-128,128,1,DF.locale["toffsety"].." "..DF.locale["number"],17,8,DF.timerbar_reinit,"Text offset")\n'
	..'DF:options_OrderList_create(pt,"DFtimerbarsOrderList",DF_config.timerbars[1].stack,17,14,DF.locale["stackbars"])\n'
	..'DF:options_createEditbox(pt,"DFtimerbarsRdyText",DF_config,"barsRDYtext",false,DF.locale["iconsRdyText"],0,16,DF.timerbar_reinit,false,nil)\n'
	..'DF:options_createCheckBox(pt,"DFtimerbarspapoint",DF_config.timerbars[1],"pointpa",DF.locale["DFdotPower"],17,16,DF.icons_reinit,"pointpabars")\n'
	..'DF:options_createConfigButton(pt,"DFtimerbarsshowdotpower",DF.locale["DFdotPower"],17,17,DF.options_show,"DFdotPowerBars")\n'
	..'DF:options_timerBar_change(1)\n'

DF_panelsList["DFpracticewindow"]=
	'local pt = DF:options_createPanel("DFpracticewindow",2,3,true,DF.locale["practicewindow"])\n'
	..'DF:options_createText(pt,"DFpracticewindowText1",DF.locale["practiceinfos"],0,0)\n'
	..'DF:options_createCheckBox(pt,"dfpracticecheckbuffcb",DF,"practiceCheckBuff",DF.locale["practiceCheckBuff"],0,1,nil)\n'
	..'DF:options_createCheckBox(pt,"dfpracticecheckdebuffcb",DF,"practiceCheckDebuff",DF.locale["practiceCheckDebuff"],0,2,nil)\n'
	..'DF:options_createCheckBox(pt,"dfpracticecheckauracb",DF,"practiceCheckAura",DF.locale["practiceCheckAura"],17,1,nil)\n'
	..'DF:options_createSwapButton(pt,"dfpracticeswap",DF,"practiceNotRunning",DF.locale["practicemode"],DF.locale["enter"],DF.locale["leave"],0,3,DF.practice_toggle)\n'

DF_panelsList["DFfxwindow"]=
	'local DF_Global_Env = getfenv(0);pt = DF:options_createPanel("DFfxwindow",3,19,true,DF.locale["anim"])\n'
	..'DF:options_createCheckBox(pt,"DFSPELLOPT_FXcheck",nil,"FX_enable","FX "..DF.locale["active"],0,0,DF.options_debuffList_apply,"ooc")\n'
	..'DF:options_createListbox(pt,"DFSPELLOPT_FXoffmode",nil,"FX_OffMode",DF.locale["offmode"],17,17,DF.options_debuffList_apply,DF.optionsFxmode,false,nil)\n'

	..'DF:options_createListbox(pt,"DFSPELLOPT_FX_animatic",nil,"AnimaticToLoad",DF.locale["animatic"],0,1,DF.options_fx_load,DF.optionsAnimatic,false,nil)\n'
	..'DF:options_createEditbox(pt,"DFSPELLOPT_FX_name",nil,"FX_name",false,DF.locale["fxname"],17,1,DF.options_debuffList_apply,false,nil)\n'
	..'DF:options_createButton(pt,"DFSPELLOPT_FX_save",DF.locale["save"],34,1,DF.options_fx_save,1)\n'

	..'DF:options_createText(pt,"DFSPELLOPT_FX_text1",DF.locale["infossize"],0,2,false)\n'

	..'DF:options_createSlider(pt,"DFSPELLOPT_FXw",nil,"FX_width",2,500,1,DF.locale["width"],0,3,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FXh",nil,"FX_height",2,500,1,DF.locale["height"],17,3,DF.options_debuffList_apply)\n'

	..'DF:options_createListbox(pt,"DFSPELLOPT_FXtexture",nil,"FX_texture",DF.locale["textureOn"],0,4,DF.options_debuffList_apply,DF.optionsFXTextures,true,"editableTexture",false,true,true)\n'
	..'DF:options_createListbox(pt,"DFSPELLOPT_FXmode",nil,"FX_mode",DF.locale["mode"],34,4,DF.options_debuffList_apply,DF.optionsBlend,false,"Blend mode")\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_angle",nil,"FX_angle",0,359,1,DF.locale["sangle"],34,3,DF.options_debuffList_apply)\n'

	..'DF:options_createText(pt,"DFSPELLOPT_FX_text2",DF.locale["infospos"].." X",0,5,false)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_startposx",nil,"FX_start_posx",-500,500,5,DF.locale["positionx"].." - "..DF.locale["begin"],0,6,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_middleposx",nil,"FX_middle_posx",-500,500,5,DF.locale["positionx"].." - "..DF.locale["middle"],0,7,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_endposx",nil,"FX_end_posx",-500,500,5,DF.locale["positionx"].." - "..DF.locale["end"],0,8,DF.options_debuffList_apply)\n'

	..'DF:options_createText(pt,"DFSPELLOPT_FX_text3",DF.locale["infospos"].." Y",17,5,false)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_startposy",nil,"FX_start_posy",-500,500,5,DF.locale["positiony"].." - "..DF.locale["begin"],17,6,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_middleposy",nil,"FX_middle_posy",-500,500,5,DF.locale["positiony"].." - "..DF.locale["middle"],17,7,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_endposy",nil,"FX_end_posy",-500,500,5,DF.locale["positiony"].." - "..DF.locale["end"],17,8,DF.options_debuffList_apply)\n'

	..'DF:options_createText(pt,"DFSPELLOPT_FX_text4",DF.locale["infoalpha"],34,5,false)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_startalpha",nil,"FX_start_alpha",0,1,0.05,DF.locale["alpha"].." - "..DF.locale["begin"],34,6,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_middlealpha",nil,"FX_middle_alpha",0,1,0.05,DF.locale["alpha"].." - "..DF.locale["middle"],34,7,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_endalpha",nil,"FX_end_alpha",0,1,0.05,DF.locale["alpha"].." - "..DF.locale["end"],34,8,DF.options_debuffList_apply)\n'

	..'DF:options_createText(pt,"DFSPELLOPT_FX_text5",DF.locale["infoscale"],0,9,false)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_startscale",nil,"FX_start_scale",0,3,0.05,DF.locale["scale"].." - "..DF.locale["begin"],0,10,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_middlescale",nil,"FX_middle_scale",0,3,0.05,DF.locale["scale"].." - "..DF.locale["middle"],0,11,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_endscale",nil,"FX_end_scale",0,3,0.05,DF.locale["scale"].." - "..DF.locale["end"],0,12,DF.options_debuffList_apply)\n'

	..'DF:options_createText(pt,"DFSPELLOPT_FX_text6",DF.locale["infosize"],17,9,false)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_startwidth",nil,"FX_start_width",0,1,0.05,DF.locale["width"].." "..DF.locale["begin"],17,10,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_middlewidth",nil,"FX_middle_width",0,1,0.05,DF.locale["width"].." "..DF.locale["middle"],17,11,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_endwidth",nil,"FX_end_width",0,1,0.05,DF.locale["width"].." "..DF.locale["end"],17,12,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_startheight",nil,"FX_start_height",0,1,0.05,DF.locale["height"].." "..DF.locale["begin"],34,10,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_middleheight",nil,"FX_middle_height",0,1,0.05,DF.locale["height"].." "..DF.locale["middle"],34,11,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_endheight",nil,"FX_end_height",0,1,0.05,DF.locale["height"].." "..DF.locale["end"],34,12,DF.options_debuffList_apply)\n'

	..'DF:options_createText(pt,"DFSPELLOPT_FX_text7",DF.locale["infospeed"],0,16,false)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_speed",nil,"FX_speed",1,260,1,DF.locale["anim"].." "..DF.locale["speed"],0,17,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_rotatespeed",nil,"FX_rotatespeed",-10,10,0.05,DF.locale["rotate"].." "..DF.locale["speed"],0,18,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_chakerpower",nil,"FX_chakerpower",0,36,0.25,DF.locale["chaker"].." "..DF.locale["power"],0,19,DF.options_debuffList_apply)\n'

	..'DF:options_createText(pt,"DFSPELLOPT_FX_text8",DF.locale["infopulse"],0,13,false)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_pulsepowerX",nil,"FX_pulsepowerX",0,100,1,DF.locale["pulse"].." "..DF.locale["power"].." X",0,14,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_pulsespeedX",nil,"FX_pulsespeedX",0,36,0.5,DF.locale["pulse"].." "..DF.locale["speed"].." X",0,15,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_pulsepowerY",nil,"FX_pulsepowerY",0,100,1,DF.locale["pulse"].." "..DF.locale["power"].." Y",17,14,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_pulsespeedY",nil,"FX_pulsespeedY",0,36,0.5,DF.locale["pulse"].." "..DF.locale["speed"].." Y",17,15,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_pulsepowerZ",nil,"FX_pulsepowerZ",0,10,0.1,DF.locale["pulse"].." "..DF.locale["power"].." Z",34,14,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_pulsespeedZ",nil,"FX_pulsespeedZ",0,36,0.5,DF.locale["pulse"].." "..DF.locale["speed"].." Z",34,15,DF.options_debuffList_apply)\n'

	..'DF:options_createConfigButton(pt,"DFSPELLOPT_fxwindowtimercheck",DF.locale["anim"].." - Timer",17,18,DF.options_show,"DFfxwindowtimer")\n'
--	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_newLevel",nil,"FX_newLevel",1,255,1,DF.locale["level"],34,17,DF.options_debuffList_apply,"Level","Level")\n'

	..'DF_Global_Env["DFSPELLOPT_fxwindowtimercheck"]:Disable()\n'

	..'DF:options_createButton(pt,"DFSPELLOPT_fake",DF.locale["fake"],28,19,DF.options_fake_fx,nil)\n'
	..'DF:options_createButton(pt,"DFSPELLOPT_COPY",DF.locale["copy"],36,19,DF.options_copy_fx,nil)\n'
	..'DF:options_createButton(pt,"DFSPELLOPT_PASTE",DF.locale["paste"],44,19,DF.options_paste_fx,nil)\n'

	..'DF_Global_Env["DFSPELLOPT_FX_save"]:Disable()\n'
	..'DF_Global_Env["DFSPELLOPT_fake"]:Disable()\n'

	-- timer window
DF_panelsList["DFfxwindowtimer"]=
	'local pt = DF:options_createPanel("DFfxwindowtimer",2,11,true,DF.locale["anim"].." - Timer")\n'
	..'DF:options_createCheckBox(pt,"DFSPELLOPT_FXtimerenable",nil,"FX_timerenable","FX "..DF.locale["wheel"].." "..DF.locale["active"],0,0,DF.options_debuffList_apply,nil)\n'
	..'DF:options_createText(pt,"DFSPELLOPT_FXtimertext1",DF.locale["gfx"],0,1,false)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_timerposx",nil,"FX_timerposx",-200,200,1,DF.locale["wheel"].." - "..DF.locale["positionx"],0,2,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_timerposy",nil,"FX_timerposy",-200,200,1,DF.locale["wheel"].." - "..DF.locale["positiony"],17,2,DF.options_debuffList_apply)\n'
	..'DF:options_createCheckBox(pt,"DFSPELLOPT_FXtimersmall",nil,"FX_timersmall",DF.locale["wheel"].." "..DF.locale["small"],0,4,DF.options_debuffList_apply,nil)\n'
	..'DF:options_createCheckBox(pt,"DFSPELLOPT_FXtimerabove",nil,"FX_timerabove",DF.locale["wheel"].." "..DF.locale["above"],17,4,DF.options_debuffList_apply,nil)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_timerscale",nil,"FX_timerscale",0,3,0.05,DF.locale["wheel"].." - "..DF.locale["scale"],0,3,DF.options_debuffList_apply)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FX_timeralpha",nil,"FX_timeralpha",0,1,0.05,DF.locale["wheel"].." - "..DF.locale["alpha"],17,3,DF.options_debuffList_apply)\n'
	..'DF:options_createText(pt,"DFSPELLOPT_FXtimertext2",DF.locale["txt"],0,5,false)\n'
	..'DF:options_createCheckBox(pt,"DFSPELLOPT_FXtextenable",nil,"FX_textenabled","FX Timer "..DF.locale["text"].." "..DF.locale["active"],0,6,DF.options_debuffList_apply,nil)\n'
	..'DF:options_createListbox(pt,"DFSPELLOPT_FXtextfontpath",nil,"FX_fontPath",DF.locale["fontPath"],0,7,DF.options_debuffList_apply,DF.optionsFonts)\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FXtextfontsize",nil,"FX_textsize",6,28,1,DF.locale["fontSize"],17,7,DF.options_debuffList_apply)\n'
	..'DF:options_createListbox(pt,"DFSPELLOPT_FXtextalign",nil,"FX_textalign",DF.locale["text"].." "..DF.locale["align"],0,8,DF.options_debuffList_apply,DF.optionsTextalign,false,"align")\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FXtextalignx",nil,"FX_textoffsetx",-64,64,0.5,DF.locale["text"].." "..DF.locale["offsetx"],17,8,DF.options_debuffList_apply,"Text offset")\n'
	..'DF:options_createSlider(pt,"DFSPELLOPT_FXtextaligny",nil,"FX_textoffsety",-64,64,0.5,DF.locale["text"].." "..DF.locale["offsety"],17,9,DF.options_debuffList_apply,"Text offset")\n'
	..'DF:options_createColorBox(pt,"DFSPELLOPT_FXtextcolor",nil,"FX_textColor",DF.locale["text"].." "..DF.locale["color"],0,9,DF.options_debuffList_apply)\n'
	..'DF:options_createText(pt,"DFSPELLOPT_FXtimertext3",DF.locale["progressTexture"],0,10,false)\n'
	..'DF:options_createListbox(pt,"DFSPELLOPT_FXprogressivetexture",nil,"FX_progressTexture",DF.locale["progressTexture"],0,11,DF.options_debuffList_apply,DF.progressiveTextureOpt,false,"progressTexture")\n'
	..'DF:options_createListbox(pt,"DFSPELLOPT_FXprogressivetextureFill",nil,"FX_progressTextureFill",DF.locale["progressTextureFill"],17,11,DF.options_debuffList_apply,DF.progressiveTextureFillOpt,false)\n'

-- creation des panneaux de configs
function DF:options_createpanels()
	
	DF:options_ShareMediaLists()
	DF:options_FXMediaLists()
	DF:options_SavedconfigLists()
	DF:options_SavedspellconfigLists()
	DF:options_AnimaticsList()

	-- frame preview texture
	apercutexture = CreateFrame("FRAME","DroodF_PREVIEWTEXTURE",UIParent)
	apercutexture_texture= apercutexture:CreateTexture("DroodF_PREVIEWTEXTURETexture","BACKGROUND")
	
	apercutexture:SetMovable(false)
	apercutexture:EnableMouse(false)		
	apercutexture:SetWidth(128)
	apercutexture:SetHeight(128)
	apercutexture:ClearAllPoints()
	apercutexture:SetPoint("CENTER", UIParent, "CENTER", 0, 0)	
	apercutexture:SetFrameStrata("TOOLTIP")
	apercutexture:Hide()

	apercutexture_texture:ClearAllPoints()
	apercutexture_texture:SetAllPoints(apercutexture)

	apercutexture_texture:SetTexture(nil)

	apercutexture.texture = apercutexture_texture

	-- panneau pour l'interface de blizzard
	pt = DF:options_createPanel("DFOPTIONSmain",1,1,false,DF.locale["versionName"])
	DF:options_createTitle("titledfversion",pt,DF.locale["versionName"])
	pt.name = "DroodFocus"

	local picture1 = CreateFrame("FRAME","DroodFpicture1",pt);
	picture1:SetWidth(256);
	picture1:SetHeight(128);
	picture1:SetPoint("TOP", pt, "TOP",0, -10);
	local picture1t = picture1:CreateTexture("DroodFpicture1texture","BACKGROUND");
	picture1t:SetAllPoints(picture1); -- attache la texture a la frame
	picture1t:SetTexture("Interface\\AddOns\\DroodFocus\\datas\\picture");
	picture1t:SetBlendMode("BLEND");
	picture1.texture = picture1t;
	picture1:EnableMouse(false)
	
	DF:options_createConfigButton(pt,"DFmainpanelbutton",DF.locale["DFmainpanel"],3,3,DF.options_show,"DFOPTIONSelement")
	InterfaceOptions_AddCategory(pt);

	-- panneaux spéciaux
	pt = DF:options_createPanel("DFOPTIONSelement",2,16,true,DF.locale["mainmain"])
	local picture2 = CreateFrame("FRAME","DroodFpicture2",pt);
	picture2:SetWidth(256*0.75);
	picture2:SetHeight(128*0.75);
	picture2:SetPoint("TOPRIGHT", pt, "TOPRIGHT",-16, -80);
	local picture2t = picture2:CreateTexture("DroodFpicture2texture","BACKGROUND");
	picture2t:SetAllPoints(picture2); -- attache la texture a la frame
	picture2t:SetTexture("Interface\\AddOns\\DroodFocus\\datas\\picture");
	picture2t:SetBlendMode("BLEND");
	picture2.texture = picture2t;
	picture2:EnableMouse(false)

	DF:options_createEditbox(pt,"DFconfignamebox",DF_config,"configname",false,DF.locale["configname"],0,1,nil,false)
	DF:options_createButton(pt,"DFconfignamesavebutton",DF.locale["save"],17,1,DF.config_Save,1)
	DF:options_createListbox(pt,"DFconfignameload",DF,"configToLoad",DF.locale["loadlist"],0,2,DF.config_Load,DF.optionsSavedconfig,false,nil,nil,nil,nil,true)
	DF:options_createSwapButton(pt,"DFdflock",DF,"lock",DF.locale["configmode"],DF.locale["enter"],DF.locale["leave"],0,3,DF.toogle_lock)
	DF:options_createConfigButton(pt,"DFmainvisibilitycheck",DF.locale["visibility"],0,6,DF.options_show,"DFvisibility")
	DF:options_createText(pt,"DFmaintext1",DF.locale["infosmode"],0,4,2,true)
	DF:options_createSubTitle("DFtitledfparts",pt,DF.locale["parts"],0,5)
	DF:options_createConfigButton(pt,"DFmainalertcheck",DF.locale["alert"],17,6,DF.options_show,"DFalert")
	DF:options_createConfigButton(pt,"DFmainpowerbarcheck",DF.locale["powerbar"],0,7,DF.options_show,"DFpowerbar")
	DF:options_createConfigButton(pt,"DFmainhealthbarcheck",DF.locale["healthbar"],17,7,DF.options_show,"DFhealthbar")
	DF:options_createConfigButton(pt,"DFmainmanabarcheck",DF.locale["manabar"],0,8,DF.options_show,"DFmanabar")
	DF:options_createConfigButton(pt,"DFmaintargetbarcheck",DF.locale["targetbar"],17,8,DF.options_show,"DFtargetbar")
	DF:options_createConfigButton(pt,"DFmaindefensebarcheck",DF.locale["defensebar"],0,9,DF.options_show,"DFdefense")
	DF:options_createConfigButton(pt,"DFmainthreattbarcheck",DF.locale["threatbar"],17,9,DF.options_show,"DFthreatbar")
	DF:options_createConfigButton(pt,"DFmaincombobarcheck",DF.locale["combo"],17,15,DF.options_show,"DFcombo")
	DF:options_createConfigButton(pt,"DFmainbloodcheck",DF.locale["blood"],0,10,DF.options_show,"DFblood")
--	DF:options_createConfigButton(pt,"DFmaingridcheck",DF.locale["grid"],17,10,DF.options_show,"DFgrid")
	DF:options_createConfigButton(pt,"DFmaindottrackercheck",DF.locale["DFdotTracker"],17,10,DF.options_show,"DFdotTracker")
	DF:options_createConfigButton(pt,"DFmaininfoscheck",DF.locale["infos"],0,11,DF.options_show,"DFinfos")
	DF:options_createConfigButton(pt,"DFmainspellscheck",DF.locale["spells"],17,11,DF.options_show,"DFspells")
	DF:options_createConfigButton(pt,"DFmaintimerbarcheck",DF.locale["icons"],17,12,DF.options_show,"DFicons")
	DF:options_createConfigButton(pt,"DFmaintimerbarcheck",DF.locale["timerbar"],0,12,DF.options_show,"DFtimerbar")
	DF:options_createConfigButton(pt,"DFmainportraitcheck",DF.locale["portrait"],0,13,DF.options_show,"DFportrait")
	DF:options_createConfigButton(pt,"DFmaincooldowncheck",DF.locale["cooldown"],17,13,DF.options_show,"DFcooldown")
	DF:options_createConfigButton(pt,"DFmaingpscheck",DF.locale["gps"],0,14,DF.options_show,"DFgps")
	DF:options_createConfigButton(pt,"DFmainsoundcheck",DF.locale["sound"],17,14,DF.options_show,"DFsound")
	DF:options_createConfigButton(pt,"DFmainpracticecheck",DF.locale["practicewindow"],17,16,DF.options_show,"DFpracticewindow")
	DF:options_createConfigButton(pt,"DFmaineclipsebarcheck",DF.locale["eclipsebar"],0,16,DF.options_show,"DFeclipsebar")
	DF:options_createConfigButton(pt,"DFmaincastbarcheck",DF.locale["castbar"],0,15,DF.options_show,"DFcastbar")
	DF:options_createCheckBox(pt,"DFmainminimapcheck",DF_config,"minimap",DF.locale["minimap"],0,0,DF.DF_MinimapToggle)
	DF:options_createSlider(pt,"DFslideroptionsscale",DF_config,"optionsScale",0.1,2,0.05,DF.locale["optionsscale"],17,0.25,DF.options_scale,nil,nil)

	DF_Global_Env["DroodFocusOptionsDFOPTIONSelement"]:ClearAllPoints()
	DF_Global_Env["DroodFocusOptionsDFOPTIONSelement"]:SetPoint("RIGHT", UIParent, "RIGHT", -16, 0)

	pt = DF:options_createPanel("DFspells",3,20,true,DF.locale["spells"])
	DF:options_createBox(pt,"DFspellsbox",8,-32,384,(17*nbLines)+10)
	
	DF_Global_Env["DFspellsbox"]:EnableMouse(true)
	DF_Global_Env["DFspellsbox"]:EnableMouseWheel(true)
	DF_Global_Env["DFspellsbox"]:SetScript("OnMouseWheel",function(self,delta)
		local offset=DF_Global_Env["DFdebufflistContenerSlider"]:GetValue()+(delta*-1)
		DF_Global_Env["DFdebufflistContenerSlider"]:SetValue(offset)
	end)
		
	DF:options_DebuffList_create(pt)
	DF:options_DebuffList_populate(true)
	
	DF:options_createButton(pt,"DFSPELLOPT_up",DF.locale["up"],0,4,DF.options_DebuffList_up,nil)
	DF:options_createButton(pt,"DFSPELLOPT_down",DF.locale["down"],0+(6.6*1),4,DF.options_DebuffList_down,nil)
	DF:options_createButton(pt,"DFSPELLOPT_new",DF.locale["new"],  0+(6.6*2),4,DF.options_DebuffList_new,nil)
	DF:options_createButton(pt,"DFSPELLOPT_kill",DF.locale["kill"],0+(6.6*3),4,DF.options_DebuffList_kill,nil)
	DF:options_createButton(pt,"DFSPELLOPT_copy",DF.locale["copy"],0+(6.6*4),4,DF.options_DebuffList_copy,nil)
	DF:options_createButton(pt,"DFSPELLOPT_export",DF.locale["export"],34,1.25,DF.options_DebuffList_export,nil,true)
	DF:options_createButton(pt,"DFSPELLOPT_import",DF.locale["import"],34,1.90,DF.options_DebuffList_import,nil,true)

	DF_Global_Env["DFSPELLOPT_up"]:Disable()
	DF_Global_Env["DFSPELLOPT_down"]:Disable()
	DF_Global_Env["DFSPELLOPT_kill"]:Disable()
	DF_Global_Env["DFSPELLOPT_copy"]:Disable()
	DF_Global_Env["DFSPELLOPT_export"]:Disable()
	DF_Global_Env["DFSPELLOPT_import"]:Enable()
	
	DF:options_createListbox(pt,"DFspellconfignameload",DF,"configToLoad",DF.locale["loadspelllist"],34,0.45,DF.spellconfig_Load,optionsSavedspellconfig,false,nil,nil,nil,nil,true)

	DF:options_createText(pt,"DFSPELLOPT_text1",DF.locale["infospell1"],0,5)
	DF:options_createText(pt,"DFSPELLOPT_text2",DF.locale["infospell2"],0,10)

	DF:options_createEditbox(pt,"DFSPELLOPT_ids",nil,"spellIDs",false,DF.locale["ids"],0,6,DF.options_debuffList_apply,false,"ID's list")
	DF:options_createEditbox(pt,"DFSPELLOPT_usertext",nil,"abiUserText",false,DF.locale["usertext"],17,7,DF.options_debuffList_apply,false,"usertext")
	DF:options_createListbox(pt,"DFSPELLOPT_spellslist",nil,"selectedSpell",DF.locale["spellslist"],17,6,DF.options_addID,DF.spellsList,false,"spellslist")

	DF:options_createSlider(pt,"DFobjectsliderlevel",nil,"objectLevel",1,255,1,DF.locale["level"],34,6,DF.options_debuffList_apply,"LevelObj")
	DF:options_createSlider(pt,"DFobjectsliderobjscale",nil,"objScale",1,3,0.05,DF.locale["objscale"],0,9,DF.options_debuffList_apply,"objscale")
	DF:options_createSlider(pt,"DFobjectslidertxtscale",nil,"txtScale",1,3,0.05,DF.locale["txtscale"],17,9,DF.options_debuffList_apply,"txtscale")
	
	DF:options_createListbox(pt,"DFSPELLOPT_sType",nil,"sType",DF.locale["sType"],0,7,DF.options_debuffList_apply,DF.optionsStype,false,"Spell type")
	DF:options_createCheckBox(pt,"DFSPELLOPT_showcd",nil,"showcd",DF.locale["showcd"],0,13,DF.options_debuffList_apply,"showcd")
	DF:options_createCheckBox(pt,"DFSPELLOPT_abiRdyMode",nil,"abiRdyMode",DF.locale["RdyMode"],0,12,DF.options_debuffList_apply,"RdyMode")
	DF:options_createCheckBox(pt,"DFSPELLOPT_perso",nil,"perso",DF.locale["isPerso"],34,7,DF.options_debuffList_apply,"Scan spell")
	DF:options_createCheckBox(pt,"DFSPELLOPT_combo",nil,"combo",DF.locale["toCombo"],17,12,DF.options_debuffList_apply,"Stack > Combo")
	DF:options_createListbox(pt,"DFSPELLOPT_icon",nil,"icon",DF.locale["hasIcon"],0,8,DF.options_debuffList_apply,DF.optionsIconbar)
	DF:options_createSlider(pt,"DFSPELLOPT_icd",nil,"abiInternalCD",0,600,1,DF.locale["internalcd"],17,13,DF.options_debuffList_apply,"internalcd")
	DF:options_createSlider(pt,"DFSPELLOPT_icdwarn",nil,"abiWarn",0,30,1,DF.locale["abiWarn"],34,13,DF.options_debuffList_apply,"abiWarn")
	DF:options_createListbox(pt,"DFSPELLOPT_timerbar",nil,"timerbar",DF.locale["hastimerbar"],17,8,DF.options_debuffList_apply,DF.optionsTimerbar)
	DF:options_createColorBox(pt,"DFSPELLOPT_color",nil,"color",DF.locale["timerbar"].." "..DF.locale["color"],34,8,DF.options_debuffList_apply)
	DF:options_createListbox(pt,"DFSPELLOPT_sound",nil,"abiSound",DF.locale["sound"],17,11,DF.options_debuffList_apply,DF.optionsSounds,false,"abiSound")
	DF:options_createText(pt,"DFSPELLOPT_text3",DF.locale["infostance"],0,15)
	DF:options_createCheckBox(pt,"DFSPELLOPT_form0",nil,1,DF.locale["form0"],0,15+(0.66*1),DF.options_debuffList_apply,"Humanoïd")
	DF:options_createCheckBox(pt,"DFSPELLOPT_form1",nil,2,DF.locale["form1"],0,15+(0.66*2),DF.options_debuffList_apply,"Stance")
	DF:options_createCheckBox(pt,"DFSPELLOPT_form2",nil,3,DF.locale["form2"],0,15+(0.66*3),DF.options_debuffList_apply,"Stance")
	DF:options_createCheckBox(pt,"DFSPELLOPT_form3",nil,4,DF.locale["form3"],0,15+(0.66*4),DF.options_debuffList_apply,"Stance")
	DF:options_createCheckBox(pt,"DFSPELLOPT_form4",nil,5,DF.locale["form4"],0,15+(0.66*5),DF.options_debuffList_apply,"Stance")
	DF:options_createCheckBox(pt,"DFSPELLOPT_form5",nil,6,DF.locale["form5"],0,15+(0.66*6),DF.options_debuffList_apply,"Stance")
	DF:options_createCheckBox(pt,"DFSPELLOPT_form6",nil,7,DF.locale["form6"],0,15+(0.66*7),DF.options_debuffList_apply,"Stance")
	DF:options_createCheckBox(pt,"DFSPELLOPT_form7",nil,8,DF.locale["form7"],0,15+(0.66*8),DF.options_debuffList_apply,"Stance")
	DF:options_createSlider(pt,"DFSPELLOPT_FX_stack",nil,"FX_stack",0,32,1,DF.locale["fxstack"],17,17,DF.options_debuffList_apply,"fxstack")
	DF:options_createSlider(pt,"DFSPELLOPT_comboreq",nil,"comboPoints",0,5,1,DF.locale["comboreq"],17,18,DF.options_debuffList_apply,"comboreq")
	DF:options_createConfigButton(pt,"DFSPELLOPT_luacodecheck",DF.locale["luacode"],34,17,DF.options_luacode,nil)
	DF:options_createListbox(pt,"DFSPELLOPT_warningsound",nil,"abiSoundWarningFile",DF.locale["SoundWarningFile"],17,14,DF.options_debuffList_apply,DF.optionsSounds,false,nil)
	DF:options_createCheckBox(pt,"DFSPELLOPT_abiWarnBuff",nil,"abiBuffWarning",DF.locale["BuffWarning"],0,11,DF.options_debuffList_apply,"BuffWarning")

	DF:options_createSlider(pt,"DFSPELLOPT_TimerLimit",nil,"TimerLimit",0,180,1,DF.locale["TimerLimit"],17,19,DF.options_debuffList_apply,"iTimerLimit")
	DF:options_createListbox(pt,"DFSPELLOPT_TimerLimitSens",nil,"TimerLimitSens",DF.locale["TimerLimitSens"],34,19,DF.options_debuffList_apply,DF.optionsSens,false,nil)

	DF:options_createSlider(pt,"DFSPELLOPT_abiVieLimite",nil,"abiVieLimite",0,100,1,DF.locale["abiVieLimite"],17,20,DF.options_debuffList_apply,"abiVieLimite")
	DF:options_createListbox(pt,"DFSPELLOPT_abiVieLimiteSens",nil,"abiVieLimiteSens",DF.locale["TimerLimitSens"],34,20,DF.options_debuffList_apply,DF.optionsSens,false,nil)

	DF:options_createListbox(pt,"DFSPELLOPT_abiInRange",nil,"inRange",DF.locale["inRange"],34,18,DF.options_debuffList_apply,DF.inRangeOpt,false,"inRange")

	DF:options_createConfigButton(pt,"DFSPELLOPT_fxwindowcheck",DF.locale["anim"],34,16,DF.options_show,"DFfxwindow")
	DF:options_createListbox(pt,"DFSPELLOPT_talents",nil,"abiTalent",DF.locale["talents"],17,16,DF.options_debuffList_apply,DF.optionsTalents,false,"talents")
	DF:options_createSlider(pt,"DFSPELLOPT_warning",nil,"abiSoundWarning",0,10,0.25,DF.locale["SoundWarning"],0,14,DF.options_debuffList_apply,"SoundWarning")
	DF:options_createCheckBox(pt,"DFSPELLOPT_warningtext",nil,"abiTextWarning",DF.locale["warningtext"],34,14,DF.options_debuffList_apply,"warningtext")

	DF_Global_Env["DFSPELLOPT_luacodecheck"]:Disable()
	DF_Global_Env["DFSPELLOPT_fxwindowcheck"]:Disable()

	DF.myArgs=1

	-- frames levels
	DF:options_scale()
	DF:options_chgFramesLevel(nil)
	DF:options_hide()
	DF:options_higherFramesLevel()
end

function DF:options_fx_load()
	if DF.AnimaticToLoad and selectPt then
		if selectPt>0 then

			local animaticPt={}
			if DF.AnimaticToLoad<1000 then
				animaticPt=DF.DF_animaticsListDefaut[DF.AnimaticToLoad]
			else
				animaticPt=DF_animaticsList[DF.AnimaticToLoad-1000]
			end

			DF_config.spells[selectPt].FX_name=animaticPt.FX_name
			DF_config.spells[selectPt].FX_start_posx=animaticPt.FX_start_posx
			DF_config.spells[selectPt].FX_middle_posx=animaticPt.FX_middle_posx
			DF_config.spells[selectPt].FX_end_posx=animaticPt.FX_end_posx
			DF_config.spells[selectPt].FX_start_posy=animaticPt.FX_start_posy
			DF_config.spells[selectPt].FX_middle_posy=animaticPt.FX_middle_posy
			DF_config.spells[selectPt].FX_end_posy=animaticPt.FX_end_posy
			DF_config.spells[selectPt].FX_start_alpha=animaticPt.FX_start_alpha
			DF_config.spells[selectPt].FX_middle_alpha=animaticPt.FX_middle_alpha
			DF_config.spells[selectPt].FX_end_alpha=animaticPt.FX_end_alpha
			DF_config.spells[selectPt].FX_start_scale=animaticPt.FX_start_scale
			DF_config.spells[selectPt].FX_middle_scale=animaticPt.FX_middle_scale
			DF_config.spells[selectPt].FX_end_scale=animaticPt.FX_end_scale
			DF_config.spells[selectPt].FX_start_width=animaticPt.FX_start_width
			DF_config.spells[selectPt].FX_middle_width=animaticPt.FX_middle_width
			DF_config.spells[selectPt].FX_end_width=animaticPt.FX_end_width
			DF_config.spells[selectPt].FX_start_height=animaticPt.FX_start_height
			DF_config.spells[selectPt].FX_middle_height=animaticPt.FX_middle_height
			DF_config.spells[selectPt].FX_end_height=animaticPt.FX_end_height
			DF_config.spells[selectPt].FX_speed=animaticPt.FX_speed
			DF_config.spells[selectPt].FX_rotatespeed=animaticPt.FX_rotatespeed
			DF_config.spells[selectPt].FX_chakerpower=animaticPt.FX_chakerpower
			DF_config.spells[selectPt].FX_pulsepowerX=animaticPt.FX_pulsepowerX
			DF_config.spells[selectPt].FX_pulsespeedX=animaticPt.FX_pulsespeedX
			DF_config.spells[selectPt].FX_pulsepowerY=animaticPt.FX_pulsepowerY
			DF_config.spells[selectPt].FX_pulsespeedY=animaticPt.FX_pulsespeedY
			DF_config.spells[selectPt].FX_pulsepowerZ=animaticPt.FX_pulsepowerZ
			DF_config.spells[selectPt].FX_pulsespeedZ=animaticPt.FX_pulsespeedZ
			DF_config.spells[selectPt].FX_timerenable=animaticPt.FX_timerenable
			DF_config.spells[selectPt].FX_timerposx=animaticPt.FX_timerposx
			DF_config.spells[selectPt].FX_timerposy=animaticPt.FX_timerposy
			DF_config.spells[selectPt].FX_timersmall=animaticPt.FX_timersmall
			DF_config.spells[selectPt].FX_timerabove=animaticPt.FX_timerabove
			DF_config.spells[selectPt].FX_timerscale=animaticPt.FX_timerscale
			DF_config.spells[selectPt].FX_timeralpha=animaticPt.FX_timeralpha

			DF:ooc_reinit()
			
			DF:options_DebuffList_click(selectPt)
			DF:options_fake_fx()
			
		end
	end
end

function DF:options_debuffList_apply()
	DF:spells_list_reinit()
	DF:options_DebuffList_populate()
end

function DF:options_DebuffList_up()
	local maxi = getn(DF_config.spells)
	local save={}
	
	if selectPt then
		
		if selectPt>1 then
			DF:copyTable(DF_config.spells[selectPt-1],save)
			DF:copyTable(DF_config.spells[selectPt],DF_config.spells[selectPt-1])
			DF:copyTable(save,DF_config.spells[selectPt])
			selectPt=selectPt-1
			DF:options_DebuffList_click(selectPt)
			DF:spells_list_reinit()
			DF:options_DebuffList_populate()
		end
		
	end	
	
end


function DF:options_DebuffList_new()
	
	table.insert(DF_config.spells, 1, {})
	DF:copyTable(DF.DefaultSpell,DF_config.spells[1])
	DF:spells_list_reinit()
	DF:options_DebuffList_populate()	
	selectPt=1
	currentPosition=1
	DF:options_DebuffList_click(selectPt)
	DF_Global_Env["DFdebufflistContenerSlider"]:SetValue(1)
		
end

function DF:options_DebuffList_export()

	if selectPt then
		DF:export_exportSpell(selectPt)
	end	
	
end

function DF:options_DebuffList_import()

	DF:export_importSpell()
	
end

function DF:options_DebuffList_copy()

	if selectPt then
		
		table.insert(DF_config.spells, 1, {})
		DF:copyTable(DF_config.spells[selectPt+1],DF_config.spells[1])
		DF:spells_list_reinit()
		DF:options_DebuffList_populate()	
		selectPt=1
		currentPosition=1
		DF:options_DebuffList_click(1)
		DF_Global_Env["DFdebufflistContenerSlider"]:SetValue(1)
	
	end	
	
end

function DF:options_DebuffList_copyImport()

	table.insert(DF_config.spells, 1, {})
	DF:copyTable(DF.DefaultSpell,DF_config.spells[1])
	DF:copyTable(DF.importedTable,DF_config.spells[1])

	DF:spells_list_reinit()
	DF:options_DebuffList_populate()	
	selectPt=1
	currentPosition=1
	DF:options_DebuffList_click(1)
	DF_Global_Env["DFdebufflistContenerSlider"]:SetValue(1)
	
end

function DF:options_DebuffList_kill()
	
	if selectPt and getn(DF_config.spells)>1 then
		
		if DF_config.spells[selectPt].removable then
			table.remove(DF_config.spells ,selectPt )
			selectPt=1
			currentPosition=1
			DF:options_DebuffList_click(selectPt)
			DF:spells_list_reinit()
			DF:options_DebuffList_populate()		
		end
		
	end	
	
end

function DF:options_bloodtest()
	DF:blood_activate(1)
end

function DF:options_fake_fx()
		if selectPt and selectPt>0 then
			DF.works.spells[selectPt].abiFXtest=6
		end
end

function DF:options_copy_fx()
		if selectPt and selectPt>0 then

			if fxcopy==nil then
				fxcopy={}
			else
				fxcopy=table.wipe(fxcopy)
			end
			
			fxcopy.FX_width=DF_config.spells[selectPt].FX_width
			fxcopy.FX_height=DF_config.spells[selectPt].FX_height
			fxcopy.FX_texture=DF_config.spells[selectPt].FX_texture
			fxcopy.FX_customtexture=DF_config.spells[selectPt].FX_customtexture
			fxcopy.FX_mode=DF_config.spells[selectPt].FX_mode
			fxcopy.FX_angle=DF_config.spells[selectPt].FX_angle
			fxcopy.FX_start_posx=DF_config.spells[selectPt].FX_start_posx
			fxcopy.FX_middle_posx=DF_config.spells[selectPt].FX_middle_posx
			fxcopy.FX_end_posx=DF_config.spells[selectPt].FX_end_posx
			fxcopy.FX_start_posy=DF_config.spells[selectPt].FX_start_posy
			fxcopy.FX_middle_posy=DF_config.spells[selectPt].FX_middle_posy
			fxcopy.FX_end_posy=DF_config.spells[selectPt].FX_end_posy
			fxcopy.FX_start_alpha=DF_config.spells[selectPt].FX_start_alpha
			fxcopy.FX_middle_alpha=DF_config.spells[selectPt].FX_middle_alpha
			fxcopy.FX_end_alpha=DF_config.spells[selectPt].FX_end_alpha
			fxcopy.FX_start_scale=DF_config.spells[selectPt].FX_start_scale
			fxcopy.FX_middle_scale=DF_config.spells[selectPt].FX_middle_scale
			fxcopy.FX_end_scale=DF_config.spells[selectPt].FX_end_scale
			fxcopy.FX_start_width=DF_config.spells[selectPt].FX_start_width
			fxcopy.FX_middle_width=DF_config.spells[selectPt].FX_middle_width
			fxcopy.FX_end_width=DF_config.spells[selectPt].FX_end_width
			fxcopy.FX_start_height=DF_config.spells[selectPt].FX_start_height
			fxcopy.FX_middle_height=DF_config.spells[selectPt].FX_middle_height
			fxcopy.FX_end_height=DF_config.spells[selectPt].FX_end_height
			fxcopy.FX_speed=DF_config.spells[selectPt].FX_speed
			fxcopy.FX_rotatespeed=DF_config.spells[selectPt].FX_rotatespeed
			fxcopy.FX_chakerpower=DF_config.spells[selectPt].FX_chakerpower
			fxcopy.FX_pulsepowerX=DF_config.spells[selectPt].FX_pulsepowerX
			fxcopy.FX_pulsespeedX=DF_config.spells[selectPt].FX_pulsespeedX
			fxcopy.FX_pulsepowerY=DF_config.spells[selectPt].FX_pulsepowerY
			fxcopy.FX_pulsespeedY=DF_config.spells[selectPt].FX_pulsespeedY
			fxcopy.FX_pulsepowerZ=DF_config.spells[selectPt].FX_pulsepowerZ
			fxcopy.FX_pulsespeedZ=DF_config.spells[selectPt].FX_pulsespeedZ
			fxcopy.FX_timerenable=DF_config.spells[selectPt].FX_timerenable
			fxcopy.FX_timerposx=DF_config.spells[selectPt].FX_timerposx
			fxcopy.FX_timerposy=DF_config.spells[selectPt].FX_timerposy
			fxcopy.FX_timersmall=DF_config.spells[selectPt].FX_timersmall
			fxcopy.FX_timerabove=DF_config.spells[selectPt].FX_timerabove
			fxcopy.FX_timerscale=DF_config.spells[selectPt].FX_timerscale
			fxcopy.FX_timeralpha=DF_config.spells[selectPt].FX_timeralpha
			
		end
end

function DF:options_paste_fx()

		if selectPt and selectPt>0 then
			if fxcopy then
					
				DF_config.spells[selectPt].FX_width=fxcopy.FX_width
				DF_config.spells[selectPt].FX_height=fxcopy.FX_height
				DF_config.spells[selectPt].FX_texture=fxcopy.FX_texture
				DF_config.spells[selectPt].FX_customtexture=fxcopy.FX_customtexture
				DF_config.spells[selectPt].FX_mode=fxcopy.FX_mode
				DF_config.spells[selectPt].FX_angle=fxcopy.FX_angle
				DF_config.spells[selectPt].FX_start_posx=fxcopy.FX_start_posx
				DF_config.spells[selectPt].FX_middle_posx=fxcopy.FX_middle_posx
				DF_config.spells[selectPt].FX_end_posx=fxcopy.FX_end_posx
				DF_config.spells[selectPt].FX_start_posy=fxcopy.FX_start_posy
				DF_config.spells[selectPt].FX_middle_posy=fxcopy.FX_middle_posy
				DF_config.spells[selectPt].FX_end_posy=fxcopy.FX_end_posy
				DF_config.spells[selectPt].FX_start_alpha=fxcopy.FX_start_alpha
				DF_config.spells[selectPt].FX_middle_alpha=fxcopy.FX_middle_alpha
				DF_config.spells[selectPt].FX_end_alpha=fxcopy.FX_end_alpha
				DF_config.spells[selectPt].FX_start_scale=fxcopy.FX_start_scale
				DF_config.spells[selectPt].FX_middle_scale=fxcopy.FX_middle_scale
				DF_config.spells[selectPt].FX_end_scale=fxcopy.FX_end_scale
				DF_config.spells[selectPt].FX_start_width=fxcopy.FX_start_width
				DF_config.spells[selectPt].FX_middle_width=fxcopy.FX_middle_width
				DF_config.spells[selectPt].FX_end_width=fxcopy.FX_end_width
				DF_config.spells[selectPt].FX_start_height=fxcopy.FX_start_height
				DF_config.spells[selectPt].FX_middle_height=fxcopy.FX_middle_height
				DF_config.spells[selectPt].FX_end_height=fxcopy.FX_end_height
				DF_config.spells[selectPt].FX_speed=fxcopy.FX_speed
				DF_config.spells[selectPt].FX_rotatespeed=fxcopy.FX_rotatespeed
				DF_config.spells[selectPt].FX_chakerpower=fxcopy.FX_chakerpower
				DF_config.spells[selectPt].FX_pulsepowerX=fxcopy.FX_pulsepowerX
				DF_config.spells[selectPt].FX_pulsespeedX=fxcopy.FX_pulsespeedX
				DF_config.spells[selectPt].FX_pulsepowerY=fxcopy.FX_pulsepowerY
				DF_config.spells[selectPt].FX_pulsespeedY=fxcopy.FX_pulsespeedY
				DF_config.spells[selectPt].FX_pulsepowerZ=fxcopy.FX_pulsepowerZ
				DF_config.spells[selectPt].FX_pulsespeedZ=fxcopy.FX_pulsespeedZ
				DF_config.spells[selectPt].FX_timerenable=fxcopy.FX_timerenable
				DF_config.spells[selectPt].FX_timerposx=fxcopy.FX_timerposx
				DF_config.spells[selectPt].FX_timerposy=fxcopy.FX_timerposy
				DF_config.spells[selectPt].FX_timersmall=fxcopy.FX_timersmall
				DF_config.spells[selectPt].FX_timerabove=fxcopy.FX_timerabove
				DF_config.spells[selectPt].FX_timerscale=fxcopy.FX_timerscale
				DF_config.spells[selectPt].FX_timeralpha=fxcopy.FX_timeralpha
				DF:ooc_reinit()	
				DF:options_DebuffList_click(selectPt)
				
			end
		end
end

function DF:options_DebuffList_down()
	local maxi = getn(DF_config.spells)
	local save={}
	
	if selectPt then
		
		if selectPt<maxi then

			DF:copyTable(DF_config.spells[selectPt+1],save)
			DF:copyTable(DF_config.spells[selectPt],DF_config.spells[selectPt+1])
			DF:copyTable(save,DF_config.spells[selectPt])
			selectPt=selectPt+1
			DF:options_DebuffList_click(selectPt)
			DF:spells_list_reinit()
			DF:options_DebuffList_populate()
		end
		
	end	
	
end

function DF:options_luacode()
	if selectPt then
		DF:luaCode_setNum(selectPt)
		DF:luaCode_showWindow()
	end
end

function DF:options_show(name,parent,force)
	
	DF:CheckConfigurationPanel()

	if not name then name=DF.myArgs end

	DF:options_createSinglePanel(name)
	
	if DroodFocusOptions[name]:IsVisible() and not force then
		DroodFocusOptions[name]:Hide()
	else
		DF:options_chgFramesLevel(name)
		DroodFocusOptions[name]:Show()
	end

	if selectPt then
	
		local finalnamec="Unknow"
	
		if DF_config.spells[selectPt].abiUserText==nil or DF_config.spells[selectPt].abiUserText=="" then
			
			if DF.works.spells[selectPt].names[1] then
				finalnamec=DF.works.spells[selectPt].names[1]
			else
				finalnamec=DF.locale["unknow"]
			end
			
		else
			finalnamec=DF_config.spells[selectPt].abiUserText
		end
	
		if DF.LuaWindowTitle.text then
			DF.LuaWindowTitle.text:SetText(DF.locale["versionName"].." - Lua code editor - ["..tostring(selectPt).. "] "..finalnamec)
		end
	
		if DroodFocusOptions["DFfxwindow"] then 
			if DroodFocusOptions["DFfxwindow"].titlebar.text then
				DroodFocusOptions["DFfxwindow"].titlebar.text:SetText(DF.locale["versionName"].." - "..DF.locale["anim"].." - ["..tostring(selectPt).. "] "..finalnamec)
			end
		end
		
		if DroodFocusOptions["DFfxwindowtimer"] then
			if DroodFocusOptions["DFfxwindowtimer"].titlebar.text then 
				DroodFocusOptions["DFfxwindowtimer"].titlebar.text:SetText(DF.locale["versionName"].." - "..DF.locale["anim"].." - ["..tostring(selectPt).. "] "..finalnamec)
			end
		end
		
	end
	
	DF:options_higherFramesLevel()
	
end

function DF:options_transp(name)
	if name then
		if DroodFocusOptions[name].transp then
			DroodFocusOptions[name].transp=false
			DroodFocusOptions[name]:SetAlpha(1)
		else
			DroodFocusOptions[name].transp=true
			DroodFocusOptions[name]:SetAlpha(0.33)			
		end
	end
end

function DF:options_hide(name)
	if name then
		DroodFocusOptions[name]:Hide()
	else
		for k,_ in pairs(DroodFocusOptions) do
			if DroodFocusOptions[k].isMovable then
				DroodFocusOptions[k]:Hide()
			end
		end
	end
	
	if DF_dropdownlist then
		for k,v in pairs(DF_dropdownlist) do
			DF_Global_Env[v]:Hide()
			DF_Global_Env[v].isvisible=false
		end	
	end
	DF:options_higherFramesLevel()
end

function DF:options_scale()
	for k,_ in pairs(DroodFocusOptions) do
		if DroodFocusOptions[k].isMovable and DroodFocusOptions[k].name~="DFOPTIONSelement" then
			DroodFocusOptions[k]:SetScale(DF_config.optionsScale)
		end
	end
end

-- widgets fonctions
function DF:options_createPanel(name,largeur,nline,movable,title)
	DroodFocusOptions[name] = CreateFrame("FRAME","DroodFocusOptions"..name,UIParent,"OptionsBoxTemplate")

	DroodFocusOptions[name].isMovable = movable

	local taille=((nline+1)*38)
	local taille2=taille

	if movable then
		
		DroodFocusOptions[name].name = name
		DroodFocusOptions[name].parent = "DroodFocus"
			
		DroodFocusOptions[name]:SetMovable(true)
		DroodFocusOptions[name]:EnableMouse(true)
--		DroodFocusOptions[name]:SetBackdrop({ bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark.blp", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = 1, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 } });
--		DroodFocusOptions[name]:SetBackdrop({ bgFile = "Interface\\Addons\\DroodFocus\\datas\\back.tga", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = 1, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 } });
		DroodFocusOptions[name]:SetFrameStrata("DIALOG");
--		DroodFocusOptions[name]:SetBackdropColor(1,0,0,1);
		DroodFocusOptions[name]:SetWidth((202*largeur)+4)
		DroodFocusOptions[name]:SetHeight(taille2+28)

		DroodFocusOptions[name].texture = DroodFocusOptions[name]:CreateTexture("DroodFocusOptionsBackTexture"..name,"BACKGROUND")
		DroodFocusOptions[name].texture:SetTexCoord(0, 1, 0, 1)
		DroodFocusOptions[name].texture:SetWidth((202*largeur)+4)
		DroodFocusOptions[name].texture:SetHeight(taille2+28)
		DroodFocusOptions[name].texture:SetBlendMode("BLEND")
		DroodFocusOptions[name].texture:ClearAllPoints()
		DroodFocusOptions[name].texture:SetAllPoints(DroodFocusOptions[name])

		DroodFocusOptions[name].texture:SetTexture(activewndr,activewndv,activewndb,1);

		DroodFocusOptions[name].transp = false

		DroodFocusOptions[name]:ClearAllPoints()
		DroodFocusOptions[name]:SetPoint("LEFT", UIParent, "LEFT", 16, 0)

		DroodFocusOptions[name]:SetScript("OnMouseDown",function(self)
			DF:options_chgFramesLevel(name)
			DroodFocusOptions[name]:StartMoving()
		end)
		DroodFocusOptions[name]:SetScript("OnMouseUp",function(self)
			DroodFocusOptions[name]:StopMovingOrSizing()
		end)	

		DroodFocusOptions[name].titlebar = CreateFrame("FRAME","DroodFocusOptionsbar"..name,DroodFocusOptions[name]);
		DroodFocusOptions[name].titlebar:SetMovable(false)
		DroodFocusOptions[name].titlebar:EnableMouse(movable)
		local t=DroodFocusOptions[name].titlebar:CreateTexture("DroodFocusOptionsbar"..name.."Texture");
		DroodFocusOptions[name].titlebar.texture=t;
		DroodFocusOptions[name].titlebar:SetHeight(22)
		DroodFocusOptions[name].titlebar:SetWidth((202*largeur)-4)
		DroodFocusOptions[name].titlebar:SetPoint("TOPLEFT", DroodFocusOptions[name], "TOPLEFT", 2, -2)
		DroodFocusOptions[name].titlebar.texture:SetAllPoints(DroodFocusOptions[name].titlebar)
		DroodFocusOptions[name].titlebar.texture:SetTexture(90/255,106/255,80/255,0.85);
		DroodFocusOptions[name].titlebar.text = DroodFocusOptions[name].titlebar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		DroodFocusOptions[name].titlebar.text:SetText(DF.locale["versionName"].." - "..title)
		DroodFocusOptions[name].titlebar.text:SetPoint("LEFT", DroodFocusOptions[name].titlebar, "LEFT", 6, 0);	
		DroodFocusOptions[name].titlebar:SetScript("OnMouseDown",function(self)
			DF:options_chgFramesLevel(name)
			DroodFocusOptions[name]:StartMoving()
		end)
		DroodFocusOptions[name].titlebar:SetScript("OnMouseUp",function(self)
			DroodFocusOptions[name]:StopMovingOrSizing()
		end)	
		DroodFocusOptions[name].titlebar:SetFrameLevel(DroodFocusOptions[name]:GetFrameLevel()+1)
		
		DroodFocusOptions[name].button1 = CreateFrame("Button", "DroodFocusOptionsclose"..name, DroodFocusOptions[name], "GameMenuButtonTemplate")
		DroodFocusOptions[name].button1:SetText("X")
		DroodFocusOptions[name].button1:SetWidth(20)
		DroodFocusOptions[name].button1:SetHeight(20)
		DroodFocusOptions[name].button1:SetPoint("TOPRIGHT", DroodFocusOptions[name], "TOPRIGHT", -4, -3)
		DroodFocusOptions[name].button1:SetScript("OnClick", function(self)
			DF:options_hide(name)
		end)
		DroodFocusOptions[name].button1:SetFrameLevel(DroodFocusOptions[name]:GetFrameLevel()+2)
		
		DroodFocusOptions[name].button2 = CreateFrame("Button", "DroodFocusOptionsderoule"..name, DroodFocusOptions[name], "GameMenuButtonTemplate")
		DroodFocusOptions[name].button2:SetText("-")
		DroodFocusOptions[name].button2:SetWidth(20)
		DroodFocusOptions[name].button2:SetHeight(20)
		DroodFocusOptions[name].button2:SetPoint("TOPRIGHT", DroodFocusOptions[name], "TOPRIGHT", -26, -3)
		DroodFocusOptions[name].button2:SetScript("OnClick", function(self)
			DF:options_transp(name)
		end)
		DroodFocusOptions[name].button2:SetFrameLevel(DroodFocusOptions[name]:GetFrameLevel()+2)		

--		-- création du faux scroll
--		DroodFocusOptions[name].scrollarea = CreateFrame("ScrollFrame", "DroodFocusOptionsScrollArea"..name, DroodFocusOptions[name], "UIPanelScrollFrameTemplate")
--		DroodFocusOptions[name].scrollarea:SetPoint("TOPLEFT", DroodFocusOptions[name], 6, -26)
--		DroodFocusOptions[name].scrollarea:SetPoint("BOTTOMRIGHT", DroodFocusOptions[name], -27, 5)
--	
--		-- le cadre qui acceuille les éléments
--		DroodFocusOptions[name].area = CreateFrame("FRAME","DroodFocusOptionsArea"..name,DroodFocusOptions[name])
--		DroodFocusOptions[name].area:SetWidth(202*largeur)
--		DroodFocusOptions[name].area:SetHeight(taille)	
--	
--		-- assignation de la zone a scroll
--		DroodFocusOptions[name].scrollarea:SetScrollChild(DroodFocusOptions[name].area)
	
		return DroodFocusOptions[name]
		
	else
		
		return DroodFocusOptions[name]
			
	end


	
	--return DroodFocusOptions[name]
end

function DF:options_higherFramesLevel()
	
	local startLevel=1
	local found = nil
	
	for k,_ in pairs(DroodFocusOptions) do

		if DroodFocusOptions[k]:IsVisible() and DroodFocusOptions[k].isMovable then
			
			DroodFocusOptions[k].texture:SetTexture(inactivewndr,inactivewndv,inactivewndb,1);
		
			if DroodFocusOptions[k]:GetFrameLevel()>=startLevel then
				startLevel=DroodFocusOptions[k]:GetFrameLevel()
				found=k
			end
			
		end
		
	end

	if found then
		DroodFocusOptions[found].texture:SetTexture(activewndr,activewndv,activewndb,1);
	end

end

function DF:options_chgFramesLevel(name)
	
	local startLevel
	
	if not DroodFocusOptions[name] then
		
		startLevel=1
		for k,_ in pairs(DroodFocusOptions) do
			if DroodFocusOptions[k].isMovable then
				DroodFocusOptions[k]:SetFrameLevel(startLevel)
			end
		end
		
	else
		
		startLevel=1
		for k,_ in pairs(DroodFocusOptions) do

			if DroodFocusOptions[k]:IsVisible() and DroodFocusOptions[name].isMovable then
			
				if DroodFocusOptions[k]:GetFrameLevel()>=startLevel and k~=name then
					startLevel=DroodFocusOptions[k]:GetFrameLevel()+4
				end
				
			end
			
		end

		if DroodFocusOptions[name].isMovable then
			DroodFocusOptions[name]:SetFrameLevel(startLevel)
		end
		
	end	
	
	DF:options_higherFramesLevel()
	
end

function DF:options_chgBase(name,newbase)
	
	local obj = DF_Global_Env[name]
	if obj then
		obj.base=newbase
		obj:Hide()
		obj:Show()
	end
	
end

function DF:options_createButton(parent,name,infos,posx,posy,fonction,args,large)
	--name="DroodF"..name;
	-- titre
	local obj = CreateFrame("Button", name, parent, "OptionsButtonTemplate")
	obj:SetText(infos)
	if large then
		obj:SetWidth(120)
	else
		obj:SetWidth(80)
	end
		
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 8+(posx*11.5), -29-(posy*38))
	
	local fontString = obj:GetFontString()
	police = fontString:GetFont();fontString:SetFont(police,10)
		
	obj:SetScript("OnClick", function(self)
		falseEditBox:SetFocus()
		if fonction then
			DF.myArgs=args
			fonction()
		end
	end)
	
end

function DF:options_createSwapButton(parent,name,base,index,infos,textOn,textOff,posx,posy,fonction)
	--name="DroodF"..name;
	-- titre
	local obj = CreateFrame("Button", name, parent, "OptionsButtonTemplate")
	obj.base=base
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 8+(posx*11.5), -27-(posy*38))
	obj:SetScript("OnClick", function(self)
		falseEditBox:SetFocus()
		if obj.base[index]==true then
			obj.base[index]=false
			obj:SetText(textOff)
		else
			obj.base[index]=true
			obj:SetText(textOn)
		end
		if fonction then
			fonction()
		end
	end)
	obj:SetScript("OnShow", function(self)
		if obj.base[index] then
			obj:SetText(textOn)
		else
			obj:SetText(textOff)
		end
	end)
	local fontString = obj:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	fontString:SetPoint("LEFT", obj, "RIGHT", 0, 0)
	fontString:SetJustifyH("LEFT")
	fontString:SetText(infos)
	police = fontString:GetFont();fontString:SetFont(police,10)	
end

function DF:options_createConfigButton(parent,name,infos,posx,posy,fonction,args)
	--name="DroodF"..name;
	-- titre
	local obj = CreateFrame("Button", name, parent, "OptionsButtonTemplate")
	obj:SetText(DF.locale["config"])
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 8+(posx*11.5), -27-(posy*38))
	obj:SetScript("OnClick", function(self)
		falseEditBox:SetFocus()
		if fonction then
			DF.myArgs=args
			fonction()
		end
	end)
	local fontString = obj:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	fontString:SetPoint("LEFT", obj, "RIGHT", 2, 0)
	fontString:SetJustifyH("LEFT")
	fontString:SetText(infos)
	police = fontString:GetFont();fontString:SetFont(police,10)	
end

function DF:options_createTitle(name,parent,infos)
	-- titre
	local title = parent:CreateFontString(name, "OVERLAY", "GameFontNormal")
	title:SetPoint("TOP", parent, "TOP", 0, -4)
	title:SetJustifyH("CENTER")
	title:SetText(string.upper(infos))	
end

function DF:options_createSubTitle(name,parent,infos,posx,posy)
	-- titre
	local texte = parent:CreateFontString(name, "OVERLAY", "GameFontNormal")
	texte:SetPoint("TOPLEFT", parent, "TOPLEFT", 8, -32-(posy*38))
	texte:SetText(infos)	
end

function DF:options_createText(parent,name,infos,posx,posy,nblignes,iswhite)
	-- titre
	local texte=nil

	if iswhite==nil or iswhite==false  then
		texte = parent:CreateFontString(name, "OVERLAY", "GameFontNormal")
	else
		texte = parent:CreateFontString(name, "OVERLAY", "GameFontHighlight")
	end
	texte:SetWidth(380)
	if not nblignes then nblignes=3 end
	texte:SetHeight(nblignes*11)
	texte:SetJustifyH("LEFT")
	texte:SetJustifyV("TOP")
	
	texte:SetPoint("TOPLEFT", parent, "TOPLEFT", 8+(posx*11.5), -32-(posy*38))
	police = texte:GetFont();
	if iswhite==nil or iswhite==false then
		texte:SetFont(police,12)	
	else
		texte:SetFont(police,10)	
	end
	texte:SetText(infos)	
	
end

function DF:options_createCheckBox(parent,name,base,index,infos,posx,posy,fonction,help)
	--name="DroodF"..name;
	 -- Create check button
	local obj = CreateFrame("CHECKBUTTON", name, parent,"OptionsCheckButtonTemplate")
	obj.base=base	
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 8+(posx*11.5), -27-(posy*38))

	obj:SetScript("OnShow", function(self)
	  if self.base then
		  if self.base[index]==true then
		  	self:SetChecked(true)
		  else
		  	self:SetChecked(false)
		  end 
		  obj:EnableMouse(true) 
		  obj:SetAlpha(1)
		else
			obj:EnableMouse(false) 
			obj:SetAlpha(0.5)
		end
	end)	
	obj:SetScript("OnClick", function(self)
		falseEditBox:SetFocus()
		if (self:GetChecked()==1) then
			self.base[index]=true
			if fonction then fonction() end
		else
			self.base[index]=false
			if fonction then fonction() end
		end
	end)
	obj.fontString = obj:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	obj.fontString:SetPoint("LEFT", obj, "RIGHT", 0, 2)
	obj.fontString:SetJustifyH("LEFT")
	obj.fontString:SetText(infos)
	
	obj:SetHitRectInsets(0,0,0,0)

	police = obj.fontString:GetFont();obj.fontString:SetFont(police,10)
	
	if help then DF:options_createHelp(obj,obj.fontString,name,help) end
	
end

function DF:options_createHelp(parent,ancre,nom,index)

	if DF.help[index] then
		local pointI= CreateFrame("FRAME","DFhelp"..nom.."pointi",parent)
		local pointItexture=pointI:CreateTexture("DFhelp"..nom.."pointiTexture","BACKGROUND")
		
		pointI.lindex=index
		
		pointI:SetMovable(false)
		pointI:EnableMouse(true)
		pointI:SetWidth(16)
		pointI:SetHeight(16)
		pointI:SetPoint("LEFT", ancre, "RIGHT", 0, -1)
	
		-- paramétres texture
		pointItexture:SetTexCoord(1, 0, 0, 1)
		pointItexture:ClearAllPoints()
		pointItexture:SetAllPoints(pointI)
		pointItexture:SetTexture("Interface\\ChatFrame\\UI-ChatIcon-Chat-Up")
		
		pointI:SetScript("OnEnter", function(self)
			DF.DroodFGameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
			DF.DroodFGameTooltip:ClearLines()
			local lignes=DF:explode ( "|", DF.help[self.lindex] )
			for li = 1,getn(lignes) do
				if li==1 then
					DF.DroodFGameTooltip:AddLine(lignes[li],1,1,0,nil)
				else
					DF.DroodFGameTooltip:AddLine(lignes[li],1,1,1,nil)
				end
			end
			DF.DroodFGameTooltip:Show()	
		end)
		pointI:SetScript("OnLeave", function(self)
			DF.DroodFGameTooltip:Hide()	
		end)	
	end
	
end

function DF:options_createPreview(parent,ancre,nom,base,index)
	--nom="DroodF"..nom;

	local texture=nil
	if base then
		texture=base[index]
	end

	local pointI= CreateFrame("FRAME",nom.."pointi",parent)
	local pointItexture=pointI:CreateTexture(nom.."pointiTexture","BACKGROUND")
	pointI:SetMovable(false)
	pointI:EnableMouse(false)
	pointI:SetWidth(32)
	pointI:SetHeight(32)
	pointI:SetPoint("RIGHT", ancre, "LEFT", -6, 7)
	-- paramétres texture
	pointItexture:SetTexCoord(0, 1, 0, 1)
	pointItexture:ClearAllPoints()
	pointItexture:SetAllPoints(pointI)
	pointItexture:SetTexture(texture)
		
	
end

function DF:options_createSlider(parent,name,base,index,mini,maxi,pas,infos,posx,posy,fonction,help)
	--name="DroodF"..name;
	local value
	local obj = CreateFrame('Slider', name, parent, 'OptionsSliderTemplate')
	obj.base=base
	obj.pas=pas
	obj.mini=mini
	obj.maxi=maxi
	obj:EnableMouseWheel(1)
	obj:SetThumbTexture("Interface\\Buttons\\UI-ScrollBar-Knob")
	obj:SetWidth(180-32)
 	obj:SetHeight(24)
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 16+12+(posx*11.5), -28-(posy*38))
	obj:SetOrientation('HORIZONTAL')
	getglobal(obj:GetName()..'Low'):SetText(tostring(mini))
	getglobal(obj:GetName()..'High'):SetText(tostring(maxi))
	getglobal(obj:GetName()..'Low'):SetText("")
	getglobal(obj:GetName()..'High'):SetText("")	
	getglobal(obj:GetName() .. 'Text'):SetText(infos)
	getglobal(obj:GetName() .. 'Text'):SetPoint("BOTTOMLEFT", obj, "TOPLEFT", -12, 0)
	
	getglobal(obj:GetName() .. 'Text'):GetFont();getglobal(obj:GetName() .. 'Text'):SetFont(police,10)
	getglobal(obj:GetName() .. 'Low'):GetFont();getglobal(obj:GetName() .. 'Low'):SetFont(police,8)
	getglobal(obj:GetName() .. 'High'):GetFont();getglobal(obj:GetName() .. 'High'):SetFont(police,8)
	
	obj:SetMinMaxValues(mini*100, maxi*100)
	obj:SetValueStep(pas*100)
	if base then
		obj:SetValue(tonumber(base[index]))
	end	
	
	local fontString = obj:CreateFontString(name.."value", "OVERLAY", "GameFontNormalSmall")
	fontString:SetPoint("BOTTOMRIGHT", obj, "TOPRIGHT", 16, 0)
	fontString:SetJustifyH("CENTER")

	obj:SetScript("OnShow", function(self)
	  if self.base then
	  	if self.base[index]==nil then
	  		self.base[index]=0
	  	end
			local value = format("%.2f", self.base[index])
			DF_Global_Env[name.."value"]:SetText(value)
			obj:SetValue(self.base[index]*100)
		  obj:EnableMouse(true) 
		  obj:SetAlpha(1)
		else
			obj:EnableMouse(false) 
			obj:SetAlpha(0.5)
		end
	end)
	obj:SetScript("OnMouseWheel",function(self,delta)
		falseEditBox:SetFocus()
		if self.base then
			local offset=self:GetValue()+(delta*(self.pas*100))
			self:SetValue(offset)
			local value = format("%.2f", self:GetValue()/100)
			DF_Global_Env[name.."value"]:SetText(value)
			self.base[index] = self:GetValue()/100
			if fonction then fonction() end			
		end
	end)	
	
	obj:SetScript("OnMouseUp", function(self)
		falseEditBox:SetFocus()
		if self.base then
			local value = format("%.2f", self:GetValue()/100)
			DF_Global_Env[name.."value"]:SetText(value)
			self.base[index] = self:GetValue()/100
			if fonction then fonction() end
		end	
	end)
	
	obj:SetScript("OnValueChanged", function(self)
		falseEditBox:SetFocus()
		if self.base then
			local value = format("%.2f", self:GetValue()/100)
			DF_Global_Env[name.."value"]:SetText(value)
			self.base[index] = self:GetValue()/100
		--	if fonction then fonction() end
		end
	end)	

--*****************************************************************************************
	local plusbut = CreateFrame("Button", name.."plusbut", obj, "OptionsButtonTemplate")
	plusbut:SetText("+")
	plusbut:SetWidth(16)
	plusbut:SetPoint("TOPLEFT", obj, "TOPRIGHT", 0, 0)
	plusbut:SetScript("OnClick", function(self)
		if obj.base then
			local offset=obj:GetValue()+(obj.pas*100)
			obj:SetValue(offset)
		end
	end)
	plusbut:SetScript("OnShow", function(self)
	  if obj.base then
			plusbut:EnableMouse(true) 
			plusbut:SetAlpha(1)	
		else
			plusbut:EnableMouse(false) 
			plusbut:SetAlpha(0.5)
		end
	end)	
	
	local moinsbut = CreateFrame("Button", name.."moinsbut", obj, "OptionsButtonTemplate")
	moinsbut:SetText("-")
	moinsbut:SetWidth(16)
	moinsbut:SetPoint("TOPRIGHT", obj, "TOPLEFT", 0, 0)
	moinsbut:SetScript("OnClick", function(self)
		if obj.base then
			local offset=obj:GetValue()-(obj.pas*100)
			obj:SetValue(offset)
		end
	end)
	moinsbut:SetScript("OnShow", function(self)
	  if obj.base then
			moinsbut:EnableMouse(true) 
			moinsbut:SetAlpha(1)
		else
			moinsbut:EnableMouse(false) 
			moinsbut:SetAlpha(0.5)
		end
	end)	
--*****************************************************************************************
	
	if help then DF:options_createHelp(obj,getglobal(obj:GetName() .. 'Text'),name,help) end
end

function DF:options_createEditbox(parent,name,base,index,isNumber,infos,posx,posy,fonction,large,help)
	--name="DroodF"..name;
	local obj = CreateFrame("EditBox", name, parent,"InputBoxTemplate")
	obj.isNumber=isNumber
	obj.base=base
	obj.fonction =fonction
	obj.currentValue=nil
	if not large then
		obj:SetWidth(160)
	else
		obj:SetWidth(356)
	end
	obj:SetHeight(20)
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 16+(posx*11.5), -30-(posy*38))
	obj:SetAutoFocus(false)
	if base then
		obj:SetText(DF:options_returnText(base[index]))
		obj.currentValue=DF:options_returnText(base[index])
		
		if obj.isNumber then
			obj.base[index] = DF:options_returnNumber(obj.base[index])
		else
			obj.base[index] = obj:GetText()
		end
				
	else
		obj:SetText("")
	end
	obj:SetCursorPosition(0)
	obj:SetFontObject("GameFontNormal")
	obj:IsMultiLine(false)
	obj:SetScript("OnShow", function(self)
			
	  if self.base then
	  	local texte =""
	  	if type(self.base[index])=="table" then
	  		for ind,val in pairs(self.base[index]) do
	  			if texte~="" then texte=texte..";" end
 					texte=texte..DF:options_returnText(val)
				end
				self:SetText(texte)
				self.currentValue=texte
	  	else
	  		self:SetText(DF:options_returnText(self.base[index]))
	  		self.currentValue=DF:options_returnText(self.base[index])
	  	end
	  	self:SetCursorPosition(0)
		  self:EnableMouse(true) 
		  self:SetAlpha(1)
		  self.lebouton:EnableMouse(false) 
		  self.lebouton:SetAlpha(0.5)			
		else
			self:EnableMouse(false) 
			self:SetAlpha(0.5)
		  self.lebouton:EnableMouse(false) 
		  self.lebouton:SetAlpha(0.5)			
		end
		
	end)	
	-- text changé active bouton validation
	obj:SetScript("OnTextChanged", function(self)
	  if self:GetText() and self:GetText()~="" and obj.currentValue~=self:GetText() then
	  	self.lebouton:EnableMouse(true) 
	  	self.lebouton:SetAlpha(1)			
		end
	end)		

	-- touche entrée pressée, enregistre et désactive bouton validation
	obj:SetScript("OnEnterPressed", function(self)
		if type(self.base[index])=="table" then
			local element=DF:explode ( ";", self:GetText() )
			self.base[index]=table.wipe(self.base[index])
			DF:copyTable(element,self.base[index])
		else
			if self.isNumber then
				--self.base[index] = DF:options_returnNumber(self:GetText())
				self.base[index] = self:GetNumber()
			else
				self.base[index] = self:GetText()
			end
		end
		obj.currentValue=self:GetText()
		self:ClearFocus()
		if fonction then fonction() end
	  self.lebouton:EnableMouse(false) 
	  self.lebouton:SetAlpha(0.5)			
	end)	 
	
	-- perte du focus, place valeur origine et désactive bouton validation
	obj:SetScript("OnEditFocusLost", function(self)
		if self:GetText()~=self.currentValue then
			if type(self.base[index])=="table" then
				local element=DF:explode ( ";", self:GetText() )
				self.base[index]=table.wipe(self.base[index])
				DF:copyTable(element,self.base[index])
			else
				if self.isNumber then
					--self.base[index] = DF:options_returnNumber(self:GetText())
					self.base[index] = self:GetNumber()
				else
					self.base[index] = self:GetText()
				end
			end
			obj.currentValue=self:GetText()
			--self:ClearFocus()
			self:HighlightText(0, 0)
			if fonction then fonction() end
		  self.lebouton:EnableMouse(false) 
		  self.lebouton:SetAlpha(0.5)		
		end
	end)	 	

	-- touche ESC, place valeur origine et désactive bouton validation
	obj:SetScript("OnEscapePressed", function(self)
		self:SetText(DF:options_returnText(obj.currentValue))
		self.lebouton:EnableMouse(false) 
	  self.lebouton:SetAlpha(0.5)			
		self:ClearFocus()
	end)	
	
	-- intitulé
	obj.fontString = obj:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	obj.fontString:SetPoint("BOTTOMLEFT", obj, "TOPLEFT", 0, 2)
	obj.fontString:SetJustifyH("LEFT")
	obj.fontString:SetText(infos)
	police = obj.fontString:GetFont();obj.fontString:SetFont(police,10)
	
	-- création du bouton validation
	local button = CreateFrame("Button", name.."_buttonok", obj, "OptionsButtonTemplate")
	button.parent=obj	-- pointeur vers le parent
	button:SetText("OK")
	button:SetWidth(20)
	button:SetHeight(20)
	button:SetPoint("TOPLEFT", obj, "TOPRIGHT", 0, 0)
	local fontString = button:GetFontString()
	police = fontString:GetFont();fontString:SetFont(police,10)
	
	-- bouton OK préssé, enregistre et désavtive le bouton
	button:SetScript("OnClick", function(self)
		if type(self.parent.base[index])=="table" then
			local element=DF:explode ( ";", self.parent:GetText() )
			self.parent.base[index]=table.wipe(self.parent.base[index])
			DF:copyTable(element,self.parent.base[index])
		else
			
			if self.parent.isNumber then
				--self.base[index] = DF:options_returnNumber(self:GetText())
				self.parent.base[index] = self.parent:GetNumber()
			else
				self.parent.base[index] = self.parent:GetText()
			end
--			self.parent.base[index] = self.parent:GetText()
			
		end
		self.parent.currentValue=self.parent:GetText()
		self:EnableMouse(false)
		self:SetAlpha(0.5)
		self.parent:ClearFocus()		
		if self.parent.fonction then self.parent.fonction() end
	end)	 	
  button:EnableMouse(false) 
  button:SetAlpha(0.5)
	  			
	-- pointeur vers le bouton
	obj.lebouton=button
	if help then DF:options_createHelp(obj,obj.fontString,name,help) end
end

function DF:options_createColorBox(parent,name,base,index,infos,posx,posy,fonction,help)
	--name="DroodF"..name;
	
	local obj = CreateFrame("FRAME", name, parent)
	local overlay = CreateFrame("FRAME",name.."border",parent)

	obj.base=base
	obj:EnableMouse(true)
	obj:SetHeight(12)
	obj:SetWidth(14)
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 14+(posx*11.5), -32-(posy*38))
	
	obj.texture=obj:CreateTexture(name.."texture")
	obj.texture:SetAllPoints(obj)
	obj.text = obj:CreateFontString(name.."text", "OVERLAY", "GameFontHighlight")
	obj.text:SetText(infos)
	obj.text:SetPoint("LEFT", obj, "RIGHT", 6, 0)
	police = obj.text:GetFont();obj.text:SetFont(police,10)
--	obj:SetFrameLevel(2)
	obj:EnableMouse(true)

	obj:SetScript("OnShow", function(self)
	  if self.base then
			obj.texture:SetTexture(self.base[index].r,self.base[index].v,self.base[index].b,self.base[index].a)
		  obj:EnableMouse(true) 
		  overlay:SetAlpha(1)
		  obj:SetAlpha(1)
		else
			obj.texture:SetTexture(0,0,0,1)
			obj:EnableMouse(false) 
			overlay:SetAlpha(0.5)
		  obj:SetAlpha(0.5)			
		end
	end)	
	obj:SetScript("OnMouseUp",function(self)
			falseEditBox:SetFocus()
			ColorPickerFrame.func=nil
			ColorPickerFrame.opacityFunc=nil
			ColorPickerFrame.cancelFunc=nil
			if self.base[index].a==nil then
				self.base[index].a=1
			end
			ColorPickerFrame.hasOpacity=true
			ColorPickerFrame.opacity = 1-self.base[index].a
			ColorPickerFrame.previousValues = {self.base[index].r,self.base[index].v,self.base[index].b,self.base[index].a};
			ColorPickerFrame:SetColorRGB(self.base[index].r,self.base[index].v,self.base[index].b,self.base[index].a)
			ColorPickerFrame.func = function()
				local R,G,B = ColorPickerFrame:GetColorRGB()
				local A = 1-OpacitySliderFrame:GetValue()
				self.base[index].r=R
				self.base[index].v=G
				self.base[index].b=B
				self.base[index].a=A
				obj.texture:SetTexture(self.base[index].r,self.base[index].v,self.base[index].b,self.base[index].a)
				if fonction then fonction() end
			end	
			
			ColorPickerFrame.opacityFunc = function()
				local R,G,B = ColorPickerFrame:GetColorRGB()
				local A = 1-OpacitySliderFrame:GetValue()
				self.base[index].r=R
				self.base[index].v=G
				self.base[index].b=B
				self.base[index].a=A
				obj.texture:SetTexture(self.base[index].r,self.base[index].v,self.base[index].b,self.base[index].a)
				if fonction then fonction() end
			end	
			
			ColorPickerFrame.cancelFunc = function()
				self.base[index].r=ColorPickerFrame.previousValues[1]
				self.base[index].v=ColorPickerFrame.previousValues[2]
				self.base[index].b=ColorPickerFrame.previousValues[3]
				self.base[index].a=ColorPickerFrame.previousValues[4]
				obj.texture:SetTexture(self.base[index].r,self.base[index].v,self.base[index].b,self.base[index].a)
				if fonction then fonction() end
			end	

			ColorPickerFrame:Show()

	end)		
		
	overlay:SetBackdrop({ bgFile = nil, edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = 1, tileSize = 8, edgeSize =8, insets = { left = 4, right = 4, top = 4, bottom = 4 } });
	overlay:SetHeight(18)
	overlay:SetWidth(20)
	overlay:SetPoint("CENTER", obj, "CENTER", 0, 0)
--	overlay:SetFrameLevel(1)
	overlay:EnableMouse(false)
	if help then DF:options_createHelp(obj,obj.text,name,help) end
end

function DF:options_createBox(parent,name,posx,posy,bwidth,bheight)
	--name="DroodF"..name;
	local obj = CreateFrame('Frame', name, parent)
	obj:SetWidth(bwidth)
 	obj:SetHeight(bheight)
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", posx, posy)
	obj:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 }})
	obj:SetBackdropColor(0,0,0,1);
end

function DF:options_timerBar_change(override)
	local newPt=DF.myArgs
	if override then
		newPt=override
	end
	DF:options_chgBase("DFtimerbarw",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarh",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbartexture1",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarfont1",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarslidersize1",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarfont2",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarslidersize2",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarslidermin",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarslidermax",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarborder",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarbordersize",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbartimeline",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarpropcheck",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarorder",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarsliderlevel",DF_config.timerbars[newPt])
	--DF:options_chgBase("DFtimerbargrowup",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarstackup1",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarshowspark",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarcdslidermin",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarslideroffsetcdy",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarcolor",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarbcolor",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarcdcolor",DF_config.timerbars[newPt])
	DF:options_chgBase("DFtimerbarslideroffset1x",DF_config.timerbars[newPt].textsoffsets[1])
	DF:options_chgBase("DFtimerbarslideroffset1y",DF_config.timerbars[newPt].textsoffsets[1])
	DF:options_chgBase("DFtimerbarslideroffset2x",DF_config.timerbars[newPt].textsoffsets[2])
	DF:options_chgBase("DFtimerbarslideroffset2y",DF_config.timerbars[newPt].textsoffsets[2])
	DF:options_chgBase("DFtimerbarsOrderList",DF_config.timerbars[newPt].stack)
	DF:options_chgBase("DFtimerbarspapoint",DF_config.timerbars[newPt])

	if newPt==1 then
		if DF_Global_Env["DFtimerbarsswap2"] then
			DF_Global_Env["DFtimerbarsswap2"]:Enable()
			DF_Global_Env["DFtimerbarsswap1"]:Disable()
		end
	else
		if DF_Global_Env["DFtimerbarsswap2"] then
			DF_Global_Env["DFtimerbarsswap2"]:Disable()
			DF_Global_Env["DFtimerbarsswap1"]:Enable()
		end
	end

end

function DF:options_iconBar_change(override)
	local newPt=DF.myArgs
	if override then
		newPt=override
	end	DF:options_chgBase("DFiconsauto",DF_config.iconbars[newPt])
	--DF:options_chgBase("DFiconsgrowup",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconspapoint",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconstimeformat",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconsspeed",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconsorder",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconsfont1",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconsspiral",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconssliderpulse",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconsslideralign1x",DF_config.iconbars[newPt].textsoffsets[1])
	DF:options_chgBase("DFiconsslidersize1",DF_config.iconbars[newPt].textsoffsets[1])
	DF:options_chgBase("DFiconsslideroffset1x",DF_config.iconbars[newPt].textsoffsets[1])
	DF:options_chgBase("DFiconsslideroffset1y",DF_config.iconbars[newPt].textsoffsets[1])
	DF:options_chgBase("DFiconsslideralign2x",DF_config.iconbars[newPt].textsoffsets[2])
	DF:options_chgBase("DFiconsslidersize2",DF_config.iconbars[newPt].textsoffsets[2])
	DF:options_chgBase("DFiconsslideroffset2x",DF_config.iconbars[newPt].textsoffsets[2])
	DF:options_chgBase("DFiconsslideroffset2y",DF_config.iconbars[newPt].textsoffsets[2])
	DF:options_chgBase("DFiconsslideralign3x",DF_config.iconbars[newPt].textsoffsets[3])
	DF:options_chgBase("DFiconsslidersize3",DF_config.iconbars[newPt].textsoffsets[3])
	DF:options_chgBase("DFiconsslideroffset3x",DF_config.iconbars[newPt].textsoffsets[3])
	DF:options_chgBase("DFiconsslideroffset3y",DF_config.iconbars[newPt].textsoffsets[3])
	DF:options_chgBase("DFiconsslidermin",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconsslidermax",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconsslidermaxCD",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconssliderwidth",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconssliderheight",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconssliderspacex",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconssliderspacey",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconsslidercolone",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconssliderlevel",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconscolor",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconschecktimer1",DF_config.iconbars[newPt].textsoffsets[1])
	DF:options_chgBase("DFiconscheckdecimal",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconschecktimer2",DF_config.iconbars[newPt].textsoffsets[2])
	DF:options_chgBase("DFiconschecktimer3",DF_config.iconbars[newPt].textsoffsets[3])
	DF:options_chgBase("DFiconbarsOrderList",DF_config.iconbars[newPt].stack)
	DF:options_chgBase("DFiconstextborder",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconsflashwhenoff",DF_config.iconbars[newPt])

	DF:options_chgBase("DFiconscolorActive",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconscolorInactive",DF_config.iconbars[newPt])
	DF:options_chgBase("DFiconscolorInactiveCD",DF_config.iconbars[newPt])


	if newPt==1 then
		DF_Global_Env["DFiconbarsswap2"]:Enable()
		DF_Global_Env["DFiconbarsswap1"]:Disable()
	else
		DF_Global_Env["DFiconbarsswap2"]:Disable()
		DF_Global_Env["DFiconbarsswap1"]:Enable()
	end	
end

function DF:options_DebuffList_click(newPt)
	
	DF:options_chgBase("DFSPELLOPT_ids",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_positionx",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_positiony",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_width",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_height",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_sType",DF_config.spells[newPt])
	DF:options_chgBase("DFobjectsliderlevel",DF_config.spells[newPt])
	DF:options_chgBase("DFobjectsliderobjscale",DF_config.spells[newPt])
	DF:options_chgBase("DFobjectslidertxtscale",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_perso",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_combo",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_icon",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_timerbar",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_color",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_spellslist",DF)
	DF:options_chgBase("DFSPELLOPT_usertext",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_always",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_form0",DF_config.spells[newPt].form)
	DF:options_chgBase("DFSPELLOPT_form1",DF_config.spells[newPt].form)
	DF:options_chgBase("DFSPELLOPT_form2",DF_config.spells[newPt].form)
	DF:options_chgBase("DFSPELLOPT_form3",DF_config.spells[newPt].form)
	DF:options_chgBase("DFSPELLOPT_form4",DF_config.spells[newPt].form)
	DF:options_chgBase("DFSPELLOPT_form5",DF_config.spells[newPt].form)
	DF:options_chgBase("DFSPELLOPT_form6",DF_config.spells[newPt].form)
	DF:options_chgBase("DFSPELLOPT_form7",DF_config.spells[newPt].form)
	DF:options_chgBase("DFSPELLOPT_TimerLimit",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_TimerLimitSens",DF_config.spells[newPt])

	DF:options_chgBase("DFSPELLOPT_abiVieLimite",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_abiVieLimiteSens",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_abiInRange",DF_config.spells[newPt])

	DF:options_chgBase("DFSPELLOPT_talents",DF_config.spells[newPt])

	DF:options_chgBase("DFSPELLOPT_icd",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_icdwarn",DF_config.spells[newPt])
	
	DF:options_chgBase("DFSPELLOPT_sound",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_showcd",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXcheck",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXoffmode",DF_config.spells[newPt])
	
	DF:options_chgBase("DFSPELLOPT_FXw",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXh",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXtexture",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXmode",DF_config.spells[newPt])

	DF:options_chgBase("DFSPELLOPT_FX_startposx",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_startposy",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_startalpha",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_startscale",DF_config.spells[newPt])
	
	DF:options_chgBase("DFSPELLOPT_FX_middleposx",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_middleposy",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_middlealpha",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_middlescale",DF_config.spells[newPt])
	
	DF:options_chgBase("DFSPELLOPT_FX_endposx",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_endposy",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_endalpha",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_endscale",DF_config.spells[newPt])
	
	DF:options_chgBase("DFSPELLOPT_FX_speed",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_rotatespeed",DF_config.spells[newPt])

	DF:options_chgBase("DFSPELLOPT_FX_pulsepowerX",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_pulsespeedX",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_pulsepowerY",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_pulsespeedY",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_pulsepowerZ",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_pulsespeedZ",DF_config.spells[newPt])

--	DF:options_chgBase("DFSPELLOPT_FX_newLevel",DF_config.spells[newPt])
			
	DF:options_chgBase("DFSPELLOPT_FX_chakerpower",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_animatic",DF)
	DF:options_chgBase("DFSPELLOPT_FX_name",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_angle",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXcustomtexture",DF_config.spells[newPt])

	DF:options_chgBase("DFSPELLOPT_FXtimerenable",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_timerscale",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_timerposx",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_timerposy",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_timeralpha",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXtimersmall",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXtimerabove",DF_config.spells[newPt])

	DF:options_chgBase("DFSPELLOPT_FX_startwidth",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_middlewidth",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_endwidth",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_startheight",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_middleheight",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_endheight",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FX_stack",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_showdottimer",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_abiRdyMode",DF_config.spells[newPt])

	DF:options_chgBase("DFSPELLOPT_FXtextenable",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXtextfontpath",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXtextfontsize",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXtextalign",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXtextalignx",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXtextaligny",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXtextcolor",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXprogressivetexture",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_FXprogressivetextureFill",DF_config.spells[newPt])

	DF:options_chgBase("DFSPELLOPT_FX_stack",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_comboreq",DF_config.spells[newPt])

	DF:options_chgBase("DFSPELLOPT_warning",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_warningtext",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_warningsound",DF_config.spells[newPt])
	DF:options_chgBase("DFSPELLOPT_abiWarnBuff",DF_config.spells[newPt])

	DF:luaCode_updateWindow(newPt)
	
	DF_Global_Env["DFSPELLOPT_up"]:Enable()
	DF_Global_Env["DFSPELLOPT_down"]:Enable()
	DF_Global_Env["DFSPELLOPT_kill"]:Enable()
	DF_Global_Env["DFSPELLOPT_copy"]:Enable()
	DF_Global_Env["DFSPELLOPT_export"]:Enable()
	DF_Global_Env["DFSPELLOPT_fake"]:Enable()
	DF_Global_Env["DFSPELLOPT_FX_save"]:Enable()
	DF_Global_Env["DFSPELLOPT_luacodecheck"]:Enable()
	DF_Global_Env["DFSPELLOPT_fxwindowcheck"]:Enable()
	DF_Global_Env["DFSPELLOPT_fxwindowtimercheck"]:Enable()

	local finalnamec="Unknow"

	if DF_config.spells[newPt].abiUserText=="" then
		
		if DF.works.spells[newPt].names[1] then
			finalnamec=DF.works.spells[newPt].names[1]
		else
			finalnamec=DF.locale["unknow"]
		end
		
	else
		finalnamec=DF_config.spells[newPt].abiUserText
	end

	if DF.LuaWindowTitle.text then
		DF.LuaWindowTitle.text:SetText(DF.locale["versionName"].." - Lua code editor - ["..tostring(newPt).. "] "..finalnamec)
	end

	if DroodFocusOptions["DFfxwindow"] then
		if DroodFocusOptions["DFfxwindow"].titlebar.text then
			DroodFocusOptions["DFfxwindow"].titlebar.text:SetText(DF.locale["versionName"].." - "..DF.locale["anim"].." - ["..tostring(newPt).. "] "..finalnamec)
		end
	end
	
	if DroodFocusOptions["DFfxwindowtimer"] then
		if DroodFocusOptions["DFfxwindowtimer"].titlebar.text then 
			DroodFocusOptions["DFfxwindowtimer"].titlebar.text:SetText(DF.locale["versionName"].." - "..DF.locale["anim"].." - ["..tostring(newPt).. "] "..finalnamec)
		end
	end

end

function DF:options_DebuffList_fakeClick(num)
	selectPt=num
	DF:options_DebuffList_populate()
	DF:options_DebuffList_click(selectPt)
	DF_Global_Env["DFdebufflistContenerSlider"]:SetValue(num)
end

function DF:options_OrderList_create(parent,name,base,posx,posy,title)
	--name="DroodF"..name;
	
	local obj = CreateFrame("FRAME", name, parent)
	
	obj.maxi=getn(base)
	obj.base=base
	obj:EnableMouse(false)
	obj:SetWidth(182)
	obj:SetHeight((obj.maxi*13)+14)
	obj:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 }})
	obj:SetBackdropColor(0,0,0,1);
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 10+(posx*11.5), -28-(posy*38))
	
	obj.lignes={}
	obj.boutons={}
	
	obj.title = obj:CreateFontString(name.."title", "ARTWORK")
	obj.title:SetFontObject(GameFontNormal)
	police = obj.title:GetFont();
	obj.title:SetFont(police,10)	
	obj.title:SetText(title)
	obj.title:ClearAllPoints()
	obj.title:SetTextColor(1,1,1,1)
	obj.title:SetPoint("TOPLEFT", obj, "TOPLEFT", 4, 11)		
	obj.title:Show()	
	
	for i = 1,obj.maxi do

		obj.lignes[i] = {}
		
		obj.lignes[i] = CreateFrame("FRAME",name.."_FRAME_"..i,obj)		
		obj.lignes[i]:SetWidth(211)
		obj.lignes[i]:SetHeight(26)
		obj.lignes[i]:ClearAllPoints()
		obj.lignes[i]:SetPoint("LEFT", obj, "LEFT", 2, ((obj.base[i].value-1)*26))		
		obj.lignes[i]:Show()	

		obj.lignes[i].texture = obj.lignes[i]:CreateTexture(name.."_FRAMETEXTURE_"..i,"BACKGROUND")
		obj.lignes[i].texture:SetTexCoord(0, 1, 0, 1)
		obj.lignes[i].texture:SetWidth(256)
		obj.lignes[i].texture:SetHeight(32)
		obj.lignes[i].texture:SetAllPoints(obj.lignes[i])
		
		local latexture=nil
		
		if i==1 then
			latexture="Interface\\AddOns\\DroodFocus\\datas\\bar_active.tga"
		elseif i==2 then
			latexture="Interface\\AddOns\\DroodFocus\\datas\\bar_inactive.tga"
		elseif i==3 then
			latexture="Interface\\AddOns\\DroodFocus\\datas\\bar_cd.tga"
		elseif i==4 then
			latexture="Interface\\AddOns\\DroodFocus\\datas\\bar_rdy.tga"
		end
		obj.lignes[i].texture:SetTexture(latexture)

		obj.lignes[i].texture = obj.lignes[i].texture

		obj.boutons[i] = CreateFrame("Button", name.."Bouton"..tostring(i), obj)
		obj.boutons[i]:ClearAllPoints()
		obj.boutons[i]:SetPoint("LEFT", obj, "LEFT",  120, ((obj.base[i].value-1)*13))
		obj.boutons[i]:SetWidth(16)
		obj.boutons[i]:SetHeight(16)
		obj.boutons[i]:SetHighlightTexture("Interface\\AddOns\\DroodFocus\\datas\\arrow.tga")
		obj.boutons[i]:SetNormalTexture("Interface\\AddOns\\DroodFocus\\datas\\arrow.tga")
		obj.boutons[i]:SetPushedTexture("Interface\\AddOns\\DroodFocus\\datas\\arrow.tga")	
		obj.boutons[i].parent=obj		
		obj.boutons[i].num=i		
		obj.boutons[i]:SetScript("OnClick", function(self)
			local currentValue=self.parent.base[self.num].value
			if currentValue>0 then
				local futureValue=currentValue-1
				for i = 1,self.parent.maxi do
					if self.parent.base[i].value==futureValue then
						self.parent.base[i].value=currentValue
						self.parent.base[self.num].value=futureValue
					end
				end
			end
			
			obj:Hide()
			obj:Show()
		end)
		obj.boutons[i]:Show()
		
	end
	
	obj:SetScript("OnShow", function(self)
		for i = 1,self.maxi do
			obj.lignes[i]:ClearAllPoints()
			self.lignes[i]:SetPoint("LEFT", self, "LEFT", 5, 1-((self.base[i].value-1)*14))	
			self.boutons[i]:ClearAllPoints()
			self.boutons[i]:SetPoint("LEFT", self, "LEFT",  162, 6-((self.base[i].value-1)*14))				
			if self.base[i].value==0 then
				self.boutons[i]:Hide()
			else
				self.boutons[i]:Show()
			end
		end
	end)		
	
end

function DF:options_DebuffList_create(parent)

	local contener=DF_Global_Env["DFspellsbox"]
	local letext
	
	for i = 1,nbLines do

		debuffListButton[i] = CreateFrame("Button", "DFButtonSpellsBox"..tostring(i), contener)
		debuffListButton[i]:SetPoint("TOPLEFT", contener, "TOPLEFT", 4, -5-((i-1)*17))
		debuffListButton[i]:SetWidth(352)
		debuffListButton[i]:SetHeight(16)
		debuffListButton[i]:SetHighlightTexture("Interface\\FriendsFrame\\UI-FriendsFrame-HighlightBar")
		debuffListButton[i]:SetNormalTexture(nil)
		debuffListButton[i]:SetPushedTexture(nil)
		letext = debuffListButton[i]:CreateFontString("debuffListButton"..tostring(i).."Text", "ARTWORK")
		letext:SetFontObject(GameFontNormal)
		police = letext:GetFont();letext:SetFont(police,10)	
		letext:SetText("button "..tostring(i))
		letext:Show()
		letext:ClearAllPoints()
		letext:SetTextColor(1,1,1,1)
		letext:SetPoint("LEFT", debuffListButton[i], "LEFT", 2, 0)
		debuffListButton[i]:SetScript("OnClick", function(self)
			selectPt=(i+currentPosition)-1
			DF:options_DebuffList_populate()
			DF:options_DebuffList_click(selectPt)
		end);		
	end
	
	local obj = CreateFrame('Slider', "DFdebufflistContenerSlider", contener, 'OptionsSliderTemplate')
	obj:SetThumbTexture("Interface\\Buttons\\UI-ScrollBar-Knob");
	obj:SetWidth(20)
 	obj:SetHeight((8*17)+8)
 	obj:EnableMouse(true)
	obj:SetPoint("RIGHT", contener, "RIGHT", -4, 0);
	obj:SetOrientation('VERTICAL')
	getglobal(obj:GetName() .. 'Low'):SetText("");
	getglobal(obj:GetName() .. 'High'):SetText(""); 
	getglobal(obj:GetName() .. 'Text'):SetText("");
	obj:SetMinMaxValues(1, 1);
	obj:SetValueStep(1);
	obj:SetValue(1);
	obj:SetScript("OnValueChanged", function(self)
		currentPosition = self:GetValue();
		DF:options_DebuffList_populate();		
	end);
	--obj:SetFrameLevel(4)
	contener:SetScript("OnShow", function(self)
		DF:options_DebuffList_populate();	
	end)		
	
end

function DF:options_DebuffList_populate(DontCreateOthersPanels)

	if DontCreateOthersPanels==nil then
		DF:options_createSinglePanel("DFfxwindowtimer")
		DF:options_createSinglePanel("DFfxwindow")
	end
	
	local maxi = getn(DF_config.spells)
	local smaxi =  maxi-(nbLines-1)
	local exclusif
	local finalname
	local param
	local reel=0
	local textPt=nil
	if (smaxi<1) then
		smaxi=1
	end
	
	if smaxi==1 then
			DF_Global_Env["DFdebufflistContenerSlider"]:Hide()
			DF_Global_Env["DFspellsbox"]:EnableMouseWheel(false)

	else
		DF_Global_Env["DFdebufflistContenerSlider"]:SetMinMaxValues(1, smaxi)
		DF_Global_Env["DFdebufflistContenerSlider"]:Show()
		DF_Global_Env["DFspellsbox"]:EnableMouseWheel(true)

	end
	
	for i = 0,nbLines-1 do
	
		reel = currentPosition+i;
		
		textPt = DF_Global_Env["debuffListButton"..tostring(i+1).."Text"];
		textPt:SetText("");
		debuffListButton[i+1].sonnum=nil
		
		if (reel<=maxi) then
			
			debuffListButton[i+1].sonnum=reel
			exclusif=""
			if DF_config.spells[reel].perso==true then exclusif="Self "	end
			
			finalname=""
			param=" - |cFFFFFF00"..exclusif..DF_config.spells[reel].sType.."|cFFFFFFFF"
			
			if (DF.works.spells[reel].ids[1]==0 or not DF.works.spells[reel].names[1]) then
				

				if DF_config.spells[reel].abiUserText=="" then
					finalname=tostring(reel).." - "..DF.locale["unknow"]..param
				else
					finalname=tostring(reel).." - "..DF_config.spells[reel].abiUserText..param
				end


			else
				if DF_config.spells[reel].abiUserText=="" then
					finalname=tostring(reel).." - "..DF.works.spells[reel].names[1]..param
				else
					finalname=tostring(reel).." - "..DF_config.spells[reel].abiUserText..param
				end
			end
			
			if DF_config.spells[reel].icon>0 then
				finalname=finalname.." [Ico"..tostring(DF_config.spells[reel].icon).."]"
			end
			if DF_config.spells[reel].timerbar>0 then
				finalname=finalname.." [Bar"..tostring(DF_config.spells[reel].timerbar).."]"				
			end
			if DF_config.spells[reel].FX_enable==true then
				finalname=finalname.." [FX]"				
			end
			if DF_config.spells[reel].luaCode~="" then
				finalname=finalname.." [LUA]"				
			end
	
			textPt:SetText(finalname)
			
			if (selectPt==reel) then
				debuffListButton[i+1]:SetHighlightTexture("Interface\\FriendsFrame\\UI-FriendsFrame-HighlightBar")
				debuffListButton[i+1]:SetNormalTexture("Interface\\FriendsFrame\\UI-FriendsFrame-HighlightBar")
				debuffListButton[i+1]:SetPushedTexture(nil)
			else
				debuffListButton[i+1]:SetHighlightTexture("Interface\\FriendsFrame\\UI-FriendsFrame-HighlightBar")
				debuffListButton[i+1]:SetNormalTexture(nil)
				debuffListButton[i+1]:SetPushedTexture(nil)
			end

			debuffListButton[i+1]:SetScript("OnEnter",function(self)
				if self.sonnum then
					DF.DroodFGameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT",-2,20)
					DF.DroodFGameTooltip:ClearLines()
					local exclusif=""
					if DF_config.spells[self.sonnum].perso==true then exclusif="Exclusive "	end		
					param="|cFFFFFF00"..exclusif..DF_config.spells[self.sonnum].sType.."|cFFFFFFFF"
					DF.DroodFGameTooltip:AddLine(param,1,1,1,nil)
					if DF_config.spells[self.sonnum].icon>0 then
						DF.DroodFGameTooltip:AddLine("|cFFFFFFFFIconBar n°"..tostring(DF_config.spells[self.sonnum].icon).."|cFFFFFFFF",1,1,1,nil)
					end
					if DF_config.spells[self.sonnum].timerbar>0 then
						DF.DroodFGameTooltip:AddLine("|cFFFFFFFFTimerBar n°"..tostring(DF_config.spells[self.sonnum].timerbar).."|cFFFFFFFF",1,1,1,nil)
					end
					if DF_config.spells[self.sonnum].FX_enable==true then
						DF.DroodFGameTooltip:AddLine("|cFFFFFFFFSpecial FX|cFFFFFFFF",1,1,1,nil)
					end

					if DF_config.spells[self.sonnum].abiLastCd>27 and DF_config.spells[self.sonnum].abiLastCd<120 then
						DF.DroodFGameTooltip:AddLine("Estimated internal CD: "..DF:numbers(DF_config.spells[self.sonnum].abiLastCd).." s.",1,1,1,nil)
					end													
					if DF_config.spells[self.sonnum].comboPoints>0 then
						DF.DroodFGameTooltip:AddLine(tostring(DF_config.spells[self.sonnum].comboPoints).." ComboPoints.",1,1,1,nil)
					end
					if DF_config.spells[self.sonnum].FX_stack>0 then
						DF.DroodFGameTooltip:AddLine(tostring(DF_config.spells[self.sonnum].FX_stack).." stacks.",1,1,1,nil)
					end
					if DF_config.spells[self.sonnum].luaCode~="" then
						DF.DroodFGameTooltip:AddLine("LuaCode.",1,1,1,nil)
					end
					DF.DroodFGameTooltip:AddLine(DF.locale["spells"],1,1,0,nil)
					for li = 1,getn(DF.works.spells[self.sonnum].names) do
						DF.DroodFGameTooltip:AddLine("   "..DF.works.spells[self.sonnum].names[li].." ["..tostring(DF.works.spells[self.sonnum].ids[li]).."]",1,1,1,nil)
					end
					DF.DroodFGameTooltip:Show()	
				end
			end);
			debuffListButton[i+1]:SetScript("OnLeave",function(self)
				if self.sonnum then DF.DroodFGameTooltip:Hide() end
			end);						
			debuffListButton[i+1]:Show();
			
		else
			
			debuffListButton[i+1]:SetScript("OnEnter", nil)
			debuffListButton[i+1]:SetScript("OnLeave", nil)
			debuffListButton[i+1]:Hide();
			
		end
	
	end
	
end

function DF:options_createListbox(parent,name,base,index,infos,posx,posy,fonction,optionsList,large,help,checklist,preview,editable,onebutton)
	--name="DroodF"..name;
	
	-- list des menu créés
	if not DF_dropdownlist then DF_dropdownlist={} end
		
	local largeur=156
	if not large then
		largeur=156
	else
		largeur=348
	end
	
	local nbLines=getn(optionsList)
	local maxNbLines=nbLines
	if maxNbLines>9 then maxNbLines=9 end
	local smaxi = getn(optionsList)-8
	
	local obj = CreateFrame("EditBox", name, parent,"InputBoxTemplate")
	obj.base=base
	obj.name=name
	obj.checklist=checklist
	obj.onebutton=onebutton
	obj.laliste=optionsList
	obj.preview=preview
	obj:SetWidth(largeur)
	obj:SetHeight(20)
--	obj:SetFrameLevel(127)
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 16+(posx*11.5), -30-(posy*38))
	if preview then
		obj:SetWidth(largeur-34)
		obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 34+16+(posx*11.5), -30-(posy*38))
	end
	obj.currentValue=nil
	obj:SetAutoFocus(false)
	obj:SetText("")
	obj:SetCursorPosition(0)
	obj:SetFontObject("GameFontNormal")
	obj:IsMultiLine(false)
	obj:SetScript("OnShow", function(self)
		local Found
		self:SetText("")
		-- retrouve le texte correspondant a la valeur et l'affiche
		if self.checklist then
			self:SetText(self.checklist)
		else
			if self.base then
				if self.base[index] then
					self.currentValue=tostring(self.base[index])
					Found=false
					for k,v in pairs(obj.laliste) do
						if self.laliste[k].valeur==self.base[index] then
							self:SetText(tostring(self.laliste[k].texte))
							self.currentValue=tostring(self.laliste[k].texte)
							Found=true
							break
						end
					end
					if not Found then
						local affiche=DF:fileName(self.base[index])
						self:SetText(affiche)
						self.currentValue=affiche					
					end
					
					if self.preview then
						DF_Global_Env[self.name.."pointiTexture"]:SetTexture(self.base[index])
					end	
				end
				self:SetAlpha(1)
				self.lebouton:EnableMouse(true)
				self.lebouton:SetAlpha(1)
			else
				self:SetAlpha(0.5)
				self.lebouton:EnableMouse(false)
				self.lebouton:SetAlpha(0.5)
			end
		end
		self:SetCursorPosition(0)
	end)	
	if editable then
		obj:EnableMouse(true)
	else
		obj:EnableMouse(false)
	end

	-- touche entrée pressée, enregistre et désactive bouton validation
	obj:SetScript("OnEnterPressed", function(self)

		self.base[index] = DF:options_getTextureNumber(self:GetText())
		self.currentValue=self.base[index]

		local affiche=self.base[index]
		self:SetText(affiche)
		
		if self.preview then
			DF_Global_Env[name.."pointiTexture"]:SetTexture(self.base[index])
		end
		self:ClearFocus()
		if fonction then fonction() end
	end)	 
	
	-- perte du focus, place valeur origine et désactive bouton validation
	obj:SetScript("OnEditFocusLost", function(self)
		self.base[index] = DF:options_getTextureNumber(self:GetText())
		self.currentValue=self.base[index]

		local affiche=self.base[index]
		self:SetText(affiche)
		
		if self.preview then
			DF_Global_Env[name.."pointiTexture"]:SetTexture(self.base[index])
		end
		self:HighlightText(0, 0)
		if fonction then fonction() end
	end)	 	

	-- touche ESC, place valeur origine et désactive bouton validation
	obj:SetScript("OnEscapePressed", function(self)
		self:SetText(DF:options_returnText(obj.currentValue))
		self:ClearFocus()
	end)	

	obj.fontString = obj:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	obj.fontString:SetPoint("BOTTOMLEFT", obj, "TOPLEFT", 0, 2)
	obj.fontString:SetJustifyH("LEFT")
	obj.fontString:SetText(infos)
	police = obj.fontString:GetFont();obj.fontString:SetFont(police,10)

	-- création du menu
	local menu = CreateFrame("FRAME",name.."menudropdown",UIParent)
	menu.obj=obj
	menu.slide=nil
	menu.optionsList=optionsList
	menu.isvisible=false
	menu.index=index
	menu.maxNbLines=maxNbLines
	menu.offset=1
	menu.items={}
	menu:SetMovable(false)
	menu:ClearAllPoints()
	menu:SetBackdrop({ bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = 1, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 } });
	menu:SetHeight(((nbLines+1)*17)-8)
	menu:SetWidth(260)
	menu:SetPoint("TOPLEFT", obj, "BOTTOMLEFT", -6, 4);
	menu:SetFrameStrata("FULLSCREEN_DIALOG");
	menu:Hide();
	menu:SetBackdropColor(0,0,0,1);
	menu:EnableMouse(false)
	menu:EnableMouseWheel(true)
	menu:SetScript("OnMouseWheel",function(self,delta)
		if menu.slide then
			local offset=menu.slide:GetValue()+(delta*-3)
			menu.slide:SetValue(offset)
		end
	end)
	
	-- register menu
	table.insert(DF_dropdownlist,name.."menudropdown")

	-- créé ligne du menu
	for i = 1,9 do
		menu.items[i] = CreateFrame("button", "DFDropDownMenuButton"..tostring(i), menu)
		menu.items[i]:SetPoint("TOPLEFT", menu, "TOPLEFT", 5, -5-((i-1)*17))
		menu.items[i]:SetWidth(214)
		menu.items[i]:SetHeight(16)
		menu.items[i]:SetHighlightTexture("Interface\\FriendsFrame\\UI-FriendsFrame-HighlightBar")
		menu.items[i]:SetNormalTexture(nil)
		menu.items[i]:SetPushedTexture(nil)
		menu.items[i].parent=menu
		menu.items[i].letext = menu.items[i]:CreateFontString("menuitems"..tostring(i).."Text", "ARTWORK")
		menu.items[i].letext:SetFontObject(GameFontNormal)
		menu.items[i].letext:SetWidth(210)
		menu.items[i].letext:SetJustifyH("LEFT")
		police = menu.items[i].letext:GetFont();menu.items[i].letext:SetFont(police,10)	
		menu.items[i].lafont=police
		
		if menu.items[i].parent.obj.checklist then
			menu.items[i].checkboxe = CreateFrame("Frame", "DFDropDownMenuButtonFrame"..tostring(i), menu)
			menu.items[i].checkboxe:SetPoint("LEFT", menu.items[i], "LEFT", 0, 0)
			menu.items[i].checkboxe:SetWidth(16)
			menu.items[i].checkboxe:SetHeight(16)
			menu.items[i].checkboxe.texture=menu.items[i].checkboxe:CreateTexture("DFDropDownMenuButtonFrame"..tostring(i).."texture","BACKGROUND")
			menu.items[i].checkboxe.texture:SetAllPoints(menu.items[i].checkboxe)
			menu.items[i].checkboxe.texture:SetTexture(nil)
		end

		if menu.items[i].parent.obj.onebutton then
			menu.items[i].onebutton = CreateFrame("Button", "DFDropDownMenuButtonOnebutton"..tostring(i), menu)
			menu.items[i].onebutton:SetPoint("LEFT", menu.items[i], "RIGHT", 0, 0)
			menu.items[i].onebutton:SetWidth(16)
			menu.items[i].onebutton:SetHeight(16)
			menu.items[i].onebutton:SetHighlightTexture("Interface\\AddOns\\DroodFocus\\datas\\close.tga")
			menu.items[i].onebutton:SetNormalTexture("Interface\\AddOns\\DroodFocus\\datas\\close.tga")
			menu.items[i].onebutton:SetPushedTexture("Interface\\AddOns\\DroodFocus\\datas\\close.tga")	
			menu.items[i].onebutton.parent=menu		
			menu.items[i].onebutton:SetScript("OnClick", function(self)
				DF_namespace.configToLoad=menu.offset+(i-1)
				StaticPopup_Show ("DFDELETECONFIG",DF:config_getname(DF_namespace.configToLoad))
				menu.items[i].onebutton.parent:Hide()
				menu.items[i].onebutton.parent.isvisible=false
			end)
			menu.items[i].onebutton:Hide()
		end
		
		if i<=maxNbLines then
			menu.items[i].letext:SetText(optionsList[i].texte)
			menu.items[i].letext:Show()
			menu.items[i]:Show()
		else
			menu.items[i].letext:SetText("")
			menu.items[i]:Hide()
		end

		menu.items[i].letext:ClearAllPoints()
		menu.items[i].letext:SetTextColor(1,1,1,1)
		if menu.items[i].parent.obj.checklist then
			menu.items[i].letext:SetPoint("LEFT", menu.items[i], "LEFT", 14, 0)
		else
			menu.items[i].letext:SetPoint("LEFT", menu.items[i], "LEFT", 2, 0)
		end
		menu.items[i]:SetScript("OnClick", function(self)
			local click=menu.offset+(i-1)
			
			if optionsList[click].form=="sound" then
				DF:sound_play(optionsList[click].valeur)
			end
			
			if menu.obj.preview then
				DF_Global_Env[name.."pointiTexture"]:SetTexture(optionsList[click].valeur)
			end
			
			if menu.items[i].parent.obj.checklist then
				optionsList[click].check=not optionsList[click].check
				menu.items[i].parent.redraw(menu.items[i].parent)
				DF.myArgs=click
				if fonction then fonction() end
			else
				menu.obj.base[menu.index]=optionsList[click].valeur
				menu.obj:SetText(tostring(optionsList[click].texte))
				obj.currentValue=tostring(optionsList[click].texte)
				menu.obj:SetCursorPosition(0)
				menu:Hide()
				menu.items[i].parent.isvisible=false
				if fonction then fonction() end
			end
			
		end);		

	end   

	menu.redraw = function(pointeur)
		local nbLines=getn(pointeur.optionsList)
		
		for i = 1,9 do
			local toshow=pointeur.offset+(i-1)
			if toshow<=nbLines then

				if pointeur.items[i].onebutton then
					if string.find(pointeur.optionsList[toshow].texte, "Default") or string.find(pointeur.optionsList[toshow].texte, "SetUp") then
						pointeur.items[i].onebutton:Hide()
					else
						pointeur.items[i].onebutton:Show()
					end
				end

				if pointeur.optionsList[toshow].form=="statusbar" then
					pointeur.items[i]:SetNormalTexture(pointeur.optionsList[toshow].valeur)
				else
					pointeur.items[i]:SetNormalTexture(nil)
				end
				if pointeur.optionsList[toshow].form=="font" then
					pointeur.items[i].letext:SetFont(pointeur.optionsList[toshow].valeur,10)
				else
					pointeur.items[i].letext:SetFont(pointeur.items[i].lafont,10)
				end				
				
				pointeur.items[i].letext:SetText(pointeur.optionsList[toshow].texte)
				pointeur.items[i].letext:Show()
				pointeur.items[i]:Show()
				
				if pointeur.items[i].parent.obj.checklist then
					if pointeur.optionsList[toshow].check then
						pointeur.items[i].checkboxe.texture:SetTexture("Interface\\Buttons\\UI-CheckBox-Check")
					else
						pointeur.items[i].checkboxe.texture:SetTexture(nil)
					end
				end
				
				if pointeur.optionsList[toshow].form=="background" then
					pointeur.items[i]:SetScript("OnEnter",function(self)
						
						apercutexture:ClearAllPoints()
						apercutexture:SetPoint("TOPLEFT", self.parent, "TOPRIGHT", 0, 0)	
						apercutexture_texture:SetTexture(pointeur.optionsList[toshow].valeur)
						apercutexture:Show()

					end);
					pointeur.items[i]:SetScript("OnLeave",function(self)
						apercutexture:Hide()
					end);
				else
					pointeur.items[i]:SetScript("OnEnter",function(self)
						if pointeur.optionsList[toshow].tooltip then
							DF.DroodFGameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT",-2,20)
							DF.DroodFGameTooltip:ClearLines()
							DF.DroodFGameTooltip:AddLine(tostring(pointeur.optionsList[toshow].tooltip),1,1,1,nil)
							DF.DroodFGameTooltip:Show()								
						end
					end);
					pointeur.items[i]:SetScript("OnLeave",function(self)
						if pointeur.optionsList[toshow].tooltip then
							DF.DroodFGameTooltip:Hide()	
						end
					end);											
				end
			
			else
				pointeur.items[i].letext:SetText("")
				pointeur.items[i]:Hide()
				
				if pointeur.items[i].onebutton then
					pointeur.items[i].onebutton:Hide()
				end

			end			
		end		
	end

	-- a l'affichage, rafraichir le contenu
	menu:SetScript("OnShow",function(self)
		self.redraw(self)
	end)
	
	-- si contenu plus grand que affichage, créé un slider
	if smaxi>1 then
		local slide = CreateFrame('Slider', name.."Slider", menu, 'OptionsSliderTemplate')
		slide.parent=menu
		slide.parent.slide=slide
		slide:SetThumbTexture("Interface\\Buttons\\UI-ScrollBar-Knob")
		slide:SetWidth(20)
	 	slide:SetHeight((maxNbLines*17)+6)
	 	slide:EnableMouse(true)
		slide:SetPoint("RIGHT", menu, "RIGHT", -4, 0)
		slide:SetOrientation('VERTICAL')
		getglobal(slide:GetName() .. 'Low'):SetText("")
		getglobal(slide:GetName() .. 'High'):SetText("");
		getglobal(slide:GetName() .. 'Text'):SetText("")
		slide:SetMinMaxValues(1, smaxi)
		slide:SetValueStep(1)
		slide:SetValue(1)
		slide:SetScript("OnValueChanged", function(self)
			self.parent.offset = self:GetValue()
			self.parent.redraw(self.parent)
		end);	
	end
	
	-- création du bouton pour afficher le menu
	local button = CreateFrame("Button", name.."_button", obj, "OptionsButtonTemplate")
	button.lemenu=menu
	button.name=name
	button:SetText("=")
	button:SetWidth(20)
	button:SetHeight(20)
	button:SetPoint("TOPLEFT", obj, "TOPRIGHT", 2, 0)
	local fontString = button:GetFontString()
	police = fontString:GetFont();fontString:SetFont(police,10)
	button:SetScript("OnClick", function(self)
		falseEditBox:SetFocus()
		local nbLines=getn(button.lemenu.optionsList)
		if nbLines>9 then nbLines=9 end
		if nbLines==0 then nbLines=1 end
		button.lemenu:SetHeight(((nbLines+1)*17)-8)
		for k,v in pairs(DF_dropdownlist) do
			if v~=self.name.."menudropdown" then
				DF_Global_Env[v]:Hide()
				DF_Global_Env[v].isvisible=false
			end
		end
		
		if self.lemenu.isvisible then
			self.lemenu:Hide()
			self.lemenu:EnableMouse(false)
			self.lemenu.isvisible=false
		else
			self.lemenu:Show()
			self.lemenu:EnableMouse(true)
			self.lemenu.isvisible=true
		end
	end)	 
	
	obj.lebouton=button
	if help then DF:options_createHelp(obj,obj.fontString,name,help) end
	if preview then DF:options_createPreview(obj,obj,name,obj.base,index) end
	
end

function DF:options_testMedia()

	local ftype=options_sharemedia.ftype
	local fpath=options_sharemedia.fpath
	local fname=options_sharemedia.fname
	local fetch
	local mediaValide=false
	local oldMedia=nil
	
	shareMediaTexture:SetTexture(nil)
	shareMediaFont:SetFont("Interface\\AddOns\\DroodFocus\\datas\\font.ttf",14)
	
	if ftype~="" and fpath~="" and fname~="" then

		if ftype=="statusbar" or ftype=="background" then

			shareMediaTexture:SetTexture(fpath)
			if shareMediaFrame:GetTexture() then
				mediaValide=true
			end
				
		elseif ftype=="font" then
			
			shareMediaFont:SetFont(fpath,14)

			if shareMediaFont:GetFont()~="Interface\\AddOns\\DroodFocus\\datas\\font.ttf" then
				mediaValide=true
			end
			
		end

	end

	if not mediaValide then
		StaticPopup_Show ("MEDIAERREUR","Media invalid")
	else
		if DF.myArgs=="add" then
			
			fetch=DF.LSM:Fetch("background", fname)
			if fetch then
				StaticPopup_Show ("MEDIAERREUR","Media already exist")
			else
				DF:libs_saveNewFile(ftype,fname,fpath)
				StaticPopup_Show ("MEDIAERREUR","Media added")
			end
			
		end
	end
	
end

function DF:options_resetselectPt()
	selectPt=1
end

function DF:options_fx_save()
	if selectPt and selectPt>0 and DF_config.spells[selectPt].FX_name~="" then

			local index=nil
			
			for tkey,tvalue in pairs(DF_animaticsList) do
				if DF_animaticsList[tkey].FX_name==DF_config.spells[selectPt].FX_name then
					index=tkey
				end
			end		
			
			if index==nil then
				table.insert(DF_animaticsList, 1, {})
				index=1
			end

			DF_animaticsList[index].FX_name=DF_config.spells[selectPt].FX_name
			DF_animaticsList[index].FX_width=DF_config.spells[selectPt].FX_width
			DF_animaticsList[index].FX_height=DF_config.spells[selectPt].FX_height
			DF_animaticsList[index].FX_texture=DF_config.spells[selectPt].FX_texture
			DF_animaticsList[index].FX_customtexture=DF_config.spells[selectPt].FX_customtexture
			DF_animaticsList[index].FX_mode=DF_config.spells[selectPt].FX_mode
			DF_animaticsList[index].FX_angle=DF_config.spells[selectPt].FX_angle
			DF_animaticsList[index].FX_start_posx=DF_config.spells[selectPt].FX_start_posx
			DF_animaticsList[index].FX_middle_posx=DF_config.spells[selectPt].FX_middle_posx
			DF_animaticsList[index].FX_end_posx=DF_config.spells[selectPt].FX_end_posx
			DF_animaticsList[index].FX_start_posy=DF_config.spells[selectPt].FX_start_posy
			DF_animaticsList[index].FX_middle_posy=DF_config.spells[selectPt].FX_middle_posy
			DF_animaticsList[index].FX_end_posy=DF_config.spells[selectPt].FX_end_posy
			DF_animaticsList[index].FX_start_alpha=DF_config.spells[selectPt].FX_start_alpha
			DF_animaticsList[index].FX_middle_alpha=DF_config.spells[selectPt].FX_middle_alpha
			DF_animaticsList[index].FX_end_alpha=DF_config.spells[selectPt].FX_end_alpha
			DF_animaticsList[index].FX_start_scale=DF_config.spells[selectPt].FX_start_scale
			DF_animaticsList[index].FX_middle_scale=DF_config.spells[selectPt].FX_middle_scale
			DF_animaticsList[index].FX_end_scale=DF_config.spells[selectPt].FX_end_scale
			DF_animaticsList[index].FX_start_width=DF_config.spells[selectPt].FX_start_width
			DF_animaticsList[index].FX_middle_width=DF_config.spells[selectPt].FX_middle_width
			DF_animaticsList[index].FX_end_width=DF_config.spells[selectPt].FX_end_width
			DF_animaticsList[index].FX_start_height=DF_config.spells[selectPt].FX_start_height
			DF_animaticsList[index].FX_middle_height=DF_config.spells[selectPt].FX_middle_height
			DF_animaticsList[index].FX_end_height=DF_config.spells[selectPt].FX_end_height
			DF_animaticsList[index].FX_speed=DF_config.spells[selectPt].FX_speed
			DF_animaticsList[index].FX_rotatespeed=DF_config.spells[selectPt].FX_rotatespeed
			DF_animaticsList[index].FX_chakerpower=DF_config.spells[selectPt].FX_chakerpower
			DF_animaticsList[index].FX_pulsepowerX=DF_config.spells[selectPt].FX_pulsepowerX
			DF_animaticsList[index].FX_pulsespeedX=DF_config.spells[selectPt].FX_pulsespeedX
			DF_animaticsList[index].FX_pulsepowerY=DF_config.spells[selectPt].FX_pulsepowerY
			DF_animaticsList[index].FX_pulsespeedY=DF_config.spells[selectPt].FX_pulsespeedY
			DF_animaticsList[index].FX_pulsepowerZ=DF_config.spells[selectPt].FX_pulsepowerZ
			DF_animaticsList[index].FX_pulsespeedZ=DF_config.spells[selectPt].FX_pulsespeedZ
			DF_animaticsList[index].FX_timerenable=DF_config.spells[selectPt].FX_timerenable
			DF_animaticsList[index].FX_timerposx=DF_config.spells[selectPt].FX_timerposx
			DF_animaticsList[index].FX_timerposy=DF_config.spells[selectPt].FX_timerposy
			DF_animaticsList[index].FX_timersmall=DF_config.spells[selectPt].FX_timersmall
			DF_animaticsList[index].FX_timerabove=DF_config.spells[selectPt].FX_timerabove
			DF_animaticsList[index].FX_timerscale=DF_config.spells[selectPt].FX_timerscale
			DF_animaticsList[index].FX_timeralpha=DF_config.spells[selectPt].FX_timeralpha

			DF:options_AnimaticsList()
		
	end	
	
end

function DF:fileName(texte)
	if type(texte)~="string" then
		return ""
	else
		texte=texte:gsub("Interface\\AddOns\\DroodFocus\\custom\\", "")
		return texte
	end
end

function DF:options_setLevel()
	DF:alert_setLevel()
	DF:anchor_setLevel()
	DF:castbar_setLevel()
	DF:combo_setLevel()
	DF:cooldown_setLevel()
	DF:defense_setLevel()
	DF:eclipsebar_setLevel()
	DF:ooc_setLevel()
	DF:gps_setLevel()
	DF:healthbar_setLevel()
	DF:icons_setLevel()
	DF:infos_setLevel()
	DF:manabar_setLevel()
	DF:portrait_setLevel()
	DF:powerbar_setLevel()
	DF:targetbar_setLevel()
	DF:threatbar_setLevel()
	DF:timerbar_setLevel()

end