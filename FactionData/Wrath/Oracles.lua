
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("Oracles", --UniqueTag (no whitespace)
                                  "The Oracles", --enUS faction name
                                  "Ora", --enUS faction abbreviation
                                  "Wrath", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Helmet_138")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("High-Oracle Soo-say","Sholozar Basin",54,56)
faction:AddNPC("Lightningcaller Soo-met","Sholozar Basin",33,75)
faction:AddNPC("Oracle Soo-nee","Sholozar Basin",53,56)


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

quest = faction:AddQuest("AppeasingtheGreatRainStone","Appeasing the Great Rain Stone",500,77,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Gem_Variety_01")
quest:AddRepRequirement("Oracles",6,nil,nil,nil)
quest:AddQuestAccepter("High-Oracle Soo-say")
quest:AddItemObjective("Shiny Treasures",38575,6,false)


faction:EndRow()
quest = faction:AddQuest("MasteryoftheCrystals","Mastery of the Crystals",700,77,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Gem_EmeraldRough_02")
quest:AddRepRequirement("Oracles",6,nil,nil,nil)
quest:AddQuestAccepter("Lightningcaller Soo-met")
quest:AddOtherObjective(1,"Frenzyheart Attacker",50)
quest:AddExtraInfo("Only one quest from Oracle Soo-dow is offered per day.")


quest = faction:AddQuest("WilloftheTitans","Will of the Titans",700,77,false)
quest:SetIcon("Interface\\Icons\\INV_DataCrystal11")
quest:AddRepRequirement("Oracles",6,nil,nil,nil)
quest:AddQuestAccepter("Lightningcaller Soo-met")
quest:AddOtherObjective(1,"Frenzyheart Attacker",50)
quest:AddExtraInfo("Only one quest from Oracle Soo-dow is offered per day.")


quest = faction:AddQuest("PoweroftheGreatOnes","Power of the Great Ones",700,77,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Gem_Pearl_06")
quest:AddRepRequirement("Oracles",6,nil,nil,nil)
quest:AddQuestAccepter("Lightningcaller Soo-met")
quest:AddItemObjective("Energized Polished Crystal",39748,1,false)
quest:AddOtherObjective(1,"Frenzyheart Attacker",30)
quest:AddExtraInfo("Only one quest from Oracle Soo-dow is offered per day.")


faction:EndRow()
quest = faction:AddQuest("ACleansingSong","A Cleansing Song",500,77,false)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Necklace_20")
quest:AddRepRequirement("Oracles",6,nil,nil,nil)
quest:AddQuestAccepter("Oracle Soo-nee")
quest:AddOtherObjective(1,"Spirit of Atha",1)
quest:AddOtherObjective(2,"Spirit of Ha-Khalan",1)
quest:AddOtherObjective(3,"Spirit of Koosu",1)
quest:AddExtraInfo("Only one quest from Oracle Soo-nee is offered per day.")


quest = faction:AddQuest("SongofFecundity","Song of Fecundity",500,77,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Horn_01")
quest:AddRepRequirement("Oracles",6,nil,nil,nil)
quest:AddQuestAccepter("Oracle Soo-nee")
quest:AddOtherObjective(1,"Song of Fecundity played",8)
quest:AddExtraInfo("Only one quest from Oracle Soo-nee is offered per day.")


quest = faction:AddQuest("SongofReflection","Song of Reflection",500,77,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Flute_01")
quest:AddRepRequirement("Oracles",6,nil,nil,nil)
quest:AddQuestAccepter("Oracle Soo-nee")
quest:AddOtherObjective(1,"Contemplation at Glimmering Pillar",0)
quest:AddOtherObjective(2,"Contemplation at Mosslight Pillar",0)
quest:AddOtherObjective(3,"Contemplation at Skyreach Pillar",0)
quest:AddOtherObjective(4,"Contemplation at Suntouched Pillar",0)
quest:AddExtraInfo("Only one quest from Oracle Soo-nee is offered per day.")


quest = faction:AddQuest("SongofWindandWater","Song of Wind and Water",500,77,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Drum_07")
quest:AddRepRequirement("Oracles",6,nil,nil,nil)
quest:AddQuestAccepter("Oracle Soo-nee")
quest:AddOtherObjective(1,"Monsoon Revenant Devoured",4)
quest:AddOtherObjective(2,"Storm Revenant Devoured",4)
quest:AddExtraInfo("Only one quest from Oracle Soo-nee is offered per day.")


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

