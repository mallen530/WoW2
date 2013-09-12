
ElvDB = {
	["profileKeys"] = {
		["Orran - Thrall"] = "Orran - Thrall",
		["Khanen - Thrall"] = "Khanen - Thrall",
		["Quitor - Aerie Peak"] = "Quitor - Aerie Peak",
		["Orlight - Aerie Peak"] = "Orlight - Aerie Peak",
		["Wrimtok - Aerie Peak"] = "Wrimtok - Aerie Peak",
		["Brimtok - Thrall"] = "Brimtok - Thrall",
		["Jains - Thrall"] = "Jains - Thrall",
		["Orazzle - Thrall"] = "Orazzle - Thrall",
		["Orsun - Aerie Peak"] = "Orsun - Aerie Peak",
		["Orbear - Aerie Peak"] = "Orbear - Aerie Peak",
		["Cajamarca - Thrall"] = "Cajamarca - Thrall",
		["Orstout - Aerie Peak"] = "Orstout - Aerie Peak",
		["Eammiran - Thrall"] = "Eammiran - Thrall",
		["Orstout - Thrall"] = "Orstout - Thrall",
		["Orranstout - Aerie Peak"] = "Orranstout - Aerie Peak",
	},
	["gold"] = {
		["Thrall"] = {
			["Orran"] = 182629411,
			["Khanen"] = 78174270,
			["Eammiran"] = 164923554,
			["Cajamarca"] = 147026279,
			["Orazzle"] = 290518567,
			["Brimtok"] = 199221342,
			["Jains"] = 4128195,
			["Orstout"] = 245895250,
		},
		["Aerie Peak"] = {
			["Orsun"] = 0,
			["Orbear"] = 9911,
			["Wrimtok"] = 7152,
			["Quitor"] = 162,
			["Orlight"] = 690223,
			["Orranstout"] = 17925,
			["Orstout"] = 152822236,
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
					["b"] = 0.73,
					["g"] = 0.55,
					["r"] = 0.96,
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
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4209",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM0390",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM041",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4209",
				["ElvAB_3"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4405",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT428-391",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM270215",
				["ElvUF_FocusMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-160230",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM0360",
				["BossButton"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-369205",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-270215",
				["BossHeaderMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-221360",
				["WatchFrameMover"] = "TOPRIGHTElvUIParentTOPRIGHT-107-311",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4219",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT455432",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0192",
				["ElvAB_5"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-4405",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0232",
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
						["health"] = {
							["position"] = "LEFT",
						},
						["castbar"] = {
							["enable"] = false,
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
						["power"] = {
							["offset"] = 12,
							["hideonnpc"] = false,
							["position"] = "RIGHT",
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
						["name"] = {
							["position"] = "CENTER",
						},
						["power"] = {
							["height"] = 15,
						},
						["buffs"] = {
							["enable"] = false,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-percent]",
							["position"] = "BOTTOMLEFT",
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
			["movers"] = {
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-240130",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM-240104",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM240131",
			},
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.23,
						["g"] = 0.12,
						["r"] = 0.77,
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
					["b"] = 0.23,
					["g"] = 0.12,
					["r"] = 0.77,
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
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
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
			["currentTutorial"] = 2,
		},
		["Quitor - Aerie Peak"] = {
			["currentTutorial"] = 1,
			["unitframe"] = {
				["colors"] = {
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
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
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["width"] = 80,
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
				},
			},
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.09,
					["g"] = 0.513,
					["b"] = 0.819,
				},
				["backdropfadecolor"] = {
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-416",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
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
		["Orlight - Aerie Peak"] = {
			["currentTutorial"] = 1,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
					},
				},
			},
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
				["vendorGrays"] = true,
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT177417",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT177450",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT177-417",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-417",
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
		["Wrimtok - Aerie Peak"] = {
			["movers"] = {
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM-226185",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278133",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278133",
			},
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
						["height"] = 45,
						["verticalSpacing"] = 9,
						["power"] = {
							["text_format"] = "",
						},
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
				},
			},
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
						["r"] = 1,
						["g"] = 0.49,
						["b"] = 0.04,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
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
						["healPrediction"] = true,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
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
					["r"] = 1,
					["g"] = 0.49,
					["b"] = 0.04,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278133",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM-226185",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-416",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278133",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
			},
			["layoutSet"] = "healer",
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
			["hideTutorial"] = 1,
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
		},
		["Jains - Thrall"] = {
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
						["healPrediction"] = true,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["width"] = 80,
					},
				},
			},
			["currentTutorial"] = 4,
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
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT304507",
				["ElvUF_Raid40Mover"] = "TOPLEFTElvUIParentTOPLEFT327-413",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM-105149",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM0380",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM0350",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT304507",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT304-413",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
			},
		},
		["Orazzle - Thrall"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT160350",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
			},
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0,
						["g"] = 0.44,
						["b"] = 0.87,
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
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["width"] = 80,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["GPSArrow"] = {
							["size"] = 40,
						},
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
				},
			},
			["general"] = {
				["valuecolor"] = {
					["r"] = 0,
					["g"] = 0.44,
					["b"] = 0.87,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
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
			["currentTutorial"] = 3,
		},
		["Orsun - Aerie Peak"] = {
			["currentTutorial"] = 2,
			["general"] = {
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
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-416",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
			},
			["layoutSet"] = "healer",
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
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
						["healPrediction"] = true,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
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
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["width"] = 80,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["power"] = {
							["text_format"] = "",
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
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
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
		["Orbear - Aerie Peak"] = {
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
						["healPrediction"] = true,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
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
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["xOffset"] = -4,
							["sizeOverride"] = 16,
							["anchorPoint"] = "TOPRIGHT",
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["GPSArrow"] = {
							["size"] = 40,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
					},
				},
			},
			["currentTutorial"] = 2,
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
			["movers"] = {
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM-226185",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278133",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-416",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278133",
			},
			["layoutSet"] = "healer",
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
			["hideTutorial"] = 1,
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["left"] = "Spell/Heal Power",
						["right"] = "Haste",
					},
				},
			},
		},
		["Cajamarca - Thrall"] = {
			["currentTutorial"] = 1,
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
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["power"] = {
							["text_format"] = "",
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
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PartyMover"] = "BOTTOMElvUIParentBOTTOM0363",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
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
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
			},
		},
		["Orstout - Aerie Peak"] = {
			["nameplate"] = {
				["auraFont"] = "SSPro - Regular",
				["offtank"] = true,
				["font"] = "SSPro - Regular",
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
				},
				["bottomPanel"] = false,
				["valuecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0.59,
				},
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
				},
				["vendorGrays"] = true,
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
				["font"] = "SSPro - Regular",
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT3195",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM0390",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM041",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT3195",
				["AltPowerBarMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-501387",
				["ElvAB_3"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-4186",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT428-391",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM270215",
				["ShiftAB"] = "BOTTOMElvUIParentBOTTOM076",
				["BossButton"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-369205",
				["ElvUF_FocusMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-160230",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM0360",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0192",
				["TotemBarMover"] = "BOTTOMElvUIParentBOTTOM-2804",
				["BossHeaderMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-221360",
				["WatchFrameMover"] = "TOPRIGHTElvUIParentTOPRIGHT-107-311",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT3195",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT3195",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-270215",
				["ElvAB_5"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-4405",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0232",
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
							["anchorPoint"] = "TOPLEFT",
							["attachTo"] = "DEBUFFS",
						},
						["power"] = {
							["position"] = "RIGHT",
							["hideonnpc"] = false,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["height"] = 15,
						},
						["name"] = {
							["position"] = "CENTER",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-percent]",
							["position"] = "BOTTOMLEFT",
						},
						["buffs"] = {
							["enable"] = false,
						},
					},
					["pet"] = {
						["enable"] = false,
					},
				},
				["font"] = "SSPro - Black",
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0.59,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
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
		["Eammiran - Thrall"] = {
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.41,
						["g"] = 0.8,
						["b"] = 0.94,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
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
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
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
						["healPrediction"] = true,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
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
					["r"] = 0.41,
					["g"] = 0.8,
					["b"] = 0.94,
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
				["ElvUF_Raid40Mover"] = "TOPLEFTElvUIParentTOPLEFT176-386",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP120-410",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-410",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
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
				["font"] = "SSPro - Regular",
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
				["loginmessage"] = false,
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM0390",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM041",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
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
				["ElvUF_Raid25Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-270215",
				["BossButton"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-369205",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM270215",
			},
			["hideTutorial"] = 1,
			["auras"] = {
				["consolidatedBuffs"] = {
					["fontOutline"] = "NONE",
					["font"] = "SSPro - Semibold",
				},
				["font"] = "SSPro - Semibold",
				["fontOutline"] = "NONE",
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
							["anchorPoint"] = "TOPLEFT",
							["attachTo"] = "DEBUFFS",
						},
						["power"] = {
							["hideonnpc"] = false,
							["position"] = "RIGHT",
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
					["buttonsize"] = 26,
					["mouseover"] = true,
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
		["Orranstout - Aerie Peak"] = {
			["currentTutorial"] = 1,
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
						["width"] = 80,
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
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176416",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM278132",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM076",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM310432",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM038",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM3124",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT176450",
				["ElvUF_PartyMover"] = "TOPElvUIParentTOP20-416",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0176",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT176-416",
				["BossButton"] = "BOTTOMElvUIParentBOTTOM0275",
				["ElvAB_5"] = "BOTTOMElvUIParentBOTTOM-3124",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-278132",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0132",
			},
			["layoutSet"] = "healer",
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
			["hideTutorial"] = 1,
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
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Orran - Thrall"] = "Orran - Thrall",
		["Khanen - Thrall"] = "Khanen - Thrall",
		["Quitor - Aerie Peak"] = "Quitor - Aerie Peak",
		["Orlight - Aerie Peak"] = "Orlight - Aerie Peak",
		["Wrimtok - Aerie Peak"] = "Wrimtok - Aerie Peak",
		["Brimtok - Thrall"] = "Brimtok - Thrall",
		["Jains - Thrall"] = "Jains - Thrall",
		["Orazzle - Thrall"] = "Orazzle - Thrall",
		["Orsun - Aerie Peak"] = "Orsun - Aerie Peak",
		["Orbear - Aerie Peak"] = "Orbear - Aerie Peak",
		["Cajamarca - Thrall"] = "Cajamarca - Thrall",
		["Orstout - Aerie Peak"] = "Orstout - Aerie Peak",
		["Eammiran - Thrall"] = "Eammiran - Thrall",
		["Orstout - Thrall"] = "Orstout - Thrall",
		["Orranstout - Aerie Peak"] = "Orranstout - Aerie Peak",
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
		["Orlight - Aerie Peak"] = {
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
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
			["bags"] = {
				["enable"] = false,
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
		["Orsun - Aerie Peak"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
		["Orbear - Aerie Peak"] = {
			["theme"] = "default",
			["install_complete"] = "6.36",
		},
		["Cajamarca - Thrall"] = {
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
		["Orstout - Aerie Peak"] = {
			["general"] = {
				["namefont"] = "SSPro - Semibold",
				["dmgfont"] = "SSPro - Semibold",
			},
			["bags"] = {
				["enable"] = false,
			},
			["skins"] = {
				["addons"] = {
					["EmbedRO"] = true,
					["EmbedMain"] = "Recount, Omen",
					["EmbedalDamageMeter"] = false,
					["TransparentEmbed"] = true,
					["DBMFont"] = "SSPro - Semibold",
					["EmbedSystem"] = true,
					["DBMSkinHalf"] = true,
				},
			},
			["theme"] = "default",
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
		["Orstout - Thrall"] = {
			["general"] = {
				["normTex"] = "Touchy - White",
				["glossTex"] = "Touchy - White",
				["dmgfont"] = "SSPro - Italic",
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
		["Orranstout - Aerie Peak"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["theme"] = "class",
			["install_complete"] = "5.99",
		},
	},
}
