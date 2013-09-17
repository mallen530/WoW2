local SkeenCore3Interface = _G["SkeenCore3"]
local SkeenCore3 = _G["SkeenCore3Internal"]

function SkeenCore3Interface:RegisterGUI(SkeenGUI)
	SkeenCore3Active.GUI[SkeenGUI.Name] = SkeenGUI
end

function SkeenCore3:HandleGUIOptionsFrame(SkeenGUI)
    -- The option frame for the plugin
    local optionframe = nil
    -- Load Plugin Provided option frame if any
    if(SkeenGUI.Option_Frame ~= nil) then
        optionframe = SkeenGUI:Option_Frame()
    else -- otherwise substitute a default one
        optionframe = CreateFrame("FRAME")
    end

    -- Set the parent, and name
    optionframe.parent = "SkeenCore3"
    optionframe.name   = SkeenGUI.DisplayName .. " |cFF00FF00" .. SkeenGUI.Version .. "|r"

    local nameString = optionframe:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    nameString:SetText(optionframe.name)
    nameString:SetPoint("TOPLEFT", 10, -10)

    InterfaceOptions_AddCategory(optionframe)
end

function SkeenCore3:UpdateActiveGUI()
    -- Load GUIs
    local loaded = SkeenCore3:ActivateGUI(SkeenCore3Database.DefaultGUIName)
    if(loaded == false) then
        print("Default GUI not found, loading a random one")
        local GUIName = SkeenCore3:GetFirstGUI()
        SkeenCore3:ActivateGUI(GUIName)
    end

    SkeenCore3:UpdateDragability()          -- Set wheter the gui should be dragable, based upon a variable in the SkeenCore3 maintained database (default=true).
end

function SkeenCore3:ActivateGUI(GUIName)

    -- If there´s a gui already, detach it.
    if(SkeenCore3Active.ActiveGUI ~= nil) then
        SkeenCore3Active.ActiveGUI:RemoveGUI()
    end

    SkeenCore3Active.ActiveGUI = nil

    for name,reference in pairs(SkeenCore3Active.GUI) do
        if(name == GUIName) then
            SkeenCore3Active.ActiveGUI = reference
            break
        end
    end

    if(SkeenCore3Active.ActiveGUI == nil) then
        return false
    end

    -- Load the GUI
    SkeenCore3Active.ActiveGUI:CreateGUI(SkeenCore3.displayFrame)

    -- Scale the GUI
    SkeenCore3Active.ActiveGUI:ScaleGUI(SkeenCore3Database.scale)

    return true
end

function SkeenCore3:LoadGUIs()
    if SkeenCore3Active.GUIsLoaded == true then
        return
    else
        SkeenCore3Active.GUIsLoaded = true
    end

    for name,SkeenGUI in pairs(SkeenCore3Active.GUI) do
        if(SkeenGUI.Plugin_Registed ~= nil) then
            SkeenGUI.Plugin_Registed()
        end
        SkeenCore3:HandleGUIOptionsFrame(SkeenGUI)
    end
end

function SkeenCore3:GetFirstGUI()
    -- Return the first GUI found
    for name,reference in pairs(SkeenCore3Active.GUI) do
        return name
    end
    print("NO GUI PLUGINS FOUND - SkeenCore3 cannot run without a GUI!")
end
