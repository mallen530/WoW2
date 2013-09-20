--[[--------------------------------------------------------------------
    Ovale Spell Priority
    Copyright (C) 2011, 2012 Sidoine
    Copyright (C) 2012, 2013 Johnny C. Lam

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License in the LICENSE
    file accompanying this program.
--]]--------------------------------------------------------------------

local _, Ovale = ...
local OvaleEquipement = Ovale:NewModule("OvaleEquipement", "AceEvent-3.0")
Ovale.OvaleEquipement = OvaleEquipement

--<private-static-properties>
local pairs = pairs
local select = select
local tostring = tostring
local wipe = table.wipe

local API_GetAuctionItemSubClasses = GetAuctionItemSubClasses
local API_GetInventoryItemID = GetInventoryItemID
local API_GetInventorySlotInfo = GetInventorySlotInfo
local API_GetItemInfo = GetItemInfo
local INVSLOT_AMMO = INVSLOT_AMMO
local INVSLOT_BACK = INVSLOT_BACK
local INVSLOT_BODY = INVSLOT_BODY
local INVSLOT_CHEST = INVSLOT_CHEST
local INVSLOT_FEET = INVSLOT_FEET
local INVSLOT_FINGER1 = INVSLOT_FINGER1
local INVSLOT_FINGER2 = INVSLOT_FINGER2
local INVSLOT_FIRST_EQUIPPED = INVSLOT_FIRST_EQUIPPED
local INVSLOT_HAND = INVSLOT_HAND
local INVSLOT_HEAD = INVSLOT_HEAD
local INVSLOT_LAST_EQUIPPED = INVSLOT_LAST_EQUIPPED
local INVSLOT_LEGS = INVSLOT_LEGS
local INVSLOT_MAINHAND = INVSLOT_MAINHAND
local INVSLOT_NECK = INVSLOT_NECK
local INVSLOT_OFFHAND = INVSLOT_OFFHAND
local INVSLOT_RANGED = INVSLOT_RANGED
local INVSLOT_SHOULDER = INVSLOT_SHOULDER
local INVSLOT_TABARD = INVSLOT_TABARD
local INVSLOT_TRINKET1 = INVSLOT_TRINKET1
local INVSLOT_TRINKET2 = INVSLOT_TRINKET2
local INVSLOT_WAIST = INVSLOT_WAIST
local INVSLOT_WRIST = INVSLOT_WRIST

-- item IDs of equipped items, indexed by slot ID
local self_equippedItems = {}
-- type of main-hand item equipped
local self_mainHandItemType
-- type of off-hand item equipped
local self_offHandItemType
-- count of equipped pieces of an armor set: self_armorSetCount[armorSetName] = equippedCount
local self_armorSetCount = {}

