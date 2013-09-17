local SkeenCore3 = _G["SkeenCore3Internal"]
-- Save the option frame name
SkeenCore3.option_frame_name = "SkeenCore3OptionFrame"

-- The optionsframe in interface
function SkeenCore3:CreateOptionFrame()

    local panel = CreateFrame("FRAME", SkeenCore3.option_frame_name);
    panel.name = "SkeenCore3";

    local string
    local checkbox
    local slider
    local dropdown

    string = panel:CreateFontString(nil,"OVERLAY","GameFontNormal")
    string:SetText("Lock")
    string:SetPoint("TOPLEFT", 10, -10)

    checkbox = CreateFrame("CheckButton", nil, panel, "OptionsCheckButtonTemplate")
    checkbox:SetWidth(18)
    checkbox:SetHeight(18)
    checkbox:SetScript("OnClick", function() SkeenCore3:ToggleLocked() end)
    checkbox:SetPoint("TOPRIGHT", -10, -10)
    checkbox:SetChecked(SkeenCore3:GetLocked())

    string = panel:CreateFontString(nil,"OVERLAY","GameFontNormal")
    string:SetText("GUI Scale")
    string:SetPoint("TOPLEFT", 10, -40)

    slider = CreateFrame("Slider", nil, panel, "OptionsSliderTemplate")
    slider:SetMinMaxValues(.5, 1.5)
    slider:SetValue(SkeenCore3:GetScale())
    slider:SetValueStep(.05)
    slider:SetScript("OnValueChanged", function(self) SkeenCore3:SetScale(self:GetValue()); end) --getglobal(self:GetName() .. "Text"):SetText(string.format("%.0f%%", self:GetValue()*100))  end)
    --getglobal(slider:GetName() .. "Low"):SetText("50%")
    --getglobal(slider:GetName() .. "High"):SetText("150%")
    --getglobal(slider:GetName() .. "Text"):SetText(string.format("%.0f%%", SkeenCore3:GetScale()*100))
    slider:SetPoint("TOPRIGHT", -10, -40)

    string = panel:CreateFontString(nil,"OVERLAY","GameFontNormal")
    string:SetText("Update Interval (sec)")
    string:SetPoint("TOPLEFT", 10, -70)

    slider = CreateFrame("Slider", nil, panel, "OptionsSliderTemplate")
    slider:SetMinMaxValues(0.1, 1)
    slider:SetValue(SkeenCore3:GetUpdateInterval())
    slider:SetValueStep(.1)
    slider:SetScript("OnValueChanged", function(self) SkeenCore3:SetUpdateInterval(self:GetValue());  end) --getglobal(self:GetName() .. "Text"):SetText(string.format("%.1f", self:GetValue()))  end)
    --getglobal(slider:GetName() .. "Low"):SetText("0")
    --getglobal(slider:GetName() .. "High"):SetText("1")
    --getglobal(slider:GetName() .. "Text"):SetText(string.format("%.1f", SkeenCore3:GetUpdateInterval()))
    slider:SetPoint("TOPRIGHT", -10, -70)
    
    string = panel:CreateFontString(nil,"OVERLAY","GameFontNormal")
    string:SetText("GUI Plugin to use:")
    string:SetPoint("TOPLEFT", 10, -100)

    dropdown = CreateFrame("Button", "SkeenCore3DropDown", panel, "UIDropDownMenuTemplate")
    dropdown:SetPoint("TOPRIGHT", -10, -100)

    local function initialize(self, level)
        local info = UIDropDownMenu_CreateInfo()
        for k,v in pairs(SkeenCore3Active.GUI) do
            info = UIDropDownMenu_CreateInfo()
            info.text = k
            info.value = k
            info.func = function(self) SkeenCore3Database.DefaultGUIName = self:GetText(); UIDropDownMenu_SetSelectedName(SkeenCore3DropDown, SkeenCore3Database.DefaultGUIName); SkeenCore3:UpdateActiveGUI(); end
            UIDropDownMenu_AddButton(info, level)
        end
    end

    UIDropDownMenu_Initialize(SkeenCore3DropDown, initialize)
    UIDropDownMenu_SetWidth(SkeenCore3DropDown, 200);
    UIDropDownMenu_SetButtonWidth(SkeenCore3DropDown, 124)
    UIDropDownMenu_SetSelectedName(SkeenCore3DropDown, SkeenCore3Database.DefaultGUIName)
    UIDropDownMenu_SetText(SkeenCore3DropDown, SkeenCore3Database.DefaultGUIName) 
    UIDropDownMenu_JustifyText(SkeenCore3DropDown, "LEFT")

    SkeenCore3.options = panel
    InterfaceOptions_AddCategory(panel);
end

function SkeenCore3:GetLocked()
    return SkeenCore3Database.locked
end

function SkeenCore3:ToggleLocked()
    SkeenCore3Database.locked = not SkeenCore3Database.locked
    SkeenCore3:UpdateDragability()
end

function SkeenCore3:GetScale()
    return SkeenCore3Database.scale
end

function SkeenCore3:SetScale(num)
    SkeenCore3Database.scale = num
    SkeenCore3Active.ActiveGUI:ScaleGUI(SkeenCore3Database.scale)
end

function SkeenCore3:GetUpdateInterval()
    return SkeenCore3Database.update_interval
end

function SkeenCore3:SetUpdateInterval(num)
    SkeenCore3Database.update_interval = num
end

