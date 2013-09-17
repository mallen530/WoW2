--------------------------------------------------------
--------------------------------------------------------
----	Project....: LUI NextGenWoWUserInterface    ----
----	Plugin.....: ThemeSwitcher                  ----
----	Description: LUI ThemeSwitcher Module       ----
----	Rev Date...: 07/24/2011 (mm/dd/yyyy)        ----
----	Author.....: Zista @ US-Fizzcrank           ----
--------------------------------------------------------
--------------------------------------------------------

local LUI = LibStub("AceAddon-3.0"):GetAddon("LUI")
local module = LUI:NewModule("ThemeSwitcher", "AceEvent-3.0", "AceHook-3.0")
local Themes = LUI:GetModule("Themes")

local db, dbd

--------------------------------------------------
-- / LOCAL VARIABLES / --
--------------------------------------------------

local newRule = {
	Aura = "",
	Priority = 1,
	Theme = "",
}

--------------------------------------------------
-- / LOCAL FUNCTIONS / --
--------------------------------------------------

local function cloneTable(object)
	if type(object) ~= "table" then
		return object
	end

	local clone = {}

	for k, v in pairs(object) do
		clone[k] = cloneTable(v)
	end

	return clone
end

local function Print(message, error)
	if not db.profile.ShowMessages then
		return
	end
	
	local color = error and "|cffff3300" or "|cff33ff00"
	message = color .. module:GetName() .. ": " .. message .. "|r"
	
	print(message)
end

--------------------------------------------------
-- / THEME FUNCTIONS / --
--------------------------------------------------

function module:ApplyTheme() 
	local theme, priority = nil, 0
	
	for k, v in pairs(db.char.Rules) do
		if UnitAura("player", k) and v.Priority > priority then
			theme = v.Theme
			priority = v.Priority
		end
	end
	
	if theme ~= db.char.CurrentTheme then
		if theme then
			if not db.char.CurrentTheme then
				db.char.DefaultColors = cloneTable(Themes.db.profile)
			end
			
			Themes:LoadTheme(theme)
			Themes:ApplyTheme()
		else
			self:ResetTheme()
		end
		
		db.char.CurrentTheme = theme
	end
end

function module:ResetTheme()
	if not db.char.DefaultColors then
		return
	end
	
	for k, v in pairs(db.char.DefaultColors) do
		Themes.db.profile[k] = v
	end
	Themes:ApplyTheme()

	db.char.CurrentTheme = nil
end

--------------------------------------------------
-- / HOOK FUNCTIONS / --
--------------------------------------------------

