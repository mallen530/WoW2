local _, Ovale = ...
local OvaleScripts = Ovale:GetModule("OvaleScripts")

local code = [[
Define(avatar 107574)
  SpellInfo(avatar duration=24 cd=180 )
  SpellAddBuff(avatar avatar=1)
Define(battle_shout 6673)
  SpellInfo(battle_shout duration=300 cd=60 )
  SpellAddBuff(battle_shout battle_shout=1)
Define(battle_stance 2457)
  SpellInfo(battle_stance cd=3 )
Define(berserker_rage 18499)
  SpellInfo(berserker_rage duration=6 cd=30 )
  SpellAddBuff(berserker_rage berserker_rage=1)
Define(bladestorm 46924)
  SpellInfo(bladestorm duration=6 cd=90 )
  SpellAddBuff(bladestorm bladestorm=1)
Define(bloodbath 113344)
  SpellInfo(bloodbath duration=6 tick=1 )
  SpellAddTargetDebuff(bloodbath bloodbath=1)
Define(bloodsurge 46916)
  SpellInfo(bloodsurge duration=10)
Define(bloodthirst 23881)
  SpellInfo(bloodthirst rage=-10 cd=4.5 )
Define(cleave 845)
  SpellInfo(cleave rage=30 cd=1.5 )
Define(colossus_smash 86346)
  SpellInfo(colossus_smash duration=6.5 cd=20 )
  SpellAddTargetDebuff(colossus_smash colossus_smash=1)
Define(defensive_stance 71)
  SpellInfo(defensive_stance cd=3 )
Define(demoralizing_shout 1160)
  SpellInfo(demoralizing_shout duration=10 cd=60 )
  SpellAddTargetDebuff(demoralizing_shout demoralizing_shout=1)
Define(devastate 20243)
Define(dragon_roar 118000)
  SpellInfo(dragon_roar cd=60 )
Define(enrage 5229)
  SpellInfo(enrage duration=10 rage=-20 cd=60 )
  SpellAddBuff(enrage enrage=1)
Define(execute 5308)
  SpellInfo(execute rage=30 )
Define(heroic_leap 6544)
  SpellInfo(heroic_leap duration=1 cd=45 )
  AddCheckBox(heroic_leap_check SpellName(heroic_leap))
Define(heroic_strike 78)
  SpellInfo(heroic_strike rage=30 cd=1.5 )
Define(heroic_throw 57755)
  SpellInfo(heroic_throw cd=30 )
Define(impending_victory 103840)
  SpellInfo(impending_victory rage=10 cd=30 )
Define(last_stand 12975)
  SpellInfo(last_stand duration=20 cd=180 )
  SpellAddBuff(last_stand last_stand=1)
Define(meat_cleaver 85739)
  SpellInfo(meat_cleaver duration=10 )
  SpellAddBuff(meat_cleaver meat_cleaver=1)
Define(mortal_strike 12294)
  SpellInfo(mortal_strike duration=10 rage=-10 cd=6 )
  SpellAddTargetDebuff(mortal_strike mortal_wounds=1)
Define(overpower 7384)
  SpellInfo(overpower rage=10 )
  SpellAddBuff(overpower taste_for_blood=-1)
Define(pummel 6552)
  SpellInfo(pummel duration=4 cd=15 )
Define(raging_blow 85288)
  SpellInfo(raging_blow rage=10 )
  SpellAddBuff(raging_blow raging_blow_aura=-1)
Define(raging_blow_aura 131116)
  SpellInfo(raging_blow_aura duration=12 )
  SpellAddBuff(raging_blow_aura raging_blow_aura=1)
Define(recklessness 1719)
  SpellInfo(recklessness duration=12 cd=180 )
  SpellAddBuff(recklessness recklessness=1)
Define(revenge 6572)
  SpellInfo(revenge rage=-15 cd=9 )
Define(shield_barrier 112048)
  SpellInfo(shield_barrier duration=6 rage=20 cd=1.5 )
  SpellAddBuff(shield_barrier shield_barrier=1)
Define(shield_block 2565)
  SpellInfo(shield_block rage=60 cd=1.5 )
  SpellAddTargetDebuff(shield_block shield_block_aura=1)
Define(shield_block_aura 132404)
  SpellInfo(shield_block_aura duration=6 )
  SpellAddBuff(shield_block_aura shield_block_aura=1)
Define(shield_slam 23922)
  SpellInfo(shield_slam rage=-20 cd=6 )
Define(shield_wall 871)
  SpellInfo(shield_wall duration=12 cd=300 )
  SpellAddBuff(shield_wall shield_wall=1)
Define(shockwave 46968)
  SpellInfo(shockwave cd=40 )
  SpellAddBuff(shockwave shockwave=1)
Define(skull_banner 114207)
  SpellInfo(skull_banner duration=10 cd=180 )
Define(slam 1464)
  SpellInfo(slam rage=20 )
Define(storm_bolt 107570)
  SpellInfo(storm_bolt cd=30 )
  SpellAddBuff(storm_bolt storm_bolt=1)
Define(sudden_execute 139958)
  SpellInfo(sudden_execute duration=10 )
  SpellAddBuff(sudden_execute sudden_execute=1)
Define(sunder_armor 7386)
  SpellInfo(sunder_armor rage=15 )
  SpellAddTargetDebuff(sunder_armor weakened_armor=1)
  AddCheckBox(sunder_armor_check SpellName(sunder_armor))
Define(sweeping_strikes 12328)
  SpellInfo(sweeping_strikes duration=10 rage=30 cd=10 )
  SpellAddBuff(sweeping_strikes sweeping_strikes=1)
Define(taste_for_blood 56636)
Define(thunder_clap 6343)
  SpellInfo(thunder_clap rage=20 cd=6 )
  SpellAddTargetDebuff(thunder_clap weakened_blows=1)
Define(ultimatum 122510)
  SpellInfo(ultimatum duration=10 )
  SpellAddBuff(ultimatum ultimatum=1)
Define(weakened_armor 113746)
  SpellInfo(weakened_armor duration=30 )
  SpellAddBuff(weakened_armor weakened_armor=1)
Define(weakened_blows 115798)
  SpellInfo(weakened_blows duration=30 )
  SpellAddBuff(weakened_blows weakened_blows=1)
Define(whirlwind 1680)
  SpellInfo(whirlwind rage=30 )
Define(wild_strike 100130)
  SpellInfo(wild_strike rage=30 )
  SpellAddBuff(wild_strike bloodsurge=-1)
  SpellAddTargetDebuff(wild_strike wild_strike=1)
Define(avatar_talent 16)
Define(bloodbath_talent 17)
Define(dragon_roar_talent 12)
Define(impending_victory_talent 6)
Define(shockwave_talent 11)
Define(storm_bolt_talent 18)
AddCheckBox(showwait L(showwait) default)
AddIcon mastery=1 help=main
{
	if not InCombat() 
	{
		unless Stance(1) Spell(battle_stance)
	}
	if target.DebuffStacks(weakened_armor any=1) <3 or target.DebuffRemains(weakened_armor any=1) <3 if CheckBoxOn(sunder_armor_check) Spell(sunder_armor)
	Spell(mortal_strike)
	if TalentPoints(dragon_roar_talent) and TalentPoints(bloodbath_talent) and BuffPresent(bloodbath) and target.DebuffExpires(colossus_smash) and target.HealthPercent() >=20 Spell(dragon_roar)
	if TalentPoints(storm_bolt_talent) and target.DebuffPresent(colossus_smash) Spell(storm_bolt)
	if target.DebuffRemains(colossus_smash) <1 Spell(colossus_smash)
	if target.DebuffPresent(colossus_smash) or BuffPresent(recklessness) or Rage() >=Rage() -25 if target.HealthPercent(less 20) Spell(execute)
	if TalentPoints(dragon_roar_talent) and {TalentPoints(bloodbath_talent) and BuffPresent(bloodbath) and target.HealthPercent() >=20 } or {target.DebuffExpires(colossus_smash) and target.HealthPercent() <20 } Spell(dragon_roar)
	if target.DebuffPresent(colossus_smash) and {target.DebuffRemains(colossus_smash) <1 or BuffPresent(recklessness) } and target.HealthPercent() >=20 Spell(slam)
	if BuffStacks(taste_for_blood) >=3 and target.HealthPercent() >=20 Spell(overpower usable=1)
	if target.DebuffPresent(colossus_smash) and target.DebuffRemains(colossus_smash) <2.5 and target.HealthPercent() >=20 Spell(slam)
	if BuffExpires(sudden_execute) if target.HealthPercent(less 20) Spell(execute)
	if target.HealthPercent() >=20 or BuffPresent(sudden_execute) Spell(overpower usable=1)
	if Rage() >=40 and target.HealthPercent() >=20 Spell(slam)
	Spell(battle_shout)
	Spell(heroic_throw)
}
AddIcon mastery=1 help=offgcd
{
	if target.IsInterruptible() Spell(pummel)
	if TalentPoints(bloodbath_talent) and {target.DeadIn() <=18 or BuffPresent(recklessness) or target.DeadIn() >=75 } Spell(bloodbath)
	if BuffExpires(enrage) and Rage() <=Rage() -10 Spell(berserker_rage)
	if target.DebuffPresent(colossus_smash) if CheckBoxOn(heroic_leap_check) Spell(heroic_leap)
	if {target.DebuffPresent(colossus_smash) and Rage() >=Rage() -40 and target.HealthPercent() >=20 } or Rage() >=Rage() -15 Spell(heroic_strike)
}
AddIcon mastery=1 help=aoe
{
	
	Spell(dragon_roar)
	Spell(shockwave)
	Spell(whirlwind)
	Spell(sweeping_strikes)
	if Rage() >=90 Spell(cleave)
	Spell(bloodthirst)

}
AddIcon mastery=1 help=cd
{
	if target.DeadIn() <=18 or {{target.DeadIn() >=186 or {target.HealthPercent() <20 and {target.DebuffRemains(colossus_smash) >=5 or SpellCooldown(colossus_smash) <=1.5 } } } and {not TalentPoints(bloodbath_talent) or not SpellCooldown(bloodbath) } } Spell(recklessness)
	if TalentPoints(avatar_talent) and {BuffPresent(recklessness) or target.DeadIn() <=25 } Spell(avatar)
	if BuffPresent(recklessness) Spell(skull_banner)
	if TalentPoints(bloodbath_talent) and BuffPresent(bloodbath)  { Item(Trinket0Slot usable=1) Item(Trinket1Slot usable=1) } 
}
AddIcon mastery=2 help=main
{
	if not InCombat() 
	{
		unless Stance(1) Spell(battle_stance)
	}
	if target.DebuffStacks(weakened_armor any=1) <3 or target.DebuffRemains(weakened_armor any=1) <3 if CheckBoxOn(sunder_armor_check) Spell(sunder_armor)
	if BuffStacks(raging_blow_aura) ==2 and target.DebuffPresent(colossus_smash) and target.HealthPercent() >=20 Spell(raging_blow)
	if not {target.HealthPercent() <20 and target.DebuffPresent(colossus_smash) and Rage() >=30 } Spell(bloodthirst)
	if BuffStacks(bloodsurge) and target.HealthPercent() >=20 and SpellCooldown(bloodthirst) <=1 Spell(wild_strike)
	if not {target.HealthPercent() <20 and target.DebuffPresent(colossus_smash) and Rage() >=30 } and SpellCooldown(bloodthirst) <=1 and SpellCooldown(bloodthirst) if CheckBoxOn(showwait) Texture(Spell_nature_timestop) 
	if TalentPoints(dragon_roar_talent) and {not target.DebuffPresent(colossus_smash) and {BuffPresent(bloodbath) or not TalentPoints(bloodbath_talent) } } Spell(dragon_roar)
	Spell(colossus_smash)
	if BuffPresent(enrage) or target.DebuffPresent(colossus_smash) or Rage() >90 or target.DeadIn() <12 or BuffPresent(recklessness) if target.HealthPercent(less 20) Spell(execute)
	if TalentPoints(storm_bolt_talent) Spell(storm_bolt)
	if BuffStacks(raging_blow_aura) ==2 or {BuffPresent(raging_blow_aura) and {target.DebuffPresent(colossus_smash) or SpellCooldown(colossus_smash) >=3 or {SpellCooldown(bloodthirst) >=1 and BuffRemains(raging_blow_aura) <=3 } } } Spell(raging_blow)
	if BuffStacks(bloodsurge) Spell(wild_strike)
	if TalentPoints(shockwave_talent) Spell(shockwave)
	if target.DebuffExpires(colossus_smash) Spell(heroic_throw)
	if Rage() <70 and not target.DebuffPresent(colossus_smash) Spell(battle_shout)
	if target.DebuffPresent(colossus_smash) and target.HealthPercent() >=20 Spell(wild_strike)
	if TalentPoints(impending_victory_talent) and target.HealthPercent() >=20 Spell(impending_victory)
	if SpellCooldown(colossus_smash) >=2 and Rage() >=80 and target.HealthPercent() >=20 Spell(wild_strike)
	if Rage() <70 Spell(battle_shout)
}
AddIcon mastery=2 help=offgcd
{
	if target.IsInterruptible() Spell(pummel)
	if TalentPoints(bloodbath_talent) and {SpellCooldown(colossus_smash) <2 or target.DebuffRemains(colossus_smash) >=5 or target.DeadIn() <=20 } Spell(bloodbath)
	if not {BuffStacks(enrage) or {BuffStacks(raging_blow_aura) ==2 and target.HealthPercent() >=20 } } or {BuffRemains(recklessness) >=10 and not BuffStacks(raging_blow_aura) } Spell(berserker_rage)
	if target.DebuffPresent(colossus_smash) if CheckBoxOn(heroic_leap_check) Spell(heroic_leap)
	if {{target.DebuffPresent(colossus_smash) and Rage() >=40 } and target.HealthPercent() >=20 } or Rage() >=110 Spell(heroic_strike)
}
AddIcon mastery=2 help=aoe
{
	
	Spell(dragon_roar)
	Spell(shockwave)
	if BuffStacks(meat_cleaver) and BuffStacks(raging_blow_aura) Spell(raging_blow)
	Spell(whirlwind)
	if Rage() >=90 Spell(cleave)
	Spell(bloodthirst)

}
AddIcon mastery=2 help=cd
{
	if {TalentPoints(avatar_talent) and {SpellCooldown(colossus_smash) <2 or target.DebuffRemains(colossus_smash) >=5 } } or {TalentPoints(bloodbath_talent) and {BuffPresent(bloodbath) and {target.DeadIn() >192 or target.HealthPercent() <20 } } } or target.DeadIn() <=12 Spell(recklessness)
	if BuffPresent(recklessness) and TalentPoints(avatar_talent) Spell(avatar)
	if BuffPresent(recklessness) Spell(skull_banner)
	if {not TalentPoints(bloodbath_talent) and target.DebuffPresent(colossus_smash) } or {TalentPoints(bloodbath_talent) and BuffPresent(bloodbath) }  { Item(Trinket0Slot usable=1) Item(Trinket1Slot usable=1) } 
}
AddIcon mastery=3 help=main
{
	if not InCombat() 
	{
		unless Stance(2) Spell(defensive_stance)
	}
	if Rage() <80 Spell(shield_slam)
	if Rage() <85 Spell(revenge)
	if Rage() <90 Spell(battle_shout)
	if target.DebuffExpires(weakened_blows) Spell(thunder_clap)
	if target.HealthPercent(less 20) Spell(execute)
	Spell(devastate)
}
AddIcon mastery=3 help=offgcd
{
	if target.IsInterruptible() Spell(pummel)
	if {BuffPresent(ultimatum) and target.HealthPercent() >=20 } Spell(heroic_strike)
	if Rage() <90 Spell(berserker_rage)
	if BuffExpires(shield_block_aura) Spell(shield_block)
	if BuffExpires(shield_barrier) and Rage() >80 Spell(shield_barrier)
	Spell(demoralizing_shout)
}
AddIcon mastery=3 help=aoe
{
	
	Spell(dragon_roar)
	Spell(shockwave)
	Spell(thunder_clap)
	if BuffPresent(ultimatum) Spell(cleave)
	if Rage() >=90 Spell(cleave)
	Spell(shield_slam)

}
AddIcon mastery=3 help=cd
{
	if Health() <130000 Spell(last_stand)
	if TalentPoints(avatar_talent) Spell(avatar)
	Spell(recklessness)
	if BuffExpires(shield_block_aura) Spell(shield_wall)
	 { Item(Trinket0Slot usable=1) Item(Trinket1Slot usable=1) } 
}
]]

OvaleScripts:RegisterScript("WARRIOR", "Ovale", "[5.2] Ovale: Arms, Fury, Protection", code)
