local DF = DF_namespace
local _

function DF:range_isInRange()

	local unit = "playertarget"
	local name
	if not UnitExists(unit) or not UnitIsVisible(unit) or UnitIsDead(unit) then
		return 0
	end

	if UnitIsFriend(unit,"player") then

		name=GetSpellInfo(DF_config.range.range1)	
		if not name then return 0 end
		
   	if IsSpellInRange(name,unit)==1 then
   		return 1
   	else
   		return 2
   	end
   	
	else
	
		name=GetSpellInfo(DF_config.range.range2)	
 		if not name then return 0 end

  	if IsSpellInRange(name,unit)==1 then
   		return 1
   	else
   		return 2
   	end		
   	
	end
	
	return 0
	
end