local function deleteTheme(Themes, theme)
	StaticPopupDialogs["LUI_TS_WILL_ALSO_DELETE"] = {
		text = 'Deleting this theme will also delete the ThemeSwitcher Rule(s) you have set to it.  Are you sure?',
		button1 = "Yes",
		button2 = "No",
		OnAccept = function(self, data, data2)
			db.char.Rules[data2] = nil
			return module.hooks[Themes].DeleteTheme(Themes, data)
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
	
	if theme == nil or theme == "" then theme = Themes.db.profile.theme end
	
	for aura, settings in pairs(db.char.Rules) do
		if settings.Theme == theme then
			local dialog = StaticPopup_Show("LUI_TS_WILL_ALSO_DELETE")
			dialog.data = theme
			dialog.data2 = aura
			return
		end
	end
	
	return module.hooks[Themes].DeleteTheme(Themes, theme)
end
module:RawHook(Themes, "DeleteTheme", deleteTheme)

--------------------------------------------------
-- / EVENT FUNCTIONS / --
--------------------------------------------------

function module:UNIT_AURA(event, unit)
	if unit == "player" then
		self:ApplyTheme()
	end
end

function module:PLAYER_ENTERING_WORLD(event)
	self:UnregisterEvent(event)
	
	if self:IsEnabled() then
		self:ApplyTheme()
	end
end

--------------------------------------------------
-- / MODULE HANDLING / --
--------------------------------------------------

module.order = 2.5
module.defaults = {
	profile = {
		Enable = true,
	},
	char = {
		CurrentTheme = nil,
		DefaultColors = {},
		Rules = {
			--[[[AuraName] = {
				Priority = [number],
				Aura = [AuraName],
				Theme = [ThemeName],
			},]]
		},
	},
}

local function createRuleOptions()
	local function getPriorityValue(info)
		return db.char.Rules[info[#info-1]][info[#info]]
	end
	local function setPriorityValue(info, val)
		db.char.Rules[info[#info-1]][info[#info]] = val
		module:ApplyTheme()
	end
	
	local function themeGet(info)
		for k, v in pairs(Themes.ThemeArray()) do
			if v == db.char.Rules[info[#info-1]].Theme then
				return k
			end
		end
	end
	local function themeSet(info, val)
		local themeArray = Themes.ThemeArray()
		if themeArray[val] ~= "" then
			db.char.Rules[info[#info-1]].Theme = themeArray[val]
		end
	end
	
	local function deleteRule(info)
		db.char.Rules[info[#info-1]] = nil
		
		Print("Successfully removed the aura |cff00ff33" .. info[#info-1] .. "|r from the rules.")
		module:UpdateOptions()
		module:ApplyTheme()
	end
	
	local options = {}
	for k, v in pairs(db.char.Rules) do
		options[k] = {
			name = k,
			type = "group",
			guiInline = true,
			order = 10, -- sort alphabetically
			args = {
				Priority = {
					name = "Priority",
					desc = "The priority that applies to this rule",
					type = "range",
					min = 1,
					max = 100,
					step = 1,
					get = getPriorityValue,
					set = setPriorityValue,
					order = 2,
				},
				Theme = {
					name = "Theme",
					desc = "The theme that will be applied by this rule",
					type = "select",
					values = Themes.ThemeArray,
					get = themeGet,
					set = themeSet,
					order = 3, 
				},
				Delete = {
					name = "Delete",
					desc = "Delete this rule",
					type = "execute",
					width = "half",
					func = deleteRule,
					order = 4,
				},
			},
		}
	end
	
	return options
end

function module:LoadOptions()
	local function themeGet()
		local themeArray = Themes.ThemeArray()
		for k, v in pairs(Themes.ThemeArray()) do
			if v == newRule.Theme then
				return k
			end
		end
	end
	local function themeSet(info, val)
		local themeArray = Themes.ThemeArray()
		if themeArray[val] ~= "" then
			newRule.Theme = themeArray[val]
		end
	end
	
	local function clearAddRule()
		newRule = {
			Priority = 1,
			Aura = "",
			Theme = "",
		}
	end
	local function addRule()
		if newRule.Aura == "" or newRule.Theme == "" then
			return
		end

		if db.char.Rules[newRule.Aura] then
			Print("The aura |cff00ff33" .. newRule.Aura .. "|r already exists as a rule.", true)
			return
		end
		
		db.char.Rules[newRule.Aura] = newRule

		Print("Successfully added the aura |cff00ff33" .. newRule.Aura .. "|r to the rules.")

		clearAddRule()
		self:UpdateOptions()
		
		self:ApplyTheme()
	end
	
	local options  = {
		Title = {
			type = "header",
			order = 1,
			name = module:GetName() .. " " .. GetAddOnMetadata("LUI_ThemeSwitcher", "Version"),
		},
		AddRule = {
			type = "group",
			order = 2,
			name = "Add Rule",
			args = {
				Info = {
					name = "General",
					type = "group",
					guiInline = true,
					order = 1,
					args = {
						Description = {
							name = "This module automatically switches the color theme of LUI depending on certain auras (buffs / debuffs) which you have defined as rules.",
							type = "description",
							order = 1,
						},
						Priority = {
							name = "\n|cff3399ffNotice:|r The priority value defines, which theme will be applied when multiple auras are active. The rule with the highest priority will apply. " ..
								"If there are multiple rules with the same priority, the first one will apply.",
							type = "description",
							order = 2,
						},
						DefaultTheme = {
							name = "\n|cff3399ffNotice:|r If no rule applies, the colors / theme you defined last, when no rule applied, will be shown.",
							type = "description",
							order = 3,
						},
					},
				},
				AddRule = {
					name = "Add Rule",
					type = "group",
					guiInline = true,
					order = 2,
					args = {
						Aura = {
							name = "Aura name",
							desc = "The name of the aura that causes the rule to apply (Case Sensitive).",
							type = "input",
							get = function() return newRule.Aura end,
							set = function(info, val) newRule.Aura = val end,
							order = 1,
						},
						Theme = {
							name = "Theme",
							desc = "The theme which will be applied by the rule.",
							type = "select",
							values = Themes.ThemeArray,
							get = themeGet,
							set = themeSet,
							order = 2,
						},
						Space = {
							name = "",
							type = "description",
							order = 3,
						},
						Priority = {
							name = "Priority",
							desc = "The priority of the rule to apply.",
							type = "range",
							width = "double",
							min = 1,
							max = 100,
							step = 1,
							get = function() return newRule.Priority end,
							set = function(info, val) newRule.Priority = val end,
							order = 4,
						},
						Space2 = {
							name = "",
							type = "description",
							order = 5,
						},
						Add = {
							name = "Add the rule",
							desc = "Add this rule to the rule list.",
							type = "execute",
							func = addRule,
							order = 6,
						},
						Clear = {
							name = "Clear",
							desc = "Clear the add rule selection.",
							type = "execute",
							func = clearAddRule,
							order = 7,
						},
					},
				},
			},
		},
		Rules = {
			name = "Rules",
			type = "group",
			order = 3,
			args = createRuleOptions(),
		},
	}

	return options
end

function module:UpdateOptions()
	LUI.options.args[self:GetName()].args.Rules.args = createRuleOptions()
	LibStub("AceConfig-3.0"):RegisterOptionsTable("LUI", LUI.options)
	LibStub("AceConfigRegistry-3.0"):NotifyChange("LUI")
end

function module:OnInitialize()
	db, dbd = LUI:NewNamespace(self, true)
	
	-- for tranistion to new db system (v2.0)
	if db.profile.Rules then
		for i, v in ipairs(db.profile.Rules) do
			db.profile.Rules[v.Aura] = v
			db.profile.Rules[i] = nil
		end
		
		-- for change to char key in db (v2.3)
		for k, v in pairs(db.profile.Rules) do
			db.char.Rules[k] = v
		end
		db.char.CurrentTheme = db.profile.CurrentTheme or db.char.CurrentTheme
		db.char.DefaultColors = db.profile.DefaultColors or db.char.DefaultColors
		db.profile.Rules = nil
		db.profile.CurrentTheme = nil
		db.profile.DefaultColors = nil
	end
	
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
end

function module:OnEnable()
	self:RegisterEvent("UNIT_AURA")
end

function module:OnDisable()
	self:UnregisterEvent("UNIT_AURA")
	self:ResetTheme()
end
