local debug = false
--[===[@debug@
debug = true
--@end-debug@]===]

-- Ensure we only load once
local clcInfoPlugin = LibStub("clcInfoClassModulePlugin")
if not clcInfoPlugin then return end
clcInfoPlugin = nil

local _, parent = ...
if parent.clcInfoClassModulePluginLoaded then
	parent = nil
	return
end
parent = nil

local aceLocale = LibStub("AceLocale-3.0")
local L = aceLocale:NewLocale("clcInfoClassModulePlugin", "enUS", true, debug)

L["Abilities"] = true
L["Options"] = true
L["Priorities"] = true
L["Settings"] = true
L["General"] = true
L["Unknown Spell"] = true
L["New"] = true
L[" (forced)"] = true
L["Inactive"] = true
L["Next ability"] = true
L["Current ability"] = true

L["%s Template Created (/clcInfo)."] = true
L["Range per skill"] = true
L["Whether to check for range on a skill by skill basis, or simply melee range."] = true
L["Latency Adjust"] = true
L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = true

L["Welcome to clcInfo: %s\n\nDefault templates have been created for each of the supported specs.\nAll you need to do is position the Icon grid where you want it and lock it in place."] = true
L["Welcome to clcInfo: %s\n\nPresently no templates exist for the following specs:\n\n%s\nDo you want to create those templates now?"] = true
L["You already have atleast one %s template, do you wish to create another?\n\nNote you will have to pick a distinguishing talent on each template."] = true
L["Active Template: |cff41a25d%s|r"] = true
L["Create new template"] = true
L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = true
L["Activate your %s specialization"] = true
L["Click to activate the specialization for this class module, i.e change spec."] = true
L["The currently active template is for %s, commandline option %s is not available."] = true
L["There is no active template, commandline option %s is not available."] = true

L["There is no active template, thus options for the %s are not available.\nIf you like, you can create a new template for the %s which will then become active."] = true
L["There is no active template, thus options for the %s are not available.\nIf you like, you can create a new template for the %s, it will not become active until you change specs though."] = true
L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = true
L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = true

L["Unable to create macro!\n\n%s"] = true
L["You already have macros with the same name(s)."] = true
L["You have used all your character specific macro slots."] = true
L["Export to Macro"] = true
L["Export the current priority list to a macro to easily change to that priority."] = true
L["%s macro created."] = true
L["%s priority changed."] = true
L["Change clcInfo priority to %s"] = true
L["Too many cmdLine priorities. Max is: "] = true

L["Active template is: "] = true
L["There is no active template."] = true
L["Recommended Priorities"] = true
L["Click to adjust priorities and settings to the recommendations for %s play."] = true

L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = true
L["Click to enable this ability."] = true
L["Click to disable this ability."] = true
L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = true

