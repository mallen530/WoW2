----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - spellsList
-- Author : Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------
-- Liste de sorts prédéfinies
-- Predefined list of spells
----------------------------------------------------------------------------------------------------
local DF = DF_namespace
DF.spellsList ={}
DF.spellsListCheck={}
local _

DF.spellsListspecial ={
	{["texte"]=106830,["valeur"]="106830;77758",["alttexte"]="For cat and bear",["ltype"]=1},
	{["texte"]=33878,["valeur"]="33878",["alttexte"]="For bear",["ltype"]=1},
	{["texte"]=62606,["valeur"]="62606;132402",["alttexte"]="CD/charges and buff",["ltype"]=1},
	{["texte"]=127538,["valeur"]="127538;52610",["alttexte"]="glyped;not glyphed",["ltype"]=1},
	{["texte"]=102355,["valeur"]="113746",["alttexte"]="Weakened Armor",["ltype"]=1},
	{["texte"]=106952,["valeur"]="106952;106951;50334",["alttexte"]="CD, cat and bear buffs",["ltype"]=1},
	{["texte"]=102543,["valeur"]="106731;102543",["alttexte"]="CD, cat buff",["ltype"]=1},
	{["texte"]=106898,["valeur"]="106898;77764",["alttexte"]="Cat and bear buff",["ltype"]=1},
}

function DF:spellslist_searchTable(spellid)
	local nb=getn(DF.spellsList)
	for i = 1,nb do
		if DF.spellsList[i].valeur==spellid then
			return true
		end
	end
	return false
end

