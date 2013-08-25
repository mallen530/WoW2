﻿-- THIS CONTENTS OF THIS FILE IS AUTO-GENERATED BY THE WOWACE PACKAGER
-- Please use the Localization App on WoWAce to update this
-- at http://www.wowace.com/projects/omen-threat-meter/localization/

--  Translation courtesy of Stan (Arcádia - EU Zirkel des Cenarius)
local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("Omen", "deDE")
if not L then return end

L["A collection of help pages"] = "Eine Sammlung von Hilfeseiten"
L["Alpha"] = "Transparenz"
L["Always Show Self"] = "Immer selbst anzeigen"
L["Always show your threat bar on Omen (ignores class filter settings), showing your bar on the last row if necessary"] = "Zeige den eigenen Bedrohungsbalken (ignoriert Klassenfilter) immer in der letzten Reihe an, wenn nötig."
L["Ambience"] = "Umgebung"
L["Animate Bars"] = "Balken animieren"
L["Attach to minimap"] = "An der Minimap anbringen"
L["Autocollapse"] = "Automatisches Zusammenklappen"
L["Autocollapse Options"] = "Optionen für das automatische Zusammenklappen"
L["AUTO_SHOW/HIDE_NOTE"] = "Anmerkung: Wenn Sie Omen manuell Ein- oder Ausblenden, wird es ein- oder ausgeblendet bleiben, egal welche Einstellungen Sie in den Anzeigen/Verstecken Einstellungen vorgenommen haben, bis Sie das nächste mal die Zone wechseln, eine(r) Gruppe verlassen/beitreten oder die Anzeigen/Verstecken Einstellungen ändern."
L["Background Color"] = "Hintergrundfarbe"
L["Background Options"] = "Optionen für den Hintergrund"
L["Background Texture"] = "Hintergrundtextur"
L["Background Tile Size"] = "Größe der Hintergrundkacheln"
L["Bar BG Color"] = "Balkenhintergrundfarbe"
L["Bar Height"] = "Balkenhöhe"
L["Bar Inset"] = "Balkeneinfügung"
L["Bar Label Options"] = "Optionen für die Beschriftung der Balken"
L["Bar Settings"] = "Optionen für die Balken"
L["Bar Spacing"] = "Abstand der Balken"
L["Bar Texture"] = "Balkentextur"
L["Border Color"] = "Rahmenfarbe"
L["Border Texture"] = "Rahmentextur"
L["Border Thickness"] = "Dicke des Rahmens"
L["Causes Omen to play a chosen sound effect"] = "Lässt Omen einen ausgewählten Ton abspielen"
L["Causes the entire game world to shake momentarily. This option only works if nameplates are turned off."] = "Lässt die Spielwelt für einen kurzen Moment beben. Diese Option funktioniert nur, wenn Namenschilder deaktiviert sind."
L["Causes the entire screen to flash red momentarily"] = "Lässt den gesamten Bildschirm kurzzeitig rot aufleuchten"
L["Center"] = "Mitte"
L["Center Omen"] = "Omen zentrieren"
L["|cffff0000Error:|r Omen cannot use shake warning if you have turned on nameplates at least once since logging in."] = "|cffff0000Fehler:|r Omen kann keine Wackelwarnungen benutzen wenn Namensschilder aktiviert wurden, nachdem Ihr Euch eingeloggt habt."
L["Clamp To Screen"] = "Auf dem Bildschirm halten"
L["Click|r to toggle the Omen window"] = "Linksklick|r, um das Omen Fenster ein/auszublenden."
L["Click Through"] = "Hier klicken"
L["Collapse to show a minimum number of bars"] = "Zusammenklappen um nur eine minimale Anzahl an Balken zu zeigen"
L["Configure"] = "Einstellungen"
L["Configure bar settings."] = "Einstellungen für die Balken ändern"
L["Configure title bar settings."] = "Einstellungen für die Titelleiste ändern"
L["Controls the frame strata of the main Omen window. Default: MEDIUM"] = "Kontrolliert die Höhenstufe des Omen Hauptfensters. Standard: MEDIUM"
L["Controls the scaling of the main Omen window."] = "Kontrolliert die Skalierung des Omen Hauptfensters"
L["Controls the transparency of the main Omen window."] = "Kontrolliert die Sichtbarkeit des Omen Hauptfensters"
L["Controls whether the main Omen window can be dragged offscreen"] = "Kontrolliert, ob das Omen Fenster über die Bildschirmkanten hinaus verschoben werden kann"
L["Control the font size of the labels"] = "Die Schriftgröße der Balken ändern"
L["Control the font size of the title text"] = "Die Schriftgröße des Titeltextes ändern"
L["DEATHKNIGHT"] = "Todesritter"
L["Disable while tanking"] = "Beim Tanken deaktivieren"
L["DISABLE_WHILE_TANKING_DESC"] = "Gibt keine Warnmeldungen aus, wenn Verteidigungshaltung, Bärengestalt, Zorn der Gerechtigkeit oder Blutpräsenz aktiv sind."
L["Display large numbers in Ks"] = "Zeigt hohe Zahlenwerte im K-Format (1k = 1000) an"
L["DRUID"] = "Druide"
L["Enable Screen Flash"] = "Bildschirmblinken aktivieren"
L["Enable Screen Shake"] = "Bildschirmwackeln aktivieren"
L["Enable Sound"] = "Ton aktivieren"
L["Enable Warning Message"] = "Warnmeldungen aktivieren"
L["FAQ Part 1"] = "Häufig gestellte Fragen - 1"
L["FAQ Part 2"] = "Häufig gestellte Fragen - 2"
L["Font"] = "Schriftart"
L["Font Color"] = "Schriftfarbe"
L["Font Outline"] = "Schriftkontur"
L["Font Size"] = "Schriftgröße"
L["Frame's background color"] = "Farbe, die für den Hintergrund des Fensters genutzt werden soll"
L["Frame's border color"] = "Farbe, die für den Rand des Fensters genutzt werden soll"
L["Frame Strata"] = "Höhenstufe"
L["Frequently Asked Questions"] = "Häufig gestellte Fragen"
L["FuBar Options"] = "FuBar Optionen"
L["GENERAL_FAQ"] = [=[|cffffd200Was unterscheidet Omen3 von Omen2?|r

Omen3 stützt sich komplett auf die Blizzard Bedrohungs API und Bedrohungs Events. Es versucht nicht mehr Bedrohung zu berechnen oder hochzurechnen wie es Omen2 tat.

Omen2 hat die sogenannte Threat-2.0 Library benutzt. Diese Library war verantwortlich für die Überwachung des Kampflogs, das Wirken von Zaubern, Buffs, Debuffs, Haltungen, Talenten und Modifikatoren auf Ausrüstungen, um die Bedrohung jedes Einzelnen zu berechnen. Bedrohung wurde auf Grund von Vermutungen und Annahmen berechnet, die durch Beobachtungen entstanden sind. Viele Fähigkeiten wie z.b Knockbacks wurden nur angenommen(als 50% Bedrohungsreduzierung) da es meist unmöglich war, sie zu verifizieren.

Die Threat-2.0 Library enthielt auch ein Kommunikationssystem um Ihre Bedrohung an den Rest der Schlachtgruppe zu senden, solange dieser auch Threat-2.0 benutzen. Diese Daten wurden dann dazu genutzt einen schlachtzugsweiten Überblick der Bedrohungssituation darzustellen.

Seit dem Patch 3.0.2, macht Omen keines dieser Dinge mehr und eine Thread Library ist damit nicht länger notwendig. Omen3 nutzt Blizzards neuen, eingebauten, Bedrohungsmonitor um exakte Werte für die Bedrohung jedes Mitglieds zu empfangen. Dies bedeutet, Omen muss nicht länger mit anderen Mitspielern Daten synchronisieren, den Kampflog auslesen oder schätzen. Dies resultiert in einer viel besseren Geschwindigkeit im Bezug auf Netzwerkauslastung, CPU-Zeit und RAM-Verbrauch. Die Implementierung von Bossmodulen für spezielle Ereignisse (wie z.B. das Zurücksetzen der Bedrohung bei der Landung des "Schreckens der Nacht") ist nicht länger notwendig.

Ein weiterer Vorteil dieser Implementierung ist die Anzeige der Bedrohung von NPCs (z.B. die menschliche Form von Kalecgos). Allerdings gibt es auch einige Nachteile; Die Frequenz der Aktualisierungen ist viel geringer, Bedrohung kann nur noch erfasst werden wenn jemand in Ihrer Gruppe den Mob im Ziel hat und sich im direkten Kampf mit diesem Monster befindet.

|cffffd200Wie werde ich die zwei vertikalen Linien in der Mitte los?|r

Verankert Euer Omen. Wird Omen an der aktuellen Position verankert, kann es weder verschoben noch in der Größe verändert werden, dies verhindert auch, dass Spalten in der Größe verändert werden. Falls es wem jetzt noch nicht klar ist, die zwei vertikalen Linien dienen zum Verändern der Spaltenbreite.

|cffffd200Wie lasse ich Omen3 wie Omen2 aussehen?|r

Ändert sowohl die Hintergrundtextur als auch die Randtextur auf Blizzard Tooltip, ändert ebenfalls die Hintergrundfarbe auf Schwarz (indem ihr den Sichtbarkeitsbalken ganz nach unten zieht) und die Randfarbe auf blau einstellt.

|cffffd200Warum wird nichts angezeigt obwohl ich ein Monster im Ziel habe, welches sich im Kampf befindet?|r

Die Blizzard Threat API gibt keine Bedrohungsdaten zurück wenn Ihr nicht im direkten Kampf mit diesem Monster seid. Wir vermuten dies ist ein Versuch von Blizzard den Netzwerkverkehr zu reduzieren.

|cffffd200Besteht irgendeine Möglichkeit diese Blizzard limitation zu umgehen? Da es ist mir unmöglich ist die Aggro meines Begleiters zu sehen bevor ich selber angreife, muss ich nun wieder schätzen.|r

Kurz gesagt, es gibt keine Möglichkeit das zu umgehen ausser wir würden wieder für Euch schätzen (was ja ursprünglich Omen 2 gemacht hat).

Das Ziel von Omen3 ist jedoch, Daten so exakt wie möglich zu liefern, wir bezwecken ja nicht durch Schätzungen Eure FPS zu mindern.

Habt einfach ein wenig Vertrauen in Euren Begleiter/Tank, oder wartet schlicht ein paar Sekunden bevor ihr selber angreift und nutzt dabei sicherheitshalber einen weniger Bedrohung erzeugenden Angriff/Zauber (wie z.B. Eislanze) um die Daten angezeigt zu bekommen]=]
L["GENERAL_FAQ2"] = [=[|cffffd200Können wir den AoE Modus wieder haben?|r

Noch einmal, es ist nicht möglich ohne die Bedrohungswerte zu schätzen. Blizzards Bedrohungs API erlaubt es uns nur für Einheiten die eine Person im Schlachtzug als Ziel hat zu empfangen. Das bedeutet, wenn es 20 Mobs gibt, und nur 6 davon bei Schlachtzugsmitgliedern im Ziel sind, es keinen Weg gibt um genaue Bedrohungswerte der anderen 14 zu empfangen.

Es ist auch sehr schwierig zu schätzen, gerade bei Heilung und Buffs (Bedrohung wird durch die Anzahl an Mobs geteilt mit denen Sie sich im Kampf befinden), da Mobs die sich unter Crowd Control Effekten (Schaf, Verbannung, Kopfnuss, usw) befinden, keine veränderte Bedrohungstabelle besitzen und Addons nicht zuverlässig sagen können mit vielen Mobs Sie sich im Kampf befinden. Der von Omen2 geschätze Wert war meistens nicht richtig.

|cffffd200Die Tooltips einer Einheit zeigt die Bedrohung in % an die nicht den % entspricht, die Omen3 anzeigt. Warum?|r

Blizzards Bedrohungsprozente skalieren zwischen 0% und 100%, so dass man immer bei 100% Aggro zieht. Omen zeigt jedoch unskalierte Rohwerte an, bei denen man bei 110% Aggro zieht, wenn man sich in Nahkampfreichweite befindet und bei 130% wenn im Fernkampfbereich.

Nach allgemeinem Verständnis, wird das Hauptziel eines Mobs als Tank bezeichnet und hat 100% Bedrohung.

|cffffd200Die Aktualisierungsrate der Bedrohung ist langsam...|r

Omen3 aktualisiert genau so oft die Bedrohungswerte, wie Blizzard es zulässt.

In der Tat aktualisiert Blizzard diese etwa einmal pro Sekunde, was sogar viel schneller ist, als Omen2 es getan hat. In Omen2, wurde Eure Bedrohung nur etwa alle 3 Sekunden an den Rest des Schlachtzuges gesendet (als Tank alle  1.5s).

|cffffd200Wo kann ich Fehler melden oder Vorschläge machen?|r

http://forums.wowace.com/showthread.php?t=14249

|cffffd200Wer hat Omen3 geschrieben?|r

Xinhuan (Blackrock/Barthilas US Alliance).

|cffffd200Sind Spenden via Paypal möglich?|r

Ja, schicken Sie sie an xinhuan AT gmail DOT com.
]=]
L["General Settings"] = "Allgemeine Optionen"
L["Grow bars upwards"] = "Balken nach oben aufbauen"
L["Heading background color"] = "Hintergrundfarbe der Überschriften"
L["Heading BG Color"] = "Überschriftenhintergrundfarbe"
L["Height of each bar"] = "Höhe jedes Balkens"
L["Height of the title bar. The minimum height allowed is twice the background border thickness."] = "Höhe der Titelleisten. Die minimal erlaubte Höhe ist doppelt so dick wie der Rand des Hintergrundfensters"
L["Help File"] = "Hilfe"
L["Hide minimap/FuBar icon"] = "Minimap/FuBar Symbol anzeigen/verstecken"
L["Hide Omen"] = "Omen verstecken"
L["Hide Omen entirely if it collapses to show 0 bars"] = "Omen komplett ausblenden wenn es zusammenklappt um 0 Balken anzuzeigen"
L["Hide Omen on 0 bars"] = "Omen ausblenden wenn keine Balken vorhanden sind"
L["However, hide Omen if any of the following are true (higher priority than the above)."] = "Verstecke Omen wenn folgende Bedingungen zutreffen (höhere Priorität als die oberen)."
L["HUNTER"] = "Jäger"
L["Ignore Player Pets"] = "Spieler Begleiter ignorieren"
L["IGNORE_PLAYER_PETS_DESC"] = [=[Veranlasst Omen gegnerische Spielerbegleiter ausser acht zu lassen wenn bestimmt wird auf welche Einheit Bedrohung angezeigt werden soll.

Spielerbegleiter haben nur eine Bedrohungsliste wenn sie sich im |cffffff78Aggressiven|r oder |cffffff78Defensiven|r Modus befinden und sich somit wie normale Mobs verhalten, also das Ziel mit der größten Bedrohung angreiffen. Wird der Beleiter dazu veranlasst, eine bestimntes Ziel anzugreiffen, behält der Begleiter eine Bedrohungstabelle, aber bleibt bei dem festgelegten Ziel, welches per Definition 100% Bedrohung hat. Spielerbegleiter können abgespottet werden um sie zu zwingen Sie anzugreiffen.

Spielerbegleiter im |cffffff78Passiven|r Modus haben auf jeden Fall keine Bedrohungstabelle und Spott funktioniert bei ihnen nicht. Sie greiffen das ausgewählte Ziel nur auf Befehl an und das ohne Bedrohungstabelle.

Wenn ein Spielerbegleiter dazu aufgefordert wird, zu |cffffff78Folgen|r, wird die Bedrohungstabelle gelöscht und es hört auf anzugreiffen, dennoch kann es sofort wieder ein neues Ziel aufnehmen, wenn wieder in den Aggressiven/Defensiven Modus gewechselt wird.
]=]
L["Invert Bar/Text Colors"] = "Leisten-/Textfarben umkehren"
L["Left"] = "Links"
L["Lock Omen"] = "Omen verankern"
L["Locks Omen in place and prevents it from being dragged or resized."] = "Verankert Omenan seiner momentanen Position, um zu verhindern, dass es verschoben oder die Größe geändert wird."
L["MAGE"] = "Magier"
L["Makes the Omen window non-interactive"] = "Macht das Omen Fenster nicht-interaktiv"
L["Master"] = "Hauptkanal"
L["Max bars to show"] = "Maximale Anzahl an Balken"
L["Max number of bars to show"] = "Anzahl der Balken die maximal angezeigt werden"
L["Music"] = "Musik"
L["'My Bar' BG Color"] = "Hintergrundfarbe für den eigenen Balken"
L["Name"] = "Name"
L["None"] = "Keine"
L["*Not in Party*"] = "*Nicht in der Gruppe*"
L["OMEN_DESC"] = "Omen ist ein leichtgewichtiges Bedrohungsmeter, dass Euch den Bedrohungsstatus an Monstern anzeigt mit denen Ihr Euch im Kampf befindet. Ihr könnt das Aussehen und Verhalten von Omen ändern und verschiedene Profile für Euere Spielfiguren festlegen."
L["Omen Quick Menu"] = "Omen Schnellmenü"
L["OMEN_SLASH_DESC"] = "Diese Knöpfe bewirken das selbe wie die Slashkommandos beim Befehl /omen"
L["OMEN_WARNINGS_DESC"] = "Dieser Bereich erlaubt Euch einzustellen, wann und wie Omen Euch benachrichtigt wenn Ihr kurz davor seid Aggro zu ziehen"
L["Open Config"] = "Optionen öffnen"
L["Open Omen's configuration panel"] = "Omens Konfigurationsmenü öffnen"
L["Open the configuration dialog"] = "Den Konfigurationsdialog öffnen"
L["Outline"] = "Kontur"
L["PALADIN"] = "Paladin"
L["Passed %s%% of %s's threat!"] = "%s%% der Bedrohung von %s überschritten!"
L["PET"] = "Begleiter"
L["Pet Bar Color"] = "Begleiterleistenfarbe"
L["Position"] = "Position"
L["PRIEST"] = "Priester"
L["Print a message to screen when you accumulate too much threat"] = "Zeigt eine Meldung auf dem Bildschirm wenn Ihr zu viel Bedrohung erzeugt"
L["Profiles"] = "Profile"
L["> Pull Aggro <"] = "> Aggro ziehen <"
L["Pull Aggro Bar Color"] = "Farbe der 'Aggro ziehen' Leiste"
L["Right"] = "Rechts"
L["Right-click|r to open the options menu"] = "Rechts-Klick|r, um das Optionsfenster zu öffnen."
L["ROGUE"] = "Schurke"
L["Scale"] = "Skalierung"
L["Sets how far inside the frame the threat bars will display from the 4 borders of the frame"] = "Legt fest, wie weit innerhalb des Fensters die Bedrohungsbalken von den vier Rahmenseiten des Fensters entfernt sind"
L["SFX"] = "Effekte"
L["SHAMAN"] = "Schamane"
L["Short Numbers"] = "Kurze Zahlen"
L["Show a bar for the amount of threat you will need to reach in order to pull aggro."] = "Zeigt eine Leiste mit dem Wert an Bedrohung der benötigt wird um Aggro zu ziehen"
L["Show bars for these classes"] = "Zeige Balken für diese Klassen"
L["Show Classes..."] = "Zeige Klassen..."
L["SHOW_CLASSES_DESC"] = "Zeite die Omen Bedrohungsbalken für folgende Klassen. Die Klassen hier betreffen alljene Leute in Eurer Gruppe/Schlachtzug mit Ausnahme der 'Nicht in der Gruppe' Option."
L["Show column headings"] = "Zeige die Überschriften der Spalten"
L["Show Headings"] = "Zeige Überschriften"
L["Show icon"] = "Symbol zeigen"
L["Show minimap button"] = "Zeige Minimap Icon"
L["Show Omen"] = "Zeige Omen"
L["Show Omen when..."] = "Zeige Omen wenn..."
L["Show Omen when any of the following are true"] = "Zeige Omen wenn irgend eins der folgenden Argumente zutrifft"
L["Show Omen when you are alone"] = "Zeige Omen wenn ich alleine bin"
L["Show Omen when you are in a 5-man party"] = "Zeige Omen wenn ich einer 5er Gruppe bin"
L["Show Omen when you are in a raid"] = "Zeige Omen wenn ich in einer Schlachtzuggruppe bin"
L["Show Omen when you have a pet out"] = "Zeige Omen wenn ich einen Begleiter habe"
L["Show Pull Aggro Bar"] = "'Aggro ziehen' Leiste anzeigen"
L["Show text"] = "Text zeigen"
L["Show the Omen minimap button"] = "Zeige das Omen Minimap Icon"
L["Show the Omen Title Bar"] = "Zeige die Titelleiste von Omen an"
L["Show Threat %"] = "Zeige % Bedrohung"
L["Show threat per second values"] = "Zeige Bedrohung pro Sekunde Werte"
L["Show Threat Values"] = "Zeige Bedrohungswerte"
L["Show Title Bar"] = "Zeige Titelleiste"
L["Show TPS"] = "Zeige BPS"
L["Show When..."] = "Zeige wenn..."
L["Slash Command"] = "Slashkommando"
L["Smoothly animate bar changes"] = "Flüssiges Animieren der Balkenänderungen"
L["Sound Channel"] = "Soundkanal"
L["Sound to play"] = "Ton der gespielt wird"
L["Spacing between each bar"] = "Abstand zwischen den Balken"
L["Switch the colors so that the bar background colors and the text colors are swapped."] = "Die Farben wechseln so dass die Leistenhintergrund-Farben und die Textfarben umgekehrt werden."
L["Tank Bar Color"] = "Farbe für den Tankbalken"
L["Tells Omen to additionally check your 'focus' and 'focustarget' before your 'target' and 'targettarget' in that order for threat display."] = "Lässt Omen zusätzlich den Fokus und das Fokusziel vor dem Ziel, und dem Ziel des Ziels für die Bedrohungsanzeige überprüfen"
L["Tells Omen to enter Test Mode so that you can configure Omen's display much more easily."] = "Startet den Omen Testmodus um das Einstellen der Anzeigen zu vereinfachen"
L["Temp Threat Bar Color"] = "Farbe der temporären Bedrohungsleiste"
L["Test Mode"] = "Testmodus"
L["Test warnings"] = "Testwarnung"
L["Texture to use for the frame's background"] = "Textur die für den Hintergrund des Fensters genutzt werden soll"
L["Texture to use for the frame's border"] = "Textur die für den Rahmen des Fensters genutzt werden soll"
L["The background color for all threat bars"] = "Die Hintergrundfarbe für alle Bedrohungsbalken"
L["The background color for pets"] = "Die Hintergrundfarbe für Begleiter"
L["The background color for players under the effects of Fade, Mirror Image, glyphed Hand of Salvation, Tricks of the Trade and Misdirection"] = "Die Hintergrundfarbe für Spieler unter dem Effekt von Verblassen, Spiegelbilder, geglyphter Hand der Erlösung, Schurkenhandel und Irreführung"
L["The background color for your Pull Aggro bar"] = "Die Hintergrundfarbe für die 'Aggro ziehen' Leiste"
L["The background color for your tank's threat bar"] = "Die Hintergrundfarbe des Bedrohungsbalkens des Tanks"
L["The background color for your threat bar"] = "Die Hintergrundfarbe für den eigenen Bedrohungsbalken"
L["The color of the labels"] = "Die Farbe der Beschriftungen"
L["The color of the title text"] = "Die Farbe die der Titeltext verwenden wird"
L["The font that the labels will use"] = "Die Schriftart welche die Balken benutzen"
L["The font that the title text will use"] = "Die Schriftart welche der Titeltext verwenden wird"
L["The outline that the labels will use"] = "Die Kontur der Beschriftungen"
L["The outline that the title text will use"] = "Die Kontur die der Titeltext verwenden wird"
L["The size used to tile the background texture"] = "Die Größe der Kacheln die für die Hintergrundtextur benutzt wird"
L["The texture that the bar will use"] = "Die Textur welche von den Balken genutzt wird"
L["The thickness of the border"] = "Die Dicke des Rahmens"
L["Thick Outline"] = "Dicke Kontur"
L["This section controls when Omen is automatically shown or hidden."] = "Dieser Bereicht kontrolliert ob Omen automatisch aus- oder eingeblendet wird"
L["Threat"] = "Bedrohung"
L["Threat [%]"] = "Bedrohung [%]"
L["Tile Background"] = "Hintergrundkacheln"
L["Tile the background texture"] = "Textur für den Hintergrund der Kacheln anzeigen"
L["Title Bar Background Options"] = "Titelleistenhintergrundoptionen"
L["Title Bar Height"] = "Höhe der Titelleisten"
L["Title Bar Settings"] = "Optionen für die Titelleiste"
L["Title Text Options"] = "Optionen für den Titeltext"
L["Toggle Focus"] = "Fokus an/ausschalten"
L["Toggle Omen"] = "Omen ein/ausblenden"
L["TPS"] = "BPS"
L["TPS Window"] = "BPS Fenster"
L["TPS_WINDOW_DESC"] = "Die Bedrohung pro Sekunde (BPS) Berechnung basiert auf einem, in Echtzeit gestaffelten Fenster der letzten X Sekunden"
L["Turning this on will cause Omen to hide whenever you are in a battleground or arena."] = "Wird diese Funktion aktiviert, wird Omen jedesmal wenn Ihr Euch auf einem Schlachtfeld oder in einer Arena befindet, ausgeblendet"
L["Turning this on will cause Omen to hide whenever you are in a city or inn."] = "Wird diese Funktion aktiviert, wird Omen jedesmal wenn Ihr Euch in einer Stadt oder einem Gasthaus befindet, ausgeblendet"
L["Turning this on will cause Omen to hide whenever you are not in combat."] = "Wenn Sie diese Option aktivieren wird Omen ausgeblendet, wenn Ihr Euch nicht im Kampf befindet"
L["<Unknown>"] = "<Unbekannt>"
L["Use a different colored background for the tank's threat bar in Omen"] = "Benutze eine andere Hintergrundfarbe für den Bedrohungsbalken des Tanks in Omen"
L["Use a different colored background for your threat bar in Omen"] = "Eine andere Hintergrundfarbe für den eigenen Bedrohungsbalken in Omen verwenden"
L["Use Auto Show/Hide"] = "Automatisches Anzeigen/Verstecken verwenden"
L["Use !ClassColors"] = "Klassenfarben verwenden"
L["Use Class Colors"] = "Klassenfarben benutzen"
L["Use !ClassColors addon for class colors for the background color of threat bars"] = "Verwende das !ClassColors Addon für Klassenfarben bei den Bedrohungsbalken."
L["Use Focus Target"] = "Fokusziel verwenden"
L["Use 'My Bar' color"] = "Farbe des eigenen Balkens verwenden"
L["Use Same Background"] = "Selben Hintergrund verwenden"
L["Use standard class colors for the background color of threat bars"] = "Benutze die Standard Klassenfarben für den Hintergrund der Bedrohungsbalken"
L["Use Tank Bar color"] = "Farbe des Tankbalkens verwenden"
L["Use the same background settings for the title bar as the main window's background"] = "Die selben Hintergrundeinstellungen für die Titelleiste wie für das Hauptfenster verwenden"
L["WARLOCK"] = "Hexer"
L["Warning Settings"] = "Optionen für die Warnungen"
L["Warning Threshold %"] = "Warnschwelle %"
L["Warrior"] = "Krieger"
L["WARRIOR"] = "Krieger"
L["WARRIOR_FAQ"] = [=[Die folgenden Daten stammen von |cffffd200http://www.tankspot.com/forums/f200/39775-wow-3-0-threat-values.html|r am zweiten Okt. 2008 (Danke an Satrina!). Die Zahlen sind für Level 80.

|cffffd200Modifiers|r
Battle Stance ________ x 80
Berserker Stance _____ x 80
Tactical Mastery _____ x 121/142/163
Defensive Stance _____ x 207.35

Note that in our original threat estimations (that we use now in WoW 2.0), we equated 1 damage to 1 threat, and used 1.495 to represent the stance+defiance multiplier. We see Note that in our original threat estimations (that we use now in WoW 2.0), we equated 1 damage to 1 threat, and used 1.495 to represent the stance+defiance multiplier. We see that Blizzard's method is to use the multiplier without decimals, so in 2.x it would've been x149 (maybe x149.5); it is x207 (maybe 207.3) in 3.0. I expect that this is to allow the transport of integer values instead of decimal values across the Internet for efficiency. It appears that threat values are multiplied by 207.35 at the server, then rounded.

If you still want to use the 1 damage = 1 threat method, the stance modifiers are 0.8 and 2.0735, etc.

|cffffd200Threat Values  (stance modifiers apply unless otherwise noted):|r
Battle Shout _________ 78 (split)
Cleave _______________ damage + 225 (split)
Commanding Shout _____ 80 (split)
Concussion Blow ______ damage only
Damage Shield ________ damage only
Demoralising Shout ___ 63 (split)
Devastate ____________ damage + 5% of AP *** Needs re-checking for 8982 **
Dodge/Parry/Block_____ 1 (in defensive stance with Improved Defensive Stance only)
Heroic Strike ________ damage + 259
Heroic Throw _________ 1.50 x damage
Rage Gain ____________ 5 (stance modifier is not applied)
Rend _________________ damage only
Revenge ______________ damage + 121
Shield Bash __________ 36
Shield Slam __________ damage + 770
Shockwave ____________ damage only
Slam _________________ damage + 140
Spell Reflect ________ damage only (only for spells aimed at you)
Social Aggro _________ 0
Sunder Armour ________ 345 + 5%AP
Thunder Clap _________ 1.85 x damage
Vigilance ____________ 10% of target's generated threat (stance modifier is not applied)

You do not gain threat for reflecting spells targetted at allies with Improved Spell Reflect. When you reflect a spell for an ally, your ally gains the threat for the damage dealt by the reflected spell.
]=]
L["You are alone"] = "Ich alleine bin"
L["You are in a battleground"] = "Ich in einem Schlachtfeld bin"
L["You are in a party"] = "Ich in einer Gruppe bin"
L["You are in a raid"] = "Ich in einem Schlachtzug bin"
L["You are not in combat"] = "Ich mich nicht im Kampf befinde"
L["You are resting"] = "Ich mich ausruhe"
L["You have a pet"] = "Ich einen Begleiter habe"

