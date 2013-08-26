
PitBull4DB = {
	["namespaces"] = {
		["LeaderIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
		["RangeFader"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = true,
						},
						["Min Party"] = {
							["enabled"] = true,
						},
						["Minimal"] = {
							["enabled"] = true,
						},
					},
				},
			},
		},
		["Border"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["PhaseIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["Min Party"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["Minimal"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
					},
				},
			},
		},
		["ComboPoints"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["Min Party"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["Minimal"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
					},
				},
			},
		},
		["RoleIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
							["position"] = 1.00002,
						},
						["Min Party"] = {
							["enabled"] = false,
							["position"] = 1.00002,
						},
						["Minimal"] = {
							["enabled"] = false,
							["position"] = 1.00002,
						},
					},
				},
			},
		},
		["Aggro"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["Chi"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["MasterLooterIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["CombatText"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["ReadyCheckIcon"] = {
		},
		["Totems"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["Portrait"] = {
		},
		["ExperienceBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["RaidTargetIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["position"] = 1.00001,
							["location"] = "out_top",
							["size"] = 1.5,
						},
						["Min Party"] = {
							["position"] = 1.00001,
							["location"] = "out_top",
							["size"] = 1.5,
						},
						["Minimal"] = {
							["position"] = 1.00001,
							["location"] = "in_top_left",
							["size"] = 1.5,
						},
					},
				},
			},
		},
		["CastBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["HostilityFader"] = {
		},
		["LuaTexts"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Eclipse"] = {
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["exists"] = true,
									["code"] = "return math.abs(Power(unit,SPELL_POWER_ECLIPSE))\n",
									["location"] = "center",
									["attach_to"] = "Eclipse",
								},
								["Lua:Power"] = {
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
								},
								["Lua:Reputation"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["exists"] = true,
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
								},
								["Lua:Name"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
								},
								["Lua:Threat"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
								},
								["Lua:Experience"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
								},
								["Lua:Cast"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
								},
								["Lua:Alternate power"] = {
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "AltPowerBar",
								},
								["Lua:Cast time"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
								},
								["Lua:PVPTimer"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["exists"] = true,
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
								},
								["Lua:Class"] = {
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
								},
								["Lua:Druid mana"] = {
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Demonic fury"] = {
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["exists"] = true,
									["code"] = "return \"%s/%s\",Power(unit,SPELL_POWER_DEMONIC_FURY),MaxPower(unit,SPELL_POWER_DEMONIC_FURY)\n",
									["location"] = "center",
									["attach_to"] = "DemonicFury",
								},
							},
						},
						["Min Tar"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Eclipse"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["exists"] = true,
									["code"] = "return math.abs(Power(unit,SPELL_POWER_ECLIPSE))\n",
									["location"] = "center",
									["attach_to"] = "Eclipse",
								},
								["Lua:Experience"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
								},
								["Lua:Name"] = {
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "HealthBar",
									["font"] = "ABF",
									["exists"] = true,
									["location"] = "center",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["size"] = 2.25,
								},
								["Lua:Reputation"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["exists"] = true,
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
								},
								["Lua:Druid mana"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Threat"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
								},
								["Health"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["position"] = 1.00003,
									["location"] = "center",
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s%%\",Percent(HP(unit),MaxHP(unit))",
									["attach_to"] = "BlankSpace;Default",
									["size"] = 1.15,
								},
								["Lua:Alternate power"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "AltPowerBar",
								},
								["Lua:Cast"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
								},
								["Lua:Cast time"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["exists"] = true,
									["position"] = 1.00001,
									["location"] = "out_left",
									["code"] = "return VeryShort(HP(unit))",
									["attach_to"] = "BlankSpace;Default",
									["size"] = 1.15,
								},
								["Lua:PVPTimer"] = {
									["enabled"] = false,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["exists"] = true,
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
								},
								["Lua:Class"] = {
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "center",
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["attach_to"] = "PowerBar",
									["size"] = 1.15,
								},
								["Lua:Power"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
								},
								["Lua:Demonic fury"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["exists"] = true,
									["code"] = "return \"%s/%s\",Power(unit,SPELL_POWER_DEMONIC_FURY),MaxPower(unit,SPELL_POWER_DEMONIC_FURY)\n",
									["location"] = "center",
									["attach_to"] = "DemonicFury",
								},
							},
						},
						["Min Party"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Eclipse"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "return math.abs(Power(unit,SPELL_POWER_ECLIPSE))\n",
									["location"] = "center",
									["attach_to"] = "Eclipse",
								},
								["Lua:Reputation"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
								},
								["Lua:Power"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
								},
								["Power"] = {
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["exists"] = true,
									["position"] = 1.00002,
									["location"] = "left",
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit),max)\nend",
									["attach_to"] = "BlankSpace;Default",
								},
								["Lua:Experience"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
								},
								["Lua:Name"] = {
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "HealthBar",
									["font"] = "ABF",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["location"] = "center",
									["exists"] = true,
									["size"] = 2.25,
								},
								["Lua:Threat"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
								},
								["Lua:Cast"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
								},
								["Lua:PVPTimer"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
								},
								["Lua:Cast time"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
								},
								["Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["exists"] = true,
									["position"] = 1.00003,
									["location"] = "right",
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s%%\",Percent(HP(unit),MaxHP(unit))",
									["attach_to"] = "BlankSpace;Default",
									["size"] = 1.15,
								},
								["Lua:Health"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_HEALTH"] = true,
									},
									["position"] = 1.00001,
									["location"] = "out_left",
									["code"] = "return VeryShort(HP(unit))",
									["attach_to"] = "BlankSpace;Default",
									["size"] = 1.15,
								},
								["Lua:Alternate power"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "AltPowerBar",
								},
								["Lua:Class"] = {
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "center",
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["attach_to"] = "PowerBar",
									["size"] = 1.15,
								},
								["Lua:Druid mana"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Demonic fury"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "return \"%s/%s\",Power(unit,SPELL_POWER_DEMONIC_FURY),MaxPower(unit,SPELL_POWER_DEMONIC_FURY)\n",
									["location"] = "center",
									["attach_to"] = "DemonicFury",
								},
							},
						},
						["Minimal"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Eclipse"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "return math.abs(Power(unit,SPELL_POWER_ECLIPSE))\n",
									["location"] = "center",
									["attach_to"] = "Eclipse",
								},
								["Lua:Reputation"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
								},
								["Lua:Druid mana"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Experience"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
								},
								["Lua:Name"] = {
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "HealthBar",
									["font"] = "ABF",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["location"] = "out_left",
									["exists"] = true,
									["size"] = 2.25,
								},
								["Lua:Threat"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
								},
								["Lua:Cast time"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
								},
								["Lua:PVPTimer"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
								},
								["Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["exists"] = true,
									["position"] = 1.00003,
									["location"] = "right",
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s%%\",Percent(HP(unit),MaxHP(unit))",
									["attach_to"] = "PowerBar",
									["size"] = 3,
								},
								["Lua:Cast"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_HEALTH"] = true,
									},
									["position"] = 1.00001,
									["location"] = "out_left",
									["code"] = "return VeryShort(HP(unit))",
									["attach_to"] = "BlankSpace;Default",
									["size"] = 1.15,
								},
								["Lua:Alternate power"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "AltPowerBar",
								},
								["Lua:Class"] = {
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "out_left",
									["exists"] = true,
									["attach_to"] = "PowerBar",
									["size"] = 1.15,
								},
								["Lua:Power"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
								},
								["Lua:Demonic fury"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "return \"%s/%s\",Power(unit,SPELL_POWER_DEMONIC_FURY),MaxPower(unit,SPELL_POWER_DEMONIC_FURY)\n",
									["location"] = "center",
									["attach_to"] = "DemonicFury",
								},
							},
						},
					},
				},
			},
		},
		["Aura"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["CombatIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["DruidManaBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["PowerBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["background_alpha"] = 0,
							["size"] = 5,
							["alpha"] = 0,
						},
						["Min Party"] = {
							["background_alpha"] = 0,
							["size"] = 5,
							["alpha"] = 0,
						},
						["Minimal"] = {
							["background_alpha"] = 0,
							["size"] = 7,
							["alpha"] = 0,
						},
					},
				},
			},
		},
		["HideBlizzard"] = {
		},
		["ReputationBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["RestIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["Min Party"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["Minimal"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
					},
				},
			},
		},
		["HealthBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["background_alpha"] = 0,
							["alpha"] = 0,
						},
						["Min Party"] = {
							["background_alpha"] = 0,
							["alpha"] = 0,
						},
						["Minimal"] = {
							["background_alpha"] = 0,
							["alpha"] = 0,
						},
					},
				},
			},
		},
		["Highlight"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["QuestIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
							["position"] = 1.00002,
						},
						["Min Party"] = {
							["enabled"] = false,
							["position"] = 1.00002,
						},
						["Minimal"] = {
							["enabled"] = false,
							["position"] = 1.00002,
						},
					},
				},
			},
		},
		["VoiceIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["VisualHeal"] = {
		},
		["PvPIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["Min Party"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["Minimal"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
					},
				},
			},
		},
		["CombatFader"] = {
		},
		["BattlePet"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
							["position"] = 1.00003,
						},
						["Min Party"] = {
							["enabled"] = false,
							["position"] = 1.00003,
						},
						["Minimal"] = {
							["enabled"] = false,
							["position"] = 1.00003,
						},
					},
				},
			},
		},
		["AltPowerBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
							["position"] = 3.00001,
						},
						["Min Party"] = {
							["enabled"] = false,
							["position"] = 3.00001,
						},
						["Minimal"] = {
							["enabled"] = false,
							["position"] = 3.00001,
						},
					},
				},
			},
		},
		["BlankSpace"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
						},
						["Min Tar"] = {
							["enabled"] = true,
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["alpha"] = 0,
									["exists"] = true,
									["position"] = 10.00001,
								},
							},
						},
						["Min Party"] = {
							["enabled"] = true,
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["alpha"] = 0,
									["exists"] = true,
									["position"] = 10.00001,
								},
							},
						},
						["Minimal"] = {
							["enabled"] = true,
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["alpha"] = 0,
									["exists"] = true,
									["position"] = 10.00001,
								},
							},
						},
					},
				},
			},
		},
		["ThreatBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["Background"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["Sounds"] = {
		},
		["CastBarLatency"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Min Tar"] = {
							["enabled"] = false,
						},
						["Min Party"] = {
							["enabled"] = false,
						},
						["Minimal"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
	},
	["global"] = {
		["config_version"] = 2,
	},
	["profileKeys"] = {
		["Orstout - Aerie Peak"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"MONK", -- [4]
				"PRIEST", -- [5]
				"SHAMAN", -- [6]
				"DRUID", -- [7]
				"ROGUE", -- [8]
				"MAGE", -- [9]
				"WARLOCK", -- [10]
				"HUNTER", -- [11]
			},
			["layouts"] = {
				["Normal"] = {
					["exists"] = true,
				},
				["Min Tar"] = {
					["font"] = "SSPro - Semibold",
					["exists"] = true,
					["size_x"] = 125,
					["scale"] = 0.75,
					["bar_texture"] = "Minimalist",
				},
				["Min Party"] = {
					["font"] = "SSPro - Semibold",
					["exists"] = true,
					["size_x"] = 125,
					["scale"] = 0.8,
					["bar_texture"] = "Minimalist",
				},
				["Minimal"] = {
					["font"] = "SSPro - Semibold",
					["exists"] = true,
					["size_x"] = 125,
					["bar_texture"] = "Minimalist",
				},
			},
			["made_groups"] = true,
			["units"] = {
				["targettargettarget"] = {
					["enabled"] = false,
					["position_x"] = -373.252685546875,
					["position_y"] = 188.4864501953125,
				},
				["focustarget"] = {
					["enabled"] = false,
					["position_x"] = -485.3422241210938,
					["position_y"] = 128.4863891601563,
				},
				["targettarget"] = {
					["position_x"] = -0.5189208984375,
					["position_y"] = -270.1044311523438,
					["layout"] = "Min Tar",
				},
				["player"] = {
					["position_x"] = -175,
					["position_y"] = -275,
					["layout"] = "Minimal",
				},
				["focus"] = {
					["enabled"] = false,
					["position_x"] = 589.27197265625,
					["position_y"] = -212.0464172363281,
					["layout"] = "Min Tar",
				},
				["target"] = {
					["horizontal_mirror"] = true,
					["layout"] = "Minimal",
					["position_y"] = -275,
					["position_x"] = 175,
				},
				["pet"] = {
					["enabled"] = false,
					["position_x"] = -367.5897827148438,
					["position_y"] = 363.626708984375,
				},
				["focustargettarget"] = {
					["enabled"] = false,
					["position_x"] = -49.3603515625,
					["position_y"] = 377.8011474609375,
				},
				["pettarget"] = {
					["enabled"] = false,
					["position_x"] = -70.61065673828125,
					["position_y"] = -20.5484619140625,
				},
			},
			["groups"] = {
				["Party"] = {
					["direction"] = "up_right",
					["position_x"] = -969.1875732421875,
					["enabled"] = true,
					["layout"] = "Min Party",
					["exists"] = true,
					["position_y"] = -390.603369140625,
					["sort_direction"] = "DESC",
				},
				["Party pets"] = {
					["position_x"] = -662.2124633789063,
					["unit_group"] = "partypet",
					["exists"] = true,
					["position_y"] = 80.761962890625,
				},
				["Raid 10m"] = {
					["direction"] = "up_right",
					["position_x"] = -944.9872924804688,
					["group_filter"] = "1,2,3,4,5,6,7,8",
					["group_by"] = "GROUP",
					["enabled"] = true,
					["horizontal_spacing"] = 100,
					["layout"] = "Min Party",
					["unit_group"] = "raid",
					["exists"] = true,
					["position_y"] = -394.690234375,
					["sort_direction"] = "DESC",
					["units_per_column"] = 5,
					["show_when"] = {
						["raid10"] = true,
					},
				},
			},
			["minimap_icon"] = {
				["hide"] = true,
			},
		},
	},
}
