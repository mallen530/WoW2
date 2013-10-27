local defaultLanguage = true
--[===[@debug@
defaultLanguage = false
--@end-debug@]===]

local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("Ovale", "enUS", defaultLanguage)
if not L then return end

L["Affichage numérique"] = "Numeric display"
L["Affiche les deux prochains sorts et pas uniquement le suivant"] = "Display two abilities and not only one"
L["Affiche le temps de recharge sous forme numérique"] = "Show the remaining time in numerical form"
L["Afficher la fenêtre"] = "Show Ovale"
L["Afficher les raccourcis clavier dans le coin inférieur gauche des icônes"] = "Show keyboard shortcuts in the icon bottom-left corner"
L["aoe"] = "Multiple targets Attack"
L["AOE"] = true
L["Apparence"] = "Appearance"
L["Blood"] = true
L["buff"] = "Buffs"
L["Cacher bouton vide"] = "Hide empty buttons"
L["Cacher dans les véhicules"] = "Hide in vehicles"
L["Cacher la fenêtre"] = "Hide Ovale"
L["Cacher si cible amicale ou morte"] = "Hide if friendly or dead target"
L["Caractère de portée"] = "Range indicator"
L["cd"] = [=[Long cooldown abilities.
Cast as soon as possible or keep for multiplied damage phases.]=]
L["Ce caractère est affiché dans un coin de l'icône pour indiquer si la cible est à portée"] = "This text is displayed on the icon to show if the target is in range"
L["Cliquer pour afficher/cacher les options"] = "Click to hide/show options"
L["Code"] = true
L["Copier sur Script personnalisé"] = "Copy to Custom script"
L["Correction de la latence"] = "Latency correction"
L["Debug aura"] = "Track aura management."
L["Debug compile"] = "Track when the script is compiled."
L["Debug enemies"] = "Track enemy detection."
L["Debug GUID"] = "Track changes to the UnitID/GUID pairings."
L["Debug missing spells"] = "Warn if a known spell ID is used that is missing from the spellbook."
L["Debug unknown spells"] = "Warn if an unknown spell ID is used in the script."
L["Décalage horizontal des options"] = "Options horizontal shift"
L["Décalage vertical des options"] = "Options vertical shift"
L["Défilement"] = "Scrolling"
L["Ecraser le Script personnalisé préexistant?"] = "Overwrite existing Custom script?"
L["En combat uniquement"] = "Show in combat only"
L["Focus"] = true
L["Groupe d'icônes"] = "Icon group"
L["Icône"] = "Icon"
L["Ignorer les clics souris"] = "Ignore mouse clicks"
L["Illuminer l'icône"] = "Highlight icon"
L["Illuminer l'icône quand la technique doit être spammée"] = "Hightlight icon when ability should be spammed"
L["Illuminer l'icône quand le temps de recharge est écoulé"] = "Flash the icon when the ability is ready"
L["Inverser la boîte à cocher "] = "Toggle check box"
L["La taille des icônes"] = "The icons scale"
L["La taille des petites icônes"] = "The small icons scale"
L["La taille des polices"] = "The font scale"
L["Les icônes se déplacent"] = "Scroll the icons"
L["main"] = "Main Attack"
L["mana"] = "Mana gain"
L["Marge entre deux icônes"] = "Margin between icons"
L["Melee"] = true
L["moving"] = "Attacks to use while moving"
L["multidot"] = "Damage Over Time on multiple targets"
L["None"] = true
L["offgcd"] = [=[Out of global cooldown ability.
Cast alongside your Main Attack.]=]
L["Opacité des icônes"] = "Icons opacity"
L["Opacité des options"] = "Options opacity"
L["Options"] = true
L["Prédictif"] = "Two abilities"
L["Raccourcis clavier"] = "Keyboard shortcuts"
L["Script"] = true
L["Script personnalisé"] = "Custom script"
L["shortcd"] = [=[Short cooldown abilities.
Cast as soon as possible.]=]
L["Show the icon of the next spell to cast"] = true
L["showwait"] = "Show the wait icon"
L["Si cible uniquement"] = "If has target"
L["Taille des icônes"] = "Icon scale"
L["Taille des petites icônes"] = "Small icon scale"
L["Taille des polices"] = "Font scale"
L["Taille du second icône"] = "Second icon size"
L["Verrouiller position"] = "Lock position"
L["Vertical"] = true
L["Visibilité"] = "Visibility"