-- equipment slot names
local OVALE_SLOTNAME = {
	AmmoSlot = true,
	BackSlot = true,
	ChestSlot = true,
	FeetSlot = true,
	Finger0Slot = true,
	Finger1Slot = true,
	HandsSlot = true,
	HeadSlot = true,
	LegsSlot = true,
	MainHandSlot = true,
	NeckSlot = true,
	RangedSlot = true,
	SecondaryHandSlot = true,
	ShirtSlot = true,
	ShoulderSlot = true,
	TabardSlot = true,
	Trinket0Slot = true,
	Trinket1Slot = true,
	WaistSlot = true,
	WristSlot = true,
}
-- slots that can contain pieces from armor sets
local OVALE_ARMORSET_SLOT_IDS = { INVSLOT_CHEST, INVSLOT_HAND, INVSLOT_HEAD, INVSLOT_LEGS, INVSLOT_SHOULDER }
-- database of armor set items: OVALE_ARMORSET[itemId] = armorSetName
local OVALE_ARMORSET = {
	-- Death Knight
	[85314] = "T14_tank",
	[85315] = "T14_tank",
	[85316] = "T14_tank",
	[85317] = "T14_tank",
	[85318] = "T14_tank",
	[86654] = "T14_tank",
	[86655] = "T14_tank",
	[86656] = "T14_tank",
	[86657] = "T14_tank",
	[86658] = "T14_tank",
	[86918] = "T14_tank",
	[86919] = "T14_tank",
	[86920] = "T14_tank",
	[86921] = "T14_tank",
	[86922] = "T14_tank",
	[95225] = "T15_melee",
	[95226] = "T15_melee",
	[95227] = "T15_melee",
	[95228] = "T15_melee",
	[95229] = "T15_melee",
	[95230] = "T15_tank",
	[95231] = "T15_tank",
	[95232] = "T15_tank",
	[95233] = "T15_tank",
	[95234] = "T15_tank",
	[95825] = "T15_melee",
	[95826] = "T15_melee",
	[95827] = "T15_melee",
	[95828] = "T15_melee",
	[95829] = "T15_melee",
	[95830] = "T15_tank",
	[95831] = "T15_tank",
	[95832] = "T15_tank",
	[95833] = "T15_tank",
	[95834] = "T15_tank",
	[96569] = "T15_melee",
	[96570] = "T15_melee",
	[96571] = "T15_melee",
	[96572] = "T15_melee",
	[96573] = "T15_melee",
	[96574] = "T15_tank",
	[96575] = "T15_tank",
	[96576] = "T15_tank",
	[96577] = "T15_tank",
	[96578] = "T15_tank",
	-- Druid
	[60281] = "T11",
	[60281] = "T11_caster",
	[60282] = "T11",
	[60282] = "T11_caster",
	[60283] = "T11",
	[60283] = "T11_caster",
	[60284] = "T11",
	[60284] = "T11_caster",
	[60285] = "T11",
	[60285] = "T11_caster",
	[60286] = "T11",
	[60286] = "T11_melee",
	[60286] = "T11_tank",
	[60287] = "T11",
	[60287] = "T11_melee",
	[60287] = "T11_tank",
	[60288] = "T11",
	[60288] = "T11_melee",
	[60288] = "T11_tank",
	[60289] = "T11",
	[60289] = "T11_melee",
	[60289] = "T11_tank",
	[60290] = "T11",
	[60290] = "T11_melee",
	[60290] = "T11_tank",
	[65189] = "T11",
	[65189] = "T11_melee",
	[65189] = "T11_tank",
	[65190] = "T11",
	[65190] = "T11_melee",
	[65190] = "T11_tank",
	[65191] = "T11",
	[65191] = "T11_melee",
	[65191] = "T11_tank",
	[65192] = "T11",
	[65192] = "T11_melee",
	[65192] = "T11_tank",
	[65193] = "T11",
	[65193] = "T11_melee",
	[65193] = "T11_tank",
	[65199] = "T11",
	[65199] = "T11_caster",
	[65200] = "T11",
	[65200] = "T11_caster",
	[65201] = "T11",
	[65201] = "T11_caster",
	[65202] = "T11",
	[65202] = "T11_caster",
	[65203] = "T11",
	[65203] = "T11_caster",
	[77013] = "T13",
	[77013] = "T13_melee",
	[77013] = "T13_tank",
	[77014] = "T13",
	[77014] = "T13_melee",
	[77014] = "T13_tank",
	[77015] = "T13",
	[77015] = "T13_melee",
	[77015] = "T13_tank",
	[77016] = "T13",
	[77016] = "T13_melee",
	[77016] = "T13_tank",
	[77017] = "T13",
	[77017] = "T13_melee",
	[77017] = "T13_tank",
	[78665] = "T13",
	[78665] = "T13_melee",
	[78665] = "T13_tank",
	[78684] = "T13",
	[78684] = "T13_melee",
	[78684] = "T13_tank",
	[78694] = "T13",
	[78694] = "T13_melee",
	[78694] = "T13_tank",
	[78713] = "T13",
	[78713] = "T13_melee",
	[78713] = "T13_tank",
	[78743] = "T13",
	[78743] = "T13_melee",
	[78743] = "T13_tank",
	[78760] = "T13",
	[78760] = "T13_melee",
	[78760] = "T13_tank",
	[78779] = "T13",
	[78779] = "T13_melee",
	[78779] = "T13_tank",
	[78789] = "T13",
	[78789] = "T13_melee",
	[78789] = "T13_tank",
	[78808] = "T13",
	[78808] = "T13_melee",
	[78808] = "T13_tank",
	[78838] = "T13",
	[78838] = "T13_melee",
	[78838] = "T13_tank",
	[85304] = "T14_caster",
	[85305] = "T14_caster",
	[85306] = "T14_caster",
	[85307] = "T14_caster",
	[85308] = "T14_caster",
	[85309] = "T14_melee",
	[85310] = "T14_melee",
	[85311] = "T14_melee",
	[85312] = "T14_melee",
	[85313] = "T14_melee",
	[85354] = "T14_heal",
	[85355] = "T14_heal",
	[85356] = "T14_heal",
	[85357] = "T14_heal",
	[85358] = "T14_heal",
	[85379] = "T14_tank",
	[85380] = "T14_tank",
	[85381] = "T14_tank",
	[85382] = "T14_tank",
	[85383] = "T14_tank",
	[86644] = "T14_caster",
	[86645] = "T14_caster",
	[86646] = "T14_caster",
	[86647] = "T14_caster",
	[86648] = "T14_caster",
	[86649] = "T14_melee",
	[86650] = "T14_melee",
	[86651] = "T14_melee",
	[86652] = "T14_melee",
	[86653] = "T14_melee",
	[86694] = "T14_heal",
	[86695] = "T14_heal",
	[86696] = "T14_heal",
	[86697] = "T14_heal",
	[86698] = "T14_heal",
	[86719] = "T14_tank",
	[86720] = "T14_tank",
	[86721] = "T14_tank",
	[86722] = "T14_tank",
	[86723] = "T14_tank",
	[86923] = "T14_melee",
	[86924] = "T14_melee",
	[86925] = "T14_melee",
	[86926] = "T14_melee",
	[86927] = "T14_melee",
	[86928] = "T14_heal",
	[86929] = "T14_heal",
	[86930] = "T14_heal",
	[86931] = "T14_heal",
	[86932] = "T14_heal",
	[86933] = "T14_caster",
	[86934] = "T14_caster",
	[86935] = "T14_caster",
	[86936] = "T14_caster",
	[86937] = "T14_caster",
	[86938] = "T14_tank",
	[86939] = "T14_tank",
	[86940] = "T14_tank",
	[86941] = "T14_tank",
	[86942] = "T14_tank",
	[95235] = "T15_melee",
	[95236] = "T15_melee",
	[95237] = "T15_melee",
	[95238] = "T15_melee",
	[95239] = "T15_melee",
	[95245] = "T15_caster",
	[95246] = "T15_caster",
	[95247] = "T15_caster",
	[95248] = "T15_caster",
	[95249] = "T15_caster",
	[95250] = "T15_tank",
	[95251] = "T15_tank",
	[95252] = "T15_tank",
	[95253] = "T15_tank",
	[95254] = "T15_tank",
	[95835] = "T15_melee",
	[95836] = "T15_melee",
	[95837] = "T15_melee",
	[95838] = "T15_melee",
	[95839] = "T15_melee",
	[95845] = "T15_caster",
	[95846] = "T15_caster",
	[95847] = "T15_caster",
	[95848] = "T15_caster",
	[95849] = "T15_caster",
	[95850] = "T15_tank",
	[95851] = "T15_tank",
	[95852] = "T15_tank",
	[95853] = "T15_tank",
	[95854] = "T15_tank",
	[96579] = "T15_melee",
	[96580] = "T15_melee",
	[96581] = "T15_melee",
	[96582] = "T15_melee",
	[96583] = "T15_melee",
	[96589] = "T15_caster",
	[96590] = "T15_caster",
	[96591] = "T15_caster",
	[96592] = "T15_caster",
	[96593] = "T15_caster",
	[96594] = "T15_tank",
	[96595] = "T15_tank",
	[96596] = "T15_tank",
	[96597] = "T15_tank",
	[96598] = "T15_tank",
	-- Hunter
	[77028] = "T13",
	[77029] = "T13",
	[77030] = "T13",
	[77031] = "T13",
	[77032] = "T13",
	[78661] = "T13",
	[78674] = "T13",
	[78698] = "T13",
	[78709] = "T13",
	[78737] = "T13",
	[78756] = "T13",
	[78769] = "T13",
	[78793] = "T13",
	[78804] = "T13",
	[78832] = "T13",
	[85294] = "T14",
	[85295] = "T14",
	[85296] = "T14",
	[85297] = "T14",
	[85298] = "T14",
	[86634] = "T14",
	[86635] = "T14",
	[86636] = "T14",
	[86637] = "T14",
	[86638] = "T14",
	[87002] = "T14",
	[87003] = "T14",
	[87004] = "T14",
	[87005] = "T14",
	[87006] = "T14",
	[95255] = "T15",
	[95256] = "T15",
	[95257] = "T15",
	[95258] = "T15",
	[95259] = "T15",
	[95882] = "T15",
	[95883] = "T15",
	[95884] = "T15",
	[95885] = "T15",
	[95886] = "T15",
	[96626] = "T15",
	[96627] = "T15",
	[96628] = "T15",
	[96629] = "T15",
	[96630] = "T15",
	-- Mage
	[76212] = "T13",
	[76213] = "T13",
	[76214] = "T13",
	[76215] = "T13",
	[76216] = "T13",
	[78671] = "T13",
	[78701] = "T13",
	[78720] = "T13",
	[78729] = "T13",
	[78748] = "T13",
	[78766] = "T13",
	[78796] = "T13",
	[78815] = "T13",
	[78824] = "T13",
	[78843] = "T13",
	[85374] = "T14",
	[85375] = "T14",
	[85376] = "T14",
	[85377] = "T14",
	[85378] = "T14",
	[86714] = "T14",
	[86715] = "T14",
	[86716] = "T14",
	[86717] = "T14",
	[86718] = "T14",
	[87007] = "T14",
	[87008] = "T14",
	[87009] = "T14",
	[87010] = "T14",
	[87011] = "T14",
	[95260] = "T15",
	[95261] = "T15",
	[95262] = "T15",
	[95263] = "T15",
	[95264] = "T15",
	[95890] = "T15",
	[95891] = "T15",
	[95892] = "T15",
	[95893] = "T15",
	[95894] = "T15",
	[96634] = "T15",
	[96635] = "T15",
	[96636] = "T15",
	[96637] = "T15",
	[96638] = "T15",
	-- Monk
	[85394] = "T14_melee",
	[85395] = "T14_melee",
	[85396] = "T14_melee",
	[85397] = "T14_melee",
	[85398] = "T14_melee",
	[86734] = "T14_melee",
	[86735] = "T14_melee",
	[86736] = "T14_melee",
	[86737] = "T14_melee",
	[86738] = "T14_melee",
	[87084] = "T14_melee",
	[87085] = "T14_melee",
	[87086] = "T14_melee",
	[87087] = "T14_melee",
	[87088] = "T14_melee",
	[95270] = "T15_heal",
	[95271] = "T15_heal",
	[95272] = "T15_heal",
	[95273] = "T15_heal",
	[95274] = "T15_heal",
	[95275] = "T15_tank",
	[95276] = "T15_tank",
	[95277] = "T15_tank",
	[95278] = "T15_tank",
	[95279] = "T15_tank",
	[95900] = "T15_heal",
	[95901] = "T15_heal",
	[95902] = "T15_heal",
	[95903] = "T15_heal",
	[95904] = "T15_heal",
	[95905] = "T15_tank",
	[95906] = "T15_tank",
	[95907] = "T15_tank",
	[95908] = "T15_tank",
	[95909] = "T15_tank",
	[96644] = "T15_heal",
	[96645] = "T15_heal",
	[96646] = "T15_heal",
	[96647] = "T15_heal",
	[96648] = "T15_heal",
	[96649] = "T15_tank",
	[96650] = "T15_tank",
	[96651] = "T15_tank",
	[96652] = "T15_tank",
	[96653] = "T15_tank",
	-- Paladin
	[76874] = "T13",
	[76874] = "T13_melee",
	[76875] = "T13",
	[76875] = "T13_melee",
	[76876] = "T13",
	[76876] = "T13_melee",
	[76877] = "T13",
	[76877] = "T13_melee",
	[76878] = "T13",
	[76878] = "T13_melee",
	[78675] = "T13",
	[78675] = "T13_melee",
	[78693] = "T13",
	[78693] = "T13_melee",
	[78712] = "T13",
	[78712] = "T13_melee",
	[78727] = "T13",
	[78727] = "T13_melee",
	[78742] = "T13",
	[78742] = "T13_melee",
	[78770] = "T13",
	[78770] = "T13_melee",
	[78788] = "T13",
	[78788] = "T13_melee",
	[78807] = "T13",
	[78807] = "T13_melee",
	[78822] = "T13",
	[78822] = "T13_melee",
	[78837] = "T13",
	[78837] = "T13_melee",
	[85319] = "T14_tank",
	[85320] = "T14_tank",
	[85321] = "T14_tank",
	[85322] = "T14_tank",
	[85323] = "T14_tank",
	[85339] = "T14_melee",
	[85340] = "T14_melee",
	[85341] = "T14_melee",
	[85342] = "T14_melee",
	[85343] = "T14_melee",
	[85344] = "T14_heal",
	[85345] = "T14_heal",
	[85346] = "T14_heal",
	[85347] = "T14_heal",
	[85348] = "T14_heal",
	[86659] = "T14_tank",
	[86660] = "T14_tank",
	[86661] = "T14_tank",
	[86662] = "T14_tank",
	[86663] = "T14_tank",
	[86679] = "T14_melee",
	[86680] = "T14_melee",
	[86681] = "T14_melee",
	[86682] = "T14_melee",
	[86683] = "T14_melee",
	[86684] = "T14_heal",
	[86685] = "T14_heal",
	[86686] = "T14_heal",
	[86687] = "T14_heal",
	[86688] = "T14_heal",
	[87099] = "T14_melee",
	[87100] = "T14_melee",
	[87101] = "T14_melee",
	[87102] = "T14_melee",
	[87103] = "T14_melee",
	[87104] = "T14_heal",
	[87105] = "T14_heal",
	[87106] = "T14_heal",
	[87107] = "T14_heal",
	[87108] = "T14_heal",
	[87109] = "T14_tank",
	[87110] = "T14_tank",
	[87111] = "T14_tank",
	[87112] = "T14_tank",
	[87113] = "T14_tank",
	[95280] = "T15_melee",
	[95281] = "T15_melee",
	[95282] = "T15_melee",
	[95283] = "T15_melee",
	[95284] = "T15_melee",
	[95290] = "T15_tank",
	[95291] = "T15_tank",
	[95292] = "T15_tank",
	[95293] = "T15_tank",
	[95294] = "T15_tank",
	[95910] = "T15_melee",
	[95911] = "T15_melee",
	[95912] = "T15_melee",
	[95913] = "T15_melee",
	[95914] = "T15_melee",
	[95920] = "T15_tank",
	[95921] = "T15_tank",
	[95922] = "T15_tank",
	[95923] = "T15_tank",
	[95924] = "T15_tank",
	[96654] = "T15_melee",
	[96655] = "T15_melee",
	[96656] = "T15_melee",
	[96657] = "T15_melee",
	[96658] = "T15_melee",
	[96664] = "T15_tank",
	[96665] = "T15_tank",
	[96666] = "T15_tank",
	[96667] = "T15_tank",
	[96668] = "T15_tank",
	-- Priest
	[85359] = "T14_heal",
	[85360] = "T14_heal",
	[85361] = "T14_heal",
	[85362] = "T14_heal",
	[85363] = "T14_heal",
	[85364] = "T14_caster",
	[85365] = "T14_caster",
	[85366] = "T14_caster",
	[85367] = "T14_caster",
	[85368] = "T14_caster",
	[86699] = "T14_heal",
	[86700] = "T14_heal",
	[86701] = "T14_heal",
	[86702] = "T14_heal",
	[86703] = "T14_heal",
	[86704] = "T14_caster",
	[86705] = "T14_caster",
	[86706] = "T14_caster",
	[86707] = "T14_caster",
	[86708] = "T14_caster",
	[87114] = "T14_heal",
	[87115] = "T14_heal",
	[87116] = "T14_heal",
	[87117] = "T14_heal",
	[87118] = "T14_heal",
	[87119] = "T14_caster",
	[87120] = "T14_caster",
	[87121] = "T14_caster",
	[87122] = "T14_caster",
	[87123] = "T14_caster",
	-- Rogue
	[71045] = "T12",
	[71046] = "T12",
	[71047] = "T12",
	[71048] = "T12",
	[71049] = "T12",
	[71537] = "T12",
	[71538] = "T12",
	[71539] = "T12",
	[71540] = "T12",
	[71541] = "T12",
	[77023] = "T13",
	[77024] = "T13",
	[77025] = "T13",
	[77026] = "T13",
	[77027] = "T13",
	[78664] = "T13",
	[78679] = "T13",
	[78699] = "T13",
	[78708] = "T13",
	[78738] = "T13",
	[78759] = "T13",
	[78774] = "T13",
	[78794] = "T13",
	[78803] = "T13",
	[78833] = "T13",
	[85299] = "T14",
	[85300] = "T14",
	[85301] = "T14",
	[85302] = "T14",
	[85303] = "T14",
	[86639] = "T14",
	[86640] = "T14",
	[86641] = "T14",
	[86642] = "T14",
	[86643] = "T14",
	[87124] = "T14",
	[87125] = "T14",
	[87126] = "T14",
	[87127] = "T14",
	[87128] = "T14",
	[95305] = "T15",
	[95306] = "T15",
	[95307] = "T15",
	[95308] = "T15",
	[95309] = "T15",
	[95935] = "T15",
	[95936] = "T15",
	[95937] = "T15",
	[95938] = "T15",
	[95939] = "T15",
	[96679] = "T15",
	[96680] = "T15",
	[96681] = "T15",
	[96682] = "T15",
	[96683] = "T15",
	-- Shaman
	[71291] = "T12",
	[71291] = "T12_caster",
	[71292] = "T12",
	[71292] = "T12_caster",
	[71293] = "T12",
	[71293] = "T12_caster",
	[71294] = "T12",
	[71294] = "T12_caster",
	[71295] = "T12",
	[71295] = "T12_caster",
	[71552] = "T12",
	[71552] = "T12_caster",
	[71553] = "T12",
	[71553] = "T12_caster",
	[71554] = "T12",
	[71554] = "T12_caster",
	[71555] = "T12",
	[71555] = "T12_caster",
	[71556] = "T12",
	[71556] = "T12_caster",
	[76756] = "T13_heal",
	[76757] = "T13_heal",
	[76758] = "T13_heal",
	[76759] = "T13_heal",
	[76760] = "T13_heal",
	[77035] = "T13",
	[77035] = "T13_caster",
	[77036] = "T13",
	[77036] = "T13_caster",
	[77037] = "T13",
	[77037] = "T13_caster",
	[77038] = "T13",
	[77038] = "T13_caster",
	[77039] = "T13",
	[77039] = "T13_caster",
	[77040] = "T13",
	[77040] = "T13_melee",
	[77041] = "T13",
	[77041] = "T13_melee",
	[77042] = "T13",
	[77042] = "T13_melee",
	[77043] = "T13",
	[77043] = "T13_melee",
	[77044] = "T13",
	[77044] = "T13_melee",
	[78666] = "T13",
	[78666] = "T13_caster",
	[78667] = "T13",
	[78667] = "T13_melee",
	[78672] = "T13_heal",
	[78685] = "T13",
	[78685] = "T13_caster",
	[78686] = "T13",
	[78686] = "T13_melee",
	[78691] = "T13_heal",
	[78704] = "T13",
	[78704] = "T13_melee",
	[78711] = "T13",
	[78711] = "T13_caster",
	[78718] = "T13_heal",
	[78723] = "T13",
	[78723] = "T13_caster",
	[78724] = "T13",
	[78724] = "T13_melee",
	[78725] = "T13_heal",
	[78733] = "T13",
	[78733] = "T13_melee",
	[78739] = "T13_heal",
	[78741] = "T13",
	[78741] = "T13_caster",
	[78761] = "T13",
	[78761] = "T13_caster",
	[78762] = "T13",
	[78762] = "T13_melee",
	[78767] = "T13_heal",
	[78780] = "T13",
	[78780] = "T13_caster",
	[78781] = "T13",
	[78781] = "T13_melee",
	[78786] = "T13_heal",
	[78799] = "T13",
	[78799] = "T13_melee",
	[78806] = "T13",
	[78806] = "T13_caster",
	[78813] = "T13_heal",
	[78818] = "T13",
	[78818] = "T13_caster",
	[78819] = "T13",
	[78819] = "T13_melee",
	[78820] = "T13_heal",
	[78828] = "T13",
	[78828] = "T13_melee",
	[78834] = "T13_heal",
	[78836] = "T13",
	[78836] = "T13_caster",
	[95315] = "T15_melee",
	[95316] = "T15_melee",
	[95317] = "T15_melee",
	[95318] = "T15_melee",
	[95319] = "T15_melee",
	[95320] = "T15_caster",
	[95321] = "T15_caster",
	[95322] = "T15_caster",
	[95323] = "T15_caster",
	[95324] = "T15_caster",
	[95945] = "T15_melee",
	[95946] = "T15_melee",
	[95947] = "T15_melee",
	[95948] = "T15_melee",
	[95949] = "T15_melee",
	[95950] = "T15_caster",
	[95951] = "T15_caster",
	[95952] = "T15_caster",
	[95953] = "T15_caster",
	[95954] = "T15_caster",
	[96689] = "T15_melee",
	[96690] = "T15_melee",
	[96691] = "T15_melee",
	[96692] = "T15_melee",
	[96693] = "T15_melee",
	[96694] = "T15_caster",
	[96695] = "T15_caster",
	[96696] = "T15_caster",
	[96697] = "T15_caster",
	[96698] = "T15_caster",
	--Warlock
	[65248] = "T11",
	[65249] = "T11",
	[65250] = "T11",
	[65251] = "T11",
	[65252] = "T11",
	[65259] = "T11",
	[65260] = "T11",
	[65261] = "T11",
	[65262] = "T11",
	[65263] = "T11",
	[76339] = "T13",
	[76340] = "T13",
	[76341] = "T13",
	[76342] = "T13",
	[76343] = "T13",
	[78681] = "T13",
	[78702] = "T13",
	[78721] = "T13",
	[78730] = "T13",
	[78749] = "T13",
	[78776] = "T13",
	[78797] = "T13",
	[78816] = "T13",
	[78825] = "T13",
	[78844] = "T13",
	[85369] = "T14",
	[85370] = "T14",
	[85371] = "T14",
	[85372] = "T14",
	[85373] = "T14",
	[86709] = "T14",
	[86710] = "T14",
	[86711] = "T14",
	[86712] = "T14",
	[86713] = "T14",
	[87187] = "T14",
	[87188] = "T14",
	[87189] = "T14",
	[87190] = "T14",
	[87191] = "T14",
	[95325] = "T15",
	[95326] = "T15",
	[95327] = "T15",
	[95328] = "T15",
	[95329] = "T15",
	[95981] = "T15",
	[95982] = "T15",
	[95983] = "T15",
	[95984] = "T15",
	[95985] = "T15",
	[96725] = "T15",
	[96726] = "T15",
	[96727] = "T15",
	[96728] = "T15",
	[96729] = "T15",
	-- Warrior
	[60323] = "T11",
	[60323] = "T11_melee",
	[60324] = "T11",
	[60324] = "T11_melee",
	[60325] = "T11",
	[60325] = "T11_melee",
	[60326] = "T11",
	[60326] = "T11_melee",
	[60327] = "T11",
	[60327] = "T11_melee",
	[65264] = "T11",
	[65264] = "T11_melee",
	[65265] = "T11",
	[65265] = "T11_melee",
	[65266] = "T11",
	[65266] = "T11_melee",
	[65267] = "T11",
	[65267] = "T11_melee",
	[65268] = "T11",
	[65268] = "T11_melee",
	[71068] = "T12",
	[71068] = "T12_melee",
	[71069] = "T12",
	[71069] = "T12_melee",
	[71070] = "T12",
	[71070] = "T12_melee",
	[71071] = "T12",
	[71071] = "T12_melee",
	[71072] = "T12",
	[71072] = "T12_melee",
	[71599] = "T12",
	[71599] = "T12_melee",
	[71600] = "T12",
	[71600] = "T12_melee",
	[71601] = "T12",
	[71601] = "T12_melee",
	[71602] = "T12",
	[71602] = "T12_melee",
	[71603] = "T12",
	[71603] = "T12_melee",
	[76983] = "T13",
	[76983] = "T13_melee",
	[76984] = "T13",
	[76984] = "T13_melee",
	[76985] = "T13",
	[76985] = "T13_melee",
	[76986] = "T13",
	[76986] = "T13_melee",
	[76987] = "T13",
	[76987] = "T13_melee",
	[78657] = "T13",
	[78657] = "T13_melee",
	[78668] = "T13",
	[78668] = "T13_melee",
	[78688] = "T13",
	[78688] = "T13_melee",
	[78706] = "T13",
	[78706] = "T13_melee",
	[78735] = "T13",
	[78735] = "T13_melee",
	[78752] = "T13",
	[78752] = "T13_melee",
	[78763] = "T13",
	[78763] = "T13_melee",
	[78783] = "T13",
	[78783] = "T13_melee",
	[78801] = "T13",
	[78801] = "T13_melee",
	[78830] = "T13",
	[78830] = "T13_melee",
	[85324] = "T14_tank",
	[85325] = "T14_tank",
	[85326] = "T14_tank",
	[85327] = "T14_tank",
	[85328] = "T14_tank",
	[85329] = "T14_melee",
	[85330] = "T14_melee",
	[85331] = "T14_melee",
	[85332] = "T14_melee",
	[85333] = "T14_melee",
	[86664] = "T14_tank",
	[86665] = "T14_tank",
	[86666] = "T14_tank",
	[86667] = "T14_tank",
	[86668] = "T14_tank",
	[86669] = "T14_melee",
	[86670] = "T14_melee",
	[86671] = "T14_melee",
	[86672] = "T14_melee",
	[86673] = "T14_melee",
	[87192] = "T14_melee",
	[87193] = "T14_melee",
	[87194] = "T14_melee",
	[87195] = "T14_melee",
	[87196] = "T14_melee",
	[87197] = "T14_tank",
	[87198] = "T14_tank",
	[87199] = "T14_tank",
	[87200] = "T14_tank",
	[87201] = "T14_tank",
	[95330] = "T15_melee",
	[95331] = "T15_melee",
	[95332] = "T15_melee",
	[95333] = "T15_melee",
	[95334] = "T15_melee",
	[95986] = "T15_melee",
	[95987] = "T15_melee",
	[95988] = "T15_melee",
	[95989] = "T15_melee",
	[95990] = "T15_melee",
	[96730] = "T15_melee",
	[96731] = "T15_melee",
	[96732] = "T15_melee",
	[96733] = "T15_melee",
	[96734] = "T15_melee",
}

