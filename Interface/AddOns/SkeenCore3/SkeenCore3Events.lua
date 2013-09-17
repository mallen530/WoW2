local SkeenCore3 = _G["SkeenCore3Internal"]

--------------------
-- EVENT HANDLING --
--------------------
-- Create our eventhandling frame, and direct whatever event thats thrown on it,
-- to SkeenCore3.events.EVENT_NAME
SkeenCore3.eventHandler = CreateFrame("Frame")
SkeenCore3.eventHandler:SetScript("OnEvent", function(this, event, ...) SkeenCore3.events[event](...) end)
--Events to listen to
--Register the different events
SkeenCore3.eventHandler:RegisterEvent("PLAYER_ENTERING_WORLD")  --Player is getting control of their char
SkeenCore3.eventHandler:RegisterEvent("PLAYER_TALENT_UPDATE")   --Player set a talent, respecced, changed talents, or whatever.
SkeenCore3.eventHandler:RegisterEvent("PLAYER_TARGET_CHANGED")  --Player changed target
SkeenCore3.eventHandler:RegisterEvent("ADDON_LOADED")           --Our addon loaded (before player enters world).
--EventHandler Functions
--Table holding the eventhandling functions, this is the table used for lookup
--by our eventHandler frame.
SkeenCore3.events = {}
--Player logged in
function SkeenCore3.events.PLAYER_ENTERING_WORLD()
    SkeenCore3:LoadGUIs()           -- Try to load modules in case they aren't already
    SkeenCore3:LoadModules()        -- Try to load modules in case they aren't already
    SkeenCore3:UpdateActiveGUI()    -- Find a pleasing gui
    SkeenCore3:UpdateActiveModule() -- Find a pleasing module
    SkeenCore3:RotationUpdate()     -- And run it to fill the gui

    DEFAULT_CHAT_FRAME:AddMessage("SkeenCore3 is looking for active plugin maintainers,",0.5,1.0,0.5)
    DEFAULT_CHAT_FRAME:AddMessage("if interrested please goto SkeenCore3 at curse!",0.5,1.0,0.5)
    DEFAULT_CHAT_FRAME:AddMessage("If you like SkeenCore, spread the word!",0.5,1.0,0.5)
end
--Player changed talents
function SkeenCore3.events.PLAYER_TALENT_UPDATE()
    SkeenCore3:UpdateActiveGUI()    -- Find a pleasing gui
    SkeenCore3:UpdateActiveModule() -- Find a pleasing module (same class, likely differet spec)
    SkeenCore3:RotationUpdate()     -- And run it to fill the gui
end
--Player changed target
function SkeenCore3.events.PLAYER_TARGET_CHANGED(...)
    SkeenCore3:RotationUpdate() -- And update the gui
end
--AddonLoaded
function SkeenCore3.events.ADDON_LOADED(addon) -- This is thrown once for each addon; Example; loladdon1, SkeenCore3, loladdon2

    -- If the addon thats loaded isn't ours, nevermind about it
    if addon ~= "SkeenCore3" then
        return 
    end
    -- Our addon should actually load now! And get ready to do stuff!

    -- Prepare databases
    SkeenCore3:PrepareSkeenCore3Active()    -- Prepare the active database
    SkeenCore3:PrepareSkeenCore3Database()  -- And the maintained one

    -- Create GUI
    SkeenCore3:CreateGUI()                  -- Create our gui (binding the previously mentioned textures to it)  

    -- Create Options Frame
    SkeenCore3:CreateOptionFrame()          -- The setup optionsframe, where one can set scale, locked, update intervals, ect.
    SkeenCore3:CreateSlashCommands()        -- Register the slash commands, such that one can write command directly

    -- Register disabled gui
    SkeenCore3:RegisterDisabledGUI()
end
--SPELLS_CHANGED - This is thrown when all addons are loaded

--OnUpdate (updates the rotation data with update_interval intervals)
function SkeenCore3_OnUpdate(self, elapsed)
    self.TimeSinceLastUpdate = self.TimeSinceLastUpdate + elapsed; 	

    if (self.TimeSinceLastUpdate > SkeenCore3Database.update_interval) then
        SkeenCore3:RotationUpdate()
        self.TimeSinceLastUpdate = 0;
    end
end

