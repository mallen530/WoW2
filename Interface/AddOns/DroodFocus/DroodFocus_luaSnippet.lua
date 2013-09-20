local DF = DF_namespace
DF.luaList ={}

DF.luaList ={
	{["texte"]="Blood in the water",["tooltip"]="Change rip icon with ferocious bite icon when target heal below 25%.",["valeur"]="1",["code"]=""
	.."local current = UnitHealth(\"target\")\n"
	.."local maxi = UnitHealthMax(\"target\")\n"
	.."if maxi>0 then\n"
	.."  percent = current/maxi\n"
	.."  if (percent<=0.25 and DF_namespace:spell_exist(1079,nil,\"target\",\"HARMFUL|PLAYER\",true)) then\n"
	.."    DF_namespace:icon_setTexture(DF_abiNum,\"Interface\\\\icons\\\\ability_druid_ferociousbite\")\n"
	.."  else\n"
	.."    DF_namespace:icon_setTexture(DF_abiNum,\"Interface\\\\icons\\\\ability_ghoulfrenzy\")\n"
	.."  end\n"
	.."else\n"
	.."  DF_namespace:icon_setTexture(DF_abiNum,\"Interface\\\\icons\\\\ability_ghoulfrenzy\")\n"
	.."end\n"
	.."return true\n"
	},
	{["texte"]="Combo points colors",["tooltip"]="Colorize CP in red at 5 points.",["valeur"]="2",["code"]=""
		.."local c = GetComboPoints(UnitHasVehicleUI(\"player\") and \"vehicle\" or \"player\", \"target\")\n"
		.."local cV=0.5\n"
		.."if c and c==5 then cV=0 end\n"
		.."for i = 1,5 do\n"
		.."  cp=DF_namespace:combo_getTexture(i)\n"
		.."  cp:SetVertexColor(1,cV,0)\n"
		.."end\n"
	},
}
