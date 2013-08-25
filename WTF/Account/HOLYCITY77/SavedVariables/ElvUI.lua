
ElvDB = {
	["profileKeys"] = {
		["Orran - Thrall"] = "Orran - Thrall",
		["Khanen - Thrall"] = "Khanen - Thrall",
		["Quitor - Aerie Peak"] = "Quitor - Aerie Peak",
		["Wrimtok - Aerie Peak"] = "Wrimtok - Aerie Peak",
		["Brimtok - Thrall"] = "Brimtok - Thrall",
		["Jains - Thrall"] = "Jains - Thrall",
		["Orranstout - Aerie Peak"] = "Orranstout - Aerie Peak",
		["Orsun - Aerie Peak"] = "Orsun - Aerie Peak",
		["Orazzle - Thrall"] = "Orazzle - Thrall",
		["Orstout - Aerie Peak"] = "Orstout - Aerie Peak",
		["Orstout - Thrall"] = "Orstout - Thrall",
		["Eammiran - Thrall"] = "Eammiran - Thrall",
		["Cajamarca - Thrall"] = "Cajamarca - Thrall",
		["Orlight - Aerie Peak"] = "Orlight - Aerie Peak",
	},
	["gold"] = {
		["Thrall"] = {
			["Orran"] = 182589383,
			["Orstout"] = 245895250,
			["Eammiran"] = 164923554,
			["Cajamarca"] = 145162804,
			["Orazzle"] = 290690116,
			["Brimtok"] = 199221342,
			["Jains"] = 2952572,
			["Khanen"] = 78174270,
		},
		["Aerie Peak"] = {
			["Orsun"] = 0,
			["Wrimtok"] = 181353,
			["Quitor"] = 162,
			["Orlight"] = 320471,
			["Orranstout"] = 17925,
			["Orstout"] = 187367344,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["global"] = {
		["general"] = {
			["autoScale"] = false,
		},
	},
	["profiles"] = {
		["Orran - Thrall"] = {
			["nameplate"] = {
				["font"] = "SSPro - Regular",
				["offtank"] = true,
				["auraFont"] = "SSPro - Regular",
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
				},
				["threat"] = {
					["enable"] = false,
				},
				["bottomPanel"] = false,
				["loginmessage"] = false,
				["valuecolor"] = {
					["r"] = 0.96,
					["g"] = 0.55,
					["b"] = 0.73,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
				["vendorGrays"] = true,
				["font"] = "SSPro - Regular",
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4209",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM0390",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM041",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4209",
				["ElvAB_3"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4405",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT428-391",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0232",
				["ElvUF_FocusMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-160230",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM0360",
				["ElvAB_5"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-4405",
				["WatchFrameMover"] = "TOPRIGHTElvUIParentTOPRIGHT-107-311",
				["BossHeaderMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-221360",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0192",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4219",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT455432",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-270215",
				["BossButton"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-369205",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM270215",
			},
			["hideTutorial"] = 1,
			["chat"] = {
				["tabFont"] = "SSPro - Bold",
				["font"] = "SSPro - Regular",
				["tabFontSize"] = 11,
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["colors"] = {
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["auraBarBuff"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0.59,
					},
					["castClassColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
				},
				["fontOutline"] = "NONE",
				["font"] = "SSPro - Black",
				["units"] = {
					["target"] = {
						["combobar"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["attachTo"] = "FRAME",
							["anchorPoint"] = "TOPLEFT",
						},
						["portrait"] = {
							["rotation"] = 360,
							["enable"] = true,
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 90,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["health"] = {
							["position"] = "LEFT",
						},
						["power"] = {
							["offset"] = 12,
							["hideonnpc"] = false,
							["position"] = "RIGHT",
						},
						["height"] = 65,
						["buffs"] = {
							["enable"] = false,
							["playerOnly"] = {
								["friendly"] = true,
							},
							["anchorPoint"] = "TOPLEFT",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
							["position"] = "BOTTOM",
						},
						["castbar"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["restIcon"] = false,
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["rotation"] = 360,
							["enable"] = true,
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 90,
						},
						["power"] = {
							["offset"] = 12,
						},
						["stagger"] = {
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
							["position"] = "BOTTOM",
						},
						["height"] = 65,
						["classbar"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["power"] = {
							["enable"] = false,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-percent]",
							["position"] = "BOTTOMLEFT",
						},
						["power"] = {
							["height"] = 15,
						},
						["buffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["position"] = "CENTER",
						},
					},
				},
			},
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["right"] = "Vengeance",
					},
				},
				["font"] = "SSPro - Regular",
			},
			["actionbar"] = {
				["bar3"] = {
					["mouseover"] = true,
					["buttonsize"] = 26,
					["buttons"] = 12,
				},
				["font"] = "SSPro - Bold",
				["fontOutline"] = "OUTLINE",
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 28,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["bar5"] = {
					["buttonsize"] = 26,
					["buttons"] = 12,
				},
				["bar4"] = {
					["mouseover"] = true,
				},
			},
			["layoutSet"] = "tank",
			["auras"] = {
				["consolidatedBuffs"] = {
					["font"] = "SSPro - Semibold",
					["fontOutline"] = "NONE",
				},
				["font"] = "SSPro - Black",
				["fontOutline"] = "NONE",
			},
		},
		["Khanen - Thrall"] = {
			["currentTutorial"] = 2,
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.77,
						["g"] = 0.12,
						["b"] = 0.23,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["target"] = {
						["smartAuraDisplay"] = "SHOW_BUFFS_ON_FRIENDLIES",
					},
					["player"] = {
						["classbar"] = {
							["enable"] = false,
						},
					},
				},
			},
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.77,
					["g"] = 0.12,
					["b"] = 0.23,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-240130",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM-240104",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM240131",
			},
			["layoutSet"] = "dpsMelee",
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Attack Power",
						["right"] = "Haste",
					},
				},
			},
			["hideTutorial"] = 1,
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
			},
		},
		["Quitor - Aerie Peak"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-416",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
			},
			["unitframe"] = {
				["colors"] = {
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
				},
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["GPSArrow"] = {
							["size"] = 40,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raid10"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
					},
					["raid25"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
						},
					},
					["target"] = {
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
					},
				},
			},
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.819,
					["g"] = 0.513,
					["r"] = 0.09,
				},
				["backdropfadecolor"] = {
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
			},
			["layoutSet"] = "healer",
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
			["hideTutorial"] = 1,
			["currentTutorial"] = 1,
		},
		["Wrimtok - Aerie Peak"] = {
			["movers"] = {
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278133",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM-226185",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278133",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
			},
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 1,
						["g"] = 0.49,
						["b"] = 0.04,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["player"] = {
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raid10"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["healPrediction"] = true,
					},
					["target"] = {
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["power"] = {
							["text_format"] = "",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
					["raid25"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["healPrediction"] = true,
					},
				},
			},
			["general"] = {
				["valuecolor"] = {
					["r"] = 1,
					["g"] = 0.49,
					["b"] = 0.04,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
				["vendorGrays"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["stanceBar"] = {
					["buttonsize"] = 31,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["layoutSet"] = "healer",
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Crit Chance",
						["right"] = "Attack Power",
					},
				},
			},
			["hideTutorial"] = 1,
			["currentTutorial"] = 2,
		},
		["Brimtok - Thrall"] = {
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.04,
						["g"] = 0.49,
						["r"] = 1,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raid10"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
					},
					["raid25"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["healPrediction"] = true,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
					},
					["player"] = {
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
						},
					},
					["target"] = {
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
					},
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.04,
					["g"] = 0.49,
					["r"] = 1,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["stanceBar"] = {
					["buttonsize"] = 31,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["layoutSet"] = "healer",
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
			["hideTutorial"] = 1,
			["movers"] = {
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM-226185",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278133",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-416",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278133",
			},
		},
		["Jains - Thrall"] = {
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0.59,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raid10"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
					},
					["raid25"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["healPrediction"] = true,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
					},
					["player"] = {
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
						},
					},
				},
			},
			["currentTutorial"] = 4,
			["general"] = {
				["valuecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0.59,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
				["vendorGrays"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
			},
			["layoutSet"] = "healer",
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
			["hideTutorial"] = 1,
			["movers"] = {
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM0350",
				["ElvUF_Raid40Mover"] = "TOPLEFTElvUIParentTOPLEFT327-413",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM-105149",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM0380",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT304507",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT304-413",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT304507",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
			},
		},
		["Orranstout - Aerie Peak"] = {
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.59,
						["g"] = 1,
						["r"] = 0,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["GPSArrow"] = {
							["size"] = 40,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raid10"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
					},
					["raid25"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
						},
					},
					["target"] = {
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
					},
				},
			},
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.59,
					["g"] = 1,
					["r"] = 0,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["vendorGrays"] = true,
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-416",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
			},
			["layoutSet"] = "healer",
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
			},
			["hideTutorial"] = 1,
			["currentTutorial"] = 1,
		},
		["Orsun - Aerie Peak"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.73,
					["g"] = 0.55,
					["r"] = 0.96,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-416",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
			},
			["layoutSet"] = "healer",
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
			},
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["player"] = {
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raid10"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["healPrediction"] = true,
					},
					["target"] = {
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["power"] = {
							["text_format"] = "",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
					["raid25"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["healPrediction"] = true,
					},
				},
			},
		},
		["Orazzle - Thrall"] = {
			["currentTutorial"] = 3,
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.87,
						["g"] = 0.44,
						["r"] = 0,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["player"] = {
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raid10"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["width"] = 80,
					},
					["raid25"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["healPrediction"] = true,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
					},
					["target"] = {
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
					},
				},
			},
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.87,
					["g"] = 0.44,
					["r"] = 0,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT160350",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
			},
			["layoutSet"] = "healer",
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
			["hideTutorial"] = 1,
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
		},
		["Orstout - Aerie Peak"] = {
			["nameplate"] = {
				["auraFont"] = "SSPro - Regular",
				["font"] = "SSPro - Regular",
				["offtank"] = true,
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
				},
				["bottomPanel"] = false,
				["valuecolor"] = {
					["b"] = 0.59,
					["g"] = 1,
					["r"] = 0,
				},
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
				},
				["vendorGrays"] = true,
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["font"] = "SSPro - Regular",
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT3195",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM0390",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM041",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT3195",
				["ElvAB_3"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4405",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT428-391",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0232",
				["ElvUF_FocusMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-160230",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM0360",
				["ElvAB_5"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-4405",
				["WatchFrameMover"] = "TOPRIGHTElvUIParentTOPRIGHT-107-311",
				["BossHeaderMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-221360",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0192",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT3195",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT3195",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-270215",
				["BossButton"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-369205",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM270215",
			},
			["hideTutorial"] = 1,
			["chat"] = {
				["tabFont"] = "SSPro - Bold",
				["font"] = "SSPro - Regular",
				["tabFontSize"] = 11,
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["units"] = {
					["targettarget"] = {
						["power"] = {
							["enable"] = false,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["height"] = 15,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-percent]",
							["position"] = "BOTTOMLEFT",
						},
						["name"] = {
							["position"] = "CENTER",
						},
						["buffs"] = {
							["enable"] = false,
						},
					},
					["target"] = {
						["combobar"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["attachTo"] = "FRAME",
							["anchorPoint"] = "TOPLEFT",
						},
						["portrait"] = {
							["rotation"] = 360,
							["enable"] = true,
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 90,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["aurabar"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["enable"] = false,
						},
						["health"] = {
							["position"] = "LEFT",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
							["position"] = "BOTTOM",
						},
						["height"] = 65,
						["buffs"] = {
							["enable"] = false,
							["playerOnly"] = {
								["friendly"] = true,
							},
							["attachTo"] = "DEBUFFS",
							["anchorPoint"] = "TOPLEFT",
						},
						["power"] = {
							["position"] = "RIGHT",
							["hideonnpc"] = false,
						},
					},
					["player"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["rotation"] = 360,
							["enable"] = true,
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 90,
						},
						["classbar"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["restIcon"] = false,
						["stagger"] = {
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
							["position"] = "BOTTOM",
						},
						["height"] = 65,
					},
					["pet"] = {
						["enable"] = false,
					},
				},
				["font"] = "SSPro - Black",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.59,
						["g"] = 1,
						["r"] = 0,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
				},
				["fontOutline"] = "NONE",
			},
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["right"] = "Vengeance",
					},
				},
				["font"] = "SSPro - Regular",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["mouseover"] = true,
					["buttonsize"] = 26,
				},
				["fontOutline"] = "OUTLINE",
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 28,
				},
				["bar5"] = {
					["buttons"] = 12,
					["buttonsize"] = 26,
				},
				["font"] = "SSPro - Bold",
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["bar4"] = {
					["mouseover"] = true,
				},
			},
			["layoutSet"] = "tank",
			["auras"] = {
				["font"] = "SSPro - Semibold",
				["fontOutline"] = "NONE",
				["consolidatedBuffs"] = {
					["font"] = "SSPro - Semibold",
					["fontOutline"] = "NONE",
				},
			},
		},
		["Orstout - Thrall"] = {
			["nameplate"] = {
				["font"] = "SSPro - Regular",
				["offtank"] = true,
				["auraFont"] = "SSPro - Regular",
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
				},
				["threat"] = {
					["enable"] = false,
				},
				["bottomPanel"] = false,
				["loginmessage"] = false,
				["valuecolor"] = {
					["b"] = 0.59,
					["g"] = 1,
					["r"] = 0,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["vendorGrays"] = true,
				["font"] = "SSPro - Regular",
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM0390",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM041",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvAB_3"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4405",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT428-391",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM270215",
				["ElvUF_FocusMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-160230",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM0360",
				["BossButton"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-369205",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0192",
				["BossHeaderMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-221360",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-270215",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["WatchFrameMover"] = "TOPRIGHTElvUIParentTOPRIGHT-107-311",
				["ElvAB_5"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-4405",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0232",
			},
			["hideTutorial"] = 1,
			["auras"] = {
				["consolidatedBuffs"] = {
					["font"] = "SSPro - Semibold",
					["fontOutline"] = "NONE",
				},
				["font"] = "SSPro - Semibold",
				["fontOutline"] = "NONE",
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["colors"] = {
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["auraBarBuff"] = {
						["b"] = 0.59,
						["g"] = 1,
						["r"] = 0,
					},
					["castClassColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
				},
				["fontOutline"] = "NONE",
				["font"] = "SSPro - Black",
				["units"] = {
					["target"] = {
						["combobar"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["attachTo"] = "FRAME",
						},
						["portrait"] = {
							["rotation"] = 360,
							["enable"] = true,
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 90,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["castbar"] = {
							["enable"] = false,
						},
						["health"] = {
							["position"] = "LEFT",
						},
						["power"] = {
							["position"] = "RIGHT",
							["hideonnpc"] = false,
						},
						["height"] = 65,
						["buffs"] = {
							["enable"] = false,
							["playerOnly"] = {
								["friendly"] = true,
							},
							["attachTo"] = "DEBUFFS",
							["anchorPoint"] = "TOPLEFT",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
							["position"] = "BOTTOM",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["restIcon"] = false,
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["rotation"] = 360,
							["enable"] = true,
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 90,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
							["position"] = "BOTTOM",
						},
						["height"] = 65,
						["stagger"] = {
							["enable"] = false,
						},
						["classbar"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["power"] = {
							["enable"] = false,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-percent]",
							["position"] = "BOTTOMLEFT",
						},
						["power"] = {
							["height"] = 15,
						},
						["buffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["position"] = "CENTER",
						},
					},
				},
			},
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["right"] = "Vengeance",
					},
				},
				["font"] = "SSPro - Regular",
			},
			["actionbar"] = {
				["bar3"] = {
					["mouseover"] = true,
					["buttonsize"] = 26,
					["buttons"] = 12,
				},
				["font"] = "SSPro - Bold",
				["fontOutline"] = "OUTLINE",
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 28,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["bar5"] = {
					["buttonsize"] = 26,
					["buttons"] = 12,
				},
				["bar4"] = {
					["mouseover"] = true,
				},
			},
			["layoutSet"] = "tank",
			["chat"] = {
				["tabFont"] = "SSPro - Bold",
				["font"] = "SSPro - Regular",
				["tabFontSize"] = 11,
			},
		},
		["Eammiran - Thrall"] = {
			["currentTutorial"] = 2,
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.94,
						["g"] = 0.8,
						["r"] = 0.41,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raid10"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
					},
					["raid25"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["healPrediction"] = true,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
					},
					["player"] = {
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
						},
					},
					["target"] = {
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
					},
				},
			},
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.94,
					["g"] = 0.8,
					["r"] = 0.41,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["vendorGrays"] = true,
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFTElvUIParentTOPLEFT176-386",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-410",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP120-410",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
			},
			["layoutSet"] = "healer",
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
			["hideTutorial"] = 1,
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
		},
		["Cajamarca - Thrall"] = {
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.99,
					["g"] = 0.99,
					["r"] = 0.99,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PartyMover"] = "BOTTOMElvUIParentBOTTOM0363",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
			},
			["layoutSet"] = "healer",
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
			["hideTutorial"] = 1,
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.99,
						["g"] = 0.99,
						["r"] = 0.99,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["width"] = 80,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["power"] = {
							["text_format"] = "",
						},
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raid10"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
					},
					["raid25"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["healPrediction"] = true,
					},
					["player"] = {
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
						},
					},
					["target"] = {
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
					},
				},
			},
		},
		["Orlight - Aerie Peak"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT177417",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT177450",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-417",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT177-417",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
			},
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.99,
						["g"] = 0.99,
						["b"] = 0.99,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["GPSArrow"] = {
							["size"] = 40,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raid10"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
					},
					["target"] = {
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
					},
					["player"] = {
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
						},
					},
					["raid25"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["healPrediction"] = true,
					},
				},
			},
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.99,
					["g"] = 0.99,
					["b"] = 0.99,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
				["vendorGrays"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
			},
			["layoutSet"] = "healer",
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
			["hideTutorial"] = 1,
			["currentTutorial"] = 1,
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Orran - Thrall"] = "Orran - Thrall",
		["Khanen - Thrall"] = "Khanen - Thrall",
		["Quitor - Aerie Peak"] = "Quitor - Aerie Peak",
		["Wrimtok - Aerie Peak"] = "Wrimtok - Aerie Peak",
		["Brimtok - Thrall"] = "Brimtok - Thrall",
		["Jains - Thrall"] = "Jains - Thrall",
		["Orranstout - Aerie Peak"] = "Orranstout - Aerie Peak",
		["Orsun - Aerie Peak"] = "Orsun - Aerie Peak",
		["Orazzle - Thrall"] = "Orazzle - Thrall",
		["Orstout - Aerie Peak"] = "Orstout - Aerie Peak",
		["Orstout - Thrall"] = "Orstout - Thrall",
		["Eammiran - Thrall"] = "Eammiran - Thrall",
		["Cajamarca - Thrall"] = "Cajamarca - Thrall",
		["Orlight - Aerie Peak"] = "Orlight - Aerie Peak",
	},
	["profiles"] = {
		["Orran - Thrall"] = {
			["general"] = {
				["dmgfont"] = "SSPro - Bold italic",
			},
			["skins"] = {
				["addons"] = {
					["EmbedRO"] = true,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Khanen - Thrall"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Quitor - Aerie Peak"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["theme"] = "default",
			["install_complete"] = "5.99",
		},
		["Wrimtok - Aerie Peak"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Brimtok - Thrall"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Jains - Thrall"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Orranstout - Aerie Peak"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Orsun - Aerie Peak"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Orazzle - Thrall"] = {
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Orstout - Aerie Peak"] = {
			["bags"] = {
				["enable"] = false,
			},
			["skins"] = {
				["addons"] = {
					["TransparentEmbed"] = true,
					["DBMSkinHalf"] = true,
					["EmbedRO"] = true,
				},
			},
			["theme"] = "default",
			["install_complete"] = "5.99",
		},
		["Orstout - Thrall"] = {
			["general"] = {
				["normTex"] = "Touchy - White",
				["dmgfont"] = "SSPro - Italic",
				["glossTex"] = "Touchy - White",
			},
			["skins"] = {
				["addons"] = {
					["EmbedRO"] = true,
					["AlwaysTrue"] = true,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Eammiran - Thrall"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Cajamarca - Thrall"] = {
			["skins"] = {
				["addons"] = {
					["EmbedRO"] = true,
					["AlwaysTrue"] = true,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Orlight - Aerie Peak"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
	},
}
