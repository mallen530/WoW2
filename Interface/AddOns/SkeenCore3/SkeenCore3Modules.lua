local SkeenCore3Interface = _G["SkeenCore3"]
local SkeenCore3 = _G["SkeenCore3Internal"]

--Register the plugin
function SkeenCore3Interface:RegisterPlugin(SkeenPlugin)
    -- Check the there's not a plugin for this combination already
    if (SkeenCore3Active.Module[SkeenPlugin.Class][SkeenPlugin.Spec] ~= nil) then
        UIErrorsFrame:AddMessage("SKEENCORE3 - MODULE COLLISION DETECTED!",1.0,0.0,0.0)
        local error_message = SkeenPlugin.Name .. " and " .. SkeenCore3Active.Module[SkeenPlugin.Class][SkeenPlugin.Spec].Name
        UIErrorsFrame:AddMessage(error_message,1.0,0.0,0.0)
    end
    -- Check that the plugin is up-to-date, otherwise throw an error.
    if SkeenPlugin.Version == nil then
        UIErrorsFrame:AddMessage("SKEENCORE3 - UNVERSIONED PLUGIN!" .. SkeenPlugin.Name,1.0,0.0,0.0)
    elseif SkeenPlugin.Version ~= "5.0.3" then
        UIErrorsFrame:AddMessage("SKEENCORE3 - OLD PLUGIN!" .. SkeenPlugin.Name,1.0,0.0,0.0)
    end
    -- Register the plugin
    SkeenCore3Active.Module[SkeenPlugin.Class][SkeenPlugin.Spec] = SkeenPlugin
end

function SkeenCore3:HandlePluginOptionsFrame(SkeenPlugin)
    -- The option frame for the plugin
    local optionframe = nil
    -- Load Plugin Provided option frame if any
    if(SkeenPlugin.Option_Frame ~= nil) then
        optionframe = SkeenPlugin.Option_Frame()
    else -- otherwise substitute a default one
        optionframe = CreateFrame("FRAME")
    end
    -- Set the parent, and name
    optionframe.parent = "SkeenCore3"
    optionframe.name   = SkeenPlugin.Name .. " |cFF00FF00" .. SkeenPlugin.Version .. "|r"

    local nameString = optionframe:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    nameString:SetText(optionframe.name)
    nameString:SetPoint("TOPLEFT", 10, -10)

    InterfaceOptions_AddCategory(optionframe)
end

--Update Active Module
function SkeenCore3:UpdateActiveModule()	

    -- Find the character class and spec
    local _, class = UnitClass("player")
    local spec = GetSpecialization()
    
    -- If there's currently a active module, and that module has a plugin
    -- inactive function, make sure to run it, for whatever reason.
    if(SkeenCore3Active.ActiveModule ~= nil) and (SkeenCore3Active.ActiveModule.Plugin_Inactive ~= nil) then
        SkeenCore3Active.ActiveModule.Plugin_Inactive()
    end

    -- Set this to nil, to ensure that the old module is unloaded properly.
    SkeenCore3Active.ActiveModule = nil

    -- If there was no plugin found, for the class/spec combination
    -- Then simply print a ugly error message stating this. 
    -- This does a multicheck for class first, then spec
    if(SkeenCore3Active.Module[class] == nil or SkeenCore3Active.Module[class][spec] == nil) then
        UIErrorsFrame:AddMessage("SKEENCORE3 - NO SUITABLE CLASS MODULES FOUND!",1.0,0.0,0.0)
        -- Hide the addon
        SkeenCore3.displayFrame:Hide()
        return
    end
    -- Show the addon
    SkeenCore3.displayFrame:Show()

    -- At this point we know that a plugin for the wanted class+spec is in the
    -- modules table, so we can simply look it up; and set it as the active one
    SkeenCore3Active.ActiveModule = SkeenCore3Active.Module[class][spec]
    -- And if there's an plugin_active function, make sure to run it.
    if(SkeenCore3Active.ActiveModule.Plugin_Active ~= nil) then
        SkeenCore3Active.ActiveModule.Plugin_Active()
    end
end

function SkeenCore3:LoadModules()
    if SkeenCore3Active.ModulesLoaded == true then
        return
    else
        SkeenCore3Active.ModulesLoaded = true
    end

    -- As this is thrown when all addons have been loaded, then we'll use this
    -- to configure all of our registered plugins.
    -- Load the plugins into this variable one at a time, and let them act.
    local SkeenPlugin = nil

    -- Needed in order to do the magic loop below
    local classes = {"DEATHKNIGHT", "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR"}
    local number_of_specs = 4

    -- Needed to check if any module, at all was loaded
    local any_loaded = false

    -- Loop though each and every possible registered plugin
    for i=1, getn(classes), 1 do                    
        for b=1, number_of_specs, 1 do          
            -- Load the plugin for this combination if any
            SkeenPlugin = SkeenCore3Active.Module[classes[i]][b]
            -- if any was found, allow it to be configurated.
            if(SkeenPlugin ~= nil) then
                if(SkeenPlugin.Plugin_Registed ~= nil) then
                    SkeenPlugin.Plugin_Registed()
                end
                any_loaded = true
                SkeenCore3:HandlePluginOptionsFrame(SkeenPlugin)
            end
        end
    end

    if(any_loaded == false) then
        UIErrorsFrame:AddMessage("SKEENCORE3 - NO CLASS MODULES FOUND AT ALL!",1.0,0.0,0.0)
    end
end

