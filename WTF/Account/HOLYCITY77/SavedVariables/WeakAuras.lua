
WeakAurasSaved = {
	["login_squelch_time"] = 5,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -28.9755859375,
		["width"] = 630,
		["height"] = 492,
		["yOffset"] = -391.78564453125,
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
		["Spinning Crane Kick"] = "Interface\\Icons\\ability_monk_cranekick_new",
		["Zen Sphere"] = "Interface\\Icons\\ability_monk_forcesphere",
		["Vital Mists"] = "Interface\\Icons\\ability_shaman_repulsiontotem",
		["Serpent's Zeal"] = "Interface\\Icons\\ability_monk_ascension",
		["Heavy Stagger"] = "INTERFACE\\ICONS\\priest_icon_chakra_red",
		["Sacred Shield"] = "Interface\\Icons\\Ability_Paladin_BlessedMending",
		["Frigid Assault"] = "Interface\\Icons\\Ability_Mage_DeepFreeze",
		["Righteous Fury"] = "Interface\\Icons\\Spell_Holy_SealOfFury",
		["Guard"] = "Interface\\Icons\\ability_monk_guard",
		["Mana Tea"] = "Interface\\Icons\\inv_misc_herb_jadetealeaf",
		["Freezing Fog"] = "Interface\\Icons\\Spell_Frost_ArcticWinds",
		["Light Stagger"] = "INTERFACE\\ICONS\\priest_icon_chakra_green",
	},
	["displays"] = {
		["RJW"] = {
			["parent"] = "Monk Mainbar 2",
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
			},
			["id"] = "RJW",
			["yOffset"] = -160,
			["regionType"] = "icon",
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
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Rushing Jade Wind", -- [1]
				},
				["use_spellId"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = -340,
			["frameStrata"] = 5,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["width"] = 38.75,
			["height"] = 38.75,
			["anchorPoint"] = "CENTER",
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
				["use_name"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
		["Serpent's Zeal"] = {
			["parent"] = "Monk Mainbar 2",
			["fontSize"] = 12,
			["displayStacks"] = "%s, %p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["additional_triggers"] = {
			},
			["yOffset"] = -160,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Serpent's Zeal", -- [1]
				},
				["use_spellId"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
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
			["id"] = "Serpent's Zeal",
			["xOffset"] = -340,
			["frameStrata"] = 5,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["width"] = 38.75,
			["height"] = 38.75,
			["untrigger"] = {
			},
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
				["use_name"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
		["Holy Prism"] = {
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["parent"] = "Holy CDs",
			["xOffset"] = 272.1427001953125,
			["stacksPoint"] = "BOTTOMRIGHT",
			["untrigger"] = {
				["spellName"] = 114165,
			},
			["yOffset"] = -103.5714111328125,
			["regionType"] = "icon",
			["anchorPoint"] = "CENTER",
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
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slideright",
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
				["type"] = "status",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_spellName"] = true,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_inverse"] = false,
				["spellName"] = 114165,
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 45,
			["id"] = "Holy Prism",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 45,
			["color"] = {
				0.9803921568627451, -- [1]
				0.9803921568627451, -- [2]
				0.9803921568627451, -- [3]
				1, -- [4]
			},
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
				["use_zone"] = false,
				["use_combat"] = true,
				["use_difficulty"] = false,
				["size"] = {
					["multi"] = {
						["ten"] = true,
						["party"] = true,
						["twentyfive"] = true,
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
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Blood",
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
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["power"] = "3",
				["use_deathRune"] = false,
				["use_power"] = true,
				["rune"] = 5,
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
			["id"] = "Frost Rune 1 2",
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
			["yOffset"] = 0,
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
			["yOffset"] = -50,
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["expanded"] = false,
			["sort"] = "none",
			["backgroundInset"] = 0,
			["space"] = 5,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["additional_triggers"] = {
			},
			["borderOffset"] = 16,
			["id"] = "Notice Group",
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
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["selfPoint"] = "BOTTOM",
			["frameStrata"] = 1,
			["width"] = 40.00018310546875,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["align"] = "CENTER",
			["height"] = 130.0000305175781,
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
				["spellName"] = 122278,
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
				0.2078431372549019, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Monk CD Group",
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
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["timer"] = true,
			["height"] = 30,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = 14,
				["use_talent"] = true,
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
			["displayTextLeft"] = "%n",
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
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderOffset"] = 5,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["alpha"] = 0.5,
			["icon_side"] = "RIGHT",
			["stacksFont"] = "Friz Quadrata TT",
			["id"] = "DH CD 2.0",
			["displayTextRight"] = "%p",
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 30,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["inverse"] = true,
			["stickyDuration"] = false,
			["orientation"] = "VERTICAL_INVERSE",
			["textSize"] = 12,
			["yOffset"] = 0,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LC"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["xOffset"] = 144,
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["id"] = "LC",
			["inverse"] = false,
			["width"] = 38.75,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 116849,
				["custom_hide"] = "timed",
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
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
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 5,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["untrigger"] = {
				["spellName"] = 116849,
			},
			["stacksPoint"] = "CENTER",
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
			["borderBackdrop"] = "Blizzard Tooltip",
			["sequence"] = 1,
			["yOffset"] = 70,
			["scale"] = 1,
			["anchorPoint"] = "CENTER",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "model",
			["model_x"] = 0,
			["borderEdge"] = "None",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["model_path"] = "SPELLS/BattleShout_Cast_Base.m2",
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["do_sound"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.mp3",
					["glow_action"] = "show",
				},
				["finish"] = {
					["do_glow"] = false,
				},
			},
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["inverse"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["names"] = {
					"Righteous Fury", -- [1]
				},
			},
			["model_z"] = 0,
			["advance"] = false,
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
			["id"] = "Righteous Fury",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 1680,
			["rotation"] = 0,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 819,
			["borderSize"] = 16,
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
			["xOffset"] = 0,
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
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Health",
				["names"] = {
					"Bastion of Glory", -- [1]
				},
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
			["cooldown"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "BoG Stacks",
			["additional_triggers"] = {
			},
			["color"] = {
				0.9803921568627451, -- [1]
				0.9607843137254902, -- [2]
				1, -- [3]
				0.449999988079071, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 14.47620582580566,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
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
			["justify"] = "LEFT",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stacksPoint"] = "CENTER",
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
				["spellName"] = 115176,
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
				0.1411764705882353, -- [1]
				0.7647058823529411, -- [2]
				0.4156862745098039, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Monk CD Group",
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
			["timer"] = true,
			["height"] = 30,
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
			["stickyDuration"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
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
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["alpha"] = 0.5,
			["icon_side"] = "RIGHT",
			["stacksFont"] = "Friz Quadrata TT",
			["additional_triggers"] = {
			},
			["displayTextRight"] = "%p",
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["auto"] = true,
			["id"] = "ZM CD 2.0",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 30,
			["displayTextLeft"] = "%n",
			["borderInset"] = 11,
			["inverse"] = true,
			["textSize"] = 12,
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
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Blood",
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
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["power"] = "5",
				["use_deathRune"] = true,
				["use_inverse"] = true,
				["rune"] = 6,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
			},
			["desaturate"] = false,
			["selfPoint"] = "LEFT",
			["id"] = "Death Rune 2 2",
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
			["xOffset"] = -50,
		},
		["Unholy Rune 2"] = {
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
			["selfPoint"] = "LEFT",
			["additional_triggers"] = {
			},
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["custom_hide"] = "timed",
				["power"] = "5",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["rune"] = 4,
				["use_unit"] = true,
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
			["id"] = "Unholy Rune 2",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["color"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
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
			["parent"] = "Runes Frost",
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
				["rune"] = 3,
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
			["parent"] = "Runes Blood",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["border"] = true,
			["borderSize"] = 5,
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateForeground"] = false,
			["height"] = 11.33827686309815,
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["id"] = "D Rune 3 CD 2",
			["additional_triggers"] = {
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["stacksFont"] = "Friz Quadrata TT",
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
			["numTriggers"] = 1,
			["barInFront"] = true,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["icon"] = false,
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
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["displayTextLeft"] = "%n",
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
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["selfPoint"] = "CENTER",
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
				["custom_hide"] = "timed",
				["fullscan"] = true,
				["useCount"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["icon"] = true,
			["font"] = "ElvUI Font",
			["timer"] = true,
			["alpha"] = 1,
			["height"] = 38.75,
			["timerFlags"] = "None",
			["load"] = {
				["use_level"] = true,
				["level_operator"] = ">",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_class"] = true,
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
				["use_never"] = false,
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
			["borderSize"] = 16,
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
			["additional_triggers"] = {
			},
			["zoom"] = 0.2,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "icon",
			["stacks"] = true,
			["displayTextRight"] = "%s",
			["icon_side"] = "RIGHT",
			["stacksFont"] = "ElvUI Font",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["texture"] = "VuhDo - Polished Wood",
			["stacksContainment"] = "INSIDE",
			["borderOffset"] = 5,
			["auto"] = true,
			["timerSize"] = 12,
			["id"] = "HS",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 38.75,
			["textSize"] = 12,
			["borderInset"] = 11,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["orientation"] = "HORIZONTAL",
			["xOffset"] = 0,
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
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["id"] = "Blood Rune 2",
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
			["parent"] = "Runes Frost",
		},
		["JST 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 20,
			["displayStacks"] = "%p",
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
				["use_name"] = false,
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
			["parent"] = "Monk Mainbar",
			["untrigger"] = {
				["spellName"] = 116847,
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
				["custom_hide"] = "timed",
				["spellName"] = 116847,
			},
			["yOffset"] = -110,
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
			["id"] = "JST 2",
			["icon"] = true,
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = 54,
			["frameStrata"] = 1,
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
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
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
			["parent"] = "Elusive Brew 2.0",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
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
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["id"] = "Max Stacks",
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "128939",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["countOperator"] = "==",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["use_spellId"] = true,
				["count"] = "15",
				["names"] = {
					"Elusive Brew", -- [1]
				},
				["unit"] = "player",
				["custom_hide"] = "timed",
				["useCount"] = true,
				["fullscan"] = true,
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 40,
			["additional_triggers"] = {
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_frame"] = "WeakAuras:Max Stacks",
					["glow_action"] = "show",
				},
				["finish"] = {
				},
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
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["TFT"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["yOffset"] = 0,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 116680,
				["custom_hide"] = "timed",
			},
			["untrigger"] = {
				["spellName"] = 116680,
			},
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
			["id"] = "TFT",
			["icon"] = true,
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = 48,
			["frameStrata"] = 1,
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
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.1176470588235294, -- [2]
				0.2352941176470588, -- [3]
				1, -- [4]
			},
		},
		["Zen Meditation 2 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["anchorPoint"] = "CENTER",
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
				["spellName"] = 115176,
			},
			["untrigger"] = {
				["spellName"] = 115176,
			},
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
			["id"] = "Zen Meditation 2 2",
			["xOffset"] = -74,
			["frameStrata"] = 1,
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
			["yOffset"] = -110,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.7294117647058823, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["RV 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["xOffset"] = 112,
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["additional_triggers"] = {
			},
			["inverse"] = false,
			["width"] = 38.75,
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
				["spellName"] = 115310,
				["custom_hide"] = "timed",
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
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
			["id"] = "RV 2",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["untrigger"] = {
				["spellName"] = 115310,
			},
			["stacksPoint"] = "CENTER",
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
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["use_spellName"] = true,
				["use_spellId"] = true,
				["spellName"] = 122783,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
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
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["timer"] = true,
			["height"] = 30,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = 15,
				["use_talent"] = true,
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
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderOffset"] = 5,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["alpha"] = 0.5,
			["icon_side"] = "RIGHT",
			["stacksFont"] = "Friz Quadrata TT",
			["id"] = "DM CD 2.0",
			["displayTextRight"] = "%p",
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 30,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["orientation"] = "VERTICAL_INVERSE",
			["textSize"] = 12,
			["yOffset"] = 0,
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
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["parent"] = "Holy Power Holy",
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
				["type"] = "status",
				["power"] = "5",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["width"] = 50,
			["selfPoint"] = "LEFT",
			["additional_triggers"] = {
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
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
			["numTriggers"] = 1,
			["id"] = "5 Holy Power 2",
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
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["4 Holy Power 2"] = {
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
			["parent"] = "Holy Power Holy",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["id"] = "4 Holy Power 2",
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
			["width"] = 50,
			["selfPoint"] = "LEFT",
			["additional_triggers"] = {
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "status",
				["power"] = "4",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
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
			["yOffset"] = 0,
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
			["yOffset"] = -70,
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["expanded"] = false,
			["sort"] = "ascending",
			["backgroundInset"] = 0,
			["space"] = 0,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["additional_triggers"] = {
			},
			["borderOffset"] = 16,
			["id"] = "Holy Power Holy",
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
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 250,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["align"] = "CENTER",
			["height"] = 50.00003051757813,
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
			["untrigger"] = {
			},
			["frameStrata"] = 1,
			["additional_triggers"] = {
			},
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
				["debuffType"] = "HARMFUL",
				["type"] = "aura",
				["names"] = {
					"Heavy Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["unit"] = "player",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["text"] = false,
			["barColor"] = {
				1, -- [1]
				0.2431372549019608, -- [2]
				0.2705882352941176, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["displayTextLeft"] = "%p",
			["stickyDuration"] = false,
			["yOffset"] = 18,
			["timer"] = true,
			["height"] = 157,
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
			["numTriggers"] = 1,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
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
			["barInFront"] = true,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacks"] = true,
			["alpha"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["additional_triggers"] = {
			},
			["borderOffset"] = 5,
			["timerSize"] = 12,
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Stagger Heavy 3",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 43.00014545965833,
			["textSize"] = 12,
			["borderInset"] = 11,
			["inverse"] = false,
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
		["Zen Sphere Hot Glow"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "30 Talents",
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
			["untrigger"] = {
				["spellName"] = 124081,
			},
			["yOffset"] = 0,
			["regionType"] = "icon",
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_frame"] = "WeakAuras:Zen Sphere Hot Glow",
					["glow_action"] = "show",
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 2,
			["customTextUpdate"] = "update",
			["id"] = "Zen Sphere Hot Glow",
			["icon"] = true,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 124081,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
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
			["additional_triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura",
						["inverse"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
							"Zen Sphere", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 40,
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
			["untrigger"] = {
			},
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
			["additional_triggers"] = {
			},
			["id"] = "HP",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "bounceDecay",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
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
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_percenthealth"] = true,
				["percenthealth_operator"] = "<",
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 400,
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 400,
			["rotate"] = true,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["PALADIN"] = true,
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
			["xOffset"] = 0,
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
			["yOffset"] = 25,
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["expanded"] = false,
			["sort"] = "none",
			["align"] = "CENTER",
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
			["selfPoint"] = "LEFT",
			["id"] = "Holy CDs",
			["radius"] = 200,
			["frameStrata"] = 1,
			["width"] = 138.9998779296875,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 45.00003051757813,
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
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Blood",
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
			["trigger"] = {
				["use_rune"] = true,
				["use_inverse"] = true,
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
				["use_deathRune"] = false,
				["use_power"] = true,
				["rune"] = 4,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["id"] = "Unholy Rune 2 2",
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
			["xOffset"] = -50,
		},
		["Fortifying Brew 2.0"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Monk CD Group",
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
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["xOffset"] = 0,
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
			["width"] = 30,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["trigger"] = {
				["spellId"] = "128939",
				["use_inverse"] = false,
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unevent"] = "auto",
				["spellName"] = 115203,
				["names"] = {
					"Guard", -- [1]
				},
				["event"] = "Action Usable",
				["use_spellName"] = true,
				["use_name"] = true,
				["use_spellId"] = true,
				["ownOnly"] = true,
				["unit"] = "player",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["id"] = "Fortifying Brew 2.0",
			["height"] = 30,
			["untrigger"] = {
				["spellName"] = 115203,
			},
			["stacksPoint"] = "BOTTOMRIGHT",
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
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["parent"] = "Holy Power Prot",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["id"] = "5 Holy Power",
			["selfPoint"] = "LEFT",
			["width"] = 50,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
				},
			},
			["additional_triggers"] = {
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "status",
				["power"] = "5",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
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
			["yOffset"] = 0,
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
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Fortifying Brew", -- [1]
					"Dampen Harm", -- [2]
				},
				["use_spellId"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
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
				["use_class"] = true,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["id"] = "Fortifying Brew",
			["frameStrata"] = 5,
			["width"] = 38.75,
			["yOffset"] = -160,
			["numTriggers"] = 1,
			["inverse"] = false,
			["stickyDuration"] = false,
			["disjunctive"] = true,
			["selfPoint"] = "CENTER",
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
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["parent"] = "Holy Power Prot",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["additional_triggers"] = {
			},
			["selfPoint"] = "LEFT",
			["width"] = 50,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
				},
			},
			["id"] = "3 Holy Power",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "status",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
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
			["yOffset"] = 0,
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
				["spellName"] = 115295,
			},
			["text"] = false,
			["barColor"] = {
				1, -- [1]
				0.9137254901960784, -- [2]
				0.1333333333333333, -- [3]
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
			["barInFront"] = true,
			["height"] = 40,
			["timer"] = true,
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
			["numTriggers"] = 1,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
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
			["borderSize"] = 16,
			["frameStrata"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["id"] = "Guard Cooldown 2.0",
			["borderOffset"] = 5,
			["timerSize"] = 12,
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksFont"] = "Friz Quadrata TT",
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 38,
			["stickyDuration"] = false,
			["borderInset"] = 11,
			["inverse"] = true,
			["displayTextLeft"] = "%n",
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
		["Chi Wave"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "30 Talents",
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
			["yOffset"] = 0,
			["untrigger"] = {
				["spellName"] = 115098,
			},
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_frame"] = "WeakAuras:Chi Wave",
					["do_custom"] = false,
					["glow_action"] = "show",
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 115098,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
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
			["id"] = "Chi Wave",
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
		["Dark Succor"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "DK CDs",
			["xOffset"] = 173.5714721679688,
			["stacksPoint"] = "BOTTOMRIGHT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -102.8569641113281,
			["regionType"] = "icon",
			["untrigger"] = {
			},
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "aura",
				["spellId"] = "101568",
				["unevent"] = "auto",
				["use_unit"] = true,
				["ownOnly"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["use_spellId"] = true,
				["unit"] = "player",
				["spellName"] = 0,
				["use_spellName"] = true,
				["names"] = {
					"Dark Succor", -- [1]
				},
				["use_targetRequired"] = false,
				["custom_hide"] = "timed",
			},
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["additional_triggers"] = {
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidebottom",
				},
			},
			["id"] = "Dark Succor",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["width"] = 45,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 45,
			["anchorPoint"] = "CENTER",
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
			["parent"] = "Chi 5",
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
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["width"] = 47,
			["selfPoint"] = "CENTER",
			["id"] = "1",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["trigger"] = {
				["type"] = "status",
				["power"] = "1",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
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
			["untrigger"] = {
			},
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
			["parent"] = "Chi 5",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = -530.8329467773438,
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
			["width"] = 47,
			["selfPoint"] = "CENTER",
			["id"] = "3",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["trigger"] = {
				["type"] = "status",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
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
			["untrigger"] = {
			},
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
			["parent"] = "Chi 5",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = -530.8329467773438,
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
			["width"] = 47,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["power"] = "2",
				["custom_hide"] = "timed",
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["id"] = "2",
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
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
			["untrigger"] = {
			},
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
			["parent"] = "Chi 5",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = -530.8329467773438,
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
			["width"] = 47,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["power"] = "5",
				["custom_hide"] = "timed",
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["id"] = "5",
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
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
			["untrigger"] = {
			},
		},
		["4"] = {
			["xOffset"] = -530.8329467773438,
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Chi 5",
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
			["width"] = 47,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["power"] = "4",
				["custom_hide"] = "timed",
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["id"] = "4",
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 15,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
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
			["untrigger"] = {
			},
		},
		["Obliterate"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "DK CDs",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["xOffset"] = 173.5714721679688,
			["untrigger"] = {
				["spellName"] = 49020,
			},
			["regionType"] = "icon",
			["yOffset"] = -102.8569641113281,
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["use_spellName"] = true,
				["inverse"] = true,
				["unit"] = "player",
				["names"] = {
					"Howling Blast", -- [1]
				},
				["custom_hide"] = "timed",
				["use_targetRequired"] = false,
				["spellName"] = 49020,
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
			["animation"] = {
				["start"] = {
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "slidebottom",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Killing Machine", -- [1]
						},
						["custom_hide"] = "timed",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["id"] = "Obliterate",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["icon"] = true,
			["height"] = 45,
			["anchorPoint"] = "CENTER",
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
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["parent"] = "Holy Power Prot",
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
			["selfPoint"] = "LEFT",
			["width"] = 50,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
				},
			},
			["additional_triggers"] = {
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["id"] = "1 Holy Power",
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "status",
				["power"] = "1",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
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
			["yOffset"] = 0,
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
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["parent"] = "Holy Power Prot",
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
					["preset"] = "shrink",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "shrink",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["width"] = 50,
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["type"] = "status",
				["power"] = "2",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["id"] = "2 Holy Power",
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
			["xOffset"] = -50,
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
				["use_unit"] = true,
				["percentpower_operator"] = "<",
				["use_percentpower"] = true,
				["percentpower"] = "35",
				["unit"] = "player",
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "event",
			["displayTextLeft"] = " %p",
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
				["unit"] = "player",
				["unevent"] = "auto",
				["use_unit"] = true,
				["percentpower"] = "35",
				["percentpower_operator"] = ">=",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["desaturateForeground"] = false,
			["height"] = 5.500040531158447,
			["timerFlags"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
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
			["timer"] = false,
			["numTriggers"] = 1,
			["barInFront"] = true,
			["mirror"] = false,
			["borderEdge"] = "Plain White",
			["displayText"] = "%p",
			["borderSize"] = 24,
			["textSize"] = 20,
			["icon_side"] = "LEFT",
			["icon"] = false,
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
			["displayTextRight"] = " ",
			["color"] = {
				1, -- [1]
				0.8549019607843137, -- [2]
				0.2313725490196079, -- [3]
				1, -- [4]
			},
			["id"] = "Health",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 209,
			["border"] = false,
			["progressPrecision"] = 0,
			["inverse"] = false,
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
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.41,
			["textFlags"] = "None",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Mana Tea 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 123761,
				["custom_hide"] = "timed",
			},
			["yOffset"] = -110,
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["id"] = "Mana Tea 2",
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
			["additional_triggers"] = {
			},
			["xOffset"] = -10,
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
				["spellName"] = 123761,
			},
			["stacksPoint"] = "CENTER",
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
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 121253,
				["custom_hide"] = "timed",
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
			["yOffset"] = -4.496429443359375,
			["displayTextLeft"] = "%p",
			["height"] = 5.5,
			["timer"] = false,
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
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
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
			["stacks"] = false,
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
			["additional_triggers"] = {
			},
			["auto"] = true,
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["timerSize"] = 12,
			["id"] = "Keg Smash Timer",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 105,
			["barInFront"] = true,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["textSize"] = 12,
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
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "pulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "shrink",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellId"] = "115308",
				["remaining_operator"] = "==",
				["use_unit"] = true,
				["remaining"] = "30",
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["use_spellId"] = true,
				["use_spellName"] = true,
				["inverse"] = true,
				["spellName"] = 123402,
				["use_remaining"] = false,
				["use_targetRequired"] = false,
				["use_inverse"] = false,
				["ownOnly"] = true,
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
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
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
			["displayTextLeft"] = "%n",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["borderOffset"] = 5,
			["additional_triggers"] = {
			},
			["auto"] = true,
			["texture"] = "Touchy - White",
			["textFont"] = "ElvUI Pixel",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["timerSize"] = 12,
			["id"] = "Glyphed Guard CD 2.0",
			["timerFont"] = "ElvUI Pixel",
			["alpha"] = 1,
			["width"] = 40,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["inverse"] = true,
			["stickyDuration"] = false,
			["orientation"] = "VERTICAL_INVERSE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
		},
		["RV"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["yOffset"] = 0,
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
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
				["spellName"] = 115310,
			},
			["untrigger"] = {
				["spellName"] = 115310,
			},
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
			["id"] = "RV",
			["icon"] = true,
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = 112,
			["frameStrata"] = 1,
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
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
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
			["parent"] = "Chi 4",
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
			["width"] = 47,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["power"] = "4",
				["custom_hide"] = "timed",
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["id"] = "4 2",
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
			["untrigger"] = {
			},
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
			["parent"] = "Chi 4",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = -530.8329467773438,
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
			["width"] = 47,
			["selfPoint"] = "CENTER",
			["id"] = "3 2",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "status",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
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
			["untrigger"] = {
			},
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
			["load"] = {
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = true,
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
				["use_combat"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 257.142822265625,
			["regionType"] = "icon",
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Wild Growth",
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
				["type"] = "status",
				["unevent"] = "auto",
				["ownOnly"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["spellName"] = 48438,
				["use_spellName"] = true,
				["use_inverse"] = true,
				["names"] = {
					"Wild Growth", -- [1]
				},
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["width"] = 64,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["additional_triggers"] = {
			},
			["height"] = 64,
			["untrigger"] = {
				["spellName"] = 48438,
			},
			["stacksPoint"] = "BOTTOMRIGHT",
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Monk CD Group",
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
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["xOffset"] = 0,
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
			["width"] = 30,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Dampen Harm 2.0",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["trigger"] = {
				["spellId"] = "128939",
				["ownOnly"] = true,
				["use_unit"] = true,
				["spellName"] = 122278,
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
				["use_inverse"] = false,
				["unit"] = "player",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["additional_triggers"] = {
			},
			["height"] = 30,
			["untrigger"] = {
				["spellName"] = 122278,
			},
			["stacksPoint"] = "BOTTOMRIGHT",
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
			["untrigger"] = {
			},
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["id"] = "Shuffle Group",
			["frameStrata"] = 1,
			["desc"] = "Displays duration of Shuffle and alerts if it's missing.",
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
			["anchorPoint"] = "CENTER",
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["expanded"] = false,
			["sort"] = "descending",
			["backgroundInset"] = 9,
			["space"] = 2,
			["background"] = "Blizzard Dialog Background Dark",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
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
			["id"] = "Monk Mainbar 2",
			["selfPoint"] = "LEFT",
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
			["frameStrata"] = 3,
			["width"] = 446.2499084472656,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["additional_triggers"] = {
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
			["yOffset"] = -110,
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
				["custom_hide"] = "timed",
				["type"] = "aura",
				["names"] = {
					"Light Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
				["unit"] = "player",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
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
			["stacksPoint"] = "BOTTOM",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["totalPrecision"] = 0,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
							"Moderate Stagger", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "aura",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
							"Heavy Stagger", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["justify"] = "CENTER",
			["numTriggers"] = 3,
			["id"] = "Stagger Color 3",
			["auto"] = true,
			["frameStrata"] = 1,
			["width"] = 43,
			["xOffset"] = 227.0000114206689,
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
			["yOffset"] = -104,
			["stickyDuration"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["RM 2 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["untrigger"] = {
				["spellName"] = 115151,
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
				["custom_hide"] = "timed",
				["spellName"] = 115151,
			},
			["yOffset"] = -110,
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["scaleFunc"] = "return function(progress, startX, startY, scaleX, scaleY)\n    local angle = progress * 2 * math.pi\n    return startX + (progress * (scaleX - startX)), math.cos(angle) * scaleY\nend\n",
					["duration"] = "3",
					["colorA"] = 1,
					["colorG"] = 0,
					["scaleType"] = "fauxflip",
					["duration_type"] = "seconds",
					["type"] = "none",
					["use_color"] = true,
					["scaley"] = 1,
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "straightColor",
					["colorR"] = 1,
					["colorB"] = 0.0392156862745098,
					["colorFunc"] = "return function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\nend\n",
					["rotate"] = 0,
					["scalex"] = 1,
					["use_scale"] = true,
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
			["additional_triggers"] = {
			},
			["icon"] = true,
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "RM 2 2",
			["xOffset"] = -42,
			["frameStrata"] = 1,
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
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
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
				["unevent"] = "auto",
				["unit"] = "player",
				["names"] = {
				},
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
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["borderSize"] = 16,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["timerSize"] = 12,
			["id"] = "Runic Power",
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Walkway",
			["auto"] = true,
			["displayTextRight"] = "%p",
			["additional_triggers"] = {
			},
			["timerFont"] = "Walkway",
			["frameStrata"] = 1,
			["width"] = 300,
			["borderOffset"] = 5,
			["borderInset"] = 1,
			["inverse"] = false,
			["height"] = 15,
			["orientation"] = "HORIZONTAL",
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
			["yOffset"] = -230,
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
			["backgroundInset"] = 9,
			["space"] = 2,
			["background"] = "Blizzard Dialog Background Dark",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["id"] = "Monk Mainbar",
			["borderOffset"] = 12,
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
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
			["width"] = 894.4999694824219,
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
				["type"] = "custom",
				["custom_type"] = "event",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["customDuration"] = "function()\n    if not WA_ReMists then return 0, 0 end\n    if WA_ReMists.count == 0 then return 0, 0 end\n    return WA_ReMists.duration, WA_ReMists.shortest\nend",
				["names"] = {
				},
				["events"] = "UNIT_AURA",
				["customStacks"] = "function()\n    if not WA_ReMists then return 0 end\n    return WA_ReMists.count\nend",
				["subeventSuffix"] = "_CAST_START",
				["custom"] = "function()\n    local ReMistsId = 119611\n    local prefix = \"raid\"\n    local numPlayers = GetNumGroupMembers()\n    \n    local numMists = 0\n    local mistDur = 0\n    local shortestMist = nil    \n    \n    if not IsInRaid() then\n        prefix = \"party\"\n        numPlayers = numPlayers -1\n        \n        for a=1, 40 do\n            local _, _, _, _, _, duration, expirationTime, unitCaster, _, _, spellId = UnitAura(\"player\", a)\n            if spellId and spellId == ReMistsId then\n                if unitCaster == \"player\" and expirationTime then\n                    numMists = numMists + 1\n                    mistDur = duration\n                    if not shortestMist or expirationTime < shortestMist then\n                        shortestMist = expirationTime\n                    end\n                    break\n                end\n            end\n        end\n    end\n    \n    for i=1,numPlayers do\n        local unit = prefix..i\n        for a=1, 40 do\n            local _, _, _, _, _, duration, expirationTime, unitCaster, _, _, spellId = UnitAura(unit, a)\n            if spellId and spellId == ReMistsId then\n                if unitCaster == \"player\" and expirationTime then\n                    numMists = numMists + 1\n                    mistDur = duration\n                    if not shortestMist or expirationTime < shortestMist then\n                        shortestMist = expirationTime\n                    end\n                    break\n                end\n            end\n        end\n    end\n    \n    WA_ReMists = {\n        count = numMists,\n        duration = mistDur,\n        shortest = shortestMist\n    }\n    \n    return numMists > 0\nend",
				["unit"] = "player",
				["custom_hide"] = "custom",
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
				["size"] = {
					["multi"] = {
					},
				},
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
				["use_talent"] = true,
			},
			["fontSize"] = 15,
			["displayStacks"] = "%c",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["xOffset"] = -289.17,
			["additional_triggers"] = {
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 50,
			["untrigger"] = {
				["custom"] = "function()\n    if not WA_ReMists then return true end\n    if WA_ReMists.count == 0 then return true end\n    return false\nend",
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["id"] = "ReMists",
			["icon"] = true,
			["displayIcon"] = "Interface\\Icons\\ability_monk_renewingmists",
			["cooldown"] = false,
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
			["parent"] = "Chi 4",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = -530.8329467773438,
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
			["width"] = 47,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["power"] = "2",
				["custom_hide"] = "timed",
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["id"] = "2 2",
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
			["untrigger"] = {
			},
		},
		["Shuffle Off"] = {
			["parent"] = "Shuffle Group",
			["fontSize"] = 12,
			["displayStacks"] = "%s",
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
			["color"] = {
				1, -- [1]
				0.1882352941176471, -- [2]
				0.1137254901960784, -- [3]
				1, -- [4]
			},
			["yOffset"] = -84.99996948242188,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["xOffset"] = -227,
			["inverse"] = false,
			["desaturate"] = false,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Shuffle", -- [1]
				},
				["inverse"] = true,
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["icon"] = true,
			["stickyDuration"] = false,
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
			["id"] = "Shuffle Off",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 43,
			["additional_triggers"] = {
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 43,
			["displayIcon"] = "Interface\\Icons\\ability_monk_roundhousekick",
			["stacksPoint"] = "BOTTOMRIGHT",
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
					["duration_type"] = "seconds",
					["preset"] = "slideright",
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
				["use_power"] = true,
				["names"] = {
					"Holy Power", -- [1]
				},
				["useCount"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["power"] = "3",
				["power_operator"] = ">=",
				["debuffType"] = "HELPFUL",
				["countOperator"] = ">=",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_spellName"] = true,
				["count"] = "3",
				["use_unit"] = true,
				["unevent"] = "auto",
				["event"] = "Action Usable",
				["spellName"] = 85673,
				["use_targetRequired"] = false,
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
				["role"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["use_combat"] = true,
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
			["stickyDuration"] = false,
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
						["use_unit"] = true,
						["unit"] = "player",
						["power"] = "3",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["id"] = "3WoG",
			["frameStrata"] = 1,
			["width"] = 45,
			["inverse"] = false,
			["color"] = {
				0.9450980392156863, -- [1]
				0.9450980392156863, -- [2]
				0.9450980392156863, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["yOffset"] = -53.57125854492188,
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
			["yOffset"] = 96.6978759765625,
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["expanded"] = false,
			["sort"] = "none",
			["backgroundInset"] = 0,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["id"] = "DK CDs",
			["borderOffset"] = 16,
			["align"] = "LEFT",
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
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["selfPoint"] = "TOPLEFT",
			["frameStrata"] = 1,
			["width"] = 139,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 45.00003051757813,
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
			["crop_y"] = 0.41,
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
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["barInFront"] = true,
			["id"] = "F Rune 2 CD",
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
			["icon"] = false,
			["numTriggers"] = 1,
			["border"] = true,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Frost",
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
			["backgroundColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				0.5, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
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
			["user_y"] = 0,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["barInFront"] = true,
			["id"] = "D Rune 2 CD",
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
			["height"] = 11.33827686309815,
			["inverse"] = true,
			["mirror"] = false,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Frost",
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
			["stacksFont"] = "Friz Quadrata TT",
			["crop_y"] = 0.41,
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
			["timer"] = false,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["barInFront"] = true,
			["id"] = "B Rune 2 CD",
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
			["icon"] = false,
			["numTriggers"] = 1,
			["user_y"] = 0,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Frost",
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
			["untrigger"] = {
			},
			["frameStrata"] = 1,
			["id"] = "Guard 2.0",
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
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Blood",
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
			["additional_triggers"] = {
			},
			["desaturate"] = false,
			["selfPoint"] = "LEFT",
			["id"] = "Death Rune 3 2",
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
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["use_deathRune"] = true,
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["power"] = "5",
				["power_operator"] = ">=",
				["use_power"] = true,
				["rune"] = 3,
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
			["yOffset"] = 0,
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
				["custom_hide"] = "timed",
				["type"] = "aura",
				["names"] = {
					"Heavy Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
				["unit"] = "player",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
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
			["stacksPoint"] = "CENTER",
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
			["stickyDuration"] = false,
			["auto"] = true,
			["numTriggers"] = 1,
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["justify"] = "CENTER",
			["totalPrecision"] = 0,
			["additional_triggers"] = {
			},
			["id"] = "Number - High 3 2",
			["frameStrata"] = 1,
			["width"] = 10.66656017303467,
			["untrigger"] = {
			},
			["disjunctive"] = true,
			["inverse"] = false,
			["color"] = {
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
			["displayIcon"] = "Interface\\Icons\\priest_icon_chakra_blue",
			["cooldown"] = true,
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
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["use_spellId"] = true,
				["use_spellName"] = true,
				["spellName"] = 124081,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
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
			["displayTextLeft"] = "%n",
			["timer"] = true,
			["height"] = 40,
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
			["textSize"] = 12,
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
			["stacks"] = true,
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["alpha"] = 1,
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				0.984313725490196, -- [1]
				1, -- [2]
				0.984313725490196, -- [3]
				1, -- [4]
			},
			["id"] = "Zen Sphere CD",
			["displayTextRight"] = "%p",
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["timerSize"] = 12,
			["auto"] = true,
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
			["inverse"] = true,
			["barInFront"] = true,
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
				["rune"] = 3,
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
			["parent"] = "Runes Blood",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["textSize"] = 12,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["barInFront"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["user_y"] = 0,
			["id"] = "U Rune 1 CD 2",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["icon"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["height"] = 11.33827686309815,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["displayTextLeft"] = " ",
		},
		["TFT2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["yOffset"] = 0,
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
				["spellName"] = 116680,
			},
			["untrigger"] = {
				["spellName"] = 116680,
			},
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
			["id"] = "TFT2",
			["icon"] = true,
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = 48,
			["frameStrata"] = 1,
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
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
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
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Blood",
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
			["id"] = "Unholy Rune 1 2",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["selfPoint"] = "LEFT",
			["numTriggers"] = 1,
			["trigger"] = {
				["use_rune"] = true,
				["use_inverse"] = true,
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
				["use_deathRune"] = false,
				["use_power"] = true,
				["rune"] = 3,
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
			["color"] = {
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				1, -- [4]
			},
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
			["yOffset"] = -95,
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["expanded"] = false,
			["sort"] = "none",
			["backgroundInset"] = 0,
			["space"] = 7,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["id"] = "Chi 4",
			["borderOffset"] = -10,
			["additional_triggers"] = {
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
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["selfPoint"] = "LEFT",
			["frameStrata"] = 1,
			["width"] = 208.9999389648438,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["align"] = "CENTER",
			["height"] = 14.99996948242188,
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
			["parent"] = "Runes Blood",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["textSize"] = 12,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["barInFront"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateForeground"] = false,
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["additional_triggers"] = {
			},
			["id"] = "D Rune 4 CD  2",
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["stacksFont"] = "Friz Quadrata TT",
			["timer"] = false,
			["inverse"] = true,
			["user_y"] = 0,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["icon"] = false,
		},
		["Frost Rune 1"] = {
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
				0.8901960784313725, -- [2]
				1, -- [3]
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
				["custom_hide"] = "timed",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["use_inverse"] = true,
				["unevent"] = "auto",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["rune"] = 5,
				["use_unit"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "LEFT",
			["id"] = "Frost Rune 1",
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
			["parent"] = "Runes Frost",
		},
		["Diffuse Magic"] = {
			["parent"] = "Monk Mainbar 2",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["additional_triggers"] = {
			},
			["yOffset"] = -160,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Diffuse Magic", -- [1]
				},
				["use_spellId"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
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
			["id"] = "Diffuse Magic",
			["xOffset"] = -280,
			["frameStrata"] = 5,
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["font"] = "Arial Black",
			["inverse"] = false,
			["width"] = 38.75,
			["height"] = 38.75,
			["untrigger"] = {
			},
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
				["use_class"] = true,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
		["Zen Meditation 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 115176,
				["custom_hide"] = "timed",
			},
			["untrigger"] = {
				["spellName"] = 115176,
			},
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["id"] = "Zen Meditation 2",
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
			["additional_triggers"] = {
			},
			["xOffset"] = -74,
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
			["yOffset"] = -110,
			["stacksPoint"] = "CENTER",
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
			["parent"] = "Holy CDs",
			["xOffset"] = 272.1427001953125,
			["stacksPoint"] = "BOTTOMRIGHT",
			["yOffset"] = -103.5714111328125,
			["untrigger"] = {
				["spellName"] = 20473,
			},
			["regionType"] = "icon",
			["anchorPoint"] = "CENTER",
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
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slideright",
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
				["type"] = "status",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["use_spellName"] = true,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_inverse"] = false,
				["spellName"] = 20473,
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 45,
			["id"] = "Holy Shock",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 45,
			["color"] = {
				0.9803921568627451, -- [1]
				0.9803921568627451, -- [2]
				0.9803921568627451, -- [3]
				1, -- [4]
			},
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
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_difficulty"] = false,
				["size"] = {
					["multi"] = {
						["ten"] = true,
						["party"] = true,
						["twentyfive"] = true,
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
		["101546"] = {
			["parent"] = "Monk Mainbar 2",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["additional_triggers"] = {
			},
			["yOffset"] = -160,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Spinning Crane Kick", -- [1]
				},
				["use_spellId"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
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
			["id"] = "101546",
			["xOffset"] = -280,
			["frameStrata"] = 5,
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["font"] = "Arial Black",
			["inverse"] = false,
			["width"] = 38.75,
			["height"] = 38.75,
			["untrigger"] = {
			},
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
				["use_name"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
		["Frost Rune 2"] = {
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
			["color"] = {
				0, -- [1]
				0.8901960784313725, -- [2]
				1, -- [3]
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
			["id"] = "Frost Rune 2",
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["custom_hide"] = "timed",
				["power"] = "4",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["use_inverse"] = true,
				["unevent"] = "auto",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["rune"] = 6,
				["use_unit"] = true,
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
			["parent"] = "Runes Frost",
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
				["spellName"] = 115203,
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
				0.5215686274509804, -- [1]
				0.3803921568627451, -- [2]
				0.09019607843137255, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Monk CD Group",
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
			["timer"] = true,
			["height"] = 30,
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
			["stickyDuration"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
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
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["alpha"] = 0.5,
			["icon_side"] = "RIGHT",
			["stacksFont"] = "Friz Quadrata TT",
			["additional_triggers"] = {
			},
			["displayTextRight"] = "%p",
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["auto"] = true,
			["id"] = "FB CD 2.0",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 30,
			["displayTextLeft"] = "%n",
			["borderInset"] = 11,
			["inverse"] = true,
			["textSize"] = 12,
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
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["fullscan"] = true,
				["custom_hide"] = "timed",
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
			["yOffset"] = 0,
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
			["height"] = 40,
			["timer"] = true,
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
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
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
			["additional_triggers"] = {
			},
			["timerSize"] = 12,
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["auto"] = true,
			["id"] = "Elusive Brew Duration 2",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 40,
			["stacks"] = true,
			["borderInset"] = 11,
			["inverse"] = true,
			["displayTextLeft"] = "%n",
			["orientation"] = "VERTICAL_INVERSE",
			["textSize"] = 12,
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
		["Guard Icon 2.0"] = {
			["xOffset"] = 0,
			["fontSize"] = 12,
			["displayStacks"] = "%s",
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
			["parent"] = "Guard 2.0",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["disjunctive"] = false,
			["inverse"] = false,
			["width"] = 38,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["spellId"] = "128939",
				["use_inverse"] = false,
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["subeventSuffix"] = "_CAST_START",
				["use_name"] = true,
				["use_spellName"] = true,
				["use_remaining"] = false,
				["unit"] = "player",
				["ownOnly"] = true,
				["use_spellId"] = true,
				["names"] = {
					"Guard", -- [1]
				},
				["spellName"] = 123402,
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_frame"] = "WeakAuras:Guard Icon 2",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Chime.ogg",
					["do_sound"] = false,
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
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["names"] = {
							"Power Guard", -- [1]
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["id"] = "Guard Icon 2.0",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["icon"] = true,
			["height"] = 40,
			["untrigger"] = {
				["spellName"] = 123402,
			},
			["stacksPoint"] = "BOTTOMRIGHT",
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Monk CD Group",
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
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["xOffset"] = 0,
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
			["width"] = 30,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["trigger"] = {
				["spellId"] = "128939",
				["use_inverse"] = false,
				["names"] = {
					"Guard", -- [1]
				},
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["spellName"] = 122783,
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
			["id"] = "Diffuse Magic 2.0",
			["height"] = 30,
			["untrigger"] = {
				["spellName"] = 122783,
			},
			["stacksPoint"] = "BOTTOMRIGHT",
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
			["icon"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
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
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["barInFront"] = true,
			["id"] = "F Rune 1 CD",
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
			["height"] = 11.33827686309815,
			["numTriggers"] = 1,
			["user_y"] = 0,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Frost",
		},
		["1 2"] = {
			["xOffset"] = -530.8329467773438,
			["mirror"] = false,
			["yOffset"] = -215.8333129882813,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Chi 4",
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
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["width"] = 47,
			["selfPoint"] = "CENTER",
			["id"] = "1 2",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "status",
				["power"] = "1",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
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
			["untrigger"] = {
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
			["yOffset"] = -95,
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["expanded"] = false,
			["sort"] = "none",
			["backgroundInset"] = 0,
			["space"] = 7,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["id"] = "Chi 5",
			["borderOffset"] = -10,
			["additional_triggers"] = {
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
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["selfPoint"] = "LEFT",
			["frameStrata"] = 1,
			["width"] = 263.0000610351563,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["align"] = "CENTER",
			["height"] = 14.99996948242188,
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
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["id"] = "Stagger",
			["frameStrata"] = 1,
			["desc"] = "Displays stagger damage, intensity, and duration.",
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
		["TL"] = {
			["parent"] = "Monk Mainbar 2",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -160,
			["id"] = "TL",
			["untrigger"] = {
				["spellName"] = 116841,
			},
			["regionType"] = "icon",
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
			["trigger"] = {
				["type"] = "status",
				["spellId"] = "101546",
				["unevent"] = "auto",
				["spellName"] = 116841,
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["use_spellId"] = true,
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["names"] = {
					"Rushing Jade Wind", -- [1]
				},
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = -340,
			["frameStrata"] = 5,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["width"] = 38.75,
			["height"] = 38.75,
			["anchorPoint"] = "CENTER",
			["load"] = {
				["use_never"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = true,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
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
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["yOffset"] = 220.0000008434637,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Stampede",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["names"] = {
					"Stampede", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 64,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
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
			["icon"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
			["timer"] = false,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["barInFront"] = true,
			["id"] = "D Rune 1 CD",
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
			["parent"] = "Runes Frost",
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
			["sort"] = "none",
			["backgroundInset"] = 0,
			["space"] = 5,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["additional_triggers"] = {
			},
			["borderOffset"] = 16,
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
			["id"] = "Runes Frost",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 806.4237060546875,
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
			["height"] = 50,
			["radius"] = 200,
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
			["anchorPoint"] = "CENTER",
			["disjunctive"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = true,
					["glow_frame"] = "ElvUI_Bar1Button7",
					["glow_action"] = "show",
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura7",
			["selfPoint"] = "CENTER",
			["id"] = "Sacred Shield",
			["trigger"] = {
				["names"] = {
					"Sacred Shield", -- [1]
				},
				["type"] = "aura",
				["inverse"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
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
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 300,
			["discrete_rotation"] = 0,
			["xOffset"] = 0,
			["numTriggers"] = 1,
			["desaturate"] = false,
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
				["use_combat"] = true,
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
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
			["untrigger"] = {
			},
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
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["totemName"] = "Summon Jade Serpent Statue",
				["use_inverse"] = true,
				["event"] = "Totem",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["use_totemName"] = false,
				["totemType"] = 1,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
				},
				["use_totemType"] = true,
				["debuffType"] = "HELPFUL",
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
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_spec"] = true,
				["use_name"] = false,
				["level"] = "60",
				["use_never"] = false,
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
			["cooldown"] = true,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "Statue 2",
			["numTriggers"] = 1,
			["frameStrata"] = 1,
			["width"] = 38.75,
			["icon"] = true,
			["yOffset"] = 0,
			["inverse"] = false,
			["additional_triggers"] = {
			},
			["xOffset"] = 0,
			["displayIcon"] = "Interface\\Icons\\ability_monk_summonserpentstatue",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["RushingJadeWind"] = {
			["xOffset"] = -118.9999389648438,
			["fontSize"] = 12,
			["displayStacks"] = "%c",
			["stacksPoint"] = "BOTTOMRIGHT",
			["parent"] = "Notice Group",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 199.0001831054688,
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
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["selfPoint"] = "CENTER",
			["icon"] = true,
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
			["id"] = "RushingJadeWind",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Action Usable",
				["names"] = {
					"Rushing Jade Wind", -- [1]
				},
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["inverse"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_unit"] = true,
				["spellName"] = 116847,
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["additional_triggers"] = {
			},
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["anchorPoint"] = "CENTER",
			["height"] = 40,
			["displayIcon"] = "Interface\\Icons\\ability_monk_rushingjadewind",
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
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DM 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["xOffset"] = 112,
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["additional_triggers"] = {
			},
			["inverse"] = false,
			["width"] = 38.75,
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
				["spellName"] = 122783,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
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
			["id"] = "DM 2",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["untrigger"] = {
				["spellName"] = 122783,
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Healing Elixirs EB"] = {
			["fontSize"] = 6,
			["displayStacks"] = "%c",
			["parent"] = "Elusive Brew 2.0",
			["xOffset"] = -11.99994939344288,
			["stacksPoint"] = "BOTTOMRIGHT",
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
				["spellName"] = 122278,
			},
			["regionType"] = "icon",
			["yOffset"] = 11.99998440770941,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
							"Elusive Brew", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["id"] = "Healing Elixirs EB",
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
				["spellId"] = "128939",
				["use_inverse"] = false,
				["names"] = {
					"Healing Elixirs", -- [1]
				},
				["custom_hide"] = "timed",
				["type"] = "aura",
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["subeventSuffix"] = "_CAST_START",
				["use_name"] = true,
				["use_spellName"] = true,
				["use_remaining"] = false,
				["unit"] = "player",
				["ownOnly"] = true,
				["use_spellId"] = true,
				["use_unit"] = true,
				["spellName"] = 122278,
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 15,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 15,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
				["custom_hide"] = "timed",
				["spellName"] = 123761,
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
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["cooldown"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["stickyDuration"] = false,
			["additional_triggers"] = {
			},
			["id"] = "Mana Tea 2  2",
			["frameStrata"] = 1,
			["width"] = 38.75,
			["xOffset"] = -10,
			["numTriggers"] = 1,
			["inverse"] = true,
			["selfPoint"] = "CENTER",
			["untrigger"] = {
				["spellName"] = 123761,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0, -- [2]
				0.8352941176470589, -- [3]
				1, -- [4]
			},
		},
		["4 Holy Power"] = {
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
			["parent"] = "Holy Power Prot",
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
					["preset"] = "shrink",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "shrink",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["width"] = 50,
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["type"] = "status",
				["power"] = "4",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["id"] = "4 Holy Power",
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
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
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
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
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
			["height"] = 11.33827686309815,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["barInFront"] = true,
			["id"] = "B Rune 1 CD",
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
			["border"] = true,
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
			["parent"] = "Runes Frost",
		},
		["RM 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 115151,
				["custom_hide"] = "timed",
			},
			["yOffset"] = -110,
			["regionType"] = "icon",
			["width"] = 38.75,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["id"] = "RM 2",
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
			["additional_triggers"] = {
			},
			["xOffset"] = -42,
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
				["spellName"] = 115151,
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.2, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
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
				["debuffType"] = "HARMFUL",
				["type"] = "aura",
				["names"] = {
					"Light Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["unit"] = "player",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["text"] = false,
			["barColor"] = {
				0.2117647058823529, -- [1]
				1, -- [2]
				0.2705882352941176, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = true,
			["displayTextLeft"] = "%p",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
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
			["numTriggers"] = 1,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
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
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacks"] = true,
			["alpha"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["id"] = "Stagger Light 3",
			["borderOffset"] = 5,
			["timerSize"] = 12,
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 43.00014545965833,
			["barInFront"] = true,
			["borderInset"] = 11,
			["inverse"] = false,
			["textSize"] = 12,
			["orientation"] = "VERTICAL_INVERSE",
			["displayIcon"] = "Interface\\Icons\\ability_monk_roundhousekick",
			["untrigger"] = {
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Blood Rune1"] = {
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
			["id"] = "Blood Rune1",
			["additional_triggers"] = {
			},
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["use_rune"] = true,
				["bloodRunes"] = "1",
				["bloodRunes_operator"] = "==",
				["use_power"] = true,
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_bloodRunes"] = false,
				["unevent"] = "auto",
				["use_deathRune"] = false,
				["use_inverse"] = true,
				["event"] = "Death Knight Rune",
				["power_operator"] = ">=",
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
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
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
			["parent"] = "Runes Frost",
		},
		["JST"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
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
				["use_name"] = false,
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
			["parent"] = "Monk Mainbar",
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 116847,
				["custom_hide"] = "timed",
			},
			["yOffset"] = -110,
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
			["id"] = "JST",
			["xOffset"] = 54,
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
				["spellName"] = 116847,
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0, -- [2]
				0.02352941176470588, -- [3]
				1, -- [4]
			},
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
			["id"] = "Death Rune 2",
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
				["rune"] = 2,
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
			["width"] = 50,
			["discrete_rotation"] = 0,
			["selfPoint"] = "LEFT",
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
			["parent"] = "Runes Frost",
		},
		["Blood Rune1 2"] = {
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
			["parent"] = "Runes Blood",
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
			["id"] = "Blood Rune1 2",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["selfPoint"] = "LEFT",
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
				["use_bloodRunes"] = false,
				["use_inverse"] = true,
				["power_operator"] = ">=",
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
			["color"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Guard Not Active 2.0"] = {
			["xOffset"] = 0,
			["fontSize"] = 12,
			["displayStacks"] = "%s",
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
			["parent"] = "Guard 2.0",
			["untrigger"] = {
				["spellName"] = 115295,
			},
			["regionType"] = "icon",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["color"] = {
				0.4784313725490196, -- [1]
				0.4784313725490196, -- [2]
				0.4784313725490196, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["desaturate"] = false,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["spellId"] = "128939",
				["ownOnly"] = true,
				["use_unit"] = true,
				["spellName"] = 115295,
				["use_remaining"] = false,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["subeventSuffix"] = "_CAST_START",
				["use_name"] = true,
				["use_spellId"] = true,
				["type"] = "status",
				["unit"] = "player",
				["use_inverse"] = true,
				["use_spellName"] = true,
				["names"] = {
					"Guard", -- [1]
				},
				["custom_hide"] = "timed",
			},
			["icon"] = true,
			["stickyDuration"] = false,
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
						["unevent"] = "auto",
						["use_inverse"] = true,
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["spellName"] = 123402,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["spellName"] = 123402,
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["id"] = "Guard Not Active 2.0",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 40,
			["disjunctive"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
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
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["parent"] = "Holy Power Holy",
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
			["width"] = 50,
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
				["type"] = "status",
				["power"] = "1",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["id"] = "1 Holy Power 2",
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
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["CB 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
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
				["use_name"] = false,
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
			["parent"] = "Monk Mainbar",
			["xOffset"] = 16,
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["id"] = "CB 2",
			["inverse"] = false,
			["width"] = 38.75,
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
				["spellName"] = 115399,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
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
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["untrigger"] = {
				["spellName"] = 115399,
			},
			["stacksPoint"] = "CENTER",
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
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["parent"] = "Holy Power Holy",
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
				["type"] = "status",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["width"] = 50,
			["selfPoint"] = "LEFT",
			["id"] = "3 Holy Power 2",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
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
			["color"] = {
				0.8705882352941177, -- [1]
				0.615686274509804, -- [2]
				0, -- [3]
				1, -- [4]
			},
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
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["parent"] = "Holy Power Holy",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["additional_triggers"] = {
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
			["width"] = 50,
			["selfPoint"] = "LEFT",
			["id"] = "2 Holy Power 2",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["xOffset"] = -50,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "status",
				["power"] = "2",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Holy Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["unevent"] = "auto",
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
			["yOffset"] = 0,
		},
		["Howling Blast"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "DK CDs",
			["xOffset"] = 173.5714721679688,
			["stacksPoint"] = "BOTTOMRIGHT",
			["regionType"] = "icon",
			["yOffset"] = -102.8569641113281,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
				["spellName"] = 49184,
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Howling Blast", -- [1]
				},
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["use_spellName"] = true,
				["inverse"] = true,
				["unit"] = "player",
				["spellName"] = 49184,
				["use_unit"] = true,
				["use_targetRequired"] = true,
				["custom_hide"] = "timed",
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
			["id"] = "Howling Blast",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidebottom",
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["unevent"] = "auto",
						["ownOnly"] = true,
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
							"Rime", -- [1]
							"Freezing Fog", -- [2]
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["width"] = 45,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["icon"] = true,
			["height"] = 45,
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
				["use_name"] = false,
				["use_spec"] = true,
				["use_combat"] = true,
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
			["yOffset"] = -200,
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["expanded"] = false,
			["sort"] = "ascending",
			["align"] = "CENTER",
			["space"] = 0,
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
			["selfPoint"] = "CENTER",
			["id"] = "Holy Power Prot",
			["radius"] = 200,
			["frameStrata"] = 1,
			["width"] = 250,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
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
			["regionType"] = "dynamicgroup",
		},
		["ZM"] = {
			["parent"] = "Monk Mainbar 2",
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["additional_triggers"] = {
			},
			["yOffset"] = -160,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Zen Meditation", -- [1]
				},
				["use_spellId"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
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
			["id"] = "ZM",
			["xOffset"] = -280,
			["frameStrata"] = 5,
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["font"] = "Arial Black",
			["inverse"] = false,
			["width"] = 38.75,
			["height"] = 38.75,
			["untrigger"] = {
			},
			["load"] = {
				["use_never"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_name"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
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
			["parent"] = "Guard 2.0",
			["id"] = "Guard Amount 2.0",
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["type"] = "aura",
				["unevent"] = "auto",
				["event"] = "Alternate Power",
				["names"] = {
					"Guard", -- [1]
				},
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_unit"] = true,
				["custom_hide"] = "timed",
			},
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 8.38096809387207,
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
			["untrigger"] = {
			},
		},
		["Statue"] = {
			["parent"] = "Notice Group",
			["fontSize"] = 12,
			["displayStacks"] = "%s",
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 199.0001831054688,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["inverse"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["names"] = {
					"Sanctuary of the Ox", -- [1]
				},
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["spellName"] = 115315,
					},
					["untrigger"] = {
						["spellName"] = 115315,
					},
				}, -- [1]
			},
			["icon"] = true,
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
			["id"] = "Statue",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 40,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["xOffset"] = -118.9999389648438,
			["height"] = 40,
			["displayIcon"] = "Interface\\Icons\\monk_ability_summonoxstatue",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["id"] = "Runes Blood",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 1009.279724121094,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
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
				["unit"] = "player",
				["percentpower_operator"] = "<",
				["use_percentpower"] = true,
				["percentpower"] = "35",
				["use_unit"] = true,
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "event",
			["displayTextLeft"] = "%p",
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
				["power"] = "60",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["percentpower"] = "35",
				["percentpower_operator"] = ">=",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["parent"] = "Keg Smash - Subtle",
			["height"] = 5.500040531158447,
			["rotate"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["timerFlags"] = "None",
			["inverse"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["mirror"] = false,
			["borderEdge"] = "Plain White",
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 24,
			["rotation"] = 0,
			["icon_side"] = "LEFT",
			["border"] = false,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Energy",
			["textSize"] = 20,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 20,
			["justify"] = "LEFT",
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
		["Tiger Power"] = {
			["parent"] = "Monk Mainbar 2",
			["fontSize"] = 12,
			["displayStacks"] = "%s, %p",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["id"] = "Tiger Power",
			["yOffset"] = -160,
			["regionType"] = "icon",
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
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Tiger Power", -- [1]
				},
				["use_spellId"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["xOffset"] = -340,
			["frameStrata"] = 5,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["width"] = 38.75,
			["height"] = 38.75,
			["anchorPoint"] = "CENTER",
			["load"] = {
				["use_never"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_name"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
						["DRUID"] = true,
					},
				},
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
		["Touch of Death"] = {
			["xOffset"] = -118.9999389648438,
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["stacksPoint"] = "BOTTOMRIGHT",
			["parent"] = "Notice Group",
			["yOffset"] = 199.0001831054688,
			["regionType"] = "icon",
			["untrigger"] = {
				["spellName"] = 115080,
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 2,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_health"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["health"] = "450000",
						["use_unit"] = true,
						["health_operator"] = "<",
						["use_percenthealth"] = false,
						["unevent"] = "auto",
						["unit"] = "target",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
			},
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
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["spellName"] = 115080,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["use_targetRequired"] = true,
				["use_spellName"] = true,
				["inverse"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["names"] = {
					"Sanctuary of the Ox", -- [1]
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["id"] = "Touch of Death",
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 40,
			["displayIcon"] = "Interface\\Icons\\ability_monk_touchofdeath",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["use_combat"] = true,
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
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Death Rune 1 2"] = {
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
			["parent"] = "Runes Blood",
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
			["id"] = "Death Rune 1 2",
			["desaturate"] = false,
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
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["power"] = "5",
				["use_deathRune"] = true,
				["use_inverse"] = true,
				["rune"] = 5,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
			},
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
			["color"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				1, -- [4]
			},
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
				["use_deathRune"] = false,
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
			["parent"] = "Runes Blood",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["textSize"] = 12,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["barInFront"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["user_y"] = 0,
			["id"] = "F Rune 1 CD 2",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["displayTextLeft"] = " ",
			["stacksFont"] = "Friz Quadrata TT",
			["inverse"] = true,
			["height"] = 11.33827686309815,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
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
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura23",
			["id"] = "Weakend Blows",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["unit"] = "target",
				["type"] = "aura",
				["inverse"] = true,
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
					"Weakened Blows", -- [1]
				},
				["debuffType"] = "HARMFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
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
			["additional_triggers"] = {
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 300,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
			["height"] = 300,
			["rotate"] = true,
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
			},
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
				["names"] = {
					"Moderate Stagger", -- [1]
				},
				["type"] = "aura",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
				["unit"] = "player",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
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
			["cooldown"] = true,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "event",
			["numTriggers"] = 1,
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "Number - Med 3 2",
			["justify"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 10.66656017303467,
			["untrigger"] = {
			},
			["xOffset"] = 225,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["displayIcon"] = "Interface\\Icons\\priest_icon_chakra_blue",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["height"] = 11.33827686309815,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.02745098039215686, -- [1]
				0.02745098039215686, -- [2]
				0.02745098039215686, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["parent"] = "Runes Blood",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = true,
			["mirror"] = false,
			["borderEdge"] = "ElvUI GlowBorder",
			["crop_y"] = 0.41,
			["borderSize"] = 5,
			["textSize"] = 12,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["barInFront"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["user_y"] = 0,
			["id"] = "B Rune 1 CD 2",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["backgroundColor"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["timer"] = false,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["displayTextLeft"] = " ",
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
			["id"] = "Elusive Brew 2.0",
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
		["Death Rune 1"] = {
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
			["additional_triggers"] = {
			},
			["id"] = "Death Rune 1",
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
				["rune"] = 1,
				["power"] = "5",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["discrete_rotation"] = 0,
			["selfPoint"] = "LEFT",
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
			["parent"] = "Runes Frost",
		},
		["Unholy Rune 1"] = {
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
				0, -- [1]
				0.8823529411764706, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["id"] = "Unholy Rune 1",
			["additional_triggers"] = {
			},
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["use_rune"] = true,
				["type"] = "status",
				["custom_hide"] = "timed",
				["power"] = "5",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["use_inverse"] = true,
				["unevent"] = "auto",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["rune"] = 3,
				["use_unit"] = true,
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
			["parent"] = "Runes Frost",
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
				["rune"] = 2,
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
			["parent"] = "Runes Blood",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["textSize"] = 12,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["barInFront"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["user_y"] = 0,
			["id"] = "B Rune 2 CD 2",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["desaturateForeground"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["inverse"] = true,
			["height"] = 11.33827686309815,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["icon"] = false,
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
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["names"] = {
					"Shuffle", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["event"] = "Health",
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["barColor"] = {
				0.7568627450980392, -- [1]
				0.1686274509803922, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["textSize"] = 12,
			["untrigger"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
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
			["inverse"] = true,
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
			["stacks"] = true,
			["frameStrata"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["auto"] = false,
			["icon_side"] = "RIGHT",
			["id"] = "Shuffle",
			["stacksFont"] = "Friz Quadrata TT",
			["timerSize"] = 12,
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["borderOffset"] = 5,
			["additional_triggers"] = {
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 43.00014545965833,
			["stickyDuration"] = false,
			["borderInset"] = 11,
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
			["orientation"] = "VERTICAL_INVERSE",
			["displayIcon"] = "Interface\\Icons\\ability_monk_roundhousekick",
			["icon"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["CB"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
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
				["use_name"] = false,
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
			["parent"] = "Monk Mainbar",
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 115399,
				["custom_hide"] = "timed",
			},
			["yOffset"] = 0,
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
			["id"] = "CB",
			["xOffset"] = 16,
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
				["spellName"] = 115399,
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.9529411764705882, -- [1]
				0.4196078431372549, -- [2]
				1, -- [3]
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
				["rune"] = 5,
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
			["parent"] = "Runes Blood",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["textSize"] = 12,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["barInFront"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["user_y"] = 0,
			["id"] = "D Rune 1 CD 2",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["icon"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["height"] = 11.33827686309815,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["displayTextLeft"] = " ",
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
				["use_deathRune"] = false,
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
			["parent"] = "Runes Blood",
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
			["mirror"] = false,
			["borderSize"] = 5,
			["textSize"] = 12,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["barInFront"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateForeground"] = false,
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["id"] = "F Rune 2 CD 2",
			["additional_triggers"] = {
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["height"] = 11.33827686309815,
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
			["numTriggers"] = 1,
			["user_y"] = 0,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["icon"] = false,
			["stacksFont"] = "Walkway",
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
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Mana Tea", -- [1]
				},
				["inverse"] = true,
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
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
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["stacksPoint"] = "CENTER",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.2,
			["auto"] = true,
			["xOffset"] = -170,
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 38.75,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["yOffset"] = -110,
			["id"] = "MT2",
			["displayIcon"] = "Interface\\Icons\\inv_misc_herb_jadetealeaf",
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
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
				["rune"] = 6,
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
			["parent"] = "Runes Blood",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["textSize"] = 12,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["barInFront"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["user_y"] = 0,
			["id"] = "D Rune 2 CD 2",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["backgroundColor"] = {
				0.5019607843137255, -- [1]
				0, -- [2]
				0.5019607843137255, -- [3]
				0.5, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["height"] = 11.33827686309815,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturateForeground"] = false,
		},
		["DM"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["xOffset"] = 112,
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["additional_triggers"] = {
			},
			["inverse"] = false,
			["width"] = 38.75,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 122783,
				["custom_hide"] = "timed",
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
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
			["id"] = "DM",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["untrigger"] = {
				["spellName"] = 122783,
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 115072,
				["custom_hide"] = "timed",
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
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["selfPoint"] = "CENTER",
			["frameStrata"] = 5,
			["width"] = 38.75,
			["xOffset"] = 80,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["inverse"] = false,
			["untrigger"] = {
				["spellName"] = 115072,
			},
			["id"] = "EH",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.1254901960784314, -- [1]
				1, -- [2]
				0.2901960784313725, -- [3]
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
			["stacksFont"] = "Friz Quadrata TT",
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
			["timer"] = false,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["barInFront"] = true,
			["id"] = "U Rune 1 CD",
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
			["parent"] = "Runes Frost",
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
				["custom_hide"] = "timed",
				["type"] = "aura",
				["names"] = {
					"Light Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
				["unit"] = "player",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
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
			["stacksPoint"] = "CENTER",
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["totalPrecision"] = 0,
			["inverse"] = false,
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["justify"] = "CENTER",
			["additional_triggers"] = {
			},
			["id"] = "Number - Light 3 2",
			["auto"] = true,
			["frameStrata"] = 1,
			["width"] = 10.66656017303467,
			["untrigger"] = {
			},
			["xOffset"] = 225,
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
			["displayIcon"] = "Interface\\Icons\\priest_icon_chakra_blue",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["MT"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["names"] = {
					"Mana Tea", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["event"] = "Health",
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
			["stickyDuration"] = true,
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
			["id"] = "MT",
			["xOffset"] = -170,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["yOffset"] = -110,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				0.05882352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
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
			["stacksPoint"] = "CENTER",
			["untrigger"] = {
				["itemName"] = 5512,
			},
			["anchorPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 5512,
						["unevent"] = "auto",
						["use_inverse"] = true,
						["event"] = "Cooldown Progress (Item)",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
					},
					["untrigger"] = {
						["itemName"] = 5512,
					},
				}, -- [1]
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Healthstone",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
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
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
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
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_itemName"] = true,
				["unit"] = "player",
				["use_includeBank"] = false,
				["use_spellName"] = true,
				["count"] = "0",
				["event"] = "Item Count",
				["check"] = "event",
				["names"] = {
					"No Match Found", -- [1]
				},
				["custom_type"] = "status",
				["count_operator"] = ">",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 19.99992370605469,
			["desaturate"] = false,
			["font"] = "Walkway",
			["numTriggers"] = 2,
			["selfPoint"] = "CENTER",
			["height"] = 20,
			["yOffset"] = -150,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
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
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
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
				["spellName"] = 123986,
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
				0.4862745098039216, -- [1]
				0.7176470588235294, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "30 Talents",
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
			["displayTextLeft"] = "%n",
			["timer"] = true,
			["height"] = 40,
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
			["textSize"] = 12,
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
			["stacks"] = true,
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["alpha"] = 1,
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				0.984313725490196, -- [1]
				1, -- [2]
				0.984313725490196, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["displayTextRight"] = "%p",
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["timerSize"] = 12,
			["auto"] = true,
			["id"] = "Chi Burst CD",
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
			["barInFront"] = true,
			["orientation"] = "VERTICAL_INVERSE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["yOffset"] = -6.103515625e-005,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
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
				["custom_hide"] = "timed",
				["spellName"] = 115072,
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
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 38.75,
			["xOffset"] = 80,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["inverse"] = false,
			["untrigger"] = {
				["spellName"] = 115072,
			},
			["additional_triggers"] = {
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.1254901960784314, -- [1]
				1, -- [2]
				0.2901960784313725, -- [3]
				1, -- [4]
			},
		},
		["Vital Mists"] = {
			["parent"] = "Monk Mainbar 2",
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["stacksPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["additional_triggers"] = {
			},
			["yOffset"] = -160,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "101546",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Vital Mists", -- [1]
				},
				["use_spellId"] = true,
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
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
			["id"] = "Vital Mists",
			["xOffset"] = -340,
			["frameStrata"] = 5,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["inverse"] = false,
			["width"] = 38.75,
			["height"] = 38.75,
			["untrigger"] = {
			},
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
				["use_class"] = true,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["use_level"] = true,
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
				["use_unit"] = true,
				["power"] = "3",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Blood",
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["additional_triggers"] = {
			},
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
			["id"] = "Death Rune 4 2",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["xOffset"] = -50,
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
				["rune"] = 4,
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
			["yOffset"] = 0,
		},
		["Blood Rune 2 2"] = {
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
			["parent"] = "Runes Blood",
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
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["rotation"] = 0,
			["selfPoint"] = "LEFT",
			["numTriggers"] = 1,
			["id"] = "Blood Rune 2 2",
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
			["yOffset"] = 0,
		},
		["LC 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["load"] = {
				["use_level"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_talent"] = false,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["level_operator"] = ">",
				["level"] = "60",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
			["parent"] = "Monk Mainbar",
			["xOffset"] = 144,
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["id"] = "LC 2",
			["inverse"] = false,
			["width"] = 38.75,
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
				["spellName"] = 116849,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
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
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Arial Black",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 38.75,
			["untrigger"] = {
				["spellName"] = 116849,
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
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
			["stacksFont"] = "Friz Quadrata TT",
			["crop_y"] = 0.41,
			["mirror"] = false,
			["border"] = true,
			["borderEdge"] = "ElvUI GlowBorder",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 5,
			["timer"] = false,
			["icon_side"] = "LEFT",
			["inverse"] = true,
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = " ",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["barInFront"] = true,
			["id"] = "U Rune 2 CD",
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
			["icon"] = false,
			["numTriggers"] = 1,
			["user_y"] = 0,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Runes Frost",
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
			["untrigger"] = {
			},
			["yOffset"] = -197.7272338867188,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["id"] = "Frigid",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
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
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["count"] = "10",
				["countOperator"] = ">",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Frigid Assault", -- [1]
				},
				["debuffType"] = "HARMFUL",
			},
			["width"] = 64,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["xOffset"] = 195.3156127929688,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["stickyDuration"] = false,
			["height"] = 64,
			["icon"] = true,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["use_size"] = true,
				["zone"] = "Throne of Thunder",
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "ten",
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				0, -- [2]
				0.0196078431372549, -- [3]
				1, -- [4]
			},
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
				["rune"] = 4,
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
			["parent"] = "Runes Blood",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["textSize"] = 12,
			["icon_side"] = "LEFT",
			["numTriggers"] = 1,
			["barInFront"] = true,
			["foregroundColor"] = {
				0, -- [1]
				0.8352941176470589, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["user_y"] = 0,
			["id"] = "U Rune 2 CD 2",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 41.42796325683594,
			["desaturateForeground"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["inverse"] = true,
			["height"] = 11.33827686309815,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.5799999833106995,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["icon"] = false,
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
			["anchorPoint"] = "CENTER",
			["border"] = "None",
			["yOffset"] = -137.3548278808594,
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
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "RIGHT",
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
			["width"] = 254,
			["rotation"] = 0,
			["stagger"] = 0,
			["numTriggers"] = 1,
			["id"] = "Monk CD Group",
			["height"] = 30,
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
				["power"] = "3",
				["use_unit"] = true,
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "Runes Blood",
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
			["id"] = "Frost Rune 2 2",
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
			["trigger"] = {
				["use_rune"] = true,
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Death Knight Rune",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["power"] = "4",
				["use_deathRune"] = false,
				["use_power"] = true,
				["rune"] = 6,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
			},
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
			["yOffset"] = 0,
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
			["id"] = "30 Talents",
		},
		["Zen Sphere"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "30 Talents",
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
			["yOffset"] = 0,
			["untrigger"] = {
				["spellName"] = 124081,
			},
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Zen Sphere",
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 124081,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
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
			["id"] = "Zen Sphere",
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
		["Chi Burst"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "30 Talents",
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
			["yOffset"] = 0,
			["untrigger"] = {
				["spellName"] = 123986,
			},
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["customTextUpdate"] = "update",
			["id"] = "Chi Burst",
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
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["use_inverse"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_spellName"] = true,
				["spellName"] = 123986,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
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
			["regionType"] = "icon",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["EB Icon 2.0"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "Elusive Brew 2.0",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["regionType"] = "icon",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
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
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "128939",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["countOperator"] = "<",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["useCount"] = true,
				["count"] = "15",
				["names"] = {
					"Elusive Brew", -- [1]
				},
				["unit"] = "player",
				["use_spellId"] = true,
				["fullscan"] = true,
				["custom_hide"] = "timed",
			},
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
			["selfPoint"] = "CENTER",
			["id"] = "EB Icon 2.0",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 40,
			["additional_triggers"] = {
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 40,
			["yOffset"] = 0,
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
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
				["spellName"] = 115098,
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["use_spellId"] = true,
				["use_spellName"] = true,
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
				0.4862745098039216, -- [1]
				0.7176470588235294, -- [2]
				1, -- [3]
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
			["stickyDuration"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
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
				["talent"] = 4,
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
			["displayTextLeft"] = "%n",
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["alpha"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["additional_triggers"] = {
			},
			["stacksColor"] = {
				0.984313725490196, -- [1]
				1, -- [2]
				0.984313725490196, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["borderOffset"] = 5,
			["id"] = "Chi Wave CD",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 40,
			["barInFront"] = true,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 40,
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
		["Zen Meditation 2.0"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Monk CD Group",
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
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["xOffset"] = 0,
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
			["width"] = 30,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Zen Meditation 2.0",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["additional_triggers"] = {
			},
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["trigger"] = {
				["spellId"] = "128939",
				["use_inverse"] = false,
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unevent"] = "auto",
				["spellName"] = 115176,
				["names"] = {
					"Guard", -- [1]
				},
				["event"] = "Action Usable",
				["use_spellName"] = true,
				["use_name"] = true,
				["use_spellId"] = true,
				["ownOnly"] = true,
				["unit"] = "player",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["height"] = 30,
			["untrigger"] = {
				["spellName"] = 115176,
			},
			["stacksPoint"] = "BOTTOMRIGHT",
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
				["debuffType"] = "HARMFUL",
				["type"] = "aura",
				["names"] = {
					"Moderate Stagger", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["unit"] = "player",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["text"] = false,
			["barColor"] = {
				1, -- [1]
				0.9607843137254902, -- [2]
				0.1803921568627451, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["displayTextLeft"] = "%p",
			["stickyDuration"] = false,
			["yOffset"] = -9,
			["timer"] = true,
			["height"] = 104,
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
			["numTriggers"] = 1,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
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
			["barInFront"] = true,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacks"] = true,
			["alpha"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["additional_triggers"] = {
			},
			["borderOffset"] = 5,
			["timerSize"] = 12,
			["texture"] = "Touchy - White",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Stagger Med 3",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 43.00014545965833,
			["textSize"] = 12,
			["borderInset"] = 11,
			["inverse"] = false,
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
	},
}
