-- Define library name and version
-- And assert that LibStub is available
local MAJOR, MINOR = "LibSkeenCore", 16
assert(LibStub, MAJOR.." requires LibStub")

-- Create the library
local lib = LibStub:NewLibrary(MAJOR, MINOR)

-- If already defined, with current versions, simply return
-- (The library is already loaded somewhere else)
if not lib then 
    return
end

-------------------------------------------------------------------------------
------------------------------ Buff & Debuff Maps -----------------------------
-------------------------------------------------------------------------------

-- Below are the BuffMaps and DebuffMaps, these are essencially tables of the
-- different debuffs that doesn't stack, and these can be passed to
-- IsAnyXPresent, to check if there's already a buff of that kind active.
-- Alternatively these can be used to check what you need to buff.
--
-- Usage example:
--  From SkeenCore3CombatRogue: (Check some necessary buff is up)
--       IsBleedBoostingDebuffUp = lib:IsAnyDebuffPresent(lib.DebuffMap.BleedDamageIncrease)
--  From SkeenCore3FuryWarrior: (Figure out which buff to use)
--       (Line 27-->35)
--
-- Notice, that lib.X is used instead of lib:X when we're a variable rather than calling a function
--
-- Based upon; http://www.wowhead.com/spell=1126/mark-of-the-wild#comments:id=1144869
lib.BuffMap = {}
-- Strength, Agility, Stamina and Intellect
lib.BuffMap.Stats = 
{
    -- Druid
    1126,   --"Mark of the Wild"
    -- Hunter pet
    90363,  --"Embrace of the Shale Spider"
    -- Paladin
    20217   --"Blessing of Kings"
}
-- Stamina
lib.BuffMap.Stamina = 
{
    -- Hunter pet
    90364,  --"Qiraji Fortitude"
    -- Priest
    21562,  --"Power Word: Fortitude"
    -- Warlock pet
    6307,   --"Blood Pact"
    -- Warrior
    469     --"Commanding Shout"
}
-- Maximum Mana
lib.BuffMap.Mana = 
{
    -- Mage
    1459,   --"Arcane Brilliance"
    -- Mage
    61316,  --"Dalaran Brilliance"
    -- Warlock pet
    54424   --"Fel Intelligence"
}
-- Strength and Agility
lib.BuffMap.StrengthAgility = 
{
    -- Death Knight
    57330,  --"Horn of Winter"
    -- Hunter pet
    93435,  --"Roar of Courage"
    -- Shaman totem
    --NOEXIST 8075,   --"Strength of Earth Totem"
    -- Warrior
    6673    --"Battle Shout"
}
-- 30% Haste
lib.BuffMap.Haste = 
{
    -- Hunter pet
    90355,  --"Ancient Hysteria"
    -- Mage
    80353,  --"Time Warp"
    -- Shaman
    2825,   --"Bloodlust"
    -- Shaman
    32182   --"Heroism"
}
-- Mana regan / 5 second
lib.BuffMap.MP5 = 
{
    -- Paladin
    19740,  --"Blessing of Might"
    -- Shaman totem
    5675,   --"Mana Spring Totem"
    -- Warlock pet
    54424   --"Fel Intelligence"
}
-- 10% Attack Power
lib.BuffMap.AttackPower = 
{
    -- Death Knight
    53138,  --"Abomination's Might"
    -- Hunter
    19506,  --"Trueshot Aura"
    -- Paladin
    19740,  --"Blessing of Might"
    -- Shaman
    30808   --"Unleashed Rage"
}
-- 6% Spell Power
lib.BuffMap.LowSpellPower = 
{
    -- Mage
    1459,   --"Arcane Brilliance"
    -- Mage
    61316,  --"Dalaran Brilliance"
    -- Shaman totem
    8227    --"Flametongue Totem"
}
-- 10% Spell Power
lib.BuffMap.SpellPower = 
{
    -- Shaman totem
    77746,  --"Totemic Wrath"
    -- Warlock
    47236   --"Demonic Pact"
}
-- 5% Spell Haste
lib.BuffMap.SpellHaste = 
{
    -- Druid
    24907,  --"Moonkin Aura"
    -- Priest
    49868,  --"Mind Quickening"
    -- Shaman totem
    3738    --"Wrath of Air Totem"
}
-- 10% Attack Speed
lib.BuffMap.AttackSpeed = 
{
    -- Hunter
    53290,  --"Hunting Party"
    -- Death Knight
    55610,  --"Improved Icy Talons"
    -- Shaman totem
    8512    --"Windfury Totem"
}
-- 5% Critical Strike Chance
lib.BuffMap.Crit = 
{
    -- Druid
    17007,  --"Leader of the Pack"
    -- Hunter pet
    90309,  --"Terrifying Roar"
    -- Hunter pet
    24604,  --"Furious Howl"
    -- Rogue
    51701,  --"Honor Among Thieves"
    -- Shaman
    51470,  --"Elemental Oath"
    -- Warrior
    29801   --"Rampage"
}
-- 3% Damage
lib.BuffMap.Damage = 
{
    -- Paladin
    31876,  --"Communion"
    -- Mage
    82930,  --"Arcane Tactics"
    -- Hunter pet
    34460   --"Ferocious Inspiration"
}

