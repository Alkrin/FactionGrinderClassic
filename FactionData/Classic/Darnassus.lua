
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                        class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("Darnassus", --UniqueTag (no whitespace)
                                  "Darnassus", --enUS faction name
                                  "Da", --enUS faction abbreviation
                                  "Classic", --Category / Expansion tag
                                  "Alliance") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Misc_Head_Elf_02")
faction:SetStartingRep(3000)


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Pratt McGrubben","Feralas",30,42)
faction:AddNPC("Mathrengyl Bearwalker","Darnassus",34,8)
faction:AddNPC("Quintis Jonespyre","Feralas",32,43)
faction:AddNPC("Raedon Duskstriker","Darnassus",64,23)


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

quest = faction:AddQuest("PristineYetiHide","Pristine Yeti Hide",250,46,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Pelt_Boar_02")
quest:AddQuestAccepter("Pratt McGrubben")
quest:AddItemObjective("Pristine Yeti Hide",18969,1,false)


quest = faction:AddQuest("Morrowgrain","Morrowgrain to Darnassus",75,47,true)
quest:AddAlternateName("Morrowgrain to Feathermoon Stronghold")
quest:SetIcon("Interface\\Icons\\INV_Misc_Herb_05")
quest:AddQuestAccepter("Mathrengyl Bearwalker")
quest:AddQuestAccepter("Quintis Jonespyre")
quest:AddItemObjective("Morrowgrain",11040,10,true)
quest:AddExtraInfo("Quintis accepts 5 Morrowgrain, but grants only 1/3 the rep")


quest = faction:AddQuest("Runecloth","A Donation of Runecloth",50,50,true)
quest:SetIcon("Interface\\Icons\\INV_Fabric_PurpleFire_01")
quest:AddQuestAccepter("Raedon Duskstriker")
quest:AddItemObjective("Runecloth",14047,20,true)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

