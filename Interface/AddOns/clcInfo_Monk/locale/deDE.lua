local L = LibStub("AceLocale-3.0"):NewLocale("clcInfo_Monk", "deDE")
if not L then return end

L["Automatic"] = "Automatisch"
L["Axe"] = "Axt"
L["Behavior of talent abilities"] = "Verhalten von Talent-Fähigkeiten"
L["Debuff"] = "Schwächungszauber" -- Needs review
L["Depending on this setting either all or only selected talent abilities will be available for prioritization. Regardless only known abilities will actually be suggested. NOTE: Macros created for one setting are incompatible with the other setting."] = "Abhängig von dieser Einstellung werden entweder alle oder nur ausgewählte Talent-Fähigkeiten für die Prioritätensetzung verfügbar sein. Unabhängig davon werden nur bekannte Fähigkeiten auch tatsächlich suggeriert. HINWEIS: Makros die für eine Einstellung erstellt wurden sind inkompatibel mit anderen."
L["Elusive Brew Threshold"] = "Flüchtiges Gebräu Schwelle"
L["Energizing Brew Threshold"] = "Belebendes Gebräu Schwelle"
L["Fist"] = "Faust"
L["If checked, the Jab icon will be based on the current weapon used."] = "Wenn aktiviert, wird das Hieb-Symbol an die aktuell ausgerüstete Waffe angepasst."
L["Jab Icon Settings"] = "Einstellungen für das Hieb-Symbol"
L["Keg Smash Wait Threshold"] = "Wartezeit für Fasshieb"
L["Mace"] = "Streitkolben"
L["Polearm"] = "Stangenwaffe"
L["Pool Chi for Fists of Fury"] = "Sammle Chi für Furorfäuste"
L["Pool Chi for Touch of Death"] = "Sammle Chi für Berührung des Todes."
L["Purify %s"] = "Läutern %s"
L["Raid / Group"] = "Schlachtzug / Gruppe"
L["Rising Sun Kick Max Delay"] = "Maximale Verzögerung für Tritt der aufgehenden Sonne" -- Needs review
L["Select an icon to always display for Jab. This is ignored if Automatic is checked"] = "Wähle ein Symbol aus, das immer für Hieb angezeigt wird. Dies wird ignoriert falls \"Automatisch\" aktiviert wurde."
L["Show all talent abilities."] = "Zeige alle Talent-Fähigkeiten" -- Needs review
L["Show only selected talent abilities."] = "Zeige nur ausgewählte Talent-Fähigkeiten" -- Needs review
L["Shuffle Refresh Threshold"] = "Schwelle bis zur Erneuerung von Beinarbeit" -- Needs review
L["Solo"] = "Solo"
L["Specific Icon"] = "Spezifisches Symbol"
L["Staff"] = "Stab"
L["Stagger Purification Threshold"] = "Schwelle zur Reinigung von Staffeln" -- Needs review
L["Sword"] = "Schwert"
L["Talent Abilities Settings"] = "Talent-Fähigkeiten Einstellungen" -- Needs review
L["The acceptable time to delay a Rising Sun Kick due to using another chi consuming ability."] = "Die akzeptable Verzögerung für Tritt der aufgehenden Sonne aufgrund einer anderen chi-verbrauchenden Fähigkeit." -- Needs review
L["The minimum number of seconds on the shuffle buff, before reducing priority to allow other chi consumers in. The effect of this is obviously dependent on priorities, the less a prio BoK is the less this will matter."] = "Die kürzeste Zeit (in verbleibenden Sekunden) auf dem Beinarbeit-Buff, bevor die Priorität reduziert wird um andere Zauber, die Chi benötigen einzubringen. Der daraus entstehende Effekt hängt von den Prioritäten ab, je geringer die Priorität von Blackout-Tritt ist, desto weniger ist dies relevant."
L["The number of seconds left on the Stagger debuff where it is considered futile to purify it."] = "Anzahl der verbleibenden Sekunden auf dem Staffeln Debuff ab denen es sinnlos ist ihn zu reinigen."
L["The number of seconds left on the Tiger Power buff where it will be considered a priority to refresh it."] = "Sekunden, bis zum Auslaufen des Kraft des Tigers Buffs, bis dieser zur Auffrischung als Priorität angezeigt wird. "
L["The number of stacks of Elusive brew at which to begin to suggest it. This also applies if it is in a separate 3rd icon."] = "Anzahl der Stapel von Flüchtiges Gebräu, bis es vorgeschlagen wird. Dies greift auch wenn es als drittes Symbol angezeigt wird."
L["The number of stacks of Tigereye brew at which to begin to suggest it. It will be suggested if it's about to time out regardless of this setting. This also applies if it is in a separate 3rd icon."] = "Anzahl der Stacks von Tigeraugengebräu ab denen es vorgeschlagen wird. Es wird vorgeschlagen wenn es dafür bereit ist, unabhängig von dieser Einstellung. Dies greift auch wenn es als drittes Symbol angezeigt wird."
L["The time required to reach full energy before suggesting Energizing Brew. I.e. the default of 5 will suggest using Energizing brew if it will take more than 5 seconds to reach 100 energy."] = "Die Zeit, die benötigt wird um volle Energie zu erreichen, bevor Belebendes Gebräu vorgeschlagen wird. Z.B wird die Standardeinstellung von 5 Belebendes Gebräu vorschlagen, wenn es länger als 5 Sekunden dauern würde um 100 Energie zu erreichen."
L["The time to wait for Keg Smash to come off cooldown, so that it can be preferred over other energy using abilities later in the priotity list even if they are ready to use now."] = "Die Zeit bis der CD von Fasshieb abgelaufen ist, damit es anderen in der Prioritätenliste folgenden Fähigkeiten vorgezogen werden kann, die Energie benötigen obwohl diese schon jetzt bereit zur Nutzung wären."
L["The time to wait for Touch of Death to come off cool down if it is otherwise usable (3 chi (unless glyphed) and Death Note active)."] = "Die Zeit die gewartet werden soll, bis der CD von Berührung des Todes abläuft, wenn es ansonsten nutzbar wäre (3 Chi (wenn nicht geglypht) und Todesnachricht aktiv)."
L["Tigereye Brew Threshold"] = "Schwelle für Tigeraugengebräu"
L["Tiger Power Refresh Threshold"] = "Schwelle zu Erneuerung von Kraft des Tigers"
L["Touch of Death Wait Threshold"] = "Berührung des Todes Wartezeit Schwelle"
L["Whether to pool (save) chi for Fists of Fury if it is otherwise available (off CD). This will bypass other chi using abilities (apart from Touch of Death if that has higher prio) to allow for 3 chi."] = "Soll Chi für Furorfäuste aufgespart werden, wenn es sonst verfügbar ist (ohne CD). Das wird für 3 Chi andere Chi-verbrauchende Fähigkeiten überspringen (abgesehen von Berührung des Todes, wenn dies eine höhere Priorität hat). "
L["Whether to pool (save) chi for Touch of Death if it is otherwise available (off CD and Death Note active). This will bypass other chi using abilities to allow for 3 chi. If glyphed, this setting is ignored."] = "Soll Chi für Berührung des Todes aufgespart werden, wenn es sonst verfügbar ist (ohne CD und Todesnachricht aktiv). Das wird für 3 Chi andere Chi-verbrauchende Fähigkeiten überspringen. Falls die Berührung des Todes Glyphe aktiv ist wird diese Einstellung ignoriert. "


