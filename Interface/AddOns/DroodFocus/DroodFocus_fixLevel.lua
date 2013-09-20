local DF = DF_namespace
local _
local _G = getfenv(0);

local isDebug=false
local isDebugFix=false

local targetFramesFilter ={
"CharacterStats",
"PaperDoll",
"Glyph",
"EncounterJournal",
"Auction",
"BrowseB",
"Achievement",
"Arch-",
"Archaeology",
"Arena",
"Barbershop",
"BlackMarket",
"Challenges",
"UI-EJ",
"Encounter",
"GuildBank",
"RankChange",
"Guild",
"Inspect",
"Ethereal",
"ItemSocketing",
"ItemUpgrade",
"Macro",
"PetBattle",
"PetBattle",
"PetList",
"BattleSlot",
"PetCard",
"Reforging",
"PlayerSpec",
"PlayerTalent",
"QuestLog",
"Token",
"TradeSkill",
"ClassTrainer",
}

local function isOnList(nom)

	if not nom then return false end
	
	local nb = getn(targetFramesFilter)
	
	for i = 1,nb do
		
		if string.find(nom, targetFramesFilter[i]) then
			return true
		end
		
	end
	
	return false
	
end

local function SetLevel(objet)

	local parent
  local objetLevel
	local parentLevel
				  
	if objet then
					
		if isDebug then
			DEFAULT_CHAT_FRAME:AddMessage("Check: "..tostring(objet:GetName()))
		end
								
	  if objet.SetFrameLevel and objet.GetFrameLevel then
		
		  parent = objet:GetParent()
		
		  if parent and parent.GetFrameLevel then
			
				parentLevel=parent:GetFrameLevel()
				objetLevel = objet:GetFrameLevel()
				
				if parentLevel and objetLevel and objetLevel<=parentLevel then
					
					objet:SetFrameLevel(parentLevel+1)
					
					if isDebugFix then
						DEFAULT_CHAT_FRAME:AddMessage(tostring(objet:GetName()).." fixed to "..tostring(parentLevel+1))
					end
							
				end
				
			end
		
		end

	end
	  
end

local function checkLevel(frametype,nom)

	local objet
	local childrens

	if isDebug then
		DEFAULT_CHAT_FRAME:AddMessage("Create: "..tostring(nom))
	end
			
	if nom and type(nom)=="string" then	

		objet=_G[nom]		  
	
		if objet then
		
			if objet.SetFrameLevel then
	
				if isOnList(nom) then
	
					SetLevel(objet)
						
					childrens = {objet:GetChildren()}
					
					for _, child in ipairs(childrens) do
						
					  SetLevel(child)
					  
					end

				end
			
			end
			
		end

	else
	
		if isDebug then
			DEFAULT_CHAT_FRAME:AddMessage("FixLevel: Not a valide name")
		end	
		
	end
	  
end

function DF:strata_fixAllFrames()
	
  -- local cadre = EnumerateFrames()
	-- local nom
	
  -- while cadre do
	  
	  -- nom=cadre:GetName()
	  
		-- checkLevel(nil,nom)
		  
    -- cadre = EnumerateFrames(cadre)
    
  -- end
  
end

function DF_strata_fixLevel_CreateFrame(...)

	checkLevel(...)

end