L = aceLocale:NewLocale("clcInfoClassModulePlugin", "deDE")
if L then 
-- L["Abilities"] = ""
L["Activate your %s specialization"] = "Aktiviere deine %s Spezialisierung"
L["Active Template: |cff41a25d%s|r"] = "Aktive Vorlage: |cff41a25d%s|r"
L["Active template is: "] = "Aktive Vorlage ist:"
L["Change clcInfo priority to %s"] = "Ändere clcInfo Priorität auf %s"
L["Click to activate the specialization for this class module, i.e change spec."] = "Klicke um die Spezialisierung für dieses Klassenmodul zu aktivieren, d.h. ändere die Skillung."
-- L["Click to adjust priorities and settings to the recommendations for %s play."] = ""
-- L["Click to disable this ability."] = ""
-- L["Click to enable this ability."] = ""
L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = "Erstelle eine neue Vorlage für diese Spezialisierung. Die Vorlage wird ein standardisiertes, voll konfiguriertes Symbol-Setup enthalten."
L["Create new template"] = "Erstelle eine neue Vorlage"
-- L["Current ability"] = ""
L["Export the current priority list to a macro to easily change to that priority."] = "Exportiere die aktuelle Prioritätenliste in ein Makro um einfach auf diese Priorität zu wechseln."
L["Export to Macro"] = "Exportiere in Makro"
L[" (forced)"] = "(erzwungen)"
L["General"] = "Allgemein"
L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = "Falls es auftritt, dass während eines GCD eine nicht nutzbare Fähigkeit kurz vorgeschlagen wird - hochsetzen. Falls dies nie vorkommt - herabsetzen."
L["Inactive"] = "Inaktiv"
L["Latency Adjust"] = "Latenzanpassung"
L["New"] = "Neu"
-- L["Next ability"] = ""
L["Options"] = "Optionen"
L["Priorities"] = "Prioritäten"
L["Range per skill"] = "Reichweite je Fähigkeit"
-- L["Recommended Priorities"] = ""
L["Settings"] = "Einstellungen"
L["%s macro created."] = "%s Makro erstellt."
L["%s priority changed."] = "%s Priorität geändert."
L["%s Template Created (/clcInfo)."] = "%s Vorlage erstellt (/clcInfo)."
L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = "Die aktive Vorlage wurde erzwungenermaßen auf die %s Spezialisierung angepasst, deshalb sind die optionen für %s nicht verfügbar."
L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = "Die aktive Vorlage ist für die %s Spezialisierung (Deine aktuelle Skillung), deshalb sind die Optionen für %s nicht verfügbar."
L["The currently active template is for %s, commandline option %s is not available."] = "Die momentan aktive Vorlage ist für %s, Komandozeilen-Option %s ist nicht verfügbar."
L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = "Die Prioritäten können auch mithilfe der Kommandozeile oder eines Makros eingestellt werden unter benutzung von  /clcinfo %s <Prioritäten getrennt durch Leerzeichen>."
L["There is no active template."] = "Es gibt keine aktive Vorlage."
L["There is no active template, commandline option %s is not available."] = "Es gibt keine aktive Vorlage, Kommandozeilen-Option %s ist nicht verfügbar."
L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s, it will not become active until you change specs though.]=] ] = [=[Es gibt keine aktive Vorlage, deshalb sind die Optionen für %s nicht verfügbar.
Falls du möchtest, kannst du eine neue Vorlage für %s erstellen, es wird jedoch nicht aktiviert bis du die Spezialisierung gewechselt hast.]=]
L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s which will then become active.]=] ] = [=[Es gibt keine aktive Vorlage, deshalb sind die Optionen für %s nicht verfügbar.
Wenn du möchtest kannst du eine neues Vorlage für %s erstellen, welche dann aktiv wird.]=]
-- L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = ""
L["Too many cmdLine priorities. Max is: "] = "Zu viele cmdLine Prioritäten. Maximum ist:"
L[ [=[Unable to create macro!

%s]=] ] = [=[Erstellung des Makros nicht möglich!

%s]=]
L["Unknown Spell"] = "Unbekannte Fähigkeit"
--[==[ L[ [=[Welcome to clcInfo: %s

Default templates have been created for each of the supported specs.
All you need to do is position the Icon grid where you want it and lock it in place.]=] ] = "" ]==]
L[ [=[Welcome to clcInfo: %s

Presently no templates exist for the following specs:

%s
Do you want to create those templates now?]=] ] = [=[Wilkommen bei clcInfo: %s

Aktuell existieren keine Vorlagen für folgende Spezialisierungen:

%s
Willst du diese Vorlagen jetzt erstellen?]=]
L["Whether to check for range on a skill by skill basis, or simply melee range."] = "Ob die Reichweite anhand der Fähigkeit überprüft werden soll, oder von Nahkampfreichweite ausgegangen wird."
L[ [=[You already have atleast one %s template, do you wish to create another?

Note you will have to pick a distinguishing talent on each template.]=] ] = [=[Du hast schon mindestens eine %s Vorlage, möchtest du eine weitere erstellen?

Denk daran, dass sich in jeder Vorlage mindestens eine Fähigkeit unterscheiden muss.]=]
L["You already have macros with the same name(s)."] = "Es existieren bereits Makros mit der selben Bezeichnung."
L["You have used all your character specific macro slots."] = "Du hast alle deine charakterspezifischen Makro-Slots belegt."

end

