----------------------------------------------------------------------------------------------------
-- DroodFocus 4.1.3 - Tools
-- Meranannon - Discordia - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

local DF = DF_namespace
local PI2=(math.pi/2)
local _

function DF:updateWidgetValue(widgetName)
	if DF.environnement[widgetName] then
		DF.environnement[widgetName]:Hide()
		DF.environnement[widgetName]:Show()
	end
end

function DF:smoothRotate(value,max)
		local i2=PI2*value
		local ret=max*(math.sin(i2))
		return ret
end

function DF:smoothScale(value)
		local i2=PI2*value
		local ret=1*(math.sin(i2))
		if ret<0 then ret=0.01 end
		return ret
end

function DF:smoothAlpha(value,max)
		local i2=PI2*value
		local ret=max*(math.sin(i2))
		if ret<0 then ret=0 end
		if ret>1 then ret=1 end
		return ret
end

function DF:smoothAlphaIcons(value,imax)
		local i2=PI2*value
		local imax2=imax/2
		local ret=imax-(imax2*(math.sin(i2)))
		if ret<0 then ret=0 end
		if ret>1 then ret=1 end
		return ret
end

function DF:options_returnNumber(val)
	if val==nil then val=0 end
	local temp=tonumber(val)
	if temp==nil then temp=0 end
	return temp
end

function DF:options_returnText(val)
	local texte=""
	if type(val)=="number" then
		if math.floor(val)==val then
			texte=tostring(val)
		else
			texte=DF:doubleNumbers(val)
		end
	else
		texte=tostring(val)
	end
	return texte
end

function DF:debugLine(variable,valeur)
	DEFAULT_CHAT_FRAME:AddMessage(tostring(variable).." -> "..tostring(valeur));
end

function DF:numbers(valeur)
	
	if valeur==nil then valeur=0 end
	valeur=math.floor(valeur)
	return string.format("%d",valeur)

end

function DF:numbers2(valeur)
	
	if valeur==nil then valeur=0 end
	valeur=math.ceil(valeur)
	return string.format("%d",valeur)

end

function DF:numbers5(valeur,taille)
--	if taille==nil then taille=5 end
--	if valeur==nil then valeur=0 end
--	valeur=math.floor(valeur/taille)
--	valeur=valeur*taille
	return valeur

end

function DF:number(valeur)
	
	if valeur==nil then valeur=0 end
	return string.format("%d",valeur)

end

function DF:floatNumbers(valeur)
	if valeur==nil then valeur=0 end
	return string.format("%.1f",valeur)
end

function DF:kilo(valeur)
	if valeur==nil then valeur=0 end
	return string.format("%.1f",(valeur/1000))
end

function DF:doubleNumbers(valeur)
	if valeur==nil then valeur=0 end
	return string.format("%.2f",valeur)
end

function DF:RotateCoordPair (x,y,ox,oy,a,asp)
	y=y/asp
	oy=oy/asp
	return ox + (x-ox)*math.cos(a) - (y-oy)*math.sin(a),
		(oy + (y-oy)*math.cos(a) + (x-ox)*math.sin(a))*asp
end

function DF:RotateTextureFixe(thetexture,angled)
	angled=(angled+135) % 360
	local angle=math.rad(angled)
				
	local coords={tl={x=0,y=0},bl={x=0,y=1},tr={x=1,y=0},br={x=1,y=1}}
	local origin={x=0.5,y=0.5}
	local aspect=thetexture:GetWidth()/thetexture:GetHeight()
		
	local a1,b1=DF:RotateCoordPair(coords.tl.x,coords.tl.y,origin.x,origin.y,angle,aspect)
	local a2,b2=DF:RotateCoordPair(coords.bl.x,coords.bl.y,origin.x,origin.y,angle,aspect)
	local a3,b3=DF:RotateCoordPair(coords.tr.x,coords.tr.y,origin.x,origin.y,angle,aspect)
	local a4,b4=DF:RotateCoordPair(coords.br.x,coords.br.y,origin.x,origin.y,angle,aspect)
	
	thetexture:SetTexCoord(a1,b1,a2,b2,a3,b3,a4,b4)				
				
end

function DF:RotateTexture(thetexture,angled)
	local angle=math.rad(angled)
	thetexture:SetRotation(angle)
end