local OVALE_WEAPON_CLASS = {}
do
	OVALE_WEAPON_CLASS[1],	-- "One-Handed Axes"
	OVALE_WEAPON_CLASS[2],	-- "Two-Handed Axes"
	OVALE_WEAPON_CLASS[3],	-- "Bows"
	OVALE_WEAPON_CLASS[4],	-- "Guns"
	OVALE_WEAPON_CLASS[5],	-- "One-Handed Maces"
	OVALE_WEAPON_CLASS[6],	-- "Two-Handed Maces"
	OVALE_WEAPON_CLASS[7],	-- "Polearms"
	OVALE_WEAPON_CLASS[8],	-- "One-Handed Swords"
	OVALE_WEAPON_CLASS[9],	-- "Two-Handed Swords"
	OVALE_WEAPON_CLASS[10],	-- "Staves"
	OVALE_WEAPON_CLASS[11],	-- "Fist Weapons"
	OVALE_WEAPON_CLASS[12],	-- "Miscellaneous"
	OVALE_WEAPON_CLASS[13],	-- "Daggers"
	OVALE_WEAPON_CLASS[14],	-- "Thrown"
	OVALE_WEAPON_CLASS[15],	-- "Crossbows"
	OVALE_WEAPON_CLASS[16],	-- "Wands"
	OVALE_WEAPON_CLASS[17] = API_GetAuctionItemSubClasses(1)	-- "Fishing Poles"
