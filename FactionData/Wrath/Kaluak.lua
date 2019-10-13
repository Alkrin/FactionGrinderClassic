
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("Kaluak", --UniqueTag (no whitespace)
                                  "The Kalu'ak", --enUS faction name
                                  "Kal", --enUS faction abbreviation
                                  "Wrath", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Fishingpole_03")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Utaik","Borean Tundra",63,45)
faction:AddNPC("Trapper Mau'i","Dragonblight",48,74)
faction:AddNPC("Anuniaq","Howling Fjord",24,58)


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

quest = faction:AddQuest("PreparingfortheWorst","Preparing for the Worst",500,69,false)
quest:SetIcon("Interface\\Icons\\INV_Crate_01")
quest:AddQuestAccepter("Utaik")
quest:AddItemObjective("Kaskala Supplies",35711,8,false)


quest = faction:AddQuest("PlanningfortheFuture","Planning for the Future",500,71,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Head_Gnoll_01")
quest:AddQuestAccepter("Trapper Mau'i")
quest:AddItemObjective("Snowfall Glade Pup",35692,12,false)


quest = faction:AddQuest("TheWaytoHisHeart","The Way to His Heart...",500,71,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Fish_09")
quest:AddQuestAccepter("Anuniaq")
quest:AddOtherObjective(1,"Reef Bull led to a Reef Cow",0)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

