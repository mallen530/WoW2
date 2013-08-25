-- clcInfo_Monk Locale

local debug = false
--[===[@debug@
debug = true
--@end-debug@]===]

local L = LibStub("AceLocale-3.0"):NewLocale("clcInfo_Monk", "enUS", true, debug)

L["Axe"] = true
L["Mace"] = true
L["Sword"] = true
L["Polearm"] = true
L["Staff"] = true
L["Fist"] = true
L["Jab Icon Settings"] = true
L["Automatic"] = true
L["If checked, the Jab icon will be based on the current weapon used."] = true
L["Specific Icon"] = true
L["Select an icon to always display for Jab. This is ignored if Automatic is checked"] = true
L["Debuff"] = true
L["Purify %s"] = true
L["Rising Sun Kick Max Delay"] = true
L["The acceptable time to delay a Rising Sun Kick due to using another chi consuming ability."] = true
L["Tiger Power Refresh Threshold"] = true
L["The number of seconds left on the Tiger Power buff where it will be considered a priority to refresh it."] = true
L["Stagger Purification Threshold"] = true
L["The number of seconds left on the Stagger debuff where it is considered futile to purify it."] = true
L["Shuffle Refresh Threshold"] = true
L["The minimum number of seconds on the shuffle buff, before reducing priority to allow other chi consumers in. The effect of this is obviously dependent on priorities, the less a prio BoK is the less this will matter."] = true
L["Touch of Death Wait Threshold"] = true
L["The time to wait for Touch of Death to come off cool down if it is otherwise usable (3 chi (unless glyphed) and Death Note active)."] = true
L["Pool Chi for Touch of Death"] = true
L["Whether to pool (save) chi for Touch of Death if it is otherwise available (off CD and Death Note active). This will bypass other chi using abilities to allow for 3 chi. If glyphed, this setting is ignored."] = true
L["Tigereye Brew Threshold"] = true
L["The number of stacks of Tigereye brew at which to begin to suggest it. It will be suggested if it's about to time out regardless of this setting. This also applies if it is in a separate 3rd icon."] = true
L["Elusive Brew Threshold"] = true
L["The number of stacks of Elusive brew at which to begin to suggest it. This also applies if it is in a separate 3rd icon."] = true
L["Pool Chi for Fists of Fury"] = true
L["Whether to pool (save) chi for Fists of Fury if it is otherwise available (off CD). This will bypass other chi using abilities (apart from Touch of Death if that has higher prio) to allow for 3 chi."] = true
L["Energizing Brew Threshold"] = true
L["The time required to reach full energy before suggesting Energizing Brew. I.e. the default of 5 will suggest using Energizing brew if it will take more than 5 seconds to reach 100 energy."] = true
L["Keg Smash Wait Threshold"] = true
L["The time to wait for Keg Smash to come off cooldown, so that it can be preferred over other energy using abilities later in the priotity list even if they are ready to use now."] = true
L["Tigereye Brew Expiration Notice"] = true
L["The number of seconds remaining of Tigereye brew at which to begin to suggest it."] = true
L["Expel Harm Minimum"] = true
L["The health percentage to start recommending Expel Harm over Jab to generate Chi."] = true
L["Keg Smash Energy Threshold"] = true
L["The minimum energy necessary before recommending Keg Smash, so that it can be preferred over other energy using abilities later in the priotity list even if they are ready to use now."] = true

L["Solo"] = true
L["Raid / Group"] = true
L["Unlearned level 30 talent"] = true
L["Unlearned level 90 talent"] = true

L["Talent Abilities Settings"] = true
L["Behavior of talent abilities"] = true
L["Depending on this setting either all or only selected talent abilities will be available for prioritization. Regardless only known abilities will actually be suggested. NOTE: Macros created for one setting are incompatible with the other setting."] = true
L["Show all talent abilities."] = true
L["Show only selected talent abilities."] = true