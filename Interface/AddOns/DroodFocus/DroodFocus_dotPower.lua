local DF = DF_namespace
local _

DF.dotPowerDatas={}

DF.dotPowerDatas[1822]={
	-- RAKE
	base=99,				--	base damage
	baseap=0.30665,	--	damage give by power attack
	basecp=0,				--	base damage per combo point (if spell use combo point, else zero)
}

DF.dotPowerDatas[1079]={
	-- RIP
	base=112.76,
	baseap=0.0484,
	basecp=320,
}

DF.dotPowerDatas[106830]={
	-- THRASH
	base=686,
	baseap=0.0936,
	basecp=0,
}

function DF:GetBleedAbilityDamageCoefficient(docActive)
    local _, _, _, _, _, _, damageCoeff = UnitDamage("player");
    local masteryCoeff = 1 + GetMastery() / 8 * 0.2504
    local docCoeff = 1
		if docActive then docCoeff = 1.30 end		
    local result = masteryCoeff * damageCoeff * docCoeff
    return result
end

function DF:GetDotPower(spellid,docActive,forceCP)
   
		local base, posBuff, negBuff
 		local AP
    local bleedCoeff
    local CP = DF.comboPoints
    local dotPower=0
    local bleedBase
    
    if DF.dotPowerDatas[spellid] then
			
			base, posBuff, negBuff = UnitAttackPower("player")
			AP = base+posBuff+negBuff 
			bleedCoeff = DF:GetBleedAbilityDamageCoefficient(docActive)
			
	    if forceCP then CP=forceCP end
	    if DF.dotPowerDatas[spellid].basecp==0 then CP=1 end
	    
	    bleedBase = (DF.dotPowerDatas[spellid].base+(DF.dotPowerDatas[spellid].basecp*CP))+((DF.dotPowerDatas[spellid].baseap*AP)*CP)
	    
	    dotPower = bleedCoeff * bleedBase
	    
	  end
	  
    return dotPower
    
end

function DF:GetAbiPower(spellid)
	local targetID=UnitGUID("playertarget")
	if targetID and DF.abiPowers[targetID] and DF.abiPowers[targetID][spellid] then
		return DF.abiPowers[targetID][spellid]
	else
		return nil
	end
end