L = aceLocale:NewLocale("clcInfoClassModulePlugin", "esES")
if L then 
-- L["Abilities"] = ""
L["Activate your %s specialization"] = "Activa tu especialización %s"
-- L["Active Template: |cff41a25d%s|r"] = ""
-- L["Active template is: "] = ""
L["Change clcInfo priority to %s"] = "Cambiar a %s la prioridad de clcInfo "
-- L["Click to activate the specialization for this class module, i.e change spec."] = ""
-- L["Click to adjust priorities and settings to the recommendations for %s play."] = ""
-- L["Click to disable this ability."] = ""
-- L["Click to enable this ability."] = ""
-- L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = ""
-- L["Create new template"] = ""
-- L["Current ability"] = ""
-- L["Export the current priority list to a macro to easily change to that priority."] = ""
-- L["Export to Macro"] = ""
-- L[" (forced)"] = ""
-- L["General"] = ""
-- L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = ""
-- L["Inactive"] = ""
-- L["Latency Adjust"] = ""
-- L["New"] = ""
-- L["Next ability"] = ""
-- L["Options"] = ""
-- L["Priorities"] = ""
-- L["Range per skill"] = ""
-- L["Recommended Priorities"] = ""
-- L["Settings"] = ""
L["%s macro created."] = "macro creada: %s"
L["%s priority changed."] = "%s modificada prioridad"
-- L["%s Template Created (/clcInfo)."] = ""
-- L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = ""
-- L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = ""
-- L["The currently active template is for %s, commandline option %s is not available."] = ""
-- L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = ""
-- L["There is no active template."] = ""
-- L["There is no active template, commandline option %s is not available."] = ""
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s, it will not become active until you change specs though.]=] ] = "" ]==]
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s which will then become active.]=] ] = "" ]==]
-- L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = ""
-- L["Too many cmdLine priorities. Max is: "] = ""
--[==[ L[ [=[Unable to create macro!

%s]=] ] = "" ]==]
-- L["Unknown Spell"] = ""
--[==[ L[ [=[Welcome to clcInfo: %s

Default templates have been created for each of the supported specs.
All you need to do is position the Icon grid where you want it and lock it in place.]=] ] = "" ]==]
--[==[ L[ [=[Welcome to clcInfo: %s

Presently no templates exist for the following specs:

%s
Do you want to create those templates now?]=] ] = "" ]==]
-- L["Whether to check for range on a skill by skill basis, or simply melee range."] = ""
--[==[ L[ [=[You already have atleast one %s template, do you wish to create another?

Note you will have to pick a distinguishing talent on each template.]=] ] = "" ]==]
-- L["You already have macros with the same name(s)."] = ""
-- L["You have used all your character specific macro slots."] = ""

end

L = aceLocale:NewLocale("clcInfoClassModulePlugin", "esMX")
if L then 
-- L["Abilities"] = ""
-- L["Activate your %s specialization"] = ""
-- L["Active Template: |cff41a25d%s|r"] = ""
-- L["Active template is: "] = ""
-- L["Change clcInfo priority to %s"] = ""
-- L["Click to activate the specialization for this class module, i.e change spec."] = ""
-- L["Click to adjust priorities and settings to the recommendations for %s play."] = ""
-- L["Click to disable this ability."] = ""
-- L["Click to enable this ability."] = ""
-- L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = ""
-- L["Create new template"] = ""
-- L["Current ability"] = ""
-- L["Export the current priority list to a macro to easily change to that priority."] = ""
-- L["Export to Macro"] = ""
-- L[" (forced)"] = ""
-- L["General"] = ""
-- L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = ""
-- L["Inactive"] = ""
-- L["Latency Adjust"] = ""
-- L["New"] = ""
-- L["Next ability"] = ""
-- L["Options"] = ""
-- L["Priorities"] = ""
-- L["Range per skill"] = ""
-- L["Recommended Priorities"] = ""
-- L["Settings"] = ""
-- L["%s macro created."] = ""
-- L["%s priority changed."] = ""
-- L["%s Template Created (/clcInfo)."] = ""
-- L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = ""
-- L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = ""
-- L["The currently active template is for %s, commandline option %s is not available."] = ""
-- L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = ""
-- L["There is no active template."] = ""
-- L["There is no active template, commandline option %s is not available."] = ""
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s, it will not become active until you change specs though.]=] ] = "" ]==]
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s which will then become active.]=] ] = "" ]==]
-- L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = ""
-- L["Too many cmdLine priorities. Max is: "] = ""
--[==[ L[ [=[Unable to create macro!

%s]=] ] = "" ]==]
-- L["Unknown Spell"] = ""
--[==[ L[ [=[Welcome to clcInfo: %s

Default templates have been created for each of the supported specs.
All you need to do is position the Icon grid where you want it and lock it in place.]=] ] = "" ]==]
--[==[ L[ [=[Welcome to clcInfo: %s

Presently no templates exist for the following specs:

%s
Do you want to create those templates now?]=] ] = "" ]==]
-- L["Whether to check for range on a skill by skill basis, or simply melee range."] = ""
--[==[ L[ [=[You already have atleast one %s template, do you wish to create another?

Note you will have to pick a distinguishing talent on each template.]=] ] = "" ]==]
-- L["You already have macros with the same name(s)."] = ""
-- L["You have used all your character specific macro slots."] = ""

