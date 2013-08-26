
SexyMap2DB = {
	["Orstout-Aerie Peak"] = {
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "map",
		},
		["coordinates"] = {
			["enabled"] = false,
			["fontColor"] = {
			},
			["borderColor"] = {
			},
			["locked"] = false,
			["backgroundColor"] = {
			},
		},
		["buttons"] = {
			["radius"] = -8,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MinimapZoneTextButton"] = "hover",
				["MiniMapWorldMapButton"] = "never",
				["MinimapZoomOut"] = "never",
				["MiniMapMailFrame"] = "always",
				["TimeManagerClockButton"] = "hover",
			},
			["dragPositions"] = {
				["MiniMapTracking"] = -47.12946903587977,
				["GameTimeFrame"] = 229.3168049937007,
				["LibDBIcon10_BigWigs"] = 162.9177254901742,
				["LibDBIcon10_PitBull4"] = 180.5872809738204,
			},
			["controlVisibility"] = true,
		},
		["hudmap"] = {
			["scale"] = 1.4,
			["hudColor"] = {
			},
			["alpha"] = 0.7,
			["textColor"] = {
				["a"] = 1,
				["r"] = 0.5,
				["g"] = 1,
				["b"] = 0.5,
			},
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["font"] = "SSPro - Semibold",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["xOffset"] = 0,
			["fontsize"] = 8,
			["yOffset"] = 0,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["font"] = "SSPro - Semibold",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["xOffset"] = 0,
			["fontsize"] = 8,
			["yOffset"] = 15,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
				{
					["rotation"] = 225,
					["name"] = "RenaitreFadeBorder",
					["blendMode"] = "BLEND",
					["r"] = 0,
					["scale"] = 1.47,
					["b"] = 0,
					["g"] = 0,
					["texture"] = "Interface\\Addons\\SexyMap\\media\\RenaitreFadeBorder",
				}, -- [1]
				{
					["a"] = 1,
					["r"] = 0,
					["scale"] = 1.47,
					["g"] = 1,
					["drawLayer"] = "HIGHLIGHT",
					["blendMode"] = "BLEND",
					["b"] = 0.6,
					["name"] = "RenaitreFadeNormal",
					["rotation"] = 225,
					["texture"] = "Interface\\Addons\\SexyMap\\media\\RenaitreFadeNormal",
				}, -- [2]
				{
					["rotation"] = 225,
					["name"] = "RenaitreFadeGloss",
					["scale"] = 1.48,
					["drawLayer"] = "OVERLAY",
					["texture"] = "Interface\\Addons\\SexyMap\\media\\RenaitreFadeGloss",
				}, -- [3]
			},
			["backdrop"] = {
				["show"] = false,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["movers"] = {
			["enabled"] = true,
			["framePositions"] = {
				["Boss1TargetFrame"] = {
					["y"] = 89.97859954833984,
					["x"] = 2597.076171875,
				},
				["DurabilityFrame"] = {
					["y"] = 74.88614654541016,
					["x"] = 2045.630126953125,
				},
				["WatchFrame"] = {
					["y"] = 1128.199584960938,
					["x"] = 25.72539329528809,
				},
				["VehicleSeatIndicator"] = {
					["y"] = 127.7616500854492,
					["x"] = 1977.348876953125,
				},
			},
			["lock"] = true,
		},
		["core"] = {
			["clamp"] = true,
			["point"] = "BOTTOMRIGHT",
			["relpoint"] = "BOTTOMRIGHT",
			["autoZoom"] = 5,
			["northTag"] = false,
			["y"] = 4.601856708526611,
			["x"] = -3.646463871002197,
			["lock"] = false,
			["scale"] = 1.5,
			["shape"] = "Interface\\BUTTONS\\WHITE8X8",
			["rightClickToConfig"] = true,
		},
	},
	["presets"] = {
	},
}
