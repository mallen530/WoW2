----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - toggle
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local DFenable = true
local _

function DF:toggle_toggle()

	local showIt = DF:form_goofForm(DF_config.activeForms,DF:currentForm())
	
	if not DF.configmode then

		if DF_config.inCombat and not DF:inCombat() then
			showIt=false
		end

		if DF_config.haveTarget and not DF.haveTarget then
			showIt=false
		end

		if DF_config.notMounted and IsMounted() then
			showIt=false
		end
		
	else
		
		showIt=true
		
	end

	DFenable=showIt	
	DF:toggle_change(showIt)
	
end

function DF:toggle_isEnable()
	return DFenable
end

function DF:toggle_change(flag)
		
	for i = 1,4 do
		
		if flag==true then
			DF.anchor[i].base:Show()
		else
			DF.anchor[i].base:Hide()
		end
		
	end

	if flag==true then
		DF.anchor[7].base:Show()
	else
		DF.anchor[7].base:Hide()
	end
	
end