end

L = aceLocale:NewLocale("clcInfoClassModulePlugin", "frFR")
if L then 
-- L["Abilities"] = ""
L["Activate your %s specialization"] = "Activer votre %s spécialisation"
L["Active Template: |cff41a25d%s|r"] = "Spécialisation active: |cff41a25d%s|r"
-- L["Active template is: "] = ""
-- L["Change clcInfo priority to %s"] = ""
L["Click to activate the specialization for this class module, i.e change spec."] = "Cliquer pour activer la spécialisation pour le module de cette classe, erreur interne. Changer de spécialisation."
-- L["Click to adjust priorities and settings to the recommendations for %s play."] = ""
-- L["Click to disable this ability."] = ""
-- L["Click to enable this ability."] = ""
-- L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = ""
L["Create new template"] = "Créer nouvelle spécialisation."
-- L["Current ability"] = ""
-- L["Export the current priority list to a macro to easily change to that priority."] = ""
-- L["Export to Macro"] = ""
-- L[" (forced)"] = ""
-- L["General"] = ""
-- L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = ""
-- L["Inactive"] = ""
-- L["Latency Adjust"] = ""
-- L["New"] = ""
-- L["Next ability"] = ""
-- L["Options"] = ""
-- L["Priorities"] = ""
-- L["Range per skill"] = ""
-- L["Recommended Priorities"] = ""
-- L["Settings"] = ""
L["%s macro created."] = "%s macro créer"
L["%s priority changed."] = "%s priorité changé."
L["%s Template Created (/clcInfo)."] = "%s Talent créer (/clcinfo)"
-- L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = ""
-- L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = ""
-- L["The currently active template is for %s, commandline option %s is not available."] = ""
-- L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = ""
-- L["There is no active template."] = ""
-- L["There is no active template, commandline option %s is not available."] = ""
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s, it will not become active until you change specs though.]=] ] = "" ]==]
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s which will then become active.]=] ] = "" ]==]
-- L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = ""
-- L["Too many cmdLine priorities. Max is: "] = ""
--[==[ L[ [=[Unable to create macro!

%s]=] ] = "" ]==]
-- L["Unknown Spell"] = ""
--[==[ L[ [=[Welcome to clcInfo: %s

Default templates have been created for each of the supported specs.
All you need to do is position the Icon grid where you want it and lock it in place.]=] ] = "" ]==]
--[==[ L[ [=[Welcome to clcInfo: %s

Presently no templates exist for the following specs:

%s
Do you want to create those templates now?]=] ] = "" ]==]
-- L["Whether to check for range on a skill by skill basis, or simply melee range."] = ""
--[==[ L[ [=[You already have atleast one %s template, do you wish to create another?

Note you will have to pick a distinguishing talent on each template.]=] ] = "" ]==]
-- L["You already have macros with the same name(s)."] = ""
-- L["You have used all your character specific macro slots."] = ""

end