lib.DebuffMap = {}
lib.DebuffMap.MinorArmorReduction = 
{
    770,    --"Faerie Fire"
    16857,  --"Faerie Fire (Feral)"
    56626,  --"Sting"
    702     --"Curse of Weakness"
}

lib.DebuffMap.MajorArmorReduction = 
{
    55749,  --"Acid Spit"
    8647,   --"Expose Armor"
    7386    --"Sunder Armor"
}

lib.DebuffMap.MeleeAttackSpeedReducting = 
{
    55095,  --"Frost Fever"
    48483,  --"Infected Wounds"
    53695,  --"Judgements of the Just"
    6343,   --"Thunder Clap"
    8042    --"Earth Shock"
}

lib.DebuffMap.RangedAttackSpeedReducting = 
{
    55095,  --"Frost Fever"
    31589,  --"Slow"
    6343,   --"Thunder Clap"
    8042    --"Earth Shock"
}

lib.DebuffMap.MeleeAttackPowerReducting = 
{
    99,     --"Demoralizing Roar"
    702,    --"Curse of Weakness"
    1160,   --"Demoralizing Shout"
    81131,  --"Scarlet Fever"
    24423   --"Demoralizing Screech"
}

lib.DebuffMap.CastingSpeedReducting = 
{
    55095,  --"Frost Fever"
    31589,  --"Slow"
    5237,   --"Mind-Numbing Poison"
    1714    --"Curse of Tongues"
}
 
lib.DebuffMap.CritIncrease = 
{
    20335,  --"Heart of the Crusader"
    58410,  --"Master Poisoner"
    30706   --"Totem of Wrath"
}

lib.DebuffMap.SpellCritIncrease = 
{
    11180,  --"Winter's Chill"
    11095,  --"Critical Mass"
    17803   --"Improved Shadow Bolt"
}

-- Seems removed from the game
lib.DebuffMap.BleedDamageIncrease = 
{
    --33878,  --"Mangle (Bear)"
    --33876,  --"Mangle (Cat)"
    --16511,  --"Hemorrhage"
    --NOEXIST 29859,  --"Blood Frenzy"
    --35290,  --"Gore"
    --NOEXIST 46857,  --"Trauma"
    --NOEXIST 50271,  --"Tendon Rip"
    --57386   --"Stampede"
}

lib.DebuffMap.MagicDamageIncrease = 
{
    51160,  --"Ebon Plaguebringer"
    48506,  --"Earth and Moon"
    1490    --"Curse of the Elements"
}

lib.DebuffMap.PhysicalDamageIncrease = 
{
    51682,  --"Savage Combat"
    29836   --"Blood Frenzy"
}

lib.DebuffMap.HealingTakenDecrease =
{
    11175,  --"Permafrost"
    15313,  --"Improved Mind Blast"
    10918,  --"Wound Poison"
    46910,  --"Furious Attacks"
    12294   --"Mortal Strike"
}

