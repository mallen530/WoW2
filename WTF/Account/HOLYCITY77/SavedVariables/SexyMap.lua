
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
			["radius"] = 10,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MinimapZoneTextButton"] = "hover",
				["TimeManagerClockButton"] = "hover",
				["MiniMapMailFrame"] = "always",
				["MinimapZoomOut"] = "never",
				["MiniMapWorldMapButton"] = "never",
			},
			["dragPositions"] = {
				["MiniMapTracking"] = 120.5104638482926,
				["GameTimeFrame"] = 59.21744541170748,
				["LibDBIcon10_BigWigs"] = 162.9177254901742,
				["LibDBIcon10_PitBull4"] = 180.5872809738204,
			},
			["controlVisibility"] = true,
		},
		["hudmap"] = {
			["scale"] = 1.4,
			["textColor"] = {
				["a"] = 1,
				["b"] = 0.5,
				["g"] = 1,
				["r"] = 0.5,
			},
			["alpha"] = 0.7,
			["hudColor"] = {
			},
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "ABF",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["fontsize"] = 8,
			["yOffset"] = 0,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "ABF",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
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
					["blendMode"] = "BLEND",
					["name"] = "RenaitreFadeBorder",
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
					["rotation"] = 225,
					["name"] = "RenaitreFadeNormal",
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
		["core"] = {
			["clamp"] = true,
			["point"] = "BOTTOMRIGHT",
			["relpoint"] = "BOTTOMRIGHT",
			["autoZoom"] = 5,
			["northTag"] = false,
			["y"] = -0,
			["x"] = 0,
			["lock"] = false,
			["scale"] = 1.5,
			["shape"] = "Interface\\BUTTONS\\WHITE8X8",
			["rightClickToConfig"] = true,
		},
		["movers"] = {
			["enabled"] = true,
			["framePositions"] = {
				["Boss1TargetFrame"] = {
					["y"] = 1569.445556640625,
					["x"] = 2571.86181640625,
				},
				["DurabilityFrame"] = {
					["y"] = 74.88614654541016,
					["x"] = 2045.630126953125,
				},
				["WatchFrame"] = {
					["y"] = 814.5385131835938,
					["x"] = 1869.703491210938,
				},
				["VehicleSeatIndicator"] = {
					["y"] = 127.7616500854492,
					["x"] = 1977.348876953125,
				},
			},
			["lock"] = true,
		},
	},
	["presets"] = {
	},
}
