
SBFDB = {
	["global"] = {
		["message"] = false,
		["version"] = 3.2,
		["combatUpdate"] = 0.2,
		["spells"] = {
			[128943] = {
				0, -- [1]
				true, -- [2]
				20, -- [3]
				"MONK", -- [4]
				1377459300, -- [5]
				{
				}, -- [6]
				"Cyclonic Inspiration", -- [7]
			},
		},
		["minor"] = 5,
		["spellTTL"] = 30,
	},
	["profileKeys"] = {
		["Orstout - Aerie Peak"] = "Orstout - Aerie Peak",
	},
	["profiles"] = {
		["Orstout - Aerie Peak"] = {
			["flow"] = {
			},
			["settings"] = {
			},
			["frames"] = {
				{
					["general"] = {
						["frameName"] = "Buffs",
						["interactiveFrame"] = true,
						["buffs"] = true,
						["blacklist"] = true,
						["unit"] = "player",
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["direction"] = "+",
						["point"] = {
							"TOPRIGHT", -- [1]
							-65, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["rowCount"] = 20,
						["y"] = 0,
						["x"] = 0,
						["sort"] = "INDEX",
						["anchor"] = 1,
						["count"] = 20,
						["visibility"] = 1,
						["growth"] = 3,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["b"] = 0.1,
							["g"] = 1,
							["r"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["fontSize"] = 10,
						["font"] = "Friz Quadrata TT",
						["colour"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["frameLevel"] = 4,
						["format"] = 2,
						["expiringColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["font"] = "Friz Quadrata TT",
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [1]
				{
					["general"] = {
						["blacklist"] = true,
						["debuffs"] = true,
						["frameName"] = "Debuffs",
						["unit"] = "player",
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["point"] = {
							"TOPRIGHT", -- [1]
							-110, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["growth"] = 3,
						["y"] = 0,
						["x"] = 0,
						["sort"] = 1,
						["anchor"] = 1,
						["count"] = 16,
						["visibility"] = 1,
						["rowCount"] = 16,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["b"] = 0.1,
							["g"] = 1,
							["r"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["fontSize"] = 10,
						["font"] = "Friz Quadrata TT",
						["colour"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["frameLevel"] = 4,
						["format"] = 2,
						["expiringColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["font"] = "Friz Quadrata TT",
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [2]
			},
			["buttonFacade"] = {
				["Debuffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
				["Buffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
			},
		},
	},
}