function DF:progressTexture(texture,frame,relativeRegion,sens,ratio,fill)

	local oLeft=0
	local oRight=1
	local oTop=0
	local oBottom=1
	local oWidth=frame:GetWidth()
	local oHeight=frame:GetHeight()
	local oOffx=0
	local oOffy=0
	local cWidth=oWidth
	local cHeight=oHeight

	if ratio==0 then ratio=0.01 end
	if ratio==1 then ratio=0.99 end

	if fill==1 then
		-- du bas
		oLeft=0
		oRight=1
		cWidth=oWidth
		oOffx=0
		if sens==1 then
			oTop=1-ratio
			oBottom=1
			cHeight=oHeight*ratio	
			oOffy=-(oHeight-cHeight)/2
		else
			ratio=1-ratio
			oTop=0
			oBottom=ratio
			cHeight=oHeight*ratio	
			oOffy=(oHeight-cHeight)/2
		end
	elseif fill==2 then
		-- du haut
		oLeft=0
		oRight=1
		oBottom=1
		cWidth=oWidth
		oOffx=0
		if sens==1 then
			oBottom=0+ratio
			cHeight=oHeight*ratio	
			oOffy=(oHeight-cHeight)/2
		else
			oTop=ratio
			cHeight=oHeight*(1-ratio)
			oOffy=-(oHeight-cHeight)/2		
		end
	elseif fill==3 then
		-- de gauche
		oTop=0
		oBottom=1
		cHeight=oHeight
		oOffy=0
		if sens==1 then
			oLeft=0
			oRight=0+ratio		
			cWidth=oWidth*ratio	
			oOffx=-(oWidth-cWidth)/2
		else
			oLeft=ratio
			oRight=1
			cWidth=oWidth*(1-ratio)
			oOffx=(oWidth-cWidth)/2		
		end
	elseif fill==4 then
		-- de droite
		oTop=0
		oBottom=1
		cHeight=oHeight
		oOffy=0
		if sens==1 then
			oLeft=1-ratio
			oRight=1
			cWidth=oWidth*ratio	
			oOffx=(oWidth-cWidth)/2
		else
			oLeft=0
			oRight=1-ratio
			cWidth=oWidth*(1-ratio)
			oOffx=-(oWidth-cWidth)/2
		end
		
	end

	frame:ClearAllPoints()
	texture:SetTexCoord(oLeft, oRight, oTop, oBottom);
	frame:SetWidth(cWidth)
	frame:SetHeight(cHeight)
	frame:SetPoint("CENTER", relativeRegion, "CENTER", oOffx, oOffy)	
	
end

function DF:minutesShort(valeur)
	
	if (not valeur) then
	
		return "-"
		
	else
		
		local minute = math.floor(valeur/60)
		return minute.."m"
		
	end
	
end

function DF:minutes(valeur,nonzero)
	
	if (not valeur or (valeur==0 and nonzero)) then
	
		return "-:--"
		
	else
		
		local minute = math.floor(valeur/60)
		local seconde = valeur-(minute*60)
		
		local secondes = string.format("%u",math.floor(seconde))
		local minutes=string.format("%u",minute)
		
		if string.len(secondes)==1 then
			secondes="0"..secondes
		end
	
		if (nonzero) then
			
			return minutes..":"..secondes
			
		else
			
			if minute>=1 then		
				return minutes..":"..secondes
			else
				return secondes
			end
			
		end
		
	end
	
end

function DF:rNumber(value)
	if value==nil then value=0 end
	local nombre=tonumber(value)
	return nombre
end

function DF:explode ( seperator, str ) 
 	local pos, arr = 0, {}
	for st, sp in function() return string.find( str, seperator, pos, true ) end do
		table.insert( arr, string.sub( str, pos, st-1 ) )
		pos = sp + 1
	end
	table.insert( arr, string.sub( str, pos ) )
	return arr
end

function DF:bit(p)
  return 2 ^ (p - 1)  -- 1-based indexing
end

function DF:hasbit(x, p)
 	return x % (p + p) >= p       
end

function DF:setbit(x, p)
  return DF:hasbit(x, p) and x or x + p
end

function DF:clearbit(x, p)
  return DF:hasbit(x, p) and x - p or x
end

function DF:MySetFont(obj,path,size,mode)
	local roundSize=math.floor(size)
	if roundSize<2 then
		roundSize=2
	end
	obj:SetFont(path,roundSize,mode)
	local police = obj:GetFont();
	if not police then
		obj:SetFont("Fonts\\FRIZQT__.TTF",roundSize,mode)
	end	
end

function DF:doubleAntiSlashes(data)

	local result = data:gsub(string.char(92), string.char(92,92))
	return result

end

function DF:formatText(maxi,current,formatChaine,timetodie)

	if maxi==0 then
		
		formatChaine=""
		
	else	
		
		formatChaine=formatChaine:gsub("#m", DF:numbers(maxi))
		formatChaine=formatChaine:gsub("#c", DF:numbers(current))
		formatChaine=formatChaine:gsub("#p", DF:numbers((current/maxi)*100))
	
		formatChaine=formatChaine:gsub("#M", DF:doubleNumbers(maxi/1000))
		formatChaine=formatChaine:gsub("#C", DF:doubleNumbers(current/1000))
		formatChaine=formatChaine:gsub("#P", DF:floatNumbers((current/maxi)*100))

		formatChaine=formatChaine:gsub("#t", DF:minutes(timetodie,true))

	end	
	
	return formatChaine
	
end

function DF:show_spellslist()

	--for i = 1, GetNumSpellTabs() do
	for i = 1, 2 do	
	   local name, empty, offset, numSpells = GetSpellTabInfo(i)
	   
	   if not name then
	      break;
	   end
   
	   for s = offset + 1, offset + numSpells do
	   	
	   	local	spell, rank = GetSpellBookItemName(s, BOOKTYPE_SPELL)
	   	local cdstart, cdduration, cdenable = GetSpellCooldown(s, BOOKTYPE_SPELL)
	   	local _, spellId = GetSpellBookItemInfo(s, BOOKTYPE_SPELL)

			DEFAULT_CHAT_FRAME:AddMessage(spell.." ("..rank..") : "..tostring(spellId));

	   end
	   
	end	
	
end

function DF:setMyFrameLevel(cadre,niveau,ffrom)
--	local nomCadre = cadre:GetName()
--	DEFAULT_CHAT_FRAME:AddMessage(tostring(nomCadre));
	cadre:SetFrameLevel(niveau)
end