L = aceLocale:NewLocale("clcInfoClassModulePlugin", "itIT")
if L then 
-- L["Abilities"] = ""
-- L["Activate your %s specialization"] = ""
-- L["Active Template: |cff41a25d%s|r"] = ""
-- L["Active template is: "] = ""
-- L["Change clcInfo priority to %s"] = ""
-- L["Click to activate the specialization for this class module, i.e change spec."] = ""
-- L["Click to adjust priorities and settings to the recommendations for %s play."] = ""
-- L["Click to disable this ability."] = ""
-- L["Click to enable this ability."] = ""
-- L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = ""
-- L["Create new template"] = ""
-- L["Current ability"] = ""
-- L["Export the current priority list to a macro to easily change to that priority."] = ""
-- L["Export to Macro"] = ""
-- L[" (forced)"] = ""
-- L["General"] = ""
-- L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = ""
-- L["Inactive"] = ""
-- L["Latency Adjust"] = ""
-- L["New"] = ""
-- L["Next ability"] = ""
-- L["Options"] = ""
-- L["Priorities"] = ""
-- L["Range per skill"] = ""
-- L["Recommended Priorities"] = ""
-- L["Settings"] = ""
-- L["%s macro created."] = ""
-- L["%s priority changed."] = ""
-- L["%s Template Created (/clcInfo)."] = ""
-- L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = ""
-- L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = ""
-- L["The currently active template is for %s, commandline option %s is not available."] = ""
-- L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = ""
-- L["There is no active template."] = ""
-- L["There is no active template, commandline option %s is not available."] = ""
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s, it will not become active until you change specs though.]=] ] = "" ]==]
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s which will then become active.]=] ] = "" ]==]
-- L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = ""
-- L["Too many cmdLine priorities. Max is: "] = ""
--[==[ L[ [=[Unable to create macro!

%s]=] ] = "" ]==]
-- L["Unknown Spell"] = ""
--[==[ L[ [=[Welcome to clcInfo: %s

Default templates have been created for each of the supported specs.
All you need to do is position the Icon grid where you want it and lock it in place.]=] ] = "" ]==]
--[==[ L[ [=[Welcome to clcInfo: %s

Presently no templates exist for the following specs:

%s
Do you want to create those templates now?]=] ] = "" ]==]
-- L["Whether to check for range on a skill by skill basis, or simply melee range."] = ""
--[==[ L[ [=[You already have atleast one %s template, do you wish to create another?

Note you will have to pick a distinguishing talent on each template.]=] ] = "" ]==]
-- L["You already have macros with the same name(s)."] = ""
-- L["You have used all your character specific macro slots."] = ""

end

L = aceLocale:NewLocale("clcInfoClassModulePlugin", "koKR")
if L then 
-- L["Abilities"] = ""
-- L["Activate your %s specialization"] = ""
-- L["Active Template: |cff41a25d%s|r"] = ""
-- L["Active template is: "] = ""
-- L["Change clcInfo priority to %s"] = ""
-- L["Click to activate the specialization for this class module, i.e change spec."] = ""
-- L["Click to adjust priorities and settings to the recommendations for %s play."] = ""
-- L["Click to disable this ability."] = ""
-- L["Click to enable this ability."] = ""
-- L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = ""
-- L["Create new template"] = ""
-- L["Current ability"] = ""
-- L["Export the current priority list to a macro to easily change to that priority."] = ""
-- L["Export to Macro"] = ""
-- L[" (forced)"] = ""
-- L["General"] = ""
-- L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = ""
-- L["Inactive"] = ""
-- L["Latency Adjust"] = ""
-- L["New"] = ""
-- L["Next ability"] = ""
-- L["Options"] = ""
-- L["Priorities"] = ""
-- L["Range per skill"] = ""
-- L["Recommended Priorities"] = ""
-- L["Settings"] = ""
-- L["%s macro created."] = ""
-- L["%s priority changed."] = ""
-- L["%s Template Created (/clcInfo)."] = ""
-- L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = ""
-- L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = ""
-- L["The currently active template is for %s, commandline option %s is not available."] = ""
-- L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = ""
-- L["There is no active template."] = ""
-- L["There is no active template, commandline option %s is not available."] = ""
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s, it will not become active until you change specs though.]=] ] = "" ]==]
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s which will then become active.]=] ] = "" ]==]
-- L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = ""
-- L["Too many cmdLine priorities. Max is: "] = ""
--[==[ L[ [=[Unable to create macro!

%s]=] ] = "" ]==]
-- L["Unknown Spell"] = ""
--[==[ L[ [=[Welcome to clcInfo: %s

Default templates have been created for each of the supported specs.
All you need to do is position the Icon grid where you want it and lock it in place.]=] ] = "" ]==]
--[==[ L[ [=[Welcome to clcInfo: %s

Presently no templates exist for the following specs:

%s
Do you want to create those templates now?]=] ] = "" ]==]
-- L["Whether to check for range on a skill by skill basis, or simply melee range."] = ""
--[==[ L[ [=[You already have atleast one %s template, do you wish to create another?

Note you will have to pick a distinguishing talent on each template.]=] ] = "" ]==]
-- L["You already have macros with the same name(s)."] = ""
-- L["You have used all your character specific macro slots."] = ""

