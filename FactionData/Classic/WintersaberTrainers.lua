--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("WintersaberTrainers", --UniqueTag (no whitespace)
                                  "Wintersaber Trainers", --enUS faction name
                                  "WT", --enUS faction abbreviation
                                  "Classic", --Category / Expansion tag
                                  "Alliance") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\Ability_Mount_PinkTiger")

--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Rivern Frostwind","Winterspring",50,10)


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

quest = faction:AddQuest("FrostsaberProvisions","Frostsaber Provisions",50,58,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Food_14")
quest:AddQuestAccepter("Rivern Frostwind")
quest:AddItemObjective("Shardtooth Meat",12622,5,false)
quest:AddItemObjective("Chillwind Meat",12623,5,false)

quest = faction:AddQuest("WinterfallIntrusion","Winterfall Intrusion",50,58,false)
quest:SetIcon("Interface\\Icons\\Ability_Druid_DemoralizingRoar")
quest:AddRepRequirement("WintersaberTrainers",4,nil,1500,nil)
quest:AddQuestAccepter("Rivern Frostwind")
quest:AddOtherObjective(1,"Winterfall Shaman slain",5)
quest:AddOtherObjective(2,"Winterfall Ursa slain",5)

quest = faction:AddQuest("RampagingGiants","Rampaging Giants",50,58,false)
quest:SetIcon("Interface\\Icons\\Ability_Racial_Avatar")
quest:AddRepRequirement("WintersaberTrainers",6,nil,nil,nil)
quest:AddQuestAccepter("Rivern Frostwind")
quest:AddOtherObjective(1,"Frostmaul Giant slain",4)
quest:AddOtherObjective(2,"Frostmaul Preserver slain",4)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!