lib.DebuffMap.PhysicalHitDecrease = 
{
    5570,  --"Insect Swarm"
    19494  --"Improved Scorpid Sting"
}

lib.DebuffMap.MagicHitDecrease = 
{
    33602,  --"Improved Faerie Fire"
    33191   --"Harnessed Shadows"
}

-------------------------------------------------------------------------------
--------------------------- General Helper Functions --------------------------
-------------------------------------------------------------------------------

-- A (mostly internal) function, to get the duration information based upon arguments
-- @param   unitFunction    Function    A function that returns arguments alike UnitBuff or UnitDebuff
-- @param   spellId         Integer     The spellId of the spell to be checked against
-- @param   unitId          String      The unitID to be passed to the unitFunction
-- @param   isMine          Boolean     Defines wether the spellcaster should be the player.
-- @returns                 Integer     Returns the duration-left on the spell
function lib:GetDurationInfo(unitFunction, spellId, unitId, isMine)
    -- Get localized spellname for unitFunction
    local spellName = GetSpellInfo(spellId)

    -- Get spellname, expirationTime and unitCaster, ignore the other arguments
	local name, _, _, _, _, _, expirationTime, unitCaster, _ = unitFunction(unitId, spellName)

    -- Spell not found
	if (name == nil) then
        return 0
    end

    -- Spell found, however not cast by player (and caller requested so)
    if (isMine and unitCaster ~= "player") then
        return 0
    end

    -- Everything went well, return duration
    return (expirationTime - GetTime())
end

-- A (mostly internal) function, to transform return type alike what C does
-- @param   value           Integer     The return value to be transformed
-- @returns                 Boolean     Returns false if value is 0, otherwise true
function lib:C_BOOL(value)
    -- Code is assumed to self explanatory
    if (value == 0) then
        return false
    else
        return true
    end
end

-- A (mostly internal) function, for cutting down the amount of duplicate code.
--  Used by the; IsAny... functions.
-- @param   testFunction    Function    The function to evaluate for each of the values in the table.
-- @param   table           Table       The table with elements, to be checked by testFunction.
-- @returns                 Boolean     Returns true if any value in the table,
--                                      caused the function testFunction to return true, otherwise false
function lib:IsAnyXPresent(testFunction, table)
    -- Loop each index in the supplied table
    for index, id in ipairs(table) do
        -- Call the supplied function for each value from the table.
        if(testFunction(lib, id)) then
            -- If any of these cause the function to evaluate true, return true
            return true
        end
    end
    -- Otherwise return false
    return false
end


-------------------------------------------------------------------------------
----------------------------------- Debuffs -----------------------------------
-------------------------------------------------------------------------------
function lib:GetDebuffCount(id)
    local name, rank, icon, count, rest = UnitDebuff("target", GetSpellInfo(id))
    if count == nil then
        return 0
    else
        return count
    end
end

function lib:GetDebuffInfo(id, unitId, mine)
    return lib:GetDurationInfo(UnitDebuff, id, unitId, mine)
end

function lib:GetMyDebuffDurationOnUnitId(id, unitId)
    return lib:GetDebuffInfo(id, unitId, true)
end

function lib:GetDebuffDurationOnUnitId(id, unitId)
    return lib:GetDebuffInfo(id, unitId, false)
end

function lib:GetMyDebuffDuration(id)
    return lib:GetMyDebuffDurationOnUnitId(id, "target")
end

function lib:GetDebuffDuration(id)
    return lib:GetDebuffDurationOnUnitId(id, "target")
end

function lib:IsMyDebuffPresent(id)
    return lib:C_BOOL(lib:GetMyDebuffDuration(id))
end

function lib:IsDebuffPresent(id)
    return lib:C_BOOL(lib:GetDebuffDuration(id))
end

function lib:IsMyAnyDebuffPresent(table)
    -- Use lib.X as we're accessing a variable not calling a function
    return lib:IsAnyXPresent(lib.IsMyDebuffPresent, table)
