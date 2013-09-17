local SkeenCore3 = _G["SkeenCore3Internal"]

local commands = {}

local function registerCommand(trigger_string, description, code)
    commands[trigger_string] = {}
    commands[trigger_string]["Description"] = description
    commands[trigger_string]["Code"] = code
end

function SkeenCore3:CreateSlashCommands()
    SlashCmdList["SkeenCore3"] = SkeenCore3.SlashCommandList
	SLASH_SkeenCore31 = "/SkeenCore3"
	SLASH_SkeenCore32 = "/sc3"

    registerCommand("lock", "Locks the frame", function()
        -- If unlocked, lock it
        if(SkeenCore3:GetLocked() == false) then
            SkeenCore3:ToggleLocked()
        end
    end)

    registerCommand("unlock", "Unlocks the frame", function()
        -- If locked, unlock it
        if(SkeenCore3:GetLocked() == true) then
            SkeenCore3:ToggleLocked()
        end
    end)

    registerCommand("reset", "Resets the frame's position", function()
        -- Remove the positioning information
        SkeenCore3Database.bottom = nil
        SkeenCore3Database.left = nil
        -- Reload the UI, to run initialization routine
        ReloadUI()
    end)

    registerCommand("options", "Opens the optionsframe", function()
        -- Open the options frame
        InterfaceOptionsFrame_OpenToCategory(getglobal(SkeenCore3.option_frame_name))
    end)

    local help_function = function()
        -- Print help option
        print("Commands for SkeenCore3:");
        for k,v in pairs(commands) do
            -- Special case for the empty string
            if(k == "") then
                k = "{empty}"
            end
            print(k .. " : " .. v["Description"])
        end
    end

    registerCommand("", "Shows the help frame", help_function)
    registerCommand("help", "Shows the help frame", help_function)
end


function SkeenCore3.SlashCommandList(msg, editBox)
    
    if (commands[msg] ~= nil) then
        local code = commands[msg]["Code"]
        code()
    end
end

