
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("CenarionExpedition", --UniqueTag (no whitespace)
                                  "Cenarion Expedition", --enUS faction name
                                  "CE", --enUS faction abbreviation
                                  "BurningCrusade", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Misc_Flower_03")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Lauranna Thar'well","Zangarmarsh",80,64)
faction:AddNPC("Ysiel Windsinger","Zangarmarsh",78,62)
faction:AddNPC("Arch Druid Lathorius","Borean Tundra",57,44)


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

quest = faction:AddQuest("UnidentifiedPlantParts","Identify Plant Parts",250,60,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Flower_03")
quest:AddRepRequirement("CenarionExpedition",nil,5,nil,nil)
quest:AddQuestAccepter("Lauranna Thar'well")
quest:AddItemObjective("Unidentified Plant Parts",24401,10,true)


quest = faction:AddQuest("CoilfangArmaments","Coilfang Armaments",75,67,true)
quest:SetIcon("Interface\\Icons\\INV_Spear_06")
quest:AddRepRequirement("CenarionExpedition",5,nil,nil,nil)
quest:AddQuestAccepter("Ysiel Windsinger")
quest:AddItemObjective("Coilfang Armaments",24368,1,true)


quest = faction:AddQuest("NesingwaryLackeyEar","Can't Get Ear-nough...",150,70,true)
quest:SetIcon("Interface\\Icons\\INV_misc_ear_human_01")
quest:AddRepRequirement("CenarionExpedition",4,nil,nil,nil)
quest:AddQuestAccepter("Arch Druid Lathorius")
quest:AddItemObjective("Nesingwary Lackey Ear",35188,15,true)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