-- construction de la liste des sorts a partir du grimoire et fusion des 2 listes
-- construction of the list of spells from the spellbook and merging two lists
function DF:spellslist_initTable()

	local lenom,lerang
	local finalname
	local latooltip
	local lid
	local nbIds	
	local temp
	local tnom
	
	if DF.spellsList then
		DF.spellsList=table.wipe(DF.spellsList)
	end

	if DF.spellsListCheck then
		DF.spellsListCheck=table.wipe(DF.spellsListCheck)
	end
	
	local num=1
	
	--for i = 1, GetNumSpellTabs() do
	for i = 1, 2 do
		
	   local name, empty, offset, numSpells = GetSpellTabInfo(i)
	   
	   if not name then
	      break;
	   end
   
	   for s = offset + 1, offset + numSpells do
	   	
	   	local	spell, rank = GetSpellBookItemName(s, BOOKTYPE_SPELL)
	   	local empty, spellId = GetSpellBookItemInfo(s, BOOKTYPE_SPELL)

			if spellId==33917 then
				spellId=33878
			end

			if not IsPassiveSpell(s, BOOKTYPE_SPELL) and not DF:spellslist_searchTable(spellId) then

				if rank~="" then
					finalname="(L) "..spell.." ("..tostring(rank)..")"
				else
					finalname="(L) "..spell
				end

				if string.len(finalname)>32 then
					finalname=string.sub(finalname, 1 ,32).."..."
				end

				DF.spellsList[num]={}
				DF.spellsListCheck[num]={}

				latooltip="|cFFFFFF00Sort du livre|cFFFFFFFF\n"
				lenom=GetSpellInfo(spellId)
				if lenom==nil then
					lenom=DF.locale["unknow"]
				end
				latooltip=latooltip.."    "..name..": "..lenom.." ["..tostring(spellId).."]\n"
				
				DF.spellsList[num].texte=finalname
				DF.spellsList[num].valeur=spellId
				DF.spellsList[num].ltype=1
				DF.spellsList[num].popup=true
				DF.spellsList[num].check=nil
				DF.spellsList[num].tooltip=latooltip

				DF.spellsListCheck[num].texte=finalname
				DF.spellsListCheck[num].valeur=spellId
				DF.spellsListCheck[num].ltype=1
				DF.spellsListCheck[num].popup=true
				DF.spellsListCheck[num].check=true
				
				if DF_cdsList[spellId]~=nil then
					DF.spellsListCheck[num].check=false
				end
				
				DF.spellsListCheck[num].tooltip=latooltip				
				
				num=num+1

			end

	   end
	   
	end
	
	-- fusion liste special / special fusion list
	local nb=getn(DF.spellsListspecial)
	
	for i = 1,nb do
	
		if DF.spellsListspecial[i].ltype==1 then
			
			lenom,lerang = GetSpellInfo(DF.spellsListspecial[i].texte)
			finalname="(C) "
			latooltip="|cFFFFFF00Sorts prédéfinies|cFFFFFFFF\n"
			if DF.spellsListspecial[i].alttexte then
				latooltip=latooltip..DF.spellsListspecial[i].alttexte.."\n"
			end
			temp=DF:explode ( ";", DF.spellsListspecial[i].valeur )
			nbIds = getn(temp)
			for li = 1,nbIds do
				lid=tonumber(temp[li])
				tnom=GetSpellInfo(lid)
				if tnom==nil then
					tnom=DF.locale["unknow"]
				end
				latooltip=latooltip.."   "..tnom.." ["..tostring(lid).."]\n"
			end
			
		else

			lenom,lerang = GetItemInfo(DF.spellsListspecial[i].texte)
			finalname="(P) "
			latooltip="|cFFFFFF00Proc d'objets|cFFFFFFFF\n"
			if DF.spellsListspecial[i].alttexte then
				latooltip=latooltip..DF.spellsListspecial[i].alttexte.."\n"
			end
			temp=DF:explode ( ";", DF.spellsListspecial[i].valeur )
			nbIds = getn(temp)
			for li = 1,nbIds do
				lid=tonumber(temp[li])
				tnom=GetSpellInfo(lid)
				if tnom==nil then
					tnom=DF.locale["unknow"]
				end
				latooltip=latooltip.."   "..tnom.." ["..tostring(lid).."]\n"
			end			
		end

		if (not lenom or lenom==nil) then
			lenom="Unknow ID["..DF.spellsListspecial[i].texte.."]"
			lerang=""
		end

		if string.len(lenom)>32 then
			lenom=string.sub(lenom, 1 ,32).."..."
		end
		
		finalname=finalname..lenom
		
		DF.spellsList[num]={}
		DF.spellsList[num].texte=finalname
		DF.spellsList[num].valeur=DF.spellsListspecial[i].valeur
		DF.spellsList[num].ltype=2
		DF.spellsList[num].popup=false
		DF.spellsList[num].check=nil
		DF.spellsList[num].tooltip=latooltip
		
		num=num+1		
		
	end	

	-- trier la liste / sort the list
	local mini=0
	local valeur=""
	local save ={}
	local nb=getn(DF.spellsList)
	
	for i = 1,nb do
		mini=i
		valeur=DF.spellsList[mini].texte
		for j = i,nb do
			if i~=j and DF.spellsList[j].texte<valeur then
				mini=j
				valeur=DF.spellsList[mini].texte
			end
		end
		
		save = DF.spellsList[i]
		DF.spellsList[i]=DF.spellsList[mini]
		DF.spellsList[mini]=save
		
	end

	-- trier la liste / sort the list
	local mini=0
	local valeur=""
	local save ={}
	local nb=getn(DF.spellsListCheck)
	
	for i = 1,nb do
		mini=i
		valeur=DF.spellsListCheck[mini].texte
		for j = i,nb do
			if i~=j and DF.spellsListCheck[j].texte<valeur then
				mini=j
				valeur=DF.spellsListCheck[mini].texte
			end
		end
		
		save = DF.spellsListCheck[i]
		DF.spellsListCheck[i]=DF.spellsListCheck[mini]
		DF.spellsListCheck[mini]=save
		
	end
		
end

function DF:spellsList_activeCDs()
	local newPt=DF.myArgs
	local lid=tonumber(DF.spellsListCheck[newPt].valeur)
	if DF.spellsListCheck[newPt].check then
		DF_cdsList[lid]=nil
	else
		DF_cdsList[lid]=true
	end
end