----------------------------------------------------------------------------------------------------
-- DroodFocus 4.0.0 - combat
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local _
local inCombat=false
local totalTime=0
local startTime=0
local endTime=0

function DF:combat_set_state(cbflag)
	
	if cbflag==true and inCombat==false then
		
		startTime=DF.currentTime
		endTime=0
		
	elseif cbflag==false and inCombat==true then
		
		endTime=DF.currentTime
		
	end
	
	inCombat=cbflag
	
end

function DF:inCombat()
	
	return inCombat
	
end

function DF:combatTime()
	local result
	if (endTime>startTime) then
		result=endTime-startTime
		return result
	else
		return 0
	end

end
