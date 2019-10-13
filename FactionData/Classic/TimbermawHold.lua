
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("TimbermawHold", --UniqueTag (no whitespace)
                                  "Timbermaw Hold", --enUS faction name
                                  "TH", --enUS faction abbreviation
                                  "Classic", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Misc_Horn_01")
faction:SetStartingRep(-3500)


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Grazle","Felwood",50,85)
faction:AddNPC("Nafien","Felwood",63,9)
faction:AddNPC("Salfa","Winterspring",28,35)


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

quest = faction:AddQuest("DeadwoodHeaddressFeathers","Feathers for Grazle",300,50,true)
quest:AddAlternateName("Feathers for Nafien")
quest:SetIcon("Interface\\Icons\\INV_Feather_13")
quest:AddQuestAccepter("Grazle")
quest:AddQuestAccepter("Nafien")
quest:AddItemObjective("Deadwood Headdress Feather",21377,5,false)


quest = faction:AddQuest("WinterfallSpiritBeads","Beads for Salfa",300,50,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Amulet_05")
quest:AddQuestAccepter("Salfa")
quest:AddItemObjective("Winterfall Spirit Beads",21383,5,false)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

