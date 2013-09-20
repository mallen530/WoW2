----------------------------------------------------------------------------------------------------
-- DroodFocus 4.2.7 - export
-- Meranannon - Insane - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------
local DF = DF_namespace
local _
local DFexportFile=""
local DF_dropdownlist=nil

DF.importedTable={}

-- character table string
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

-- encoding
function DF:enc64(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

-- decoding
function DF:dec64(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end

--
-- création fenêtre saisie
--
local exportWindow = CreateFrame("FRAME","DroodFocusexportWindow",UIParent,"OptionsBoxTemplate")
exportWindow:SetMovable(true)
exportWindow:EnableMouse(true)
exportWindow:SetBackdrop({ bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark.blp", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = 1, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 } });
exportWindow:SetFrameStrata("DIALOG");
exportWindow:SetBackdropColor(0,0,0,1);
exportWindow:SetWidth(640)
exportWindow:SetHeight(480)
exportWindow:ClearAllPoints()
exportWindow:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
exportWindow:SetScript("OnMouseDown",function(self)
	exportWindow:StartMoving()
end)
exportWindow:SetScript("OnMouseUp",function(self)
	exportWindow:StopMovingOrSizing()
end)	
exportWindow:SetFrameLevel(125)

local exportWindowTitle = CreateFrame("FRAME","DroodFocusexportWindowbar",exportWindow);
exportWindowTitle:SetMovable(false)
exportWindowTitle:EnableMouse(true)
local t=exportWindowTitle:CreateTexture("DroodFocusexportWindowbarTexture");
exportWindowTitle.texture=t;
exportWindowTitle:SetHeight(22)
exportWindowTitle:SetWidth(640-4)
exportWindowTitle:SetPoint("TOPLEFT", exportWindow, "TOPLEFT", 2, -2)
exportWindowTitle.texture:SetAllPoints(exportWindowTitle)
exportWindowTitle.texture:SetTexture(90/255,106/255,80/255,0.85);
exportWindowTitle.text = exportWindowTitle:CreateFontString(nil, "OVERLAY", "GameFontNormal")
exportWindowTitle.text:SetText("DroodFocus - Import/Export")
exportWindowTitle.text:SetPoint("LEFT", exportWindowTitle, "LEFT", 6, 0);	
exportWindowTitle:SetScript("OnMouseDown",function(self)
	exportWindow:StartMoving()
end)
exportWindowTitle:SetScript("OnMouseUp",function(self)
	exportWindow:StopMovingOrSizing()
end)	
exportWindowTitle:SetFrameLevel(126)

local button = CreateFrame("Button", "DroodFocusexportWindowClose", exportWindow, "GameMenuButtonTemplate")
button:SetText("X")
button:SetWidth(20)
button:SetHeight(20)
button:SetPoint("TOPRIGHT", exportWindow, "TOPRIGHT", -4, -3)
button:SetScript("OnClick", function(self)
	exportWindow:Hide()
end)
button:SetFrameLevel(127)

local button1 = CreateFrame("Button", "DroodFocusexportWindowImporter", exportWindow, "GameMenuButtonTemplate")
button1:SetText("Import")
button1:SetWidth(80)
button1:SetHeight(20)
button1:SetPoint("BOTTOMRIGHT", exportWindow, "BOTTOMRIGHT", -4, 4)
button1:SetScript("OnClick", function(self)
	DF:export_import()
end)
button1:SetFrameLevel(127)

local button2 = CreateFrame("Button", "DroodFocusexportWindowClear", exportWindow, "GameMenuButtonTemplate")
button2:SetText("Clear")
button2:SetWidth(80)
button2:SetHeight(20)
button2:SetPoint("BOTTOMRIGHT", button1, "BOTTOMLEFT", 1, 0)
button2:SetScript("OnClick", function(self)
	DF:export_clearText()
end)
button2:SetFrameLevel(127)

local button3 = CreateFrame("Button", "DroodFocusexportWindowAll", exportWindow, "GameMenuButtonTemplate")
button3:SetText("Select ALL")
button3:SetWidth(80)
button3:SetHeight(20)
button3:SetPoint("BOTTOMRIGHT", button2, "BOTTOMLEFT", 1, 0)
button3:SetScript("OnClick", function(self)
	DF:export_selectAll()
end)
button3:SetFrameLevel(127)

local scroll = CreateFrame("ScrollFrame", "DroodFocusexportWindowScroll", exportWindow, "UIPanelScrollFrameTemplate")
scroll:SetPoint("TOPLEFT", exportWindow, 6, -28)
scroll:SetPoint("BOTTOMRIGHT", exportWindow, -27, 25)
local textArea = CreateFrame("EditBox", "DroodFocusexportWindowScrollText", scroll)
textArea:SetAutoFocus(false)
textArea:SetMultiLine(true)
textArea:SetFontObject(GameFontHighlight)
textArea:SetMaxLetters(99999)
textArea:EnableMouse(true)
textArea:SetScript("OnEscapePressed", textArea.ClearFocus)
textArea:SetWidth(640-30)
scroll:SetScrollChild(textArea)
textArea:SetFrameLevel(127)

function DF:export_exportSpell(num)

	local chemin=""
	local chaine
	local letype
	local finalname
	local entete
	
	if (DF.works.spells[num].ids[1]==0 or not DF.works.spells[num].names[1]) then
		if DF_config.spells[num].abiUserText=="" then
			finalname=DF.locale["unknow"]
		else
			finalname=DF_config.spells[num].abiUserText
		end
	else
		if DF_config.spells[num].abiUserText=="" then
			finalname=DF.works.spells[num].names[1]
		else
			finalname=DF_config.spells[num].abiUserText
		end
	end
	
	DFexportFile=""
	entete="DROODFOCUS_EXPORT;"..tostring(DROODFOCUS_CONFIGVERSION)..";"..tostring(finalname).."-"
	
	local function _export(baseTable,chemin)
	
		for index, value in pairs(baseTable) do

			if type(baseTable[index]) ~= "table" then
				-- valeur
				chaine="1;"
				if chemin~="" then
					chaine=chaine..chemin.."."
				end
				local finalvalue=tostring(value)
				
				if type(baseTable[index])=="number" then
					letype=1
				elseif type(baseTable[index])=="boolean" then
					letype=2
				else
					letype=3
					finalvalue=DF:enc64(finalvalue)
				end
				
				chaine=chaine..tostring(index)..";"..tostring(letype)..";"..finalvalue
				if DFexportFile~="" then DFexportFile=DFexportFile.."|" end
				DFexportFile=DFexportFile..chaine
				
			else
				-- sous-table
				chaine="2;"
				if chemin~="" then
					chaine=chaine..chemin.."."
				end
				chaine=chaine..tostring(index)
				if DFexportFile~="" then DFexportFile=DFexportFile.."|" end
				DFexportFile=DFexportFile..chaine
				if chemin~="" then
					_export(baseTable[index],chemin.."."..tostring(index))
				else
					_export(baseTable[index],tostring(index))
				end
			end
			
		end
		
	end
	
	if DF_config.spells[num] then
		_export(DF_config.spells[num],"")	
		DFexportFile=entete..DF:enc64(DFexportFile)
		exportWindowTitle.text:SetText("[CTRL-C] to copy to clipboard")
		DF:export_setText()
		DF:export_showWindow()		
		textArea:HighlightText()
		textArea:SetFocus()	
	end
	
end

function DF:export_import()

	local data
	local lignes
	local ligne
	local nbLignes
	local li
	local cl
	local letype
	local value
	local lacle
	local valueType
	local theCode="local DF = DF_namespace\n"
	local cles
	local nbCles
	local scinde
	local entete
	local corps
	
	DF.importedTable=table.wipe(DF.importedTable)
	
	data = DF:export_getText()
	
	-- fin si pas de datas
	if not data or string.len(data)<22 or string.sub(data, 1, 2)=="--" then
		DFexportFile="-- Import datas not valid !"
		DF:export_setText()
		return
	end

	-- récup entete et corps
	scinde=DF:explode ( "-", data )
	entete=scinde[1]
	corps=scinde[2]
	
	corps=DF:dec64(corps)	
	
	-- création du tableau de lignes
	lignes=DF:explode ( "|", corps )
	
	-- lecture de l'entete
	ligne = DF:explode ( ";", entete )
	
	local exportVersion=tonumber(ligne[2])
	-- si mauvaise entete ou mauvaise version
	if not ligne[1] or not ligne[2] or ligne[1]~="DROODFOCUS_EXPORT" or DROODFOCUS_CONFIGVERSION<exportVersion or exportVersion<517 then
		DFexportFile="-- Import datas wrong version !\nMust be superior or equal to version 5.1.7"
		DF:export_setText()
		return	
	end
	
	-- ok nb de lignes
	nbLignes = getn(lignes)
	
	-- parcours les lignes sauf entete
	for li = 1,nbLignes do
	
		-- récupére la ligne
		ligne = DF:explode ( ";", lignes[li] )
		
		letype=tonumber(ligne[1])
		lacle=tostring(ligne[2])
		valueType = tostring(ligne[3])
		
		if lacle~="nil" then
		
			if letype==1 then
			
				if valueType=="1" then
				
					value = ligne[4]
					
				elseif valueType=="2" then
				
					if ligne[4]=="true" then
						value="true"
					else
						value="false"
					end
					
				else
				
						value = '"'..DF:dec64(ligne[4])..'"'
					
				end
	
				theCode=theCode.."DF.importedTable"
				cles = DF:explode ( ".", lacle )
				nbCles = getn(cles)
				for cl = 1,nbCles do
					if cl==nbCles then
						local realCle=tonumber(cles[cl])
						if realCle==nil then
							theCode=theCode..'["'..tostring(cles[cl])..'"]'
						else
							theCode=theCode.."["..cles[cl].."]"
						end
						
					else
						theCode=theCode.."."..tostring(cles[cl])
					end
				end
				if cles[cl]~="luaCode" then
					theCode=theCode.."="..DF:doubleAntiSlashes(value).."\n"
				else
					theCode=theCode.."="..value.."\n"
				end
			
			else
			
				theCode=theCode.."DF.importedTable."..lacle.."={}\n"
			
			end
		
		end
		
	end
	
	DFexportFile="-- Importation finished!\n"
	DF:export_setText()
	
	local func = loadstring(theCode, "DroodFocusImportCode")
	local result = func()
	DF:options_DebuffList_copyImport()
	
	exportWindowTitle.text:SetText("DroodFocus - Importation result")

	DF:export_hideWindow()
end

function DF:export_clearText()
	textArea:ClearFocus()
	textArea:SetText("")		
	textArea:SetFocus()	
end

function DF:export_setText()
	textArea:ClearFocus()
	textArea:SetText(DFexportFile)		
	textArea:SetFocus()	
end

function DF:export_getText()
	return textArea:GetText()		
end

function DF:export_selectAll()
	textArea:ClearFocus()
	textArea:HighlightText()
	textArea:SetFocus()	
end

function DF:export_showWindow()
	exportWindow:SetFrameLevel(253)
	exportWindow:Show()
end

function DF:export_hideWindow()
	exportWindow:SetFrameLevel(253)
	exportWindow:Hide()
end

function DF:export_importSpell()
	textArea:ClearFocus()
	textArea:SetText("")		
	exportWindowTitle.text:SetText("Paste you import datas here and click button [Import]")
	DF:export_showWindow()
	textArea:SetFocus()	
end


function DF:export_createList(parent,name,base,index,infos,posx,posy,fonction,optionsList,large,help,checklist,preview,editable)
	
	local affiche
	local police
	
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
	if maxNbLines>20 then maxNbLines=20 end
	local smaxi = getn(optionsList)-19
	
	local obj = CreateFrame("EditBox", name, parent,"InputBoxTemplate")
	obj.base=base
	obj.name=name
	obj.checklist=checklist
	obj.laliste=optionsList
	obj.preview=preview
	obj:SetWidth(largeur)
	obj:SetHeight(20)
	obj:SetFrameLevel(127)
	obj:SetPoint("TOPLEFT", parent, "TOPLEFT", posx, -posy)
	if preview then
		obj:SetWidth(largeur-34)
		obj:SetPoint("TOPLEFT", parent, "TOPLEFT", 34+16+(posx*11.5), -30+23-(posy*38))
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
							self.currentValue=tostring(tostring(self.laliste[k].texte))
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
						_G[self.name.."pointiTexture"]:SetTexture(self.base[index])
					end	
				end
				self:SetAlpha(1)
				self.lebouton:EnableMouse(true)
			else
				self:SetAlpha(0.5)
				self.lebouton:EnableMouse(false)
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
		self.base[index] = "Interface\\AddOns\\DroodFocus\\custom\\"..self:GetText()
		self.currentValue=self.base[index]
		if self.preview then
			_G[name.."pointiTexture"]:SetTexture(self.base[index])
		end
		self:ClearFocus()
		if fonction then fonction() end
	end)	 
	
	-- perte du focus, place valeur origine et désactive bouton validation
	obj:SetScript("OnEditFocusLost", function(self)
		self.base[index] = "Interface\\AddOns\\DroodFocus\\custom\\"..self:GetText()
		self.currentValue=self.base[index]
		if self.preview then
			_G[name.."pointiTexture"]:SetTexture(self.base[index])
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
	obj.fontString:SetPoint("BOTTOMRIGHT", obj, "BOTTOMLEFT", -20, 5)
	obj.fontString:SetJustifyH("LEFT")
	obj.fontString:SetText(infos)
	police = obj.fontString:GetFont();obj.fontString:SetFont(police,10)

	obj:SetFrameLevel(255)

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
	menu:EnableMouse(true)
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
	for i = 1,20 do
		menu.items[i] = CreateFrame("Button", "DFexportWindowDDButton"..tostring(i), menu)
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
			menu.items[i].checkboxe = CreateFrame("Frame", "DFexportWindowDDButtonFrame"..tostring(i), menu)
			menu.items[i].checkboxe:SetPoint("LEFT", menu.items[i], "LEFT", 0, 0)
			menu.items[i].checkboxe:SetWidth(16)
			menu.items[i].checkboxe:SetHeight(16)
			menu.items[i].checkboxe.texture=menu.items[i].checkboxe:CreateTexture("DFexportWindowDDButtonFrame"..tostring(i).."Texture","BACKGROUND")
			menu.items[i].checkboxe.texture:SetAllPoints(menu.items[i].checkboxe)
			menu.items[i].checkboxe.texture:SetTexture(nil)
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
				_G[name.."pointiTexture"]:SetTexture(optionsList[click].valeur)
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
		for i = 1,20 do
			local toshow=pointeur.offset+(i-1)
			if toshow<=nbLines then
				
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
			
			else
				pointeur.items[i].letext:SetText("")
				pointeur.items[i]:Hide()
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
		--falseEditBox:SetFocus()
		local nbLines=getn(button.lemenu.optionsList)
		if nbLines>20 then nbLines=20 end
		if nbLines==0 then nbLines=1 end
		button.lemenu:SetHeight(((nbLines+1)*17)-8)
		for k,v in pairs(DF_dropdownlist) do
			if v~=self.name.."menudropdown" then
				_G[v]:Hide()
				_G[v].isvisible=false
			end
		end
		
		if self.lemenu.isvisible then
			self.lemenu:Hide()
			self.lemenu.isvisible=false
		else
			self.lemenu:Show()
			self.lemenu.isvisible=true
		end
	end)	 
	button:SetFrameLevel(255)
	obj.lebouton=button
	if help then DF:options_createHelp(obj,obj.fontString,name,help) end
	if preview then DF:options_createPreview(obj,obj,name,obj.base,index) end
	
end

function DF:export_setCodeFromList()
	local num = tonumber(DF.exportSeleted)
	DFexportFile=DF.spells_datas_imports[num].code
	DF:export_setText()

end

function DF:export_createMyList()
	if DF.spells_datas_imports then
		DF:export_createList(exportWindow,"DF_exportList",DF,"exportSeleted","Datas",74,480-24,DF.export_setCodeFromList,DF.spells_datas_imports,nil,nil,nil,nil,nil)
	end
end

exportWindow:Hide()