end

function lib:IsAnyDebuffPresent(table)
    -- Use lib.X as we're accessing a variable not calling a function
    return lib:IsAnyXPresent(lib.IsDebuffPresent, table)
end

-------------------------------------------------------------------------------
------------------------------------ Buffs ------------------------------------
-------------------------------------------------------------------------------
function lib:GetBuffCount(id)
    local name, rank, icon, count, rest = UnitBuff("player", GetSpellInfo(id))
    if count == nil then
        return 0
    else
        return count
    end
end

function lib:GetBuffInfo(id, unitId, mine)
    return lib:GetDurationInfo(UnitBuff, id, unitId, mine)
end

function lib:GetMyBuffDurationOnUnitId(id, unitId)
    return lib:GetBuffInfo(id, unitId, true)
end

function lib:GetBuffDurationOnUnitId(id, unitId)
    return lib:GetBuffInfo(id, unitId, false)
end

function lib:GetMyBuffDuration(id)
    return lib:GetMyBuffDurationOnUnitId(id, "player")
end

function lib:GetBuffDuration(id)
    return lib:GetBuffDurationOnUnitId(id, "player")
end

function lib:IsMyBuffPresent(id)
    return lib:C_BOOL(lib:GetMyBuffDuration(id))
end

function lib:IsBuffPresent(id)
    return lib:C_BOOL(lib:GetBuffDuration(id))
end

function lib:IsMyAnyBuffPresent(table)
    -- Use lib.X as we're accessing a variable not calling a function
    return lib:IsAnyXPresent(lib.IsMyBuffPresent, table)
end

function lib:IsAnyBuffPresent(table)
    -- Use lib.X as we're accessing a variable not calling a function
    return lib:IsAnyXPresent(lib.IsBuffPresent, table)
end

-------------------------------------------------------------------------------
---------------------------------- Cooldown -----------------------------------
-------------------------------------------------------------------------------

-- A function, to get the cooldown left on a specific spell
-- @param   spellId         Integer     The spellId to be checked
-- @returns                 Integer     Returns the cooldown-left on the spell
function lib:GetCooldown(spellId)
    -- Get spell cooldown info
	local start, duration, _ = GetSpellCooldown(spellId)
    
    -- Spell not found
	if duration == nil then
        return 60 --0
    end

    -- Calculate cooldown left
    return (duration + start - GetTime())
end

-------------------------------------------------------------------------------
----------------------------------- Range -------------------------------------
-------------------------------------------------------------------------------
function lib:IsInRange(spellId)
    return IsSpellInRange(GetSpellInfo(spellId), "target")
end

-------------------------------------------------------------------------------
----------------------------------- Talents -------------------------------------
-------------------------------------------------------------------------------
function lib:HasChosenTalent(id)
    local num_of_talents = 18

    -- Assuming no talents get a spellID below num_of_talents
    if(id > num_of_talents) then
        -- Lookup talent by spellid
        local name, _, _, _, _, _, _, _, _ = GetSpellInfo(id)
        for i=1, num_of_talents do
            local talent_name, _, _, _, selected, _ = GetTalentInfo(id)
            if(name == talent_name) then
                return selected
            end
        end
        return nil
    else
        -- Lookup talent by index
        local _, _, _, _, selected, _ = GetTalentInfo(id)
        return selected
    end
end

-------------------------------------------------------------------------------
---------------------------------- Casting ------------------------------------
-------------------------------------------------------------------------------
function lib:IsCasting(spellId)
	local currentlyCasting, _, _, _, _, _ = UnitCastingInfo("player")
	local name, _, _, _, _, _, _, _, _ = GetSpellInfo(spellId)
	
	return currentlyCasting == name;
end

function lib:IsUnitCastingInterruptableSpell(unit)
    local _,_,_,_,_,_,_,_,interuptable = UnitCastingInfo(unit)
    return interuptable
end

function lib:IsTargetCastingInterruptableSpell()
    return lib:IsUnitCastingInterruptableSpell("target")
end

