
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("ShatteredSunOffensive", --UniqueTag (no whitespace)
                                  "Shattered Sun Offensive", --enUS faction name
                                  "SSO", --enUS faction abbreviation
                                  "BurningCrusade", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Shield_48")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Vindicator Xayann","Isle of Quel'danas",47,30)
faction:AddNPC("Captain Theris Dawnhearth","Isle of Quel'danas",47,30)
faction:AddNPC("Magistrix Seyla","Hellfire Peninsula",58,17)
faction:AddNPC("Emissary Mordin","Shattrath City",62,35)
faction:AddNPC("Lord Torvos","Shattrath City",62,35)
faction:AddNPC("Harbinger Haronem","Shattrath City",61,52)
faction:AddNPC("Exarch Nasuun","Shattrath City",49,42)
faction:AddNPC("Harbinger Inuuro","Isle of Quel'danas",47,35)
faction:AddNPC("Battlemage Arynna","Isle of Quel'danas",47,35)
faction:AddNPC("Astromancer Darnarian","Isle of Quel'danas",47,35)
faction:AddNPC("Vindicator Kaalan","Isle of Quel'danas",50,38)
faction:AddNPC("Magister Ilastar","Isle of Quel'danas",49,40)
faction:AddNPC("Smith Hauthaa","Isle of Quel'danas",50,40)
faction:AddNPC("Mar'nah","Isle of Quel'danas",51,32)
faction:AddNPC("Captain Valindria","Isle of Quel'danas",53,34)
faction:AddNPC("Anchorite Ayuri","Isle of Quel'danas",48,36)


--Quests
--  quest = faction:AddQuest(tag,englishName,baseRep,minLevel,stackable) - returns a "quest" object
--  faction:EndRow() - ends a horizontal row of quest buttons.  If you have a quest, you need at least one of these.

--  quest:AddAlternateName(name) - for multiple identical quests with different names (see ShatteredSunOffensive)
--  quest:SetIcon(iconPath)
--  quest:AddRepRequirement(factionTag,minLevel,maxLevel,minExact,maxExact) - levels are 1-8, exact values are -42000 to 42000
--  quest:AddQuestAccepter(englishName,index) - must be an NPC set up in the Quest NPCs section above
--                                              index is optional and should only be used if you have multiple NPCs with the same englishName
--  quest:AddGoldObjective(amount) - amount is in copper
--  quest:AddItemObjective(englishName,itemID,count,shareable) - shareable means you can trade it between your alts
--  quest:AddOtherObjective(objectiveIndex,text,count) - objectiveIndex is 1-based index of this quest objective in the quest log
--                                                       text is the quest text from the quest log, minus any " : #/#" at the end
--                                                       count is zero if no listed count in the log, or the max number needed
--  quest:AddExtraInfo(text) - generic text string that will get displayed on this quest's tooltip
local quest

quest = faction:AddQuest("ErraticBehavior","Erratic Behavior",150,68,false)
quest:AddAlternateName("Further Conversions")
quest:SetIcon("Interface\\Icons\\INV_Misc_Gem_Variety_02")
quest:AddQuestAccepter("Vindicator Xayann")
quest:AddOtherObjective(1,"Converted Sentry Deployed",5)


quest = faction:AddQuest("SanctumWards","The Sanctum Wards",150,68,false)
quest:AddAlternateName("Arm the Wards!")
quest:SetIcon("Interface\\Icons\\INV_Misc_Dust_03")
quest:AddQuestAccepter("Captain Theris Dawnhearth")
quest:AddOtherObjective(1,"Energize a Crystal Ward",0)


quest = faction:AddQuest("BlasttheGateway","Blast the Gateway",250,68,false)
quest:SetIcon("Interface\\Icons\\INV_Ammo_FireTar")
quest:AddQuestAccepter("Magistrix Seyla")
quest:AddOtherObjective(1,"Legion Gateway Destroyed",0)


quest = faction:AddQuest("BloodforBlood","Blood for Blood",250,68,false)
quest:SetIcon("Interface\\Icons\\Spell_Shadow_LifeDrain")
quest:AddQuestAccepter("Magistrix Seyla")
quest:AddOtherObjective(1,"Emaciated Felblood slain",4)


