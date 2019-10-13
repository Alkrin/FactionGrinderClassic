
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("ThunderBluff", --UniqueTag (no whitespace)
                                  "Thunder Bluff", --enUS faction name
                                  "TB", --enUS faction abbreviation
                                  "Classic", --Category / Expansion tag
                                  "Horde") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Misc_Head_Tauren_02")
faction:SetStartingRep(3000)
faction:SetRacialRepBonus("Scourge",-3000)


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Jangdor Swiftstrider","Feralas",74,42)
faction:AddNPC("Bashana Runetotem","Thunder Bluff",70,33)
faction:AddNPC("Rumstag Proudstrider","Thunder Bluff",43,42)


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

quest = faction:AddQuest("PristineYetiHide","Perfect Yeti Hide",250,46,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Pelt_Boar_02")
quest:AddQuestAccepter("Jangdor Swiftstrider")
quest:AddItemObjective("Perfect Yeti Hide",18972,1,false)


quest = faction:AddQuest("Morrowgrain","Morrowgrain to Thunder Bluff",75,47,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Herb_05")
quest:AddQuestAccepter("Bashana Runetotem")
quest:AddItemObjective("Morrowgrain",11040,10,true)


quest = faction:AddQuest("Runecloth","A Donation of Runecloth",75,50,true)
quest:SetIcon("Interface\\Icons\\INV_Fabric_PurpleFire_01")
quest:AddQuestAccepter("Rumstag Proudstrider")
quest:AddItemObjective("Runecloth",14047,20,true)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

