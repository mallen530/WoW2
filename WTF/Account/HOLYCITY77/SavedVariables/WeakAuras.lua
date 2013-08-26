
WeakAurasSaved = {
	["login_squelch_time"] = 5,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -28.9755859375,
		["yOffset"] = -391.78564453125,
		["height"] = 492,
		["width"] = 630,
	},
	["tempIconCache"] = {
		["Shuffle"] = "Interface\\Icons\\ability_monk_shuffle",
		["Moderate Stagger"] = "INTERFACE\\ICONS\\priest_icon_chakra",
		["Fortifying Brew"] = "Interface\\Icons\\ability_monk_fortifyingale",
		["Healing Sphere"] = "Interface\\Icons\\ability_monk_healthsphere",
		["Tiger Power"] = "Interface\\Icons\\ability_monk_tigerpalm",
		["Bastion of Glory"] = "Interface\\Icons\\achievement_dungeon_ulduarraid_misc_03",
		["Sanctuary of the Ox"] = "Interface\\Icons\\monk_ability_summonoxstatue",
		["Power Guard"] = "Interface\\Icons\\Ability_Warrior_ShieldBash",
		["Elusive Brew"] = "Interface\\Icons\\spell_brew_wheat",
		["Killing Machine"] = "Interface\\Icons\\INV_Sword_122",
		["Dark Succor"] = "Interface\\Icons\\Spell_DeathKnight_Butcher2",
		["Weakened Blows"] = "Interface\\Icons\\INV_Relics_TotemofRage",
		["Light Stagger"] = "INTERFACE\\ICONS\\priest_icon_chakra_green",
		["Zen Sphere"] = "Interface\\Icons\\ability_monk_forcesphere",
		["Vital Mists"] = "Interface\\Icons\\ability_shaman_repulsiontotem",
		["Serpent's Zeal"] = "Interface\\Icons\\ability_monk_ascension",
		["Mana Tea"] = "Interface\\Icons\\inv_misc_herb_jadetealeaf",
		["Sacred Shield"] = "Interface\\Icons\\Ability_Paladin_BlessedMending",
		["Frigid Assault"] = "Interface\\Icons\\Ability_Mage_DeepFreeze",
		["Guard"] = "Interface\\Icons\\ability_monk_guard",
		["Righteous Fury"] = "Interface\\Icons\\Spell_Holy_SealOfFury",
		["Heavy Stagger"] = "INTERFACE\\ICONS\\priest_icon_chakra_red",
		["Freezing Fog"] = "Interface\\Icons\\Spell_Frost_ArcticWinds",
		["Spinning Crane Kick"] = "Interface\\Icons\\ability_monk_cranekick_new",
	},
	["displays"] = {
		["RJW"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_never"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
				["level_operator"] = ">",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["use_class"] = true,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["parent"] = "Monk Mainbar 2",
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Rushing Jade Wind", -- [1]
				},
				["use_spellId"] = true,
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "RJW",
			["xOffset"] = -340,
			["frameStrata"] = 5,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["yOffset"] = -160,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Serpent's Zeal"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s, %p",
			["load"] = {
				["use_never"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
				["level_operator"] = ">",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["use_class"] = true,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["parent"] = "Monk Mainbar 2",
			["untrigger"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Serpent's Zeal", -- [1]
				},
				["use_spellId"] = true,
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["yOffset"] = -160,
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["customTextUpdate"] = "update",
			["id"] = "Serpent's Zeal",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = -340,
			["frameStrata"] = 5,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Holy Prism"] = {
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["xOffset"] = 272.1427001953125,
			["parent"] = "Holy CDs",
			["load"] = {
				["use_never"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_difficulty"] = false,
				["use_combat"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["ten"] = true,
						["party"] = true,
						["twentyfive"] = true,
					},
				},
			},
			["color"] = {
				0.9803921568627451, -- [1]
				0.9803921568627451, -- [2]
				0.9803921568627451, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 114165,
			},
			["regionType"] = "icon",
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["numTriggers"] = 1,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["spellName"] = 114165,
				["ownOnly"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["use_inverse"] = false,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Holy Prism",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["width"] = 45,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slideright",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 45,
			["yOffset"] = -103.5714111328125,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Frost Rune 1 2"] = {
			["color"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["xOffset"] = -50,
			["id"] = "Frost Rune 1 2",
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Death Knight Rune",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["use_deathRune"] = false,
				["use_power"] = true,
				["rune"] = 5,
				["power"] = "3",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["selfPoint"] = "LEFT",
			["numTriggers"] = 1,
			["width"] = 50,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Runes Blood",
		},
		["Notice Group"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Statue", -- [1]
				"RushingJadeWind", -- [2]
				"Touch of Death", -- [3]
			},
			["animate"] = false,
			["xOffset"] = 161,
			["regionType"] = "dynamicgroup",
			["border"] = "None",
			["yOffset"] = -50,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["sort"] = "none",
			["radius"] = 200,
			["space"] = 5,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["id"] = "Notice Group",
			["backgroundInset"] = 0,
			["align"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "BOTTOM",
			["frameStrata"] = 1,
			["width"] = 40.00018310546875,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["height"] = 130.0000305175781,
			["borderOffset"] = 16,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["DH CD 2.0"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["spellName"] = 122278,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellId"] = "115308",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_spellName"] = true,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_spellId"] = true,
				["spellName"] = 122278,
			},
			["text"] = false,
			["barColor"] = {
				1, -- [1]
				0.2078431372549019, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Monk CD Group",
			["yOffset"] = 0,
			["textSize"] = 12,
			["height"] = 30,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = 14,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
			},
			["stickyDuration"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = true,
			["barInFront"] = true,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["auto"] = true,
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["timerSize"] = 12,
			["id"] = "DH CD 2.0",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.5,
			["width"] = 30,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["displayTextLeft"] = "%n",
			["orientation"] = "VERTICAL_INVERSE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LC"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 116849,
			},
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "LC",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 5,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 116849,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["height"] = 38.75,
			["xOffset"] = 144,
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Righteous Fury"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = 0,
			["borderBackdrop"] = "Blizzard Tooltip",
			["untrigger"] = {
			},
			["scale"] = 1,
			["borderSize"] = 16,
			["border"] = false,
			["yOffset"] = 70,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderEdge"] = "None",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["additional_triggers"] = {
			},
			["model_z"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.mp3",
					["do_sound"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Righteous Fury",
			["borderOffset"] = 5,
			["advance"] = false,
			["model_path"] = "SPELLS/BattleShout_Cast_Base.m2",
			["trigger"] = {
				["names"] = {
					"Righteous Fury", -- [1]
				},
				["type"] = "aura",
				["inverse"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 1680,
			["rotation"] = 0,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["height"] = 819,
			["regionType"] = "model",
			["load"] = {
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sequence"] = 1,
		},
		["BoG Stacks"] = {
			["outline"] = true,
			["xOffset"] = 0,
			["displayText"] = "%s",
			["yOffset"] = 60,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["names"] = {
					"Bastion of Glory", -- [1]
				},
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = true,
			["font"] = "Arial Narrow",
			["height"] = 24.38094902038574,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 26,
			["displayStacks"] = "%s",
			["regionType"] = "text",
			["untrigger"] = {
			},
			["stacksPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "BoG Stacks",
			["justify"] = "LEFT",
			["frameStrata"] = 1,
			["width"] = 14.47620582580566,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["color"] = {
				0.9803921568627451, -- [1]
				0.9607843137254902, -- [2]
				1, -- [3]
				0.449999988079071, -- [4]
			},
			["additional_triggers"] = {
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				0.8705882352941177, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["ZM CD 2.0"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["spellName"] = 115176,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellId"] = "115308",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_spellName"] = true,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_spellId"] = true,
				["spellName"] = 115176,
			},
			["text"] = false,
			["barColor"] = {
				0.1411764705882353, -- [1]
				0.7647058823529411, -- [2]
				0.4156862745098039, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Monk CD Group",
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 30,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textSize"] = 12,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = "%n",
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "ZM CD 2.0",
			["auto"] = true,
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.5,
			["width"] = 30,
			["stacks"] = true,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["orientation"] = "VERTICAL_INVERSE",
			["barInFront"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Death Rune 2 2"] = {
			["color"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["xOffset"] = -50,
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["id"] = "Death Rune 2 2",
			["additional_triggers"] = {
			},
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["use_rune"] = true,
				["use_power"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Death Knight Rune",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["use_deathRune"] = true,
				["use_inverse"] = true,
				["rune"] = 6,
				["power"] = "5",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["width"] = 50,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Runes Blood",
		},
		["Unholy Rune 2"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Frost",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["power"] = "5",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["rune"] = 4,
				["use_inverse"] = true,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["desaturate"] = false,
			["selfPoint"] = "LEFT",
			["additional_triggers"] = {
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["color"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["id"] = "Unholy Rune 2",
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
		},
		["D Rune 3 CD 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = true,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 3,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["icon"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["textSize"] = 12,
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["border"] = true,
			["borderSize"] = 5,
			["barInFront"] = true,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["stacksFont"] = "Friz Quadrata TT",
			["height"] = 11.33827686309815,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "D Rune 3 CD 2",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["desaturateForeground"] = false,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["user_y"] = 0,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Blood",
		},
		["HS"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Monk Mainbar 2",
			["stacksFlags"] = "None",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -120,
			["anchorPoint"] = "CENTER",
			["barInFront"] = true,
			["xOffset"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "124458",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["names"] = {
					"Healing Sphere", -- [1]
				},
				["use_spellId"] = true,
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["useCount"] = true,
				["fullscan"] = true,
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["stickyDuration"] = false,
			["textSize"] = 12,
			["font"] = "ElvUI Font",
			["height"] = 38.75,
			["frameStrata"] = 1,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_level"] = true,
				["level_operator"] = ">",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["level"] = "60",
				["use_class"] = true,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["stacks"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "HS",
			["timerSize"] = 12,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "icon",
			["borderSize"] = 16,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["borderOffset"] = 5,
			["stacksContainment"] = "INSIDE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["texture"] = "VuhDo - Polished Wood",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0.2,
			["displayTextRight"] = "%s",
			["stacksFont"] = "ElvUI Font",
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 38.75,
			["icon"] = true,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["orientation"] = "HORIZONTAL",
			["displayTextLeft"] = "%n",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Blood Rune 2"] = {
			["color"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Frost",
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "LEFT",
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["additional_triggers"] = {
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["id"] = "Blood Rune 2",
			["numTriggers"] = 1,
			["trigger"] = {
				["use_rune"] = true,
				["use_power"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["power"] = "2",
				["power_operator"] = ">=",
				["use_inverse"] = true,
				["rune"] = 2,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
			},
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -50,
		},
		["JST 2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["id"] = "JST 2",
			["untrigger"] = {
				["spellName"] = 116847,
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 116847,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = 54,
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["yOffset"] = -110,
			["load"] = {
				["use_level"] = true,
				["talent"] = 16,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["use_name"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				0, -- [2]
				0.02352941176470588, -- [3]
				1, -- [4]
			},
		},
		["Max Stacks"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Elusive Brew 2.0",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Max Stacks",
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "128939",
				["subeventSuffix"] = "_CAST_START",
				["fullscan"] = true,
				["countOperator"] = "==",
				["subeventPrefix"] = "SPELL",
				["useCount"] = true,
				["use_spellId"] = true,
				["count"] = "15",
				["custom_hide"] = "timed",
				["unit"] = "player",
				["names"] = {
					"Elusive Brew", -- [1]
				},
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["icon"] = true,
			["additional_triggers"] = {
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Max Stacks",
			["width"] = 40,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["height"] = 40,
			["regionType"] = "icon",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["TFT"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["id"] = "TFT",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 116680,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = 48,
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["untrigger"] = {
				["spellName"] = 116680,
			},
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				0.1176470588235294, -- [2]
				0.2352941176470588, -- [3]
				1, -- [4]
			},
		},
		["Zen Meditation 2 2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -110,
			["additional_triggers"] = {
			},
			["untrigger"] = {
				["spellName"] = 115176,
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["id"] = "Zen Meditation 2 2",
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 115176,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = -74,
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["regionType"] = "icon",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				0.7294117647058823, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["RV 2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 115310,
			},
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["id"] = "RV 2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 115310,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["height"] = 38.75,
			["xOffset"] = 112,
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DM CD 2.0"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["spellName"] = 122783,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellId"] = "115308",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_spellName"] = true,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 122783,
				["use_spellId"] = true,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["barColor"] = {
				0.7529411764705882, -- [1]
				0.2196078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Monk CD Group",
			["yOffset"] = 0,
			["textSize"] = 12,
			["height"] = 30,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = 15,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
			},
			["stickyDuration"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["barInFront"] = true,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["auto"] = true,
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["timerSize"] = 12,
			["id"] = "DM CD 2.0",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.5,
			["width"] = 30,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["inverse"] = true,
			["displayTextLeft"] = "%n",
			["orientation"] = "VERTICAL_INVERSE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["5 Holy Power 2"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["id"] = "5 Holy Power 2",
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["type"] = "status",
				["power"] = "5",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Holy Power Holy",
		},
		["4 Holy Power 2"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["selfPoint"] = "LEFT",
			["additional_triggers"] = {
			},
			["trigger"] = {
				["type"] = "status",
				["power"] = "4",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "4 Holy Power 2",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Holy Power Holy",
		},
		["Holy Power Holy"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"1 Holy Power 2", -- [1]
				"2 Holy Power 2", -- [2]
				"3 Holy Power 2", -- [3]
				"4 Holy Power 2", -- [4]
				"5 Holy Power 2", -- [5]
			},
			["animate"] = true,
			["xOffset"] = 0,
			["regionType"] = "dynamicgroup",
			["border"] = "None",
			["yOffset"] = -70,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["sort"] = "ascending",
			["radius"] = 200,
			["space"] = 0,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["id"] = "Holy Power Holy",
			["backgroundInset"] = 0,
			["align"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 250,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["height"] = 50.00003051757813,
			["borderOffset"] = 16,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Keg Smash - Subtle"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Energy", -- [1]
				"Health", -- [2]
				"Keg Smash Timer", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -105,
			["border"] = false,
			["yOffset"] = -50,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Keg Smash - Subtle",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderEdge"] = "None",
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Stagger Heavy 3"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 227,
			["stacksFlags"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["useTooltip"] = false,
			["parent"] = "Stagger",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["names"] = {
					"Heavy Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["event"] = "Health",
				["debuffType"] = "HARMFUL",
			},
			["text"] = false,
			["barColor"] = {
				1, -- [1]
				0.2431372549019608, -- [2]
				0.2705882352941176, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
			["yOffset"] = 18,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_never"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Romancer",
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_name"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["inverse"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["frameStrata"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["id"] = "Stagger Heavy 3",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["stacksFont"] = "Friz Quadrata TT",
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 43.00014545965833,
			["barInFront"] = true,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 157,
			["orientation"] = "VERTICAL_INVERSE",
			["displayIcon"] = "Interface\\Icons\\ability_monk_roundhousekick",
			["displayTextLeft"] = "%p",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Zen Sphere Hot Glow"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "30 Talents",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
				["spellName"] = 124081,
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["spellName"] = 124081,
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Zen Sphere Hot Glow",
				},
				["finish"] = {
				},
			},
			["width"] = 40,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Zen Sphere Hot Glow",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura",
						["inverse"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
							"Zen Sphere", -- [1]
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["icon"] = true,
			["height"] = 40,
			["yOffset"] = 0,
			["load"] = {
				["talent"] = 5,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HP"] = {
			["color"] = {
				1, -- [1]
				0.5686274509803921, -- [2]
				0.4980392156862745, -- [3]
				0.75, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 315,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BoxingArenaSound.mp3",
					["do_sound"] = true,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura43",
			["anchorPoint"] = "CENTER",
			["id"] = "HP",
			["trigger"] = {
				["type"] = "status",
				["use_health"] = false,
				["health_operator"] = "<",
				["percenthealth"] = "35",
				["event"] = "Health",
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_percenthealth"] = true,
				["percenthealth_operator"] = "<",
				["debuffType"] = "HELPFUL",
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "bounceDecay",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 400,
			["rotation"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
			["height"] = 400,
			["rotate"] = true,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["PALADIN"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Holy CDs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Holy Shock", -- [1]
				"3WoG", -- [2]
				"Holy Prism", -- [3]
			},
			["animate"] = true,
			["xOffset"] = 250,
			["anchorPoint"] = "CENTER",
			["border"] = "None",
			["yOffset"] = 25,
			["regionType"] = "dynamicgroup",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["sort"] = "none",
			["borderOffset"] = 16,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "LEFT",
			["backgroundInset"] = 0,
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["align"] = "CENTER",
			["radius"] = 200,
			["frameStrata"] = 1,
			["width"] = 138.9998779296875,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["id"] = "Holy CDs",
			["height"] = 45.00003051757813,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Unholy Rune 2 2"] = {
			["color"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["xOffset"] = -50,
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "LEFT",
			["id"] = "Unholy Rune 2 2",
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Death Knight Rune",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["use_deathRune"] = false,
				["use_power"] = true,
				["rune"] = 4,
				["power"] = "5",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["width"] = 50,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Runes Blood",
		},
		["Fortifying Brew 2.0"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "Monk CD Group",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["untrigger"] = {
				["spellName"] = 115203,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["id"] = "Fortifying Brew 2.0",
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["trigger"] = {
				["spellId"] = "128939",
				["use_inverse"] = false,
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["subeventSuffix"] = "_CAST_START",
				["use_name"] = true,
				["use_spellName"] = true,
				["type"] = "status",
				["unit"] = "player",
				["ownOnly"] = true,
				["use_spellId"] = true,
				["names"] = {
					"Guard", -- [1]
				},
				["spellName"] = 115203,
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 30,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 30,
			["regionType"] = "icon",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_combat"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["5 Holy Power"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["trigger"] = {
				["type"] = "status",
				["power"] = "5",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "LEFT",
			["id"] = "5 Holy Power",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Holy Power Prot",
		},
		["Fortifying Brew"] = {
			["xOffset"] = -280,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Fortifying Brew", -- [1]
					"Dampen Harm", -- [2]
				},
				["use_spellId"] = true,
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["font"] = "Arial Black",
			["height"] = 38.75,
			["load"] = {
				["use_never"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
				["level_operator"] = ">",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["use_name"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Monk Mainbar 2",
			["icon"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["disjunctive"] = true,
			["frameStrata"] = 5,
			["width"] = 38.75,
			["stickyDuration"] = false,
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = -160,
			["id"] = "Fortifying Brew",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["3 Holy Power"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "3 Holy Power",
			["trigger"] = {
				["type"] = "status",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "LEFT",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Holy Power Prot",
		},
		["Guard Cooldown 2.0"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["spellName"] = 115295,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["parent"] = "Guard 2.0",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellId"] = "115308",
				["unevent"] = "auto",
				["spellName"] = 115295,
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["use_spellName"] = true,
				["use_spellId"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["barColor"] = {
				1, -- [1]
				0.9137254901960784, -- [2]
				0.1333333333333333, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["disjunctive"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["barInFront"] = true,
			["displayTextLeft"] = "%n",
			["height"] = 40,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["inverse"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["stickyDuration"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacks"] = true,
			["alpha"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["additional_triggers"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Guard Cooldown 2.0",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 38,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["timer"] = true,
			["orientation"] = "VERTICAL_INVERSE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["yOffset"] = 0,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Chi Wave"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "30 Talents",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:Chi Wave",
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 115098,
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 40,
			["id"] = "Chi Wave",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 40,
			["untrigger"] = {
				["spellName"] = 115098,
			},
			["load"] = {
				["talent"] = 4,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Dark Succor"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["xOffset"] = 173.5714721679688,
			["parent"] = "DK CDs",
			["load"] = {
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = -102.8569641113281,
			["regionType"] = "icon",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["customTextUpdate"] = "update",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "slidebottom",
					["duration_type"] = "seconds",
				},
			},
			["icon"] = true,
			["width"] = 45,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "aura",
				["spellId"] = "101568",
				["unevent"] = "auto",
				["use_targetRequired"] = false,
				["ownOnly"] = true,
				["event"] = "Action Usable",
				["use_unit"] = true,
				["names"] = {
					"Dark Succor", -- [1]
				},
				["use_spellId"] = true,
				["use_spellName"] = true,
				["spellName"] = 0,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["id"] = "Dark Succor",
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["additional_triggers"] = {
			},
			["height"] = 45,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["1"] = {
			["xOffset"] = -530.8329467773438,
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["color"] = {
				0, -- [1]
				0.8745098039215686, -- [2]
				0.4431372549019608, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["alphaType"] = "alphaPulse",
					["rotateType"] = "wobble",
					["use_rotate"] = false,
					["duration_type"] = "seconds",
					["type"] = "custom",
					["use_alpha"] = false,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "1",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 47,
			["discrete_rotation"] = 0,
			["trigger"] = {
				["type"] = "status",
				["power"] = "1",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
			},
			["parent"] = "Chi 5",
		},
		["3"] = {
			["color"] = {
				0, -- [1]
				0.8745098039215686, -- [2]
				0.4431372549019608, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = -530.8329467773438,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "3",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 47,
			["discrete_rotation"] = 0,
			["trigger"] = {
				["type"] = "status",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
			},
			["parent"] = "Chi 5",
		},
		["2"] = {
			["color"] = {
				0, -- [1]
				0.8745098039215686, -- [2]
				0.4431372549019608, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = -530.8329467773438,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["power"] = "2",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 47,
			["discrete_rotation"] = 0,
			["id"] = "2",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
			},
			["parent"] = "Chi 5",
		},
		["5"] = {
			["color"] = {
				0, -- [1]
				0.8745098039215686, -- [2]
				0.4431372549019608, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = -530.8329467773438,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["power"] = "5",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 47,
			["discrete_rotation"] = 0,
			["id"] = "5",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
			},
			["parent"] = "Chi 5",
		},
		["4"] = {
			["xOffset"] = -530.8329467773438,
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["color"] = {
				0, -- [1]
				0.8745098039215686, -- [2]
				0.4431372549019608, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["power"] = "4",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 47,
			["discrete_rotation"] = 0,
			["id"] = "4",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
			},
			["parent"] = "Chi 5",
		},
		["Obliterate"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "DK CDs",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
				["spellName"] = 49020,
			},
			["regionType"] = "icon",
			["yOffset"] = -102.8569641113281,
			["icon"] = true,
			["numTriggers"] = 2,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["names"] = {
							"Killing Machine", -- [1]
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Obliterate",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["spellName"] = 49020,
				["use_targetRequired"] = false,
				["event"] = "Action Usable",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["inverse"] = true,
				["names"] = {
					"Howling Blast", -- [1]
				},
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 45,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "slidetop",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "slidebottom",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 45,
			["xOffset"] = 173.5714721679688,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["1 Holy Power"] = {
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["xOffset"] = -50,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["power"] = "1",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "LEFT",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["id"] = "1 Holy Power",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Holy Power Prot",
		},
		["2 Holy Power"] = {
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["xOffset"] = -50,
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "LEFT",
			["id"] = "2 Holy Power",
			["animation"] = {
				["start"] = {
					["preset"] = "shrink",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "shrink",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["power"] = "2",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Holy Power Prot",
		},
		["Health"] = {
			["user_y"] = 0,
			["stacksSize"] = 20,
			["user_x"] = 0,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -28,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "LEFT",
			["barColor"] = {
				0.8745098039215686, -- [1]
				0.07058823529411765, -- [2]
				0.1215686274509804, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = false,
			["compress"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["backgroundOffset"] = 2,
			["outline"] = true,
			["borderBackdrop"] = "Solid",
			["parent"] = "Keg Smash - Subtle",
			["customText"] = "function()\n    local energyNumber=UnitPower(\"player\",\"energy\")\n    return energyNumber;\n    \nend\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
				["unit"] = "player",
				["percentpower_operator"] = "<",
				["use_percentpower"] = true,
				["percentpower"] = "35",
				["use_unit"] = true,
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "event",
			["displayTextLeft"] = " %p",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_power"] = false,
				["subeventPrefix"] = "SPELL",
				["powertype"] = 3,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["power"] = "60",
				["power_operator"] = ">=",
				["event"] = "Health",
				["use_percentpower"] = false,
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["unevent"] = "auto",
				["unit"] = "player",
				["percentpower"] = "35",
				["percentpower_operator"] = ">=",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 5.500040531158447,
			["timerFlags"] = "None",
			["textFlags"] = "None",
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["inverse"] = false,
			["progressPrecision"] = 0,
			["mirror"] = false,
			["borderEdge"] = "Plain White",
			["border"] = false,
			["borderSize"] = 24,
			["textSize"] = 20,
			["icon_side"] = "LEFT",
			["icon"] = false,
			["anchorPoint"] = "CENTER",
			["id"] = "Health",
			["color"] = {
				1, -- [1]
				0.8549019607843137, -- [2]
				0.2313725490196079, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "LEFT",
			["timerSize"] = 20,
			["additional_triggers"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 209,
			["displayText"] = "%p",
			["barInFront"] = true,
			["numTriggers"] = 1,
			["timer"] = false,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.41,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturateForeground"] = false,
		},
		["Mana Tea 2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 123761,
			},
			["id"] = "Mana Tea 2",
			["yOffset"] = -110,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 123761,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = -10,
			["frameStrata"] = 5,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["regionType"] = "icon",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				0, -- [2]
				0.8352941176470589, -- [3]
				1, -- [4]
			},
		},
		["Keg Smash Timer"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 52.5,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["spellName"] = 121253,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 121253,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0.3607843137254902, -- [2]
				0.5254901960784314, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Keg Smash - Subtle",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["textSize"] = 12,
			["timer"] = false,
			["height"] = 5.5,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["alpha"] = 1,
			["icon_side"] = "RIGHT",
			["borderOffset"] = 5,
			["id"] = "Keg Smash Timer",
			["timerSize"] = 12,
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["displayTextRight"] = "%p",
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 105,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["orientation"] = "HORIZONTAL",
			["displayTextLeft"] = "%p",
			["yOffset"] = -4.496429443359375,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Glyphed Guard CD 2.0"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["spellName"] = 123402,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "shrink",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["preset"] = "pulse",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "shrink",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["spellId"] = "115308",
				["remaining_operator"] = "==",
				["use_unit"] = true,
				["remaining"] = "30",
				["custom_hide"] = "timed",
				["ownOnly"] = true,
				["type"] = "status",
				["use_inverse"] = false,
				["unevent"] = "auto",
				["use_targetRequired"] = false,
				["use_remaining"] = false,
				["event"] = "Cooldown Progress (Spell)",
				["spellName"] = 123402,
				["use_spellName"] = true,
				["use_spellId"] = true,
				["inverse"] = true,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0.8862745098039215, -- [2]
				0.1254901960784314, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Guard 2.0",
			["selfPoint"] = "CENTER",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
			["height"] = 40,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["stickyDuration"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = true,
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["alpha"] = 1,
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Glyphed Guard CD 2.0",
			["timerSize"] = 12,
			["texture"] = "Touchy - White",
			["textFont"] = "ElvUI Pixel",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["displayTextRight"] = "%p",
			["additional_triggers"] = {
			},
			["timerFont"] = "ElvUI Pixel",
			["frameStrata"] = 1,
			["width"] = 40,
			["barInFront"] = true,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["displayTextLeft"] = "%n",
			["orientation"] = "VERTICAL_INVERSE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["yOffset"] = 0,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
		},
		["RV"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["id"] = "RV",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 115310,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = 112,
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["untrigger"] = {
				["spellName"] = 115310,
			},
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				0, -- [2]
				0.3294117647058824, -- [3]
				1, -- [4]
			},
		},
		["4 2"] = {
			["xOffset"] = -530.8329467773438,
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["color"] = {
				0, -- [1]
				0.8745098039215686, -- [2]
				0.4431372549019608, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["id"] = "4 2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["power"] = "4",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 47,
			["discrete_rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = 7,
				["use_talent"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Chi 4",
		},
		["3 2"] = {
			["color"] = {
				0, -- [1]
				0.8745098039215686, -- [2]
				0.4431372549019608, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = -530.8329467773438,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "3 2",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 47,
			["discrete_rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = 7,
				["use_talent"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Chi 4",
		},
		["Wild Growth"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["xOffset"] = -220.7139892578125,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["yOffset"] = 257.142822265625,
			["regionType"] = "icon",
			["untrigger"] = {
				["spellName"] = 48438,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["additional_triggers"] = {
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["icon"] = true,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["ownOnly"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["names"] = {
					"Wild Growth", -- [1]
				},
				["use_inverse"] = true,
				["spellName"] = 48438,
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Wild Growth",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["height"] = 64,
			["anchorPoint"] = "CENTER",
			["load"] = {
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Dampen Harm 2.0"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "Monk CD Group",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["untrigger"] = {
				["spellName"] = 122278,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["additional_triggers"] = {
			},
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["trigger"] = {
				["spellId"] = "128939",
				["ownOnly"] = true,
				["use_unit"] = true,
				["spellName"] = 122278,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["subeventSuffix"] = "_CAST_START",
				["use_name"] = true,
				["use_spellName"] = true,
				["type"] = "status",
				["unit"] = "player",
				["use_inverse"] = false,
				["use_spellId"] = true,
				["names"] = {
					"Guard", -- [1]
				},
				["custom_hide"] = "timed",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Dampen Harm 2.0",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 30,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 30,
			["regionType"] = "icon",
			["load"] = {
				["use_never"] = false,
				["talent"] = 14,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shuffle Group"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Shuffle", -- [1]
				"Shuffle Off", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["yOffset"] = 3,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["id"] = "Shuffle Group",
			["frameStrata"] = 1,
			["desc"] = "Displays duration of Shuffle and alerts if it's missing.",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderEdge"] = "None",
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Monk Mainbar 2"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"HS", -- [1]
				"RJW", -- [2]
				"TL", -- [3]
				"Serpent's Zeal", -- [4]
				"Vital Mists", -- [5]
				"Tiger Power", -- [6]
				"101546", -- [7]
				"Fortifying Brew", -- [8]
				"Diffuse Magic", -- [9]
				"ZM", -- [10]
				"Statue 2", -- [11]
			},
			["animate"] = false,
			["xOffset"] = -184.1663818359375,
			["yOffset"] = -110,
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["sort"] = "descending",
			["borderOffset"] = 12,
			["space"] = 2,
			["background"] = "Blizzard Dialog Background Dark",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["id"] = "Monk Mainbar 2",
			["backgroundInset"] = 9,
			["additional_triggers"] = {
			},
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 3,
			["width"] = 446.2499084472656,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["align"] = "CENTER",
			["height"] = 38.75001525878906,
			["radius"] = 200,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "dynamicgroup",
		},
		["Stagger Color 3"] = {
			["outline"] = true,
			["disjunctive"] = true,
			["displayText"] = "%c",
			["customText"] = "function () \n    \n    local name,_,icon,_,_,_,_,_,_,_,_,_,_,value=UnitDebuff(\"player\", \"Light Stagger\")\n    if(not value) then name,_,icon,_,_,_,_,_,_,_,_,_,_,value=UnitDebuff(\"player\", \"Medium Stagger\"); end\n    if(not value) then name,_,icon,_,_,_,_,_,_,_,_,_,_,value=UnitDebuff(\"player\", \"Heavy Stagger\"); end\n    \n    return value\nend\n\n\n\n\n\n\n\n",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["names"] = {
					"Light Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HARMFUL",
				["event"] = "Health",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Myriad Condensed Web",
			["height"] = 43,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 14,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "Stagger",
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["yOffset"] = -104,
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["justify"] = "CENTER",
			["inverse"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
							"Moderate Stagger", -- [1]
						},
						["event"] = "Health",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Heavy Stagger", -- [1]
						},
						["unit"] = "player",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 1,
			["width"] = 43,
			["xOffset"] = 227.0000114206689,
			["auto"] = true,
			["numTriggers"] = 3,
			["id"] = "Stagger Color 3",
			["totalPrecision"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["RM 2 2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["untrigger"] = {
				["spellName"] = 115151,
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["id"] = "RM 2 2",
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["scaleFunc"] = "return function(progress, startX, startY, scaleX, scaleY)\n    local angle = progress * 2 * math.pi\n    return startX + (progress * (scaleX - startX)), math.cos(angle) * scaleY\nend\n",
					["duration"] = "3",
					["colorA"] = 1,
					["colorG"] = 0,
					["scaleType"] = "fauxflip",
					["use_scale"] = true,
					["scalex"] = 1,
					["scaley"] = 1,
					["use_color"] = true,
					["alpha"] = 0,
					["colorType"] = "straightColor",
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 0.0392156862745098,
					["colorR"] = 1,
					["colorFunc"] = "return function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\nend\n",
					["rotate"] = 0,
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 115151,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = -42,
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["yOffset"] = -110,
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				0.2, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Runic Power"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "None",
			["xOffset"] = 0.00018310546875,
			["stacksFlags"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Power",
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unit"] = "player",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				0.9568627450980392, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["displayTextLeft"] = " ",
			["yOffset"] = -230,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textSize"] = 12,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["height"] = 15,
			["inverse"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["borderOffset"] = 5,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["stacksFont"] = "Walkway",
			["icon_side"] = "RIGHT",
			["frameStrata"] = 1,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["displayTextRight"] = "%p",
			["id"] = "Runic Power",
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["width"] = 300,
			["stacks"] = true,
			["borderInset"] = 1,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["orientation"] = "HORIZONTAL",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["backgroundColor"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Monk Mainbar"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"Zen Meditation 2", -- [1]
				"Zen Meditation 2 2", -- [2]
				"RM 2", -- [3]
				"RM 2 2", -- [4]
				"Mana Tea 2", -- [5]
				"Mana Tea 2  2", -- [6]
				"MT", -- [7]
				"MT2", -- [8]
				"JST", -- [9]
				"JST 2", -- [10]
				"EH", -- [11]
				"EH 2", -- [12]
				"CB", -- [13]
				"CB 2", -- [14]
				"LC", -- [15]
				"LC 2", -- [16]
				"DM", -- [17]
				"DM 2", -- [18]
				"RV", -- [19]
				"RV 2", -- [20]
				"TFT", -- [21]
				"TFT2", -- [22]
			},
			["animate"] = true,
			["xOffset"] = -414.3329204339772,
			["regionType"] = "dynamicgroup",
			["border"] = "None",
			["yOffset"] = -110,
			["anchorPoint"] = "CENTER",
			["expanded"] = false,
			["sort"] = "descending",
			["radius"] = 200,
			["space"] = 2,
			["background"] = "Blizzard Dialog Background Dark",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["additional_triggers"] = {
			},
			["backgroundInset"] = 9,
			["align"] = "CENTER",
			["selfPoint"] = "CENTER",
			["id"] = "Monk Mainbar",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 3,
			["width"] = 894.4999694824219,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["height"] = 38.75001525878906,
			["borderOffset"] = 12,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["ReMists"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.3899999856948853, -- [4]
			},
			["customText"] = "function()\n    if not WA_ReMists or not WA_ReMists.shortest then return \"ReM\" end\n    local endTime = WA_ReMists.shortest - GetTime()\n    endTime = (\"%.1f\"):format(endTime)\n    return WA_ReMists.count..\"\\n\\n\"..endTime\nend",
			["yOffset"] = -179.17,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "event",
				["custom_hide"] = "custom",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["customDuration"] = "function()\n    if not WA_ReMists then return 0, 0 end\n    if WA_ReMists.count == 0 then return 0, 0 end\n    return WA_ReMists.duration, WA_ReMists.shortest\nend",
				["unit"] = "player",
				["events"] = "UNIT_AURA",
				["custom"] = "function()\n    local ReMistsId = 119611\n    local prefix = \"raid\"\n    local numPlayers = GetNumGroupMembers()\n    \n    local numMists = 0\n    local mistDur = 0\n    local shortestMist = nil    \n    \n    if not IsInRaid() then\n        prefix = \"party\"\n        numPlayers = numPlayers -1\n        \n        for a=1, 40 do\n            local _, _, _, _, _, duration, expirationTime, unitCaster, _, _, spellId = UnitAura(\"player\", a)\n            if spellId and spellId == ReMistsId then\n                if unitCaster == \"player\" and expirationTime then\n                    numMists = numMists + 1\n                    mistDur = duration\n                    if not shortestMist or expirationTime < shortestMist then\n                        shortestMist = expirationTime\n                    end\n                    break\n                end\n            end\n        end\n    end\n    \n    for i=1,numPlayers do\n        local unit = prefix..i\n        for a=1, 40 do\n            local _, _, _, _, _, duration, expirationTime, unitCaster, _, _, spellId = UnitAura(unit, a)\n            if spellId and spellId == ReMistsId then\n                if unitCaster == \"player\" and expirationTime then\n                    numMists = numMists + 1\n                    mistDur = duration\n                    if not shortestMist or expirationTime < shortestMist then\n                        shortestMist = expirationTime\n                    end\n                    break\n                end\n            end\n        end\n    end\n    \n    WA_ReMists = {\n        count = numMists,\n        duration = mistDur,\n        shortest = shortestMist\n    }\n    \n    return numMists > 0\nend",
				["subeventSuffix"] = "_CAST_START",
				["customStacks"] = "function()\n    if not WA_ReMists then return 0 end\n    return WA_ReMists.count\nend",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Arial Black",
			["height"] = 50,
			["load"] = {
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["use_talent"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "%c",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["cooldown"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["xOffset"] = -289.17,
			["additional_triggers"] = {
			},
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 50,
			["id"] = "ReMists",
			["numTriggers"] = 1,
			["inverse"] = false,
			["untrigger"] = {
				["custom"] = "function()\n    if not WA_ReMists then return true end\n    if WA_ReMists.count == 0 then return true end\n    return false\nend",
			},
			["stickyDuration"] = false,
			["displayIcon"] = "Interface\\Icons\\ability_monk_renewingmists",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["2 2"] = {
			["color"] = {
				0, -- [1]
				0.8745098039215686, -- [2]
				0.4431372549019608, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = -530.8329467773438,
			["selfPoint"] = "CENTER",
			["id"] = "2 2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["power"] = "2",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 47,
			["discrete_rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = 7,
				["use_talent"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Chi 4",
		},
		["Shuffle Off"] = {
			["color"] = {
				1, -- [1]
				0.1882352941176471, -- [2]
				0.1137254901960784, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["stacksPoint"] = "BOTTOMRIGHT",
			["parent"] = "Shuffle Group",
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["yOffset"] = -84.99996948242188,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["icon"] = true,
			["width"] = 43,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Shuffle", -- [1]
				},
				["inverse"] = true,
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["id"] = "Shuffle Off",
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["xOffset"] = -227,
			["height"] = 43,
			["displayIcon"] = "Interface\\Icons\\ability_monk_roundhousekick",
			["load"] = {
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Romancer",
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_name"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["3WoG"] = {
			["xOffset"] = 349.285400390625,
			["untrigger"] = {
				["spellName"] = 85673,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slideright",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_power"] = true,
				["names"] = {
					"Holy Power", -- [1]
				},
				["useCount"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_targetRequired"] = false,
				["power"] = "3",
				["power_operator"] = ">=",
				["spellName"] = 85673,
				["countOperator"] = ">=",
				["event"] = "Action Usable",
				["unevent"] = "auto",
				["use_spellName"] = true,
				["count"] = "3",
				["use_unit"] = true,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 45,
			["rotate"] = true,
			["load"] = {
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_zone"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["use_difficulty"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["ten"] = true,
						["party"] = true,
						["twentyfive"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["mirror"] = false,
			["regionType"] = "icon",
			["blendMode"] = "ADD",
			["parent"] = "Holy CDs",
			["rotation"] = 0,
			["selfPoint"] = "CENTER",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura28",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["yOffset"] = -53.57125854492188,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["use_power"] = true,
						["event"] = "Holy Power",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["power"] = "3",
						["unit"] = "player",
						["use_unit"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 45,
			["numTriggers"] = 2,
			["color"] = {
				0.9450980392156863, -- [1]
				0.9450980392156863, -- [2]
				0.9450980392156863, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["id"] = "3WoG",
			["stickyDuration"] = false,
			["displayIcon"] = "INTERFACE\\ICONS\\inv_helmet_96",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DK CDs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Howling Blast", -- [1]
				"Obliterate", -- [2]
				"Dark Succor", -- [3]
			},
			["animate"] = true,
			["xOffset"] = 111.181396484375,
			["regionType"] = "dynamicgroup",
			["border"] = "None",
			["yOffset"] = 96.6978759765625,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["sort"] = "none",
			["radius"] = 200,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["align"] = "LEFT",
			["backgroundInset"] = 0,
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "DK CDs",
			["selfPoint"] = "TOPLEFT",
			["frameStrata"] = 1,
			["width"] = 139,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["height"] = 45.00003051757813,
			["borderOffset"] = 16,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["F Rune 2 CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				0.9529411764705882, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 6,
				["unit"] = "player",
				["use_remaining"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["parent"] = "Runes Frost",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["height"] = 11.33827686309815,
			["borderSize"] = 5,
			["border"] = true,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["icon"] = false,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "F Rune 2 CD",
			["barInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["inverse"] = true,
			["user_y"] = 0,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["crop_y"] = 0.41,
			["stacksFont"] = "Walkway",
		},
		["D Rune 2 CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_deathRune"] = true,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 2,
				["unit"] = "player",
				["type"] = "status",
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["parent"] = "Runes Frost",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderSize"] = 5,
			["mirror"] = false,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["height"] = 11.33827686309815,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "D Rune 2 CD",
			["barInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["numTriggers"] = 1,
			["user_y"] = 0,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["stacksFont"] = "Friz Quadrata TT",
			["backgroundColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				0.5, -- [4]
			},
		},
		["B Rune 2 CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 1,
				["unit"] = "player",
				["use_remaining"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["height"] = 11.33827686309815,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["parent"] = "Runes Frost",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = true,
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["icon"] = false,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "B Rune 2 CD",
			["barInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["inverse"] = true,
			["timer"] = false,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["crop_y"] = 0.41,
			["stacksFont"] = "Friz Quadrata TT",
		},
		["Guard 2.0"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Guard Icon 2.0", -- [1]
				"Guard Not Active 2.0", -- [2]
				"Guard Cooldown 2.0", -- [3]
				"Glyphed Guard CD 2.0", -- [4]
				"Guard Amount 2.0", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -153,
			["border"] = false,
			["yOffset"] = -42,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["id"] = "Guard 2.0",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderEdge"] = "None",
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Death Rune 3 2"] = {
			["color"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["xOffset"] = -50,
			["id"] = "Death Rune 3 2",
			["trigger"] = {
				["use_rune"] = true,
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = true,
				["event"] = "Death Knight Rune",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["power_operator"] = ">=",
				["use_power"] = true,
				["rune"] = 3,
				["power"] = "5",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["selfPoint"] = "LEFT",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["width"] = 50,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Runes Blood",
		},
		["Number - High 3 2"] = {
			["outline"] = true,
			["xOffset"] = 225,
			["displayText"] = "%c",
			["customText"] = "function () \n    \n    local name,_,icon,_,_,_,_,_,_,_,_,_,_,_,value=UnitDebuff(\"player\", \"Heavy Stagger\")\n    if(value > 999999) then value = math.floor(value/1000000) .. \"m\" end\n    if(value > 999) then value = math.floor(value/1000) .. \"k\" end\n    return(value)\nend",
			["yOffset"] = -132,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["icon"] = true,
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["names"] = {
					"Heavy Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HARMFUL",
				["event"] = "Health",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Myriad Condensed Web",
			["height"] = 19.04762077331543,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 19,
			["displayStacks"] = "%c",
			["regionType"] = "text",
			["parent"] = "Stagger",
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["disjunctive"] = true,
			["additional_triggers"] = {
			},
			["untrigger"] = {
			},
			["frameStrata"] = 1,
			["width"] = 12.95247745513916,
			["id"] = "Number - High 3 2",
			["totalPrecision"] = 0,
			["numTriggers"] = 1,
			["justify"] = "CENTER",
			["stickyDuration"] = false,
			["displayIcon"] = "Interface\\Icons\\priest_icon_chakra_blue",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Zen Sphere CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["spellName"] = 124081,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellId"] = "115308",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_spellId"] = true,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 124081,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["barColor"] = {
				0.4862745098039216, -- [1]
				0.7176470588235294, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "30 Talents",
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 40,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_never"] = false,
				["talent"] = 5,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["barInFront"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = true,
			["stickyDuration"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["stacksColor"] = {
				0.984313725490196, -- [1]
				1, -- [2]
				0.984313725490196, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["borderOffset"] = 5,
			["additional_triggers"] = {
			},
			["auto"] = true,
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["timerSize"] = 12,
			["id"] = "Zen Sphere CD",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 40,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["textSize"] = 12,
			["orientation"] = "VERTICAL_INVERSE",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["U Rune 1 CD 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 3,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["displayTextLeft"] = " ",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderSize"] = 5,
			["height"] = 11.33827686309815,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["icon"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "U Rune 1 CD 2",
			["user_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["inverse"] = true,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Blood",
		},
		["TFT2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["id"] = "TFT2",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 116680,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = 48,
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["untrigger"] = {
				["spellName"] = 116680,
			},
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				0.1098039215686275, -- [2]
				0.1019607843137255, -- [3]
				1, -- [4]
			},
		},
		["Unholy Rune 1 2"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["color"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["id"] = "Unholy Rune 1 2",
			["trigger"] = {
				["use_rune"] = true,
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Death Knight Rune",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["use_deathRune"] = false,
				["use_power"] = true,
				["rune"] = 3,
				["power"] = "5",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["selfPoint"] = "LEFT",
			["numTriggers"] = 1,
			["width"] = 50,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Runes Blood",
		},
		["Chi 4"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"1 2", -- [1]
				"2 2", -- [2]
				"3 2", -- [3]
				"4 2", -- [4]
			},
			["animate"] = false,
			["xOffset"] = -105,
			["regionType"] = "dynamicgroup",
			["border"] = "None",
			["yOffset"] = -95,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["sort"] = "none",
			["radius"] = 200,
			["space"] = 7,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["additional_triggers"] = {
			},
			["backgroundInset"] = 0,
			["align"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Chi 4",
			["selfPoint"] = "LEFT",
			["frameStrata"] = 1,
			["width"] = 208.9999389648438,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["height"] = 14.99996948242188,
			["borderOffset"] = -10,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["D Rune 4 CD  2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = true,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 4,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["height"] = 11.33827686309815,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["icon"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderSize"] = 5,
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["timer"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["desaturateForeground"] = false,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["id"] = "D Rune 4 CD  2",
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["numTriggers"] = 1,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Blood",
		},
		["Frost Rune 1"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Frost",
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "LEFT",
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["rune"] = 5,
				["unevent"] = "auto",
				["use_inverse"] = true,
				["custom_hide"] = "timed",
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["id"] = "Frost Rune 1",
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Diffuse Magic"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_never"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
				["level_operator"] = ">",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["use_name"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["parent"] = "Monk Mainbar 2",
			["untrigger"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Diffuse Magic", -- [1]
				},
				["use_spellId"] = true,
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["yOffset"] = -160,
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["customTextUpdate"] = "update",
			["id"] = "Diffuse Magic",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = -280,
			["frameStrata"] = 5,
			["stickyDuration"] = false,
			["progressPrecision"] = 1,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Zen Meditation 2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -110,
			["id"] = "Zen Meditation 2",
			["untrigger"] = {
				["spellName"] = 115176,
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 115176,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = -74,
			["frameStrata"] = 5,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["regionType"] = "icon",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				0.7294117647058823, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Holy Shock"] = {
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["xOffset"] = 272.1427001953125,
			["parent"] = "Holy CDs",
			["load"] = {
				["use_never"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["use_zone"] = false,
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_difficulty"] = false,
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["ten"] = true,
						["party"] = true,
						["twentyfive"] = true,
					},
				},
			},
			["color"] = {
				0.9803921568627451, -- [1]
				0.9803921568627451, -- [2]
				0.9803921568627451, -- [3]
				1, -- [4]
			},
			["yOffset"] = -103.5714111328125,
			["regionType"] = "icon",
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["numTriggers"] = 1,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
				["ownOnly"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["spellName"] = 20473,
				["use_spellName"] = true,
				["use_inverse"] = false,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Holy Shock",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["width"] = 45,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slideright",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 45,
			["untrigger"] = {
				["spellName"] = 20473,
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["101546"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_never"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
				["level_operator"] = ">",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["use_class"] = true,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["parent"] = "Monk Mainbar 2",
			["untrigger"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Spinning Crane Kick", -- [1]
				},
				["use_spellId"] = true,
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["yOffset"] = -160,
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["customTextUpdate"] = "update",
			["id"] = "101546",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = -280,
			["frameStrata"] = 5,
			["stickyDuration"] = false,
			["progressPrecision"] = 1,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Frost Rune 2"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Frost",
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "LEFT",
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["id"] = "Frost Rune 2",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["power"] = "4",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["rune"] = 6,
				["unevent"] = "auto",
				["use_inverse"] = true,
				["custom_hide"] = "timed",
			},
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["FB CD 2.0"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["spellName"] = 115203,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellId"] = "115308",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_spellName"] = true,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_spellId"] = true,
				["spellName"] = 115203,
			},
			["text"] = false,
			["barColor"] = {
				0.5215686274509804, -- [1]
				0.3803921568627451, -- [2]
				0.09019607843137255, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Monk CD Group",
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 30,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textSize"] = 12,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = "%n",
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "FB CD 2.0",
			["auto"] = true,
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.5,
			["width"] = 30,
			["stacks"] = true,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["orientation"] = "VERTICAL_INVERSE",
			["barInFront"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Zen Meditation 2.0"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "Monk CD Group",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["untrigger"] = {
				["spellName"] = 115176,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["trigger"] = {
				["spellId"] = "128939",
				["use_inverse"] = false,
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["subeventSuffix"] = "_CAST_START",
				["use_name"] = true,
				["use_spellName"] = true,
				["type"] = "status",
				["unit"] = "player",
				["ownOnly"] = true,
				["use_spellId"] = true,
				["names"] = {
					"Guard", -- [1]
				},
				["spellName"] = 115176,
			},
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["additional_triggers"] = {
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Zen Meditation 2.0",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 30,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 30,
			["regionType"] = "icon",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_combat"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Guard Icon 2.0"] = {
			["parent"] = "Guard 2.0",
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["stacksPoint"] = "BOTTOMRIGHT",
			["xOffset"] = 0,
			["untrigger"] = {
				["spellName"] = 123402,
			},
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["numTriggers"] = 2,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["id"] = "Guard Icon 2.0",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Chime.ogg",
					["glow_frame"] = "WeakAuras:Guard Icon 2",
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["spellId"] = "128939",
				["use_inverse"] = false,
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["spellName"] = 123402,
				["names"] = {
					"Guard", -- [1]
				},
				["event"] = "Action Usable",
				["use_spellId"] = true,
				["use_name"] = true,
				["use_spellName"] = true,
				["ownOnly"] = true,
				["unit"] = "player",
				["use_remaining"] = false,
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 38,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["names"] = {
							"Power Guard", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["disjunctive"] = false,
			["height"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Diffuse Magic 2.0"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "Monk CD Group",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["untrigger"] = {
				["spellName"] = 122783,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["id"] = "Diffuse Magic 2.0",
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["trigger"] = {
				["spellId"] = "128939",
				["use_inverse"] = false,
				["names"] = {
					"Guard", -- [1]
				},
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["subeventSuffix"] = "_CAST_START",
				["use_name"] = true,
				["use_spellId"] = true,
				["use_remaining"] = false,
				["unit"] = "player",
				["ownOnly"] = true,
				["use_spellName"] = true,
				["use_unit"] = true,
				["spellName"] = 122783,
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 30,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 30,
			["regionType"] = "icon",
			["load"] = {
				["use_never"] = false,
				["talent"] = 15,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["F Rune 1 CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 5,
				["unit"] = "player",
				["type"] = "status",
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["parent"] = "Runes Frost",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = true,
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["height"] = 11.33827686309815,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "F Rune 1 CD",
			["barInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["inverse"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["stacksFont"] = "Friz Quadrata TT",
			["icon"] = false,
		},
		["EB Icon 2.0"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Elusive Brew 2.0",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["icon"] = true,
			["numTriggers"] = 1,
			["customTextUpdate"] = "update",
			["id"] = "EB Icon 2.0",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["additional_triggers"] = {
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "128939",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["countOperator"] = "<",
				["subeventPrefix"] = "SPELL",
				["fullscan"] = true,
				["useCount"] = true,
				["count"] = "15",
				["use_spellId"] = true,
				["unit"] = "player",
				["names"] = {
					"Elusive Brew", -- [1]
				},
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["width"] = 40,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["height"] = 40,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Chi Burst"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "30 Talents",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Chi Burst",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 40,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 123986,
				["custom_hide"] = "timed",
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 40,
			["untrigger"] = {
				["spellName"] = 123986,
			},
			["load"] = {
				["talent"] = 6,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Stagger"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Stagger Light 3", -- [1]
				"Stagger Med 3", -- [2]
				"Stagger Heavy 3", -- [3]
				"Stagger Color 3", -- [4]
				"Number - Light 3 2", -- [5]
				"Number - Med 3 2", -- [6]
				"Number - High 3 2", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["yOffset"] = 3,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["untrigger"] = {
			},
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["id"] = "Stagger",
			["frameStrata"] = 1,
			["desc"] = "Displays stagger damage, intensity, and duration.",
			["borderEdge"] = "None",
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["TL"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_never"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["use_name"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["parent"] = "Monk Mainbar 2",
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellId"] = "101546",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["use_spellId"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["names"] = {
					"Rushing Jade Wind", -- [1]
				},
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 116841,
			},
			["yOffset"] = -160,
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["icon"] = true,
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "TL",
			["xOffset"] = -340,
			["frameStrata"] = 5,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 38.75,
			["untrigger"] = {
				["spellName"] = 116841,
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Zen Sphere"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "30 Talents",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_frame"] = "WeakAuras:Zen Sphere",
					["glow_action"] = "show",
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 124081,
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 40,
			["id"] = "Zen Sphere",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 40,
			["untrigger"] = {
				["spellName"] = 124081,
			},
			["load"] = {
				["talent"] = 5,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["D Rune 1 CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = true,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 1,
				["unit"] = "player",
				["use_remaining"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["height"] = 11.33827686309815,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["parent"] = "Runes Frost",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = true,
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "D Rune 1 CD",
			["barInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["numTriggers"] = 1,
			["timer"] = false,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["stacksFont"] = "Friz Quadrata TT",
			["icon"] = false,
		},
		["Runes Frost"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"Blood Rune1", -- [1]
				"B Rune 1 CD", -- [2]
				"Blood Rune 2", -- [3]
				"B Rune 2 CD", -- [4]
				"Death Rune 1", -- [5]
				"D Rune 1 CD", -- [6]
				"Death Rune 2", -- [7]
				"D Rune 2 CD", -- [8]
				"Frost Rune 1", -- [9]
				"F Rune 1 CD", -- [10]
				"Frost Rune 2", -- [11]
				"F Rune 2 CD", -- [12]
				"Unholy Rune 1", -- [13]
				"U Rune 1 CD", -- [14]
				"Unholy Rune 2", -- [15]
				"U Rune 2 CD", -- [16]
			},
			["animate"] = false,
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["border"] = "None",
			["yOffset"] = -200,
			["regionType"] = "dynamicgroup",
			["expanded"] = false,
			["sort"] = "none",
			["radius"] = 200,
			["space"] = 5,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["align"] = "CENTER",
			["backgroundInset"] = 0,
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 806.4237060546875,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["id"] = "Runes Frost",
			["height"] = 50,
			["borderOffset"] = 16,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["30 Talents"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Chi Wave", -- [1]
				"Zen Sphere", -- [2]
				"Zen Sphere Hot Glow", -- [3]
				"Chi Burst", -- [4]
				"Chi Wave CD", -- [5]
				"Zen Sphere CD", -- [6]
				"Chi Burst CD", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 159.5347900390625,
			["border"] = false,
			["yOffset"] = 65.7254638671875,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["id"] = "30 Talents",
			["frameStrata"] = 1,
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["borderEdge"] = "None",
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "group",
		},
		["Statue 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["totemType"] = 1,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["use_inverse"] = true,
				["event"] = "Totem",
				["totemName"] = "Summon Jade Serpent Statue",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["totemType"] = 1,
				["use_totemName"] = false,
				["use_unit"] = true,
				["use_totemType"] = true,
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 38.75,
			["rotate"] = true,
			["load"] = {
				["use_level"] = true,
				["level_operator"] = ">",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["use_name"] = false,
				["level"] = "60",
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%i",
			["mirror"] = false,
			["regionType"] = "icon",
			["blendMode"] = "BLEND",
			["parent"] = "Monk Mainbar 2",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stickyDuration"] = false,
			["xOffset"] = 0,
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["additional_triggers"] = {
			},
			["id"] = "Statue 2",
			["inverse"] = false,
			["frameStrata"] = 1,
			["width"] = 38.75,
			["yOffset"] = 0,
			["icon"] = true,
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["rotation"] = 0,
			["displayIcon"] = "Interface\\Icons\\ability_monk_summonserpentstatue",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["RushingJadeWind"] = {
			["parent"] = "Notice Group",
			["fontSize"] = 12,
			["displayStacks"] = "%c",
			["load"] = {
				["talent"] = 16,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -118.9999389648438,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 116847,
			},
			["yOffset"] = 199.0001831054688,
			["regionType"] = "icon",
			["anchorPoint"] = "CENTER",
			["inverse"] = false,
			["desaturate"] = false,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["width"] = 40,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "RushingJadeWind",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Action Usable",
				["names"] = {
					"Rushing Jade Wind", -- [1]
				},
				["spellName"] = 116847,
				["use_spellName"] = true,
				["inverse"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 40,
			["displayIcon"] = "Interface\\Icons\\ability_monk_rushingjadewind",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Monk CD Group"] = {
			["grow"] = "LEFT",
			["controlledChildren"] = {
				"Dampen Harm 2.0", -- [1]
				"Diffuse Magic 2.0", -- [2]
				"Fortifying Brew 2.0", -- [3]
				"Zen Meditation 2.0", -- [4]
				"DH CD 2.0", -- [5]
				"DM CD 2.0", -- [6]
				"FB CD 2.0", -- [7]
				"ZM CD 2.0", -- [8]
			},
			["animate"] = false,
			["xOffset"] = -4.9271240234375,
			["untrigger"] = {
			},
			["border"] = "None",
			["yOffset"] = -137.3548278808594,
			["anchorPoint"] = "CENTER",
			["expanded"] = true,
			["sort"] = "none",
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderOffset"] = 16,
			["id"] = "Monk CD Group",
			["selfPoint"] = "RIGHT",
			["additional_triggers"] = {
			},
			["radius"] = 200,
			["frameStrata"] = 1,
			["width"] = 254,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["align"] = "CENTER",
			["height"] = 30,
			["backgroundInset"] = 0,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "dynamicgroup",
		},
		["U Rune 2 CD 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 4,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["icon"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderSize"] = 5,
			["height"] = 11.33827686309815,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["stacksFont"] = "Friz Quadrata TT",
			["desaturateForeground"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "U Rune 2 CD 2",
			["user_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["numTriggers"] = 1,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Blood",
		},
		["Frigid"] = {
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -197.7272338867188,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["use_size"] = true,
				["zone"] = "Throne of Thunder",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["size"] = {
					["single"] = "ten",
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["stickyDuration"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Frigid",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["xOffset"] = 195.3156127929688,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["count"] = "10",
				["countOperator"] = ">",
				["names"] = {
					"Frigid Assault", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
			},
			["height"] = 64,
			["regionType"] = "icon",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				0, -- [2]
				0.0196078431372549, -- [3]
				1, -- [4]
			},
		},
		["U Rune 2 CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 4,
				["unit"] = "player",
				["use_remaining"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["height"] = 11.33827686309815,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["parent"] = "Runes Frost",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = true,
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["icon"] = false,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "U Rune 2 CD",
			["barInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["inverse"] = true,
			["timer"] = false,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["crop_y"] = 0.41,
			["stacksFont"] = "Friz Quadrata TT",
		},
		["LC 2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 116849,
			},
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "LC 2",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 116849,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["height"] = 38.75,
			["xOffset"] = 144,
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["RM 2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 115151,
			},
			["id"] = "RM 2",
			["yOffset"] = -110,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 115151,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = -42,
			["frameStrata"] = 5,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["regionType"] = "icon",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				0.2, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["JST"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 116847,
			},
			["additional_triggers"] = {
			},
			["yOffset"] = -110,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["id"] = "JST",
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 116847,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = 54,
			["frameStrata"] = 5,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["regionType"] = "icon",
			["load"] = {
				["use_level"] = true,
				["talent"] = 16,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["use_name"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				0, -- [2]
				0.02352941176470588, -- [3]
				1, -- [4]
			},
		},
		["Death Rune 4 2"] = {
			["color"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Death Rune 4 2",
			["trigger"] = {
				["use_rune"] = true,
				["use_power"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Death Knight Rune",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["use_deathRune"] = true,
				["use_inverse"] = true,
				["rune"] = 4,
				["power"] = "5",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["selfPoint"] = "LEFT",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["xOffset"] = -50,
			["numTriggers"] = 1,
			["width"] = 50,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Runes Blood",
		},
		["Stagger Light 3"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 227,
			["stacksFlags"] = "None",
			["yOffset"] = -34,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["useTooltip"] = false,
			["parent"] = "Stagger",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["names"] = {
					"Light Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["event"] = "Health",
				["debuffType"] = "HARMFUL",
			},
			["text"] = false,
			["barColor"] = {
				0.2117647058823529, -- [1]
				1, -- [2]
				0.2705882352941176, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = true,
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["textSize"] = 12,
			["height"] = 53,
			["timerFlags"] = "None",
			["load"] = {
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Romancer",
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["use_name"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["inverse"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
			["barInFront"] = true,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["frameStrata"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["additional_triggers"] = {
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["stacksFont"] = "Friz Quadrata TT",
			["id"] = "Stagger Light 3",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 43.00014545965833,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["orientation"] = "VERTICAL_INVERSE",
			["displayIcon"] = "Interface\\Icons\\ability_monk_roundhousekick",
			["displayTextLeft"] = "%p",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Vital Mists"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["load"] = {
				["use_never"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
				["level_operator"] = ">",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["use_name"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["parent"] = "Monk Mainbar 2",
			["untrigger"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Vital Mists", -- [1]
				},
				["use_spellId"] = true,
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["yOffset"] = -160,
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["customTextUpdate"] = "update",
			["id"] = "Vital Mists",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = -340,
			["frameStrata"] = 5,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["EH 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["useTooltip"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 115072,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["height"] = 38.75,
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Monk Mainbar",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["icon"] = true,
			["id"] = "EH 2",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 38.75,
			["untrigger"] = {
				["spellName"] = 115072,
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["xOffset"] = 80,
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.1254901960784314, -- [1]
				1, -- [2]
				0.2901960784313725, -- [3]
				1, -- [4]
			},
		},
		["Chi Burst CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 6.103515625e-005,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["spellName"] = 123986,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellId"] = "115308",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_spellName"] = true,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_spellId"] = true,
				["spellName"] = 123986,
			},
			["text"] = false,
			["barColor"] = {
				0.4862745098039216, -- [1]
				0.7176470588235294, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "30 Talents",
			["yOffset"] = -6.103515625e-005,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 40,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_never"] = false,
				["talent"] = 6,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["barInFront"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["stacksColor"] = {
				0.984313725490196, -- [1]
				1, -- [2]
				0.984313725490196, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["borderOffset"] = 5,
			["id"] = "Chi Burst CD",
			["auto"] = true,
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 40,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["inverse"] = true,
			["textSize"] = 12,
			["orientation"] = "VERTICAL_INVERSE",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["1 Holy Power 2"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["type"] = "status",
				["power"] = "1",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["id"] = "1 Holy Power 2",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Holy Power Holy",
		},
		["CB 2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 115399,
			},
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "CB 2",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 115399,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["height"] = 38.75,
			["xOffset"] = 16,
			["load"] = {
				["use_level"] = true,
				["talent"] = 9,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["use_name"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["3 Holy Power 2"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["id"] = "3 Holy Power 2",
			["additional_triggers"] = {
			},
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["type"] = "status",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Holy Power Holy",
		},
		["2 Holy Power 2"] = {
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["selfPoint"] = "LEFT",
			["id"] = "2 Holy Power 2",
			["trigger"] = {
				["type"] = "status",
				["power"] = "2",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["xOffset"] = -50,
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Holy Power Holy",
		},
		["Healthstone"] = {
			["fontSize"] = 20,
			["displayStacks"] = "%s",
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
				["itemName"] = 5512,
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = -150,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["numTriggers"] = 2,
			["icon"] = true,
			["trigger"] = {
				["itemName"] = 5512,
				["use_count"] = true,
				["use_inverse"] = true,
				["use_unit"] = true,
				["use_includeCharges"] = true,
				["spellName"] = 0,
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["custom_type"] = "status",
				["names"] = {
					"No Match Found", -- [1]
				},
				["use_itemName"] = true,
				["unit"] = "player",
				["use_includeBank"] = false,
				["use_spellName"] = true,
				["count"] = "0",
				["event"] = "Item Count",
				["check"] = "event",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["count_operator"] = ">",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 5512,
						["unevent"] = "auto",
						["use_inverse"] = true,
						["event"] = "Cooldown Progress (Item)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["type"] = "status",
						["use_itemName"] = true,
					},
					["untrigger"] = {
						["itemName"] = 5512,
					},
				}, -- [1]
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 19.99992370605469,
			["font"] = "Walkway",
			["inverse"] = false,
			["id"] = "Healthstone",
			["height"] = 20,
			["regionType"] = "icon",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["MT"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -110,
			["additional_triggers"] = {
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["id"] = "MT",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "aura",
				["names"] = {
					"Mana Tea", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["xOffset"] = -170,
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["stickyDuration"] = true,
			["height"] = 38.75,
			["regionType"] = "icon",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["ZM"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_never"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["use_class"] = true,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["parent"] = "Monk Mainbar 2",
			["untrigger"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Zen Meditation", -- [1]
				},
				["use_spellId"] = true,
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["yOffset"] = -160,
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["customTextUpdate"] = "update",
			["id"] = "ZM",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = -280,
			["frameStrata"] = 5,
			["stickyDuration"] = false,
			["progressPrecision"] = 1,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Guard Amount 2.0"] = {
			["outline"] = true,
			["fontSize"] = 12,
			["xOffset"] = -1.000077482742313,
			["displayText"] = "%c",
			["customText"] = "function () \n    \n    local name,_,icon,_,_,_,_,_,_,_,_,_,_,_,value=UnitBuff(\"player\", \"Guard\")\n    if(value > 999999) then value = math.floor(value/1000000) .. \"m\" end\n    if(value > 999) then value = math.floor(value/1000) .. \"k\" end\n    return(value)\nend",
			["yOffset"] = 30.99984592354946,
			["regionType"] = "text",
			["customTextUpdate"] = "event",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["untrigger"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["unevent"] = "auto",
				["event"] = "Alternate Power",
				["names"] = {
					"Guard", -- [1]
				},
				["custom_hide"] = "timed",
				["use_unit"] = true,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Guard Amount 2.0",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["width"] = 9.904743194580078,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "Myriad Condensed Web",
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 12.19047451019287,
			["additional_triggers"] = {
			},
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Guard 2.0",
		},
		["Runes Blood"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"Blood Rune1 2", -- [1]
				"B Rune 1 CD 2", -- [2]
				"Blood Rune 2 2", -- [3]
				"B Rune 2 CD 2", -- [4]
				"Death Rune 1 2", -- [5]
				"D Rune 1 CD 2", -- [6]
				"Death Rune 2 2", -- [7]
				"D Rune 2 CD 2", -- [8]
				"Death Rune 3 2", -- [9]
				"D Rune 3 CD 2", -- [10]
				"Death Rune 4 2", -- [11]
				"D Rune 4 CD  2", -- [12]
				"Frost Rune 1 2", -- [13]
				"F Rune 1 CD 2", -- [14]
				"Frost Rune 2 2", -- [15]
				"F Rune 2 CD 2", -- [16]
				"Unholy Rune 1 2", -- [17]
				"U Rune 1 CD 2", -- [18]
				"Unholy Rune 2 2", -- [19]
				"U Rune 2 CD 2", -- [20]
			},
			["animate"] = false,
			["xOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["sort"] = "none",
			["borderOffset"] = 16,
			["space"] = 5,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["radius"] = 200,
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["align"] = "CENTER",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 1009.279724121094,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["id"] = "Runes Blood",
			["height"] = 50,
			["backgroundInset"] = 0,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = -200,
		},
		["Statue"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["stacksPoint"] = "BOTTOMRIGHT",
			["parent"] = "Notice Group",
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["yOffset"] = 199.0001831054688,
			["anchorPoint"] = "CENTER",
			["xOffset"] = -118.9999389648438,
			["numTriggers"] = 2,
			["icon"] = true,
			["customTextUpdate"] = "update",
			["width"] = 40,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["names"] = {
					"Sanctuary of the Ox", -- [1]
				},
				["type"] = "aura",
				["inverse"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["id"] = "Statue",
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 115315,
					},
					["untrigger"] = {
						["spellName"] = 115315,
					},
				}, -- [1]
			},
			["height"] = 40,
			["displayIcon"] = "Interface\\Icons\\monk_ability_summonoxstatue",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["U Rune 1 CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 3,
				["unit"] = "player",
				["type"] = "status",
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["height"] = 11.33827686309815,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["parent"] = "Runes Frost",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = true,
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "U Rune 1 CD",
			["barInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["numTriggers"] = 1,
			["timer"] = false,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["stacksFont"] = "Friz Quadrata TT",
			["icon"] = false,
		},
		["EH"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["useTooltip"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 115072,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["height"] = 38.75,
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Monk Mainbar",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "EH",
			["frameStrata"] = 5,
			["width"] = 38.75,
			["untrigger"] = {
				["spellName"] = 115072,
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["xOffset"] = 80,
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.1254901960784314, -- [1]
				1, -- [2]
				0.2901960784313725, -- [3]
				1, -- [4]
			},
		},
		["DM"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 122783,
			},
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["id"] = "DM",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 122783,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["height"] = 38.75,
			["xOffset"] = 112,
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Elusive Brew 2.0"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"EB Icon 2.0", -- [1]
				"Max Stacks", -- [2]
				"Elusive Brew Duration 2", -- [3]
				"Healing Elixirs EB", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 160,
			["border"] = false,
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["regionType"] = "group",
			["frameStrata"] = 1,
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderEdge"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["id"] = "Elusive Brew 2.0",
		},
		["MT2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Mana Tea", -- [1]
				},
				["inverse"] = true,
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = true,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["height"] = 38.75,
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["fontSize"] = 20,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "Monk Mainbar",
			["cooldown"] = false,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["id"] = "MT2",
			["additional_triggers"] = {
			},
			["yOffset"] = -110,
			["frameStrata"] = 1,
			["width"] = 38.75,
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["xOffset"] = -170,
			["displayIcon"] = "Interface\\Icons\\inv_misc_herb_jadetealeaf",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Weakend Blows"] = {
			["color"] = {
				0.6509803921568628, -- [1]
				0.6470588235294118, -- [2]
				0.7019607843137254, -- [3]
				0.4800000190734863, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = -20,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura23",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["inverse"] = true,
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
					"Weakened Blows", -- [1]
				},
				["debuffType"] = "HARMFUL",
				["event"] = "Health",
				["unit"] = "target",
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["id"] = "Weakend Blows",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["width"] = 300,
			["height"] = 300,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Death Rune 1"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Frost",
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["id"] = "Death Rune 1",
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["additional_triggers"] = {
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["selfPoint"] = "LEFT",
			["numTriggers"] = 1,
			["trigger"] = {
				["use_rune"] = true,
				["use_power"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["power"] = "5",
				["use_deathRune"] = true,
				["use_inverse"] = true,
				["rune"] = 1,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
			},
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
		},
		["D Rune 1 CD 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = true,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 5,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["displayTextLeft"] = " ",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderSize"] = 5,
			["height"] = 11.33827686309815,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["icon"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "D Rune 1 CD 2",
			["user_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["inverse"] = true,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Blood",
		},
		["Death Rune 1 2"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["color"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["use_rune"] = true,
				["use_power"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Death Knight Rune",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["use_deathRune"] = true,
				["use_inverse"] = true,
				["rune"] = 5,
				["power"] = "5",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "LEFT",
			["id"] = "Death Rune 1 2",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["width"] = 50,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Runes Blood",
		},
		["Number - Med 3 2"] = {
			["outline"] = true,
			["disjunctive"] = true,
			["displayText"] = "%c",
			["customText"] = "function () \n    \n    local name,_,icon,_,_,_,_,_,_,_,_,_,_,_,value=UnitDebuff(\"player\", \"Moderate Stagger\")\n    if(value > 999999) then value = math.floor(value/1000000) .. \"m\" end\n    if(value > 999) then value = math.floor(value/1000) .. \"k\" end\n    return(value)\nend",
			["yOffset"] = -132,
			["anchorPoint"] = "CENTER",
			["totalPrecision"] = 0,
			["icon"] = true,
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HARMFUL",
				["event"] = "Health",
				["names"] = {
					"Moderate Stagger", -- [1]
				},
			},
			["stickyDuration"] = false,
			["font"] = "Myriad Condensed Web",
			["height"] = 19.04762077331543,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 19,
			["displayStacks"] = "%c",
			["regionType"] = "text",
			["parent"] = "Stagger",
			["stacksPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["xOffset"] = 225,
			["additional_triggers"] = {
			},
			["untrigger"] = {
			},
			["frameStrata"] = 1,
			["width"] = 12.95247745513916,
			["justify"] = "CENTER",
			["id"] = "Number - Med 3 2",
			["numTriggers"] = 1,
			["customTextUpdate"] = "event",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "Interface\\Icons\\priest_icon_chakra_blue",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Unholy Rune 1"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Frost",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["color"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["desaturate"] = false,
			["selfPoint"] = "LEFT",
			["id"] = "Unholy Rune 1",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["numTriggers"] = 1,
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["power"] = "5",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["rune"] = 3,
				["unevent"] = "auto",
				["use_inverse"] = true,
				["custom_hide"] = "timed",
			},
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
		},
		["B Rune 2 CD 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 2,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["icon"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderSize"] = 5,
			["height"] = 11.33827686309815,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["stacksFont"] = "Friz Quadrata TT",
			["desaturateForeground"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "B Rune 2 CD 2",
			["user_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["numTriggers"] = 1,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Blood",
		},
		["B Rune 1 CD 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 1,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["height"] = 11.33827686309815,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["displayTextLeft"] = " ",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["crop_y"] = 0.41,
			["borderSize"] = 5,
			["timer"] = false,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["backgroundColor"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "B Rune 1 CD 2",
			["user_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["inverse"] = true,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Blood",
		},
		["CB"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 115399,
			},
			["additional_triggers"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["id"] = "CB",
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 115399,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["xOffset"] = 16,
			["frameStrata"] = 5,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 38.75,
			["regionType"] = "icon",
			["load"] = {
				["use_level"] = true,
				["talent"] = 9,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["use_name"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				0.9529411764705882, -- [1]
				0.4196078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shuffle"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -226.9997313065362,
			["stacksFlags"] = "None",
			["yOffset"] = -6.000149768054428,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["displayTextLeft"] = "%p",
			["useTooltip"] = false,
			["parent"] = "Shuffle Group",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "aura",
				["names"] = {
					"Shuffle", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["text"] = false,
			["barColor"] = {
				0.7568627450980392, -- [1]
				0.1686274509803922, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["icon"] = true,
			["textSize"] = 12,
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 200.0000027354896,
			["timerFlags"] = "None",
			["load"] = {
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Romancer",
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_name"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["numTriggers"] = 1,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
			["stickyDuration"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["alpha"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["additional_triggers"] = {
			},
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = false,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Shuffle",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 43.00014545965833,
			["barInFront"] = true,
			["borderInset"] = 11,
			["inverse"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["orientation"] = "VERTICAL_INVERSE",
			["displayIcon"] = "Interface\\Icons\\ability_monk_roundhousekick",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["F Rune 2 CD 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				0.9568627450980392, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 6,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stacksFont"] = "Walkway",
			["icon"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["mirror"] = false,
			["borderSize"] = 5,
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["height"] = 11.33827686309815,
			["desaturateForeground"] = false,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "F Rune 2 CD 2",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["inverse"] = true,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Blood",
		},
		["Touch of Death"] = {
			["parent"] = "Notice Group",
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -118.9999389648438,
			["untrigger"] = {
				["spellName"] = 115080,
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = 199.0001831054688,
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["width"] = 40,
			["customTextUpdate"] = "update",
			["id"] = "Touch of Death",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_health"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["health"] = "450000",
						["unit"] = "target",
						["unevent"] = "auto",
						["use_percenthealth"] = false,
						["health_operator"] = "<",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["use_spellName"] = true,
				["inverse"] = true,
				["names"] = {
					"Sanctuary of the Ox", -- [1]
				},
				["unevent"] = "auto",
				["use_unit"] = true,
				["use_targetRequired"] = true,
				["spellName"] = 115080,
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["icon"] = true,
			["height"] = 40,
			["displayIcon"] = "Interface\\Icons\\ability_monk_touchofdeath",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["D Rune 2 CD 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_deathRune"] = true,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 6,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["desaturateForeground"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["border"] = true,
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderSize"] = 5,
			["height"] = 11.33827686309815,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["backgroundColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				0.5, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "D Rune 2 CD 2",
			["user_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["inverse"] = true,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Blood",
		},
		["F Rune 1 CD 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 5,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["backgroundColor"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderSize"] = 5,
			["height"] = 11.33827686309815,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextLeft"] = " ",
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "F Rune 1 CD 2",
			["user_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["numTriggers"] = 1,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Blood",
		},
		["Tiger Power"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s, %p",
			["load"] = {
				["use_never"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["use_class"] = true,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["parent"] = "Monk Mainbar 2",
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Tiger Power", -- [1]
				},
				["use_spellId"] = true,
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Tiger Power",
			["xOffset"] = -340,
			["frameStrata"] = 5,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["yOffset"] = -160,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Energy"] = {
			["user_y"] = 0,
			["stacksSize"] = 20,
			["user_x"] = 0,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -17.99990844726563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "LEFT",
			["barColor"] = {
				0, -- [1]
				0.8745098039215686, -- [2]
				0.4431372549019608, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["backgroundOffset"] = 2,
			["outline"] = true,
			["borderBackdrop"] = "Solid",
			["color"] = {
				1, -- [1]
				0.8549019607843137, -- [2]
				0.2313725490196079, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local energyNumber=UnitPower(\"player\",\"energy\")\n    return energyNumber;\n    \nend\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
				["use_unit"] = true,
				["percentpower_operator"] = "<",
				["use_percentpower"] = true,
				["percentpower"] = "35",
				["unit"] = "player",
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "event",
			["displayTextLeft"] = "%p",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_power"] = false,
				["use_unit"] = true,
				["powertype"] = 3,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Power",
				["use_percentpower"] = false,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["power"] = "60",
				["percentpower"] = "35",
				["percentpower_operator"] = ">=",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["desaturateForeground"] = false,
			["height"] = 5.500040531158447,
			["rotate"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["textFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = false,
				["use_combat"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timer"] = false,
			["numTriggers"] = 1,
			["barInFront"] = true,
			["mirror"] = false,
			["borderEdge"] = "Plain White",
			["displayText"] = "%p",
			["borderSize"] = 24,
			["rotation"] = 0,
			["icon_side"] = "LEFT",
			["border"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["additional_triggers"] = {
			},
			["justify"] = "LEFT",
			["timerSize"] = 20,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["textSize"] = 20,
			["id"] = "Energy",
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 209,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["timerFlags"] = "None",
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.41,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Keg Smash - Subtle",
		},
		["Number - Light 3 2"] = {
			["outline"] = true,
			["disjunctive"] = true,
			["displayText"] = "%c",
			["customText"] = "function () \n    \n    local name,_,icon,_,_,_,_,_,_,_,_,_,_,_,value=UnitDebuff(\"player\", \"Light Stagger\")\n    if(value > 999999) then value = math.floor(value/1000000) .. \"m\" end\n    if(value > 999) then value = math.floor(value/1000) .. \"k\" end\n    return(value)\nend",
			["yOffset"] = -131.9996032714844,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["icon"] = true,
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["names"] = {
					"Light Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HARMFUL",
				["event"] = "Health",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Myriad Condensed Web",
			["height"] = 19.04762077331543,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 19,
			["displayStacks"] = "%c",
			["regionType"] = "text",
			["parent"] = "Stagger",
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["justify"] = "CENTER",
			["xOffset"] = 225,
			["additional_triggers"] = {
			},
			["untrigger"] = {
			},
			["frameStrata"] = 1,
			["width"] = 12.95247745513916,
			["auto"] = true,
			["id"] = "Number - Light 3 2",
			["inverse"] = false,
			["totalPrecision"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "Interface\\Icons\\priest_icon_chakra_blue",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Holy Power Prot"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"1 Holy Power", -- [1]
				"2 Holy Power", -- [2]
				"3 Holy Power", -- [3]
				"4 Holy Power", -- [4]
				"5 Holy Power", -- [5]
			},
			["animate"] = true,
			["xOffset"] = 0,
			["regionType"] = "dynamicgroup",
			["border"] = "None",
			["yOffset"] = -200,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["sort"] = "ascending",
			["borderOffset"] = 16,
			["space"] = 0,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "CENTER",
			["backgroundInset"] = 0,
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["align"] = "CENTER",
			["radius"] = 200,
			["frameStrata"] = 1,
			["width"] = 250,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["id"] = "Holy Power Prot",
			["height"] = 50,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Howling Blast"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["xOffset"] = 173.5714721679688,
			["parent"] = "DK CDs",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_spec"] = true,
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -102.8569641113281,
			["regionType"] = "icon",
			["untrigger"] = {
				["spellName"] = 49184,
			},
			["icon"] = true,
			["numTriggers"] = 2,
			["customTextUpdate"] = "update",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "slidebottom",
					["duration_type"] = "seconds",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["width"] = 45,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
				["use_targetRequired"] = true,
				["event"] = "Action Usable",
				["names"] = {
					"Howling Blast", -- [1]
				},
				["use_unit"] = true,
				["use_spellName"] = true,
				["inverse"] = true,
				["spellName"] = 49184,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["unevent"] = "auto",
						["ownOnly"] = true,
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["names"] = {
							"Rime", -- [1]
							"Freezing Fog", -- [2]
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["id"] = "Howling Blast",
			["height"] = 45,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Guard Not Active 2.0"] = {
			["parent"] = "Guard 2.0",
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["stacksPoint"] = "BOTTOMRIGHT",
			["xOffset"] = 0,
			["disjunctive"] = true,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
				["spellName"] = 115295,
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 2,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["id"] = "Guard Not Active 2.0",
			["icon"] = true,
			["width"] = 40,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["spellId"] = "128939",
				["ownOnly"] = true,
				["use_unit"] = true,
				["spellName"] = 115295,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
				["names"] = {
					"Guard", -- [1]
				},
				["event"] = "Action Usable",
				["use_spellName"] = true,
				["use_name"] = true,
				["use_spellId"] = true,
				["use_inverse"] = true,
				["unit"] = "player",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_inverse"] = true,
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["custom_hide"] = "timed",
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 123402,
					},
					["untrigger"] = {
						["spellName"] = 123402,
					},
				}, -- [1]
			},
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["color"] = {
				0.4784313725490196, -- [1]
				0.4784313725490196, -- [2]
				0.4784313725490196, -- [3]
				1, -- [4]
			},
			["height"] = 40,
			["yOffset"] = 0,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Blood Rune1 2"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["color"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["id"] = "Blood Rune1 2",
			["trigger"] = {
				["use_rune"] = true,
				["bloodRunes"] = "1",
				["bloodRunes_operator"] = "==",
				["use_power"] = true,
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["power_operator"] = ">=",
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["use_inverse"] = true,
				["event"] = "Death Knight Rune",
				["use_bloodRunes"] = false,
				["subeventSuffix"] = "_CAST_START",
				["use_includeDeath"] = false,
				["power"] = "1",
				["unit"] = "player",
				["rune"] = 1,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["selfPoint"] = "LEFT",
			["numTriggers"] = 1,
			["width"] = 50,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Runes Blood",
		},
		["Death Rune 2"] = {
			["color"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Frost",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["xOffset"] = -50,
			["trigger"] = {
				["use_rune"] = true,
				["use_power"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["power"] = "5",
				["use_deathRune"] = true,
				["use_inverse"] = true,
				["rune"] = 2,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
			},
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["id"] = "Death Rune 2",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["selfPoint"] = "LEFT",
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
		},
		["Blood Rune1"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Frost",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["color"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["desaturate"] = false,
			["selfPoint"] = "LEFT",
			["id"] = "Blood Rune1",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["numTriggers"] = 1,
			["trigger"] = {
				["use_rune"] = true,
				["bloodRunes"] = "1",
				["bloodRunes_operator"] = "==",
				["use_power"] = true,
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["names"] = {
				},
				["event"] = "Death Knight Rune",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_includeDeath"] = false,
				["unit"] = "player",
				["power"] = "1",
				["rune"] = 1,
				["power_operator"] = ">=",
				["use_inverse"] = true,
				["use_bloodRunes"] = false,
			},
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
		},
		["Blood Rune 2 2"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["color"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_power"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["event"] = "Death Knight Rune",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["power_operator"] = ">=",
				["use_inverse"] = true,
				["rune"] = 2,
				["power"] = "2",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["id"] = "Blood Rune 2 2",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["selfPoint"] = "LEFT",
			["numTriggers"] = 1,
			["width"] = 50,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Runes Blood",
		},
		["B Rune 1 CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 21.428466796875,
			["stacksFlags"] = "None",
			["yOffset"] = -248.5713500976563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.2100000381469727, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 4,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Walkway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["backgroundOffset"] = 0,
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["untrigger"] = {
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["trigger"] = {
				["use_rune"] = true,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["use_inverse"] = false,
				["event"] = "Death Knight Rune",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["rune"] = 1,
				["unit"] = "player",
				["type"] = "status",
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["parent"] = "Runes Frost",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["crop_y"] = 0.41,
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["border"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "B Rune 1 CD",
			["barInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["numTriggers"] = 1,
			["height"] = 11.33827686309815,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["stacksFont"] = "Friz Quadrata TT",
			["backgroundColor"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
		},
		["4 Holy Power"] = {
			["xOffset"] = -50,
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "LEFT",
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["preset"] = "shrink",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "shrink",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["power"] = "4",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["id"] = "4 Holy Power",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Holy Power Prot",
		},
		["Mana Tea 2  2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -110,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 123761,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["height"] = 38.75,
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Monk Mainbar",
			["stacksPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["additional_triggers"] = {
			},
			["untrigger"] = {
				["spellName"] = 123761,
			},
			["frameStrata"] = 1,
			["width"] = 38.75,
			["selfPoint"] = "CENTER",
			["inverse"] = true,
			["numTriggers"] = 1,
			["xOffset"] = -10,
			["id"] = "Mana Tea 2  2",
			["stickyDuration"] = false,
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				0, -- [2]
				0.8352941176470589, -- [3]
				1, -- [4]
			},
		},
		["Healing Elixirs EB"] = {
			["fontSize"] = 6,
			["displayStacks"] = "%c",
			["xOffset"] = -11.99994939344288,
			["parent"] = "Elusive Brew 2.0",
			["load"] = {
				["use_never"] = false,
				["talent"] = 13,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 122278,
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = 11.99998440770941,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 2,
			["customTextUpdate"] = "update",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["icon"] = true,
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
							"Elusive Brew", -- [1]
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["width"] = 15,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["trigger"] = {
				["spellId"] = "128939",
				["use_inverse"] = false,
				["names"] = {
					"Healing Elixirs", -- [1]
				},
				["custom_hide"] = "timed",
				["type"] = "aura",
				["unevent"] = "auto",
				["spellName"] = 122278,
				["use_unit"] = true,
				["event"] = "Action Usable",
				["use_spellId"] = true,
				["use_name"] = true,
				["use_spellName"] = true,
				["ownOnly"] = true,
				["unit"] = "player",
				["use_remaining"] = false,
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["id"] = "Healing Elixirs EB",
			["height"] = 15,
			["regionType"] = "icon",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DM 2"] = {
			["parent"] = "Monk Mainbar",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 122783,
			},
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["id"] = "DM 2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 38.75,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 122783,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["height"] = 38.75,
			["xOffset"] = 112,
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Frost Rune 2 2"] = {
			["color"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["power_operator"] = "<=",
				["use_power"] = true,
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["xOffset"] = -50,
			["trigger"] = {
				["use_rune"] = true,
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Death Knight Rune",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["use_deathRune"] = false,
				["use_power"] = true,
				["rune"] = 6,
				["power"] = "4",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Frost Rune 2 2",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["selfPoint"] = "LEFT",
			["numTriggers"] = 1,
			["width"] = 50,
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Runes Blood",
		},
		["Sacred Shield"] = {
			["color"] = {
				0.7607843137254902, -- [1]
				0.7568627450980392, -- [2]
				0.8196078431372549, -- [3]
				0.449999988079071, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["untrigger"] = {
			},
			["disjunctive"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["glow_frame"] = "ElvUI_Bar1Button7",
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura7",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["inverse"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["names"] = {
					"Sacred Shield", -- [1]
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "Sacred Shield",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 300,
			["rotation"] = 0,
			["xOffset"] = 0,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 300,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["use_spec"] = true,
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["Stampede"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = -205.7141472255916,
			["stacksPoint"] = "BOTTOMRIGHT",
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["icon"] = true,
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["names"] = {
					"Stampede", -- [1]
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 64,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["id"] = "Stampede",
			["height"] = 64,
			["yOffset"] = 220.0000008434637,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["use_spec"] = true,
				["use_size"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "pvp",
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Chi 5"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"1", -- [1]
				"2", -- [2]
				"3", -- [3]
				"4", -- [4]
				"5", -- [5]
			},
			["animate"] = false,
			["xOffset"] = -130,
			["regionType"] = "dynamicgroup",
			["border"] = "None",
			["yOffset"] = -95,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["sort"] = "none",
			["radius"] = 200,
			["space"] = 7,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["additional_triggers"] = {
			},
			["backgroundInset"] = 0,
			["align"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Chi 5",
			["selfPoint"] = "LEFT",
			["frameStrata"] = 1,
			["width"] = 263.0000610351563,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["height"] = 14.99996948242188,
			["borderOffset"] = -10,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["1 2"] = {
			["xOffset"] = -530.8329467773438,
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["color"] = {
				0, -- [1]
				0.8745098039215686, -- [2]
				0.4431372549019608, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["power"] = "1",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["animation"] = {
				["start"] = {
					["alphaType"] = "alphaPulse",
					["type"] = "custom",
					["use_rotate"] = false,
					["duration_type"] = "seconds",
					["rotateType"] = "wobble",
					["use_alpha"] = false,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "1 2",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 47,
			["discrete_rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = 7,
				["use_talent"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Chi 4",
		},
		["Chi Wave CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["spellName"] = 115098,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["parent"] = "30 Talents",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellId"] = "115308",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_spellId"] = true,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 115098,
			},
			["text"] = false,
			["barColor"] = {
				0.4862745098039216, -- [1]
				0.7176470588235294, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
			["height"] = 40,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["talent"] = 4,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_talent"] = true,
			},
			["numTriggers"] = 1,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "%n",
			["barInFront"] = true,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacks"] = true,
			["frameStrata"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["id"] = "Chi Wave CD",
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				0.984313725490196, -- [1]
				1, -- [2]
				0.984313725490196, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["stacksFont"] = "Friz Quadrata TT",
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 40,
			["textSize"] = 12,
			["borderInset"] = 11,
			["inverse"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["orientation"] = "VERTICAL_INVERSE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["disjunctive"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Elusive Brew Duration 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "115308",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["use_spellId"] = true,
				["custom_hide"] = "timed",
				["fullscan"] = true,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["barColor"] = {
				1, -- [1]
				0.596078431372549, -- [2]
				0.2235294117647059, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Elusive Brew 2.0",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["textSize"] = 12,
			["timer"] = true,
			["height"] = 40,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["displayTextLeft"] = "%n",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = true,
			["barInFront"] = true,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacks"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["alpha"] = 1,
			["icon_side"] = "RIGHT",
			["borderOffset"] = 5,
			["id"] = "Elusive Brew Duration 2",
			["auto"] = true,
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["timerSize"] = 12,
			["displayTextRight"] = "%p",
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 40,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["orientation"] = "VERTICAL_INVERSE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["yOffset"] = 0,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Stagger Med 3"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 227,
			["stacksFlags"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["useTooltip"] = false,
			["parent"] = "Stagger",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["names"] = {
					"Moderate Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["event"] = "Health",
				["debuffType"] = "HARMFUL",
			},
			["text"] = false,
			["barColor"] = {
				1, -- [1]
				0.9607843137254902, -- [2]
				0.1803921568627451, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
			["yOffset"] = -9,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_never"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Romancer",
				["use_spec"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_name"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["inverse"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["frameStrata"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["id"] = "Stagger Med 3",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["stacksFont"] = "Friz Quadrata TT",
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 43.00014545965833,
			["barInFront"] = true,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 104,
			["orientation"] = "VERTICAL_INVERSE",
			["displayIcon"] = "Interface\\Icons\\ability_monk_roundhousekick",
			["displayTextLeft"] = "%p",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
}