faction:EndRow()
quest = faction:AddQuest("GainingtheAdvantage","Gaining the Advantage",250,68,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Dust_03")
quest:AddQuestAccepter("Emissary Mordin")
quest:AddItemObjective("Nether Residue",35229,8,false)


quest = faction:AddQuest("SunfuryAttackPlans","Sunfury Attack Plans",250,68,false)
quest:SetIcon("Interface\\Icons\\INV_Scroll_04")
quest:AddQuestAccepter("Lord Torvos")
quest:AddItemObjective("Sunfury Attack Plans",35231,1,false)


quest = faction:AddQuest("TheMultiphaseSurvery","The Multiphase Survey",250,68,false)
quest:SetIcon("Interface\\Icons\\INV_Gizmo_NewGoggles")
quest:AddQuestAccepter("Harbinger Haronem")
quest:AddOtherObjective(1,"Multiphase Readings",6)


faction:EndRow()
quest = faction:AddQuest("SmuggledManaCell","Maintaining the Sunwell Portal",250,68,false)
quest:AddAlternateName("Intercepting the Mana Cells")
quest:SetIcon("Interface\\Icons\\INV_Gizmo_KhoriumPowerCore")
quest:AddQuestAccepter("Exarch Nasuun")
quest:AddItemObjective("Smuggled Mana Cell",34246,10,false)


quest = faction:AddQuest("TheBattlefortheSunsReachArmory","The Battle Must Go On",250,68,false)
quest:AddAlternateName("The Battle for the Sun's Reach Armory")
quest:SetIcon("Interface\\Icons\\INV_BRD_Banner")
quest:AddQuestAccepter("Harbinger Inuuro")
quest:AddOtherObjective(2,"Burning Legion Demon slain",6)
quest:AddOtherObjective(1,"Emissary of Hate Impaled",1)


quest = faction:AddQuest("DistractionattheDeadScar","The Air Strikes Must Continue",150,68,false)
quest:AddAlternateName("Distraction at the Dead Scar")
quest:SetIcon("Interface\\Icons\\Spell_Arcane_StarFire")
quest:AddQuestAccepter("Battlemage Arynna")
quest:AddOtherObjective(1,"Pit Overlord slain",2)
quest:AddOtherObjective(1,"Eredar Sorcerer slain",3)
quest:AddOtherObjective(1,"Wrath Enforcer slain",12)


quest = faction:AddQuest("KnowYourLeyLines","Know Your Ley Lines",250,68,false)
quest:SetIcon("Interface\\Icons\\INV_DataCrystal05")
quest:AddQuestAccepter("Astromancer Darnarian")
quest:AddOtherObjective(1,"Portal Reading Taken",0)
quest:AddOtherObjective(2,"Shrine Reading Taken",0)
quest:AddOtherObjective(3,"Bloodcrystal Reading Taken",0)


faction:EndRow()
quest = faction:AddQuest("IntercepttheReinforcements","Keeping the Enemy at Bay",250,68,false)
quest:AddAlternateName("Intercept the Reinforcements")
quest:SetIcon("Interface\\Icons\\Spell_Fire_Fire")
quest:AddQuestAccepter("Vindicator Kaalan")
quest:AddOtherObjective(1,"Sin'loren sails burned",0)
quest:AddOtherObjective(2,"Bloodoath sails burned",0)
quest:AddOtherObjective(3,"Dawnchaser sails burned",0)
quest:AddOtherObjective(4,"Dawnblade Reservist slain",6)


quest = faction:AddQuest("TakingtheHarbor","Crush the Dawnblade",250,68,false)
quest:AddAlternateName("Taking the Harbor")
quest:SetIcon("Interface\\Icons\\INV_Weapon_ShortBlade_15")
quest:AddQuestAccepter("Magister Ilastar")
quest:AddOtherObjective(1,"Dawnblade Summoner slain",6)
quest:AddOtherObjective(2,"Dawnblade Blood Knight slain",6)
quest:AddOtherObjective(3,"Dawnblade Marksman slain",3)


quest = faction:AddQuest("DarkspineIronOre","Don't Stop Now...",250,68,false)
quest:AddAlternateName("Making Ready")
quest:SetIcon("Interface\\Icons\\INV_Ore_Iron_01")
quest:AddQuestAccepter("Smith Hauthaa")
quest:AddItemObjective("Darkspine Iron Ore",34479,3,false)


quest = faction:AddQuest("AtamalArmaments","Ata'mal Armaments",350,68,false)
quest:SetIcon("Interface\\Icons\\INV_Ore_Khorium_01")
quest:AddQuestAccepter("Smith Hauthaa")
quest:AddItemObjective("Cleansed Ata'mal Metal",34501,5,false)


faction:EndRow()
quest = faction:AddQuest("RazorthornRoot","Rediscovering Your Roots",350,68,false)
quest:AddAlternateName("Discovering Your Roots")
quest:SetIcon("Interface\\Icons\\INV_Misc_Herb_15")
quest:AddQuestAccepter("Mar'nah")
quest:AddItemObjective("Razorthorn Root",34254,5,false)


quest = faction:AddQuest("DisrupttheGreengillCoast","Disrupt the Greengill Coast",250,68,false)
quest:SetIcon("Interface\\Icons\\Spell_Nature_WispSplode")
quest:AddQuestAccepter("Captain Valindria")
quest:AddOtherObjective(1,"Greengill Slaves freed",10)


quest = faction:AddQuest("ACharitableDonation","Your Continued Support",150,68,false)
quest:AddAlternateName("A Charitable Donation")
quest:SetIcon("Interface\\Icons\\INV_Misc_Coin_01")
quest:AddQuestAccepter("Anchorite Ayuri")
quest:AddGoldObjective(100000)


quest = faction:AddQuest("Bloodberry","Open for Business",250,68,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Branch_01")
quest:AddQuestAccepter("Mar'nah")
quest:AddItemObjective("Bloodberry",34502,5,false)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

