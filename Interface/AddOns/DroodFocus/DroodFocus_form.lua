----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - form
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

-- Retourne la forme du joueur / Returns the form of the player
function DF:currentForm()
	
	-- traitement special pour le druide / special treatment for the druid
	if DF.playerClass=="DRUID" then
	
		if DF:spell_exist(1066,nil,"player","HELPFUL|PLAYER",true) then 
			-- form aquatique / aquatic form
			return 2
		elseif DF:spell_exist(5487,nil,"player","HELPFUL|PLAYER",true) then
			-- form ours / bear form
			return 1
		elseif DF:spell_exist(768,nil,"player","HELPFUL|PLAYER",true) then
			-- form félin / cat form
			return 3
		elseif DF:spell_exist(40120,nil,"player","HELPFUL|PLAYER",true) or DF:spell_exist(33943,nil,"player","HELPFUL|PLAYER",true) then
			-- form vol / flight form
			return 6
		elseif DF:spell_exist(783,nil,"player","HELPFUL|PLAYER",true) then
			-- form voyage / travel form
			return 4
		elseif DF:spell_exist(24858,nil,"player","HELPFUL|PLAYER",true) then
			-- form sélénien / moonkin form
			return 5
		elseif DF:spell_exist(33891,nil,"player","HELPFUL|PLAYER",true) then
			-- form arbre de vie / tree of life form
			return 7
		else
			return 0
		end
	
	else
	
		local nbform=GetNumShapeshiftForms()
		local form=GetShapeshiftForm(true)
		return form
		
	end
		
end

function DF:form_goofForm(list,test)
	
	return list[test+1]
		
end

function DF:form_initStanceList()
	if DF.playerClass=="DRUID" then
		DF.locale["form1"]=DF.locale["bearform"]
		DF.locale["form2"]=DF.locale["aquaticform"]
		DF.locale["form3"]=DF.locale["catform"]
		DF.locale["form4"]=DF.locale["travelform"]
		DF.locale["form5"]=DF.locale["moonkinform"]
		DF.locale["form6"]=DF.locale["flightform"]
		DF.locale["form7"]=DF.locale["Tree"]
	elseif DF.playerClass=="PRIEST" then
		DF.locale["form1"]="Shadowform"
	elseif DF.playerClass=="ROGUE" then
		DF.locale["form1"]="Stealth"		
		DF.locale["form3"]="Shadow Dance"		
	elseif DF.playerClass=="WARRIOR" then
		DF.locale["form1"]="Battle Stance"		
		DF.locale["form2"]="Defensive Stance"
		DF.locale["form3"]="Berserker Stance"
	end
	
end