end

L = aceLocale:NewLocale("clcInfoClassModulePlugin", "ptBR")
if L then 
-- L["Abilities"] = ""
-- L["Activate your %s specialization"] = ""
-- L["Active Template: |cff41a25d%s|r"] = ""
-- L["Active template is: "] = ""
-- L["Change clcInfo priority to %s"] = ""
-- L["Click to activate the specialization for this class module, i.e change spec."] = ""
-- L["Click to adjust priorities and settings to the recommendations for %s play."] = ""
-- L["Click to disable this ability."] = ""
-- L["Click to enable this ability."] = ""
-- L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = ""
-- L["Create new template"] = ""
-- L["Current ability"] = ""
-- L["Export the current priority list to a macro to easily change to that priority."] = ""
-- L["Export to Macro"] = ""
-- L[" (forced)"] = ""
-- L["General"] = ""
-- L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = ""
-- L["Inactive"] = ""
-- L["Latency Adjust"] = ""
-- L["New"] = ""
-- L["Next ability"] = ""
-- L["Options"] = ""
-- L["Priorities"] = ""
-- L["Range per skill"] = ""
-- L["Recommended Priorities"] = ""
-- L["Settings"] = ""
-- L["%s macro created."] = ""
-- L["%s priority changed."] = ""
-- L["%s Template Created (/clcInfo)."] = ""
-- L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = ""
-- L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = ""
-- L["The currently active template is for %s, commandline option %s is not available."] = ""
-- L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = ""
-- L["There is no active template."] = ""
-- L["There is no active template, commandline option %s is not available."] = ""
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s, it will not become active until you change specs though.]=] ] = "" ]==]
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s which will then become active.]=] ] = "" ]==]
-- L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = ""
-- L["Too many cmdLine priorities. Max is: "] = ""
--[==[ L[ [=[Unable to create macro!

%s]=] ] = "" ]==]
-- L["Unknown Spell"] = ""
--[==[ L[ [=[Welcome to clcInfo: %s

Default templates have been created for each of the supported specs.
All you need to do is position the Icon grid where you want it and lock it in place.]=] ] = "" ]==]
--[==[ L[ [=[Welcome to clcInfo: %s

Presently no templates exist for the following specs:

%s
Do you want to create those templates now?]=] ] = "" ]==]
-- L["Whether to check for range on a skill by skill basis, or simply melee range."] = ""
--[==[ L[ [=[You already have atleast one %s template, do you wish to create another?

Note you will have to pick a distinguishing talent on each template.]=] ] = "" ]==]
-- L["You already have macros with the same name(s)."] = ""
-- L["You have used all your character specific macro slots."] = ""

end

