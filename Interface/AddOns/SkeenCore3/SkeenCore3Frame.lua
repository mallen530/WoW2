local SkeenCore3 = _G["SkeenCore3Internal"]

-- The GUI frame, we're using
function SkeenCore3:CreateGUI()

    local displayFrame = CreateFrame("Frame", nil, UIParent)
    displayFrame:SetFrameStrata("BACKGROUND")
    displayFrame:SetBackdrop({bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 32,})
    displayFrame:SetClampedToScreen(true)
    displayFrame:SetMovable(true)
    displayFrame:ClearAllPoints()
    displayFrame:SetWidth(300)
    displayFrame:SetHeight(95)
    if SkeenCore3Database.bottom == nil or SkeenCore3Database.left == nil then
        displayFrame:SetPoint("CENTER")
        SkeenCore3Database.locked = false
    else
        displayFrame:SetPoint("BOTTOMLEFT", SkeenCore3Database.left, SkeenCore3Database.bottom)
    end

    SkeenCore3.displayFrame = displayFrame
end

-- Update wether the frame should be dragable
function SkeenCore3:UpdateDragability()
    if SkeenCore3Database.locked then
        SkeenCore3.displayFrame:SetScript("OnMouseDown", nil)
        SkeenCore3.displayFrame:SetScript("OnMouseUp", nil)
        SkeenCore3.displayFrame:SetScript("OnDragStop", nil)
        SkeenCore3.displayFrame:SetBackdropColor(0, 0, 0, 0)
        SkeenCore3.displayFrame:EnableMouse(false)

        SkeenCore3Active.ActiveGUI:LockGUI()
    else
        SkeenCore3.displayFrame:SetScript("OnMouseDown", function(self) self:StartMoving() end)
        SkeenCore3.displayFrame:SetScript("OnMouseUp", function(self) self:StopMovingOrSizing(); SkeenCore3Database.bottom = SkeenCore3.displayFrame:GetBottom(); SkeenCore3Database.left =  SkeenCore3.displayFrame:GetLeft(); end)
        SkeenCore3.displayFrame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing(); SkeenCore3Database.bottom = SkeenCore3.displayFrame:GetBottom(); SkeenCore3Database.left =  SkeenCore3.displayFrame:GetLeft(); end)
        SkeenCore3.displayFrame:SetBackdropColor(0, 0, 0, .4)
        SkeenCore3.displayFrame:EnableMouse(true)

        SkeenCore3Active.ActiveGUI:UnLockGUI()
    end
end
