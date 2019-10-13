--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("ArgentCrusade", --UniqueTag (no whitespace)
                                  "Argent Crusade", --enUS faction name
                                  "AC", --enUS faction abbreviation
                                  "Wrath", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_08")

--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("(A) Absalan the Pious","Icecrown, Skybreaker","??","??")
faction:AddNPC("(H) Brother Keltan","Icecrown, Orgrim's Hammer","??","??")
faction:AddNPC("Commander Kunz","Zul'Drak",40,66)

--Quests
--  quest = faction:AddQuest(tag,englishName,baseRep,minLevel,stackable) - returns a "quest" object
--  faction:EndRow() - ends a horizontal row of quest buttons.  If you have a quest, you need at least one of these.

--  quest:AddAlternateName(name) - for multiple identical quests with different names (see ShatteredSunOffensive)
--  quest:SetIcon(iconPath)
--  quest:AddRepRequirement(factionTag,minLevel,maxLevel,minExact,maxExact) - levels are 1-8, exact values are -42000 to 42000
--  quest:AddQuestAccepter(englishName) - must be an NPC set up in the Quest NPCs section above.
--  quest:AddGoldObjective(amount) - amount is in copper
--  quest:AddItemObjective(englishName,itemID,count,shareable) - shareable means you can trade it between your alts
--  quest:AddOtherObjective(objectiveIndex,text,count) - objectiveIndex is 1-based index of this quest objective in the quest log
--                                                       text is the quest text from the quest log, minus any " : #/#" at the end
--                                                       count is zero if no listed count in the log, or the max number needed
--  quest:AddExtraInfo(text) - generic text string that will get displayed on this quest's tooltip
local quest

quest = faction:AddQuest("SlavestoSaronite","Slaves to Saronite",325,80,false)
quest:SetIcon("Interface\\Icons\\INV_Ingot_Yoggthorite")
quest:AddQuestAccepter("(A) Absalan the Pious")
quest:AddQuestAccepter("(H) Brother Keltan")
quest:AddOtherObjective(1,"Saronite Mine Slave rescued",10)

quest = faction:AddQuest("TrollPatrol","Troll Patrol",455,76,false)
quest:SetIcon("Interface\\Icons\\Racial_Troll_Berserk")
quest:AddQuestAccepter("Commander Kunz")
quest:AddOtherObjective(1,"Captain Brandon's Task",0)
quest:AddOtherObjective(2,"Captain Rupert's Task",0)
quest:AddOtherObjective(3,"Captain Grondel's Task",0)
quest:AddOtherObjective(4,"Alchemist Finklestein's Task",0)
quest:AddExtraInfo("Bonus rep awarded if completed in less than 20 minutes")

faction:EndRow()

--Don't forget to set up the Localization files for this faction!
