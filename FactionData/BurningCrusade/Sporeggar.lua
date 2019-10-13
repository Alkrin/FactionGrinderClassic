
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("Sporeggar", --UniqueTag (no whitespace)
                                  "Sporeggar", --enUS faction name
                                  "Sp", --enUS faction abbreviation
                                  "BurningCrusade", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Mushroom_02")
faction:SetStartingRep(-3000)


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Fahssn","Zangarmarsh",19,64)
faction:AddNPC("Msshi'fn","Zangarmarsh",20,52)
faction:AddNPC("Gshaff","Zangarmarsh",19,50)
faction:AddNPC("Gzhun'tt","Zangarmarsh",19,50)


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

quest = faction:AddQuest("BogLordTendril","More Tendrils!",750,60,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_MonsterTail_03")
quest:AddRepRequirement("Sporeggar",nil,4,nil,nil)
quest:AddQuestAccepter("Fahssn")
quest:AddItemObjective("Bog Lord Tendril",24291,6,true)


quest = faction:AddQuest("MatureSporeSac","More Spore Sacs",750,60,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Organ_02")
quest:AddRepRequirement("Sporeggar",nil,4,nil,nil)
quest:AddQuestAccepter("Fahssn")
quest:AddItemObjective("Mature Spore Sac",24290,10,true)


quest = faction:AddQuest("Glowcap","More Glowcaps",750,62,true)
quest:SetIcon("Interface\\Icons\\INV_Mushroom_02")
quest:AddRepRequirement("Sporeggar",4,4,nil,nil)
quest:AddQuestAccepter("Msshi'fn")
quest:AddItemObjective("Glowcap",24245,10,true)


faction:EndRow()
quest = faction:AddQuest("FertileSpores","More Fertile Spores",750,62,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Dust_04")
quest:AddRepRequirement("Sporeggar",5,nil,nil,nil)
quest:AddQuestAccepter("Gshaff")
quest:AddItemObjective("Fertile Spores",24449,6,true)


quest = faction:AddQuest("Friends","Now That We're Friends...",750,62,false)
quest:AddAlternateName("Now That We're Still Friends...")
quest:SetIcon("Interface\\Icons\\INV_Misc_MonsterHead_02")
quest:AddRepRequirement("Sporeggar",5,nil,nil,nil)
quest:AddQuestAccepter("Gzhun'tt")
quest:AddOtherObjective(1,"Bloodscale Slavedriver slain",12)
quest:AddOtherObjective(2,"Bloodscale Enchantress slain",6)


quest = faction:AddQuest("SanguineHibiscus","Bring Me Another Shrubbery!",750,63,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Herb_19")
quest:AddRepRequirement("Sporeggar",5,nil,nil,nil)
quest:AddQuestAccepter("Gzhun'tt")
quest:AddItemObjective("Sanguine Hibiscus",24246,5,true)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

