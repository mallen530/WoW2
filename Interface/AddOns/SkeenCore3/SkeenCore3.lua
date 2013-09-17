--
-- SkeenCore3
-- 

-- Local table (used to store functions, ect)
local SkeenCore3 = {}
-- Lets throw the entire SkeenCore3 table into global (our plugin needs a
-- function from it, so lets just have them be able to access everything lol!)
-- Should properly work in another way sometime.
_G["SkeenCore3Internal"] = SkeenCore3

local SkeenCore3Interface = {}
_G["SkeenCore3"] = SkeenCore3Interface

----------------------
-- HELPER FUNCTIONS --
----------------------
-- Prepare the Active database (plugin database)
function SkeenCore3:PrepareSkeenCore3Active()
    SkeenCore3Active = {} -- fresh start
    SkeenCore3Active.Module = {} -- fresh start
    SkeenCore3Active.GUI = {} -- fresh start
    SkeenCore3Active.ActiveModule = nil -- fresh start (theres never an active module, before the player enters the world)
    SkeenCore3Active.ActiveGUI = nil -- fresh start (theres never an active module, before the player enters the world)
    SkeenCore3Active.ModulesLoaded = false
    SkeenCore3Active.GUIsLoaded = false

    --Just enumerating the classes (these have to be uppercase, as thats what
    --returned by the 'UnitClass()' API call, TODO: This is likely to change however,
    --to be whatever case one likes, as I could just make it uppercase in the
    --core instead (and plugin writers wouldn't have to care)).
    local classes = {"DEATHKNIGHT", "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR", "MONK"}
    local number_of_specs = 4 --Just to add more readabilty to the code, not that I wouldn't know ;)

    -- Build our magic table of plugins
    -- TODO: Add support for serveral plugins for each class (alike in SkeenCore 1.0)
    for i=1, getn(classes), 1 do                    -- Make an entity for each class
        SkeenCore3Active.Module[classes[i]] = {}    -- Make an empty table
        for b=1, number_of_specs, 1 do              -- And fill it with three spec choices (TODO: Make use of spec names instead of numbers)
            SkeenCore3Active.Module[classes[i]][b] = nil    -- And really, this should really just go away I guess (TODO: Try deleting this, to simply see the effect).
        end
    end	
end

-- Prepare the Normal database (settings database)
-- This is the maintained database, and isn't wiped on each login, like the active one is
function SkeenCore3:PrepareSkeenCore3Database()

    -- If there doesn't exist a database currently
    if SkeenCore3Database == nil then
        SkeenCore3Database = {} -- fresh start
    end

    local default_values = {
        update_interval=0.1,
        scale=1,
        locked=false,
        DefaultGUIName="SkeenCore3GUIDefault"
    }
    for k,v in pairs(default_values) do
        if(SkeenCore3Database[k] == nil) then
            SkeenCore3Database[k] = v
        end
    end
end

local LibSkeenCore = LibStub("LibSkeenCore");

function SkeenCore3:ProcessCooldowns(input_table)
    local processor = {
        ["number"] = function(spellID)
            local cooldown = LibSkeenCore:GetCooldown(spellID)
            if (cooldown < 1) then
                return spellID
            end
        end,
        ["function"] = function(input)
            return input()
        end
    }

    local cooldowns = {}

    for i=1,#input_table do
        local input_type = type(input_table[i])
        local processor_function = processor[input_type]
        local result = processor_function(input_table[i])
        cooldowns[i] = result
    end

    return cooldowns
end

-- Update rotation stuff
function SkeenCore3:RotationUpdate()
    if(SkeenCore3Active.ActiveModule == nil) then
        return
    end
    local spells = SkeenCore3Active.ActiveModule:Rotation()
    local cooldowns_pre = SkeenCore3Active.ActiveModule:Cooldowns()
    local cooldowns = SkeenCore3:ProcessCooldowns(cooldowns_pre)

    if (spells == nil) then
        SkeenCore3Active.ActiveGUI:HideGUI()  -- Hide the gui
        return
    else
        SkeenCore3Active.ActiveGUI:ShowGUI()  -- Show the gui
    end

    SkeenCore3Active.ActiveGUI:UpdateGUI(spells, cooldowns)
end