L = aceLocale:NewLocale("clcInfoClassModulePlugin", "ruRU")
if L then 
-- L["Abilities"] = ""
L["Activate your %s specialization"] = "Используйте %s"
L["Active Template: |cff41a25d%s|r"] = "Активный шаблон: |cff41a25d%s|r"
L["Active template is: "] = "Активный шаблон:"
-- L["Change clcInfo priority to %s"] = ""
-- L["Click to activate the specialization for this class module, i.e change spec."] = ""
-- L["Click to adjust priorities and settings to the recommendations for %s play."] = ""
-- L["Click to disable this ability."] = ""
-- L["Click to enable this ability."] = ""
L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = "Создать новый шаблон для этой специализации. Шаблон будет настроен по-умолчанию"
L["Create new template"] = "Создать новый шаблон"
-- L["Current ability"] = ""
-- L["Export the current priority list to a macro to easily change to that priority."] = ""
L["Export to Macro"] = "Экспортировать в макрос"
-- L[" (forced)"] = ""
L["General"] = "Общие"
-- L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = ""
L["Inactive"] = "Неактивно"
-- L["Latency Adjust"] = ""
L["New"] = "Новый"
-- L["Next ability"] = ""
L["Options"] = "Настройки"
-- L["Priorities"] = ""
-- L["Range per skill"] = ""
-- L["Recommended Priorities"] = ""
L["Settings"] = "Настройки"
L["%s macro created."] = "%s макрос создан"
L["%s priority changed."] = "%s ротация изменена"
L["%s Template Created (/clcInfo)."] = "%s шаблон создан (/clcInfo)"
-- L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = ""
-- L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = ""
-- L["The currently active template is for %s, commandline option %s is not available."] = ""
-- L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = ""
-- L["There is no active template."] = ""
-- L["There is no active template, commandline option %s is not available."] = ""
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s, it will not become active until you change specs though.]=] ] = "" ]==]
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s which will then become active.]=] ] = "" ]==]
-- L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = ""
-- L["Too many cmdLine priorities. Max is: "] = ""
L[ [=[Unable to create macro!

%s]=] ] = [=[Невозможно создать макрос

%s]=]
L["Unknown Spell"] = "Неизвестная способность"
--[==[ L[ [=[Welcome to clcInfo: %s

Default templates have been created for each of the supported specs.
All you need to do is position the Icon grid where you want it and lock it in place.]=] ] = "" ]==]
--[==[ L[ [=[Welcome to clcInfo: %s

Presently no templates exist for the following specs:

%s
Do you want to create those templates now?]=] ] = "" ]==]
-- L["Whether to check for range on a skill by skill basis, or simply melee range."] = ""
--[==[ L[ [=[You already have atleast one %s template, do you wish to create another?

Note you will have to pick a distinguishing talent on each template.]=] ] = "" ]==]
L["You already have macros with the same name(s)."] = "Уже есть макрос с таким же названием"
-- L["You have used all your character specific macro slots."] = ""

end

L = aceLocale:NewLocale("clcInfoClassModulePlugin", "zhCN")
if L then 
-- L["Abilities"] = ""
-- L["Activate your %s specialization"] = ""
-- L["Active Template: |cff41a25d%s|r"] = ""
-- L["Active template is: "] = ""
-- L["Change clcInfo priority to %s"] = ""
-- L["Click to activate the specialization for this class module, i.e change spec."] = ""
-- L["Click to adjust priorities and settings to the recommendations for %s play."] = ""
-- L["Click to disable this ability."] = ""
-- L["Click to enable this ability."] = ""
-- L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = ""
-- L["Create new template"] = ""
-- L["Current ability"] = ""
-- L["Export the current priority list to a macro to easily change to that priority."] = ""
-- L["Export to Macro"] = ""
-- L[" (forced)"] = ""
-- L["General"] = ""
-- L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = ""
-- L["Inactive"] = ""
-- L["Latency Adjust"] = ""
-- L["New"] = ""
-- L["Next ability"] = ""
-- L["Options"] = ""
-- L["Priorities"] = ""
-- L["Range per skill"] = ""
-- L["Recommended Priorities"] = ""
-- L["Settings"] = ""
-- L["%s macro created."] = ""
-- L["%s priority changed."] = ""
-- L["%s Template Created (/clcInfo)."] = ""
-- L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = ""
-- L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = ""
-- L["The currently active template is for %s, commandline option %s is not available."] = ""
-- L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = ""
-- L["There is no active template."] = ""
-- L["There is no active template, commandline option %s is not available."] = ""
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s, it will not become active until you change specs though.]=] ] = "" ]==]
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s which will then become active.]=] ] = "" ]==]
-- L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = ""
-- L["Too many cmdLine priorities. Max is: "] = ""
--[==[ L[ [=[Unable to create macro!

%s]=] ] = "" ]==]
-- L["Unknown Spell"] = ""
--[==[ L[ [=[Welcome to clcInfo: %s

Default templates have been created for each of the supported specs.
All you need to do is position the Icon grid where you want it and lock it in place.]=] ] = "" ]==]
--[==[ L[ [=[Welcome to clcInfo: %s

Presently no templates exist for the following specs:

%s
Do you want to create those templates now?]=] ] = "" ]==]
-- L["Whether to check for range on a skill by skill basis, or simply melee range."] = ""
--[==[ L[ [=[You already have atleast one %s template, do you wish to create another?

Note you will have to pick a distinguishing talent on each template.]=] ] = "" ]==]
-- L["You already have macros with the same name(s)."] = ""
-- L["You have used all your character specific macro slots."] = ""

