
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("WyrmrestAccord", --UniqueTag (no whitespace)
                                  "The Wyrmrest Accord", --enUS faction name
                                  "WA", --enUS faction abbreviation
                                  "Wrath", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\Ability_Druid_Eclipse")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Raelorasz","Borean Tundra",33,34)
faction:AddNPC("Corastrasza","Borean Tundra",29,24)
faction:AddNPC("Lord Afrasastrasz","Dragonblight",59,54)


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

quest = faction:AddQuest("DrakeHunt","Drake Hunt",250,71,false)
quest:SetIcon("Interface\\Icons\\INV_Spear_11")
quest:AddQuestAccepter("Raelorasz")
quest:AddOtherObjective(1,"Captured Nexus Drake",0)


quest = faction:AddQuest("AcesHigh","Aces High!",250,80,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Head_Dragon_01")
quest:AddQuestAccepter("Corastrasza")
quest:AddOtherObjective(1,"Scalesworn Elites Slain",5)


quest = faction:AddQuest("DefendingWyrmrestTemple","Defending Wyrmrest Temple",250,71,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Head_Dragon_Blue")
quest:AddQuestAccepter("Lord Afrasastrasz")
quest:AddOtherObjective(1,"Azure Dragon slain",3)
quest:AddOtherObjective(2,"Azure Drake slain",5)
quest:AddOtherObjective(3,"Destabilize the Azure Dragonshrine",0)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