end

-- Normalized weapon attack speeds (http://www.wowpedia.org/Normalization)
local OVALE_NORMALIZED_WEAPON_SPEED = {
	[OVALE_WEAPON_CLASS[1]]  = 2.4,
	[OVALE_WEAPON_CLASS[2]]  = 3.3,
	[OVALE_WEAPON_CLASS[3]]  = 2.8,
	[OVALE_WEAPON_CLASS[4]]  = 2.8,
	[OVALE_WEAPON_CLASS[5]]  = 2.4,
	[OVALE_WEAPON_CLASS[6]]  = 3.3,
	[OVALE_WEAPON_CLASS[7]]  = 3.3,
	[OVALE_WEAPON_CLASS[8]]  = 2.4,
	[OVALE_WEAPON_CLASS[9]]  = 3.3,
	[OVALE_WEAPON_CLASS[10]] = 3.3,
	[OVALE_WEAPON_CLASS[11]] = 2.4,
	[OVALE_WEAPON_CLASS[12]] = 2.4, -- ??
	[OVALE_WEAPON_CLASS[13]] = 1.7,
	[OVALE_WEAPON_CLASS[14]] = 1.7, -- ??
	[OVALE_WEAPON_CLASS[15]] = 2.8,
	[OVALE_WEAPON_CLASS[16]] = 2.4,
	[OVALE_WEAPON_CLASS[17]] = 3.3,
}
--</private-static-properties>

--<public-static-properties>
-- Normalized weapon speeds for equipped mainhand and offhand weapons.
OvaleEquipement.mainHandWeaponSpeed = nil
OvaleEquipement.offHandWeaponSpeed = nil
--</public-static-properties>

--<private-static-methods>
local function GetEquippedItemType(slotId)
	local itemId = OvaleEquipement:GetEquippedItem(slotId)
	if itemId then
		local inventoryType = select(9, API_GetItemInfo(itemId))
		return inventoryType
	end
end

local function GetNormalizedWeaponSpeed(slotId)
	if slotId == INVSLOT_MAINHAND or slotId == INVSLOT_OFFHAND then
		local itemId = OvaleEquipement:GetEquippedItem(slotId)
		if itemId then
			local weaponClass = select(7, API_GetItemInfo(itemId))
			return OVALE_NORMALIZED_WEAPON_SPEED[weaponClass]
		end
	end
end
--</private-static-methods>

--<public-static-methods>
function OvaleEquipement:OnEnable()
	self:RegisterEvent("PLAYER_ENTERING_WORLD", "UpdateEquippedItems")
	self:RegisterEvent("PLAYER_ALIVE", "UpdateEquippedItems")
	self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
end

function OvaleEquipement:OnDisable()
	self:UnregisterEvent("PLAYER_ENTERING_WORLD")
	self:UnregisterEvent("PLAYER_ALIVE")
	self:UnregisterEvent("PLAYER_EQUIPMENT_CHANGED")
end

function OvaleEquipement:PLAYER_EQUIPMENT_CHANGED(event, slotId, hasItem)
	if hasItem then
		self_equippedItems[slotId] = API_GetInventoryItemID("player", slotId)
		if slotId == INVSLOT_MAINHAND then
			self_mainHandItemType = GetEquippedItemType(slotId)
			self.mainHandWeaponSpeed = self:HasMainHandWeapon() and GetNormalizedWeaponSpeed(INVSLOT_MAINHAND)
		elseif slotId == INVSLOT_OFFHAND then
			self_offHandItemType = GetEquippedItemType(slotId)
			self.offHandWeaponSpeed = self:HasOffHandWeapon() and GetNormalizedWeaponSpeed(INVSLOT_OFFHAND)
		end
	else
		self_equippedItems[slotId] = nil
		if slotId == INVSLOT_MAINHAND then
			self_mainHandItemType = nil
		elseif slotId == INVSLOT_OFFHAND then
			self_offHandItemType = nil
		end
	end

	self:UpdateArmorSetCount()
	self:SendMessage("Ovale_EquipmentChanged")
end

function OvaleEquipement:GetArmorSetCount(name)
	if not self_armorSetCount[name] then
		return 0
	else
		return self_armorSetCount[name]
	end
end

function OvaleEquipement:GetEquippedItem(slotId)
	if type(slotId) ~= "number" then
		if not OVALE_SLOTNAME[slotId] then return nil end
		slotId = API_GetInventorySlotInfo(slotId)
		if not slotId then return nil end
	end
	return self_equippedItems[slotId]
end

function OvaleEquipement:HasMainHandWeapon()
	return self_mainHandItemType == "INVTYPE_WEAPON"
		or self_mainHandItemType == "INVTYPE_WEAPONMAINHAND"
		or self_mainHandItemType == "INVTYPE_2HWEAPON"
end

function OvaleEquipement:HasOffHandWeapon()
	return self_offHandItemType == "INVTYPE_WEAPON"
		or self_offHandItemType == "INVTYPE_WEAPONOFFHAND"
end

function OvaleEquipement:HasShield()
	return self_offHandItemType == "INVTYPE_SHIELD"
end

function OvaleEquipement:HasTrinket(itemId)
	return self:GetEquippedItem(INVSLOT_TRINKET1) == itemId
		or self:GetEquippedItem(INVSLOT_TRINKET2) == itemId
end

function OvaleEquipement:HasTwoHandedWeapon()
	return self_mainHandItemType == "INVTYPE_2HWEAPON"
end

function OvaleEquipement:HasOneHandedWeapon()
	return self_mainHandItemType == "INVTYPE_WEAPON"
		or self_mainHandItemType == "INVTYPE_WEAPONMAINHAND"
end

function OvaleEquipement:UpdateArmorSetCount()
	wipe(self_armorSetCount)
	for i = 1, #OVALE_ARMORSET_SLOT_IDS do
		local itemId = self:GetEquippedItem(OVALE_ARMORSET_SLOT_IDS[i])
		if itemId then
			local name = OVALE_ARMORSET[itemId]
			if name then
				if not self_armorSetCount[name] then
					self_armorSetCount[name] = 1
				else
					self_armorSetCount[name] = self_armorSetCount[name] + 1
				end
			end
		end
	end	
end

function OvaleEquipement:UpdateEquippedItems()
	local changed = false
	local item
	for slotId = INVSLOT_FIRST_EQUIPPED, INVSLOT_LAST_EQUIPPED do
		item = API_GetInventoryItemID("player", slotId)
		if item ~= self_equippedItems[slotId] then
			self_equippedItems[slotId] = item
			changed = true
		end
	end
	self_mainHandItemType = GetEquippedItemType(INVSLOT_MAINHAND)
	self_offHandItemType = GetEquippedItemType(INVSLOT_OFFHAND)
	self.mainHandWeaponSpeed = self:HasMainHandWeapon() and GetNormalizedWeaponSpeed(INVSLOT_MAINHAND)
	self.offHandWeaponSpeed = self:HasOffHandWeapon() and GetNormalizedWeaponSpeed(INVSLOT_OFFHAND)

	if changed then
		self:UpdateArmorSetCount()
		self:SendMessage("Ovale_EquipmentChanged")
	end
end

function OvaleEquipement:Debug()
	for slotId = INVSLOT_FIRST_EQUIPPED, INVSLOT_LAST_EQUIPPED do
		Ovale:FormatPrint("Slot %d = %s", slotId, self:GetEquippedItem(slotId))
	end
	Ovale:FormatPrint("Main-hand item type: %s", self_mainHandItemType)
	Ovale:FormatPrint("Off-hand item type: %s", self_offHandItemType)
	for k, v in pairs(self_armorSetCount) do
		Ovale:FormatPrint("Player has %d piece(s) of %s armor set.", v, k)
	end
end
--</public-static-methods>
