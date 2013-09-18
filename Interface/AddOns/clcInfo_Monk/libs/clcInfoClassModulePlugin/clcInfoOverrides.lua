-- Author      : Geminior
-- Create Date : 11/8/2012 7:47:50 PM
-- Temporary overides of clcInfo core functions until the functionality is implemented

local clcInfoPlugin = LibStub("clcInfoClassModulePlugin")
if not clcInfoPlugin then return end       

local _, parent = ...
if parent.clcInfoClassModulePluginLoaded then
	parent = nil
	return
end
parent = nil

function clcInfo:ReadSavedData()
	-- global defaults
	if not clcInfoDB then
		clcInfoDB = {}
	end
	clcInfo.db = clcInfoDB	

	-- perchar defaults
	if not clcInfoCharDB then
		clcInfoCharDB = clcInfo:GetDefault()
		for k, v in pairs(clcInfo.classModules) do
			if v.CreateDefaultTemplates then
				for _, t in ipairs(v:CreateDefaultTemplates()) do
					table.insert(clcInfoCharDB.templates, t)
				end
			end
		end
		if #clcInfoCharDB.templates == 0 then
			table.insert(clcInfoCharDB.templates, clcInfo.templates:GetDefault())
		end
	end
	clcInfo.cdb = clcInfoCharDB
end

local originalLoadActiveTemplate
local function OverrideLoadActiveTemplate()
	originalLoadActiveTemplate = clcInfo_Options.LoadActiveTemplate
	clcInfo_Options.LoadActiveTemplate = function(self)
		originalLoadActiveTemplate(self)
		if not clcInfo.activeTemplate then
			self:LoadClassModules()
		end
	end
end

local function ADDON_LOADED(self, event, ...)
	local addon = ...
	if addon == "clcInfo_Options" then
		OverrideLoadActiveTemplate()
		self:UnregisterAllEvents()
		self:SetScript("OnEvent", nil)
	end
end

if clcInfo_Options then
	OverrideLoadActiveTemplate()
else
	local f = clcInfoPlugin.OverridesFrame or CreateFrame("Frame", nil, UIParent)
	f:Hide()
	f:SetScript("OnEvent", ADDON_LOADED)
	f:RegisterEvent("ADDON_LOADED")
	clcInfoPlugin.OverridesFrame = f
end