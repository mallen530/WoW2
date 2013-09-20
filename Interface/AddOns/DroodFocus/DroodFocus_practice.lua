----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.8 - Practice
-- Author : Meranannon - Discordia - Vol'jin (EU)
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _

StaticPopupDialogs["PRACTICEUPD"] = {
	preferredIndex = 3,
  text = DF_namespace.locale["practiceupd"],
  button1 = DF_namespace.locale["repyes"],
  button2 = DF_namespace.locale["repno"],
	OnAccept = function()
		DF:practice_updateList()
	end,
	OnCancel = function()
		DF:practice_clearList()
	end,  
  timeout = 0,
  whileDead = true,
  hideOnEscape = true,
};

DF.practiceList ={}

local tempo=0

-- construction de la liste des sorts a partir du grimoire et fusion des 2 listes
function DF:practice_clearList()

	if DF.practiceList then
		DF.practiceList=table.wipe(DF.practiceList)
	end

end

function DF:practice_addBuff(lid)
	
	if DF.practiceList[lid]==nil then
		DF.practiceList[lid]={}
		DF.practiceList[lid].stype=1
	end
	
end

function DF:practice_addDebuff(lid)
	
	if DF.practiceList[lid]==nil then
		DF.practiceList[lid]={}
		DF.practiceList[lid].stype=2
	end
	
end

function DF:practice_scanner(elapsed)

	local name
	local duree
	local spellId

	if DF.practiceNotRunning then return end

	tempo=tempo+elapsed
	if tempo<1 then return end
	tempo=0

	-- enregistre les buffs/debuffs
	local index,name,debuffType,unitCaster, spellId=nil
	
	-- scan buff
	if DF.practiceCheckBuff then
		
		index=1
		while true do 
			
			name, _, _, _, _, duree, _, _, _, _, spellId = UnitAura("player", index, "HELPFUL|PLAYER") 
	
			-- plus de nom la liste est finie
			if not name then
				break;
			end
			
			-- ajoute le buff a la liste
			if ((duree and duree>0) or DF.practiceCheckAura) then
				DF:practice_addBuff(spellId)		
			end
			
			index=index+1
			
		end
	end
	
	-- scan debuff
	if DF.practiceCheckDebuff then
	
		index=1
		while true do 
			
			name, _, _, _, _, duree, _, _, _, _, spellId = UnitAura("playertarget", index, "HARMFUL|PLAYER") 
	
			-- plus de nom la liste est finie
			if not name then
				break;
			end
	
			-- ajoute le debuff a la liste
			if ((duree and duree>0) or DF.practiceCheckAura) then
				DF:practice_addDebuff(spellId)		
			end
			
			index=index+1
			
		end
	end
	
end

function DF:practice_updateList()
	
	local lenom
	local stype
	
	for index, _ in pairs(DF.practiceList) do
	
		lenom = GetSpellInfo(index)
		stype = DF.practiceList[index].stype
		
		if lenom then
				
			-- vérifier si le sort n'existe pas dajà dans la liste actuelle
			if not DF:practice_checkList(index) then
			
				-- ajoute a la liste de DF
				table.insert(DF_config.spells, 1, {})
				DF:copyTable(DF.DefaultSpell,DF_config.spells[1],true)
				DF_config.spells[1].spellIDs=tostring(index)
				
				if stype==1 then
					DF_config.spells[1].sType="BuffPlayer"
					DF_config.spells[1].icon=0
					DF_config.spells[1].timerbar=1
				elseif stype==2 then
					DF_config.spells[1].sType="DebuffTarget"
					DF_config.spells[1].icon=1
					DF_config.spells[1].timerbar=0
				end	
			
			end		
			
		end
	
	end
	DEFAULT_CHAT_FRAME:AddMessage("Pratice: Spells list updated.");		
	
	DF:spells_list_reinit()
	
end

function DF:practice_checkList(spellid)
	
	local nbSpells = getn(DF_config.spells)
	
	for i = 1,nbSpells do
		
		local temp=DF:explode ( ";", DF_config.spells[i].spellIDs )

		local nbIds = getn(temp)

		for ide = 1,nbIds do	
			
			if tonumber(temp[ide])==tonumber(spellid) then
				return true
			end		
			
		end
		
	end	
	
	return false
	
end

function DF:practice_toggle()
	if DF.practiceNotRunning==false then
		DF:practice_clearList()
		DEFAULT_CHAT_FRAME:AddMessage("Practice: ON");
	else
		DEFAULT_CHAT_FRAME:AddMessage("Practice: OFF");
		StaticPopup_Show("PRACTICEUPD");				
	end
	
end