end

L = aceLocale:NewLocale("clcInfoClassModulePlugin", "zhTW")
if L then 
-- L["Abilities"] = ""
-- L["Activate your %s specialization"] = ""
-- L["Active Template: |cff41a25d%s|r"] = ""
-- L["Active template is: "] = ""
-- L["Change clcInfo priority to %s"] = ""
-- L["Click to activate the specialization for this class module, i.e change spec."] = ""
-- L["Click to adjust priorities and settings to the recommendations for %s play."] = ""
-- L["Click to disable this ability."] = ""
-- L["Click to enable this ability."] = ""
-- L["Create a new template for this specialization. The template will include a default fully configured icon setup."] = ""
-- L["Create new template"] = ""
-- L["Current ability"] = ""
-- L["Export the current priority list to a macro to easily change to that priority."] = ""
-- L["Export to Macro"] = ""
-- L[" (forced)"] = ""
-- L["General"] = ""
-- L["If you experience that, during a GCD, an unusable ability is briefly suggested, then adjust this up. If you never experience that, adjust it down."] = ""
-- L["Inactive"] = ""
-- L["Latency Adjust"] = ""
-- L["New"] = ""
-- L["Next ability"] = ""
-- L["Options"] = ""
-- L["Priorities"] = ""
-- L["Range per skill"] = ""
-- L["Recommended Priorities"] = ""
-- L["Settings"] = ""
-- L["%s macro created."] = ""
-- L["%s priority changed."] = ""
-- L["%s Template Created (/clcInfo)."] = ""
-- L["The active template has been forced to match the %s specialization, thus options for the %s are not available."] = ""
-- L["The active template is for the %s specialization (your current spec), thus options for the %s are not available."] = ""
-- L["The currently active template is for %s, commandline option %s is not available."] = ""
-- L["The priorities can also be set from the command line or a macro using /clcinfo %s <priorities separated by spaces>."] = ""
-- L["There is no active template."] = ""
-- L["There is no active template, commandline option %s is not available."] = ""
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s, it will not become active until you change specs though.]=] ] = "" ]==]
--[==[ L[ [=[There is no active template, thus options for the %s are not available.
If you like, you can create a new template for the %s which will then become active.]=] ] = "" ]==]
-- L["To change priorities, click the priority to move and then click one of the gaps between abilities to place it in its new position."] = ""
-- L["Too many cmdLine priorities. Max is: "] = ""
--[==[ L[ [=[Unable to create macro!

%s]=] ] = "" ]==]
-- L["Unknown Spell"] = ""
--[==[ L[ [=[Welcome to clcInfo: %s

Default templates have been created for each of the supported specs.
All you need to do is position the Icon grid where you want it and lock it in place.]=] ] = "" ]==]
--[==[ L[ [=[Welcome to clcInfo: %s

Presently no templates exist for the following specs:

%s
Do you want to create those templates now?]=] ] = "" ]==]
-- L["Whether to check for range on a skill by skill basis, or simply melee range."] = ""
--[==[ L[ [=[You already have atleast one %s template, do you wish to create another?

Note you will have to pick a distinguishing talent on each template.]=] ] = "" ]==]
-- L["You already have macros with the same name(s)."] = ""
-- L["You have used all your character specific macro slots."] = ""

end
