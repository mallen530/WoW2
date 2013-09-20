----------------------------------------------------------------------------------------------------
-- DroodFocus 4.2.7 - Lua
-- Meranannon - Insane - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------
local DF = DF_namespace
local DFLuaCurrentNum=0
local _
local DF_dropdownlist

local defaultText="-- Enter your code here.\n\n"
.."-- Your function return :\n"
.."--  true: activate object."
.."--  false: does not activate object.\n"
.."--  nil (by default if nothing returned): does not activate object.\n"

--
-- création fenêtre saisie
--
DF.LuaWindow = CreateFrame("FRAME","DroodFocusLuaWindow",UIParent,"OptionsBoxTemplate")
DF.LuaWindow:SetMovable(true)
DF.LuaWindow:EnableMouse(true)
DF.LuaWindow:SetBackdrop({ bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark.blp", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = 1, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 } });
DF.LuaWindow:SetFrameStrata("DIALOG");
DF.LuaWindow:SetBackdropColor(0,0,0,1);
DF.LuaWindow:SetWidth(640)
DF.LuaWindow:SetHeight(480)
DF.LuaWindow:ClearAllPoints()
DF.LuaWindow:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
DF.LuaWindow:SetScript("OnMouseDown",function(self)
	DF.LuaWindow:StartMoving()
end)
DF.LuaWindow:SetScript("OnMouseUp",function(self)
	DF.LuaWindow:StopMovingOrSizing()
end)	
DF.LuaWindow:SetFrameLevel(125)

DF.LuaWindowTitle = CreateFrame("FRAME","DroodFocusLuaWindowbar",DF.LuaWindow);
DF.LuaWindowTitle:SetMovable(false)
DF.LuaWindowTitle:EnableMouse(true)
local t=DF.LuaWindowTitle:CreateTexture("DroodFocusLuaWindowbarTexture");
DF.LuaWindowTitle.texture=t;
DF.LuaWindowTitle:SetHeight(22)
DF.LuaWindowTitle:SetWidth(640-4)
DF.LuaWindowTitle:SetPoint("TOPLEFT", DF.LuaWindow, "TOPLEFT", 2, -2)
DF.LuaWindowTitle.texture:SetAllPoints(DF.LuaWindowTitle)
DF.LuaWindowTitle.texture:SetTexture(90/255,106/255,80/255,0.85);
DF.LuaWindowTitle.text = DF.LuaWindowTitle:CreateFontString(nil, "OVERLAY", "GameFontNormal")
DF.LuaWindowTitle.text:SetText("DroodFocus - Lua code editor.")
DF.LuaWindowTitle.text:SetPoint("LEFT", DF.LuaWindowTitle, "LEFT", 6, 0);	
DF.LuaWindowTitle:SetScript("OnMouseDown",function(self)
	DF.LuaWindow:StartMoving()
end)
DF.LuaWindowTitle:SetScript("OnMouseUp",function(self)
	DF.LuaWindow:StopMovingOrSizing()
end)	
DF.LuaWindowTitle:SetFrameLevel(126)

local button = CreateFrame("Button", "DroodFocusLuaWindowClose", DF.LuaWindow, "GameMenuButtonTemplate")
button:SetText("X")
button:SetWidth(20)
button:SetHeight(20)
button:SetPoint("TOPRIGHT", DF.LuaWindow, "TOPRIGHT", -4, -3)
button:SetScript("OnClick", function(self)
	DF.LuaWindow:Hide()
end)
button:SetFrameLevel(127)

local scroll = CreateFrame("ScrollFrame", "DroodFocusLuaWindowScroll", DF.LuaWindow, "UIPanelScrollFrameTemplate")
scroll:SetPoint("TOPLEFT", DF.LuaWindow, 6, -28)
scroll:SetPoint("BOTTOMRIGHT", DF.LuaWindow, -27, 25)
local textArea = CreateFrame("EditBox", "DroodFocusLuaWindowScrollText", scroll)
textArea:SetAutoFocus(false)
textArea:SetMultiLine(true)
textArea:SetFontObject(GameFontHighlight)
textArea:SetMaxLetters(99999)
textArea:EnableMouse(true)
textArea:SetScript("OnEscapePressed", textArea.ClearFocus)
textArea:SetWidth(640-30)
scroll:SetScrollChild(textArea)
textArea:SetFrameLevel(127)
button:SetScript("OnShow", function(self)
	if DFLuaCurrentNum~=0 then
		local texte=DF:dec64(DF_config.spells[DFLuaCurrentNum].luaCode)
		textArea:SetText(texte)
	else
		textArea:SetText("")		
	end	
end)

local button1 = CreateFrame("Button", "DroodFocusLuaWindowValider", DF.LuaWindow, "GameMenuButtonTemplate")
button1:SetText("Valider")
button1:SetWidth(60)
button1:SetHeight(20)
button1:SetPoint("BOTTOMRIGHT", DF.LuaWindow, "BOTTOMRIGHT", -4, 4)
button1:SetScript("OnClick", function(self)
	if DFLuaCurrentNum~=0 then

		textArea:ClearFocus()
		local text = string.trim(textArea:GetText())
		local result,err = DF:luaCode_run(text)
		if result then
			DF_config.spells[DFLuaCurrentNum].luaCode=DF:enc64(text)
			DF.LuaWindow:Hide()
			DF:spells_list_reinit()	
		end
	
	end
	textArea:ClearFocus()

end)
button1:SetFrameLevel(127)

local button4 = CreateFrame("Button", "DroodFocusLuaWindowTest", DF.LuaWindow, "GameMenuButtonTemplate")
button4:SetText("Tester")
button4:SetWidth(60)
button4:SetHeight(20)
button4:SetPoint("BOTTOMRIGHT", button1, "BOTTOMLEFT", 1, 0)
button4:SetScript("OnClick", function(self)
	textArea:ClearFocus()
	DEFAULT_CHAT_FRAME:AddMessage("Testing your code...");
	local text = string.trim(textArea:GetText())
	local result,err = DF:luaCode_run(text)
	if result then
		DEFAULT_CHAT_FRAME:AddMessage("Test ok.")
	end
end)
button4:SetFrameLevel(127)
DF.LuaWindow:Hide()


local button3 = CreateFrame("Button", "DroodFocusLuaWindowClear", DF.LuaWindow, "GameMenuButtonTemplate")
button3:SetText("Effacer")
button3:SetWidth(60)
button3:SetHeight(20)
button3:SetPoint("BOTTOMRIGHT", button4, "BOTTOMLEFT", 1, 0)
button3:SetScript("OnClick", function(self)
	textArea:ClearFocus()
	textArea:SetText("")		
	textArea:SetFocus()
end)
button3:SetFrameLevel(127)


function DF:luaCode_createList(parent,name,base,index,infos,posx,posy,fonction,optionsList,large,help,checklist,preview,editable)
	
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
		menu.items[i] = CreateFrame("Button", "DFluaWindowDDButton"..tostring(i), menu)
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
			menu.items[i].checkboxe = CreateFrame("Frame", "DFluaWindowDDButtonFrame"..tostring(i), menu)
			menu.items[i].checkboxe:SetPoint("LEFT", menu.items[i], "LEFT", 0, 0)
			menu.items[i].checkboxe:SetWidth(16)
			menu.items[i].checkboxe:SetHeight(16)
			menu.items[i].checkboxe.texture=menu.items[i].checkboxe:CreateTexture("DFluaWindowDDButtonFrame"..tostring(i).."Texture","BACKGROUND")
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
	
	obj.lebouton=button
	--if help then DF:options_createHelp(obj,obj.fontString,name,help) end
	if preview then DF:options_createPreview(obj,obj,name,obj.base,index) end
	
end

function DF:luaCode_setCodeFromList()
	local num = tonumber(DF.luaCodeSeleted)
	
	textArea:ClearFocus()
	textArea:SetText(DF.luaList[num].code)		
	textArea:SetFocus()	

end

DF:luaCode_createList(DF.LuaWindow,"DF_luaCodeList",DF,"luaCodeSeleted",DF.locale["LuaSnippets"],74,480-24,DF.luaCode_setCodeFromList,DF.luaList,nil,"LuaSnippetsHelp",nil,nil,nil)

function DF:luaCode_showWindow()
	DF.LuaWindow:SetFrameLevel(125)
	DF.LuaWindow:Show()
end

function DF:luaCode_updateWindow(newval)
	DFLuaCurrentNum=newval
	local texte=DF_config.spells[DFLuaCurrentNum].luaCode
	textArea:SetText(texte)	
end

function DF:luaCode_setNum(value)
	DFLuaCurrentNum=value
end

function DF:luaCode_run(luaBlock)

	local func,err = assert(loadstring(luaBlock, "DroodFocusLuaCodeTest"))
	
	if not func then
		return false,err
	else
		return true,nil
	end
	
end

function DF:luaCode_addRefs(sName,pointeur)
	
	DF.DFREFS[sName]=pointeur

end

function DF:luaCode_showRefs()
	for index, value in pairs(DF.DFREFS) do
		DEFAULT_CHAT_FRAME:AddMessage(tostring(index))
	end
end

