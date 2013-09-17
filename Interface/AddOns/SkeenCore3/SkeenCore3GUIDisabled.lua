--
-- SkeenCore3GUIDisabled
-- 
local SkeenCore3 = _G["SkeenCore3Internal"]

function SkeenCore3:RegisterDisabledGUI()

    local SkeenGUI = {}
    SkeenGUI.Name           = "SkeenCore3GUIDisabled"
    SkeenGUI.DisplayName    = "|cFF00FF00GUI:|r |cFFFF0000Disabled|r"
    SkeenGUI.Version        = "1.1.0"

    function SkeenGUI:CreateGUI(mainFrame) 
        --No operation
    end

    function SkeenGUI:ScaleGUI(scale)
        --No operation
    end

    function SkeenGUI:RemoveGUI()
        --No operation
    end

    function SkeenGUI:LockGUI()
        --No operation
    end

    function SkeenGUI:UnLockGUI()
        --No operation
    end

    function SkeenGUI:HideGUI()
        --No operation
    end

    function SkeenGUI:ShowGUI()
        --No operation
    end

    function SkeenGUI:UpdateGUI(spells, cooldowns)
        --No operation
    end

    function SkeenGUI:Option_Frame()
        local panel = CreateFrame("FRAME")
        return panel
    end

    -- And register the GUI
    local SkeenCore3Register = _G["SkeenCore3"]
    SkeenCore3Register:RegisterGUI(SkeenGUI)
end
