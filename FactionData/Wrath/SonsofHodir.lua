
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("SonsofHodir", --UniqueTag (no whitespace)
                                  "The Sons of Hodir", --enUS faction name
                                  "SoH", --enUS faction abbreviation
                                  "Wrath", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\Spell_Holy_DivinePurpose")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Fjorn's Anvil","Storm Peaks",63,62)
faction:AddNPC("Hodir's Horn","Storm Peaks",64,64)
faction:AddNPC("Hodir's Helm","Storm Peaks",64,59)
faction:AddNPC("Calder","Storm Peaks",67,60)
faction:AddNPC("Frostworg Denmother","Storm Peaks",63,59)
faction:AddNPC("Hodir's Spear","Storm Peaks",65,60)
faction:AddNPC("Arngrim the Insatiable","Storm Peaks",67,59)
faction:AddNPC("Lillehoff","Storm Peaks",66,61)


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

quest = faction:AddQuest("HotandCold","Hot and Cold",455,80,false)
quest:SetIcon("Interface\\Icons\\INV_Ore_Cobalt")
quest:AddRepRequirement("SonsofHodir",4,nil,nil,nil)
quest:AddQuestAccepter("Fjorn's Anvil")
quest:AddItemObjective("Frozen Iron Scrap",42252,6,false)


quest = faction:AddQuest("BlowingHodirsHorn","Blowing Hodir's Horn",455,80,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Horn_03")
quest:AddRepRequirement("SonsofHodir",4,nil,nil,nil)
quest:AddQuestAccepter("Hodir's Horn")
quest:AddOtherObjective(1,"Niffelem Forefather Freed",5)
quest:AddOtherObjective(2,"Restless Frostborn Freed",5)


quest = faction:AddQuest("PolishingtheHelm","Polishing the Helm",455,80,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Slime_02")
quest:AddRepRequirement("SonsofHodir",4,nil,nil,nil)
quest:AddQuestAccepter("Hodir's Helm")
quest:AddItemObjective("Viscous Oil",42640,5,false)


quest = faction:AddQuest("EverfrostChip","Everfrost Chip",350,77,true)
quest:SetIcon("Interface\\Icons\\Spell_Shadow_Teleport")
quest:AddRepRequirement("SonsofHodir",4,nil,nil,nil)
quest:AddQuestAccepter("Calder")
quest:AddItemObjective("Everfrost Chip",44725,1,false)


faction:EndRow()
quest = faction:AddQuest("SpyHunter","Spy Hunter",455,80,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bone_08")
quest:AddRepRequirement("SonsofHodir",6,nil,nil,nil)
quest:AddQuestAccepter("Frostworg Denmother")
quest:AddOtherObjective(1,"Stormforged Infiltrators Slain",3)


quest = faction:AddQuest("ThrustingHodirsSpear","Thrusting Hodir's Spear",650,80,false)
quest:SetIcon("Interface\\Icons\\INV_Spear_04")
quest:AddRepRequirement("SonsofHodir",6,nil,nil,nil)
quest:AddQuestAccepter("Hodir's Spear")
quest:AddOtherObjective(1,"Wild Wyrm Slain",0)


quest = faction:AddQuest("FeedingArngrim","Feeding Arngrim",250,80,false)
quest:SetIcon("Interface\\Icons\\INV_Ore_Adamantium")
quest:AddRepRequirement("SonsofHodir",7,nil,nil,nil)
quest:AddQuestAccepter("Arngrim the Insatiable")
quest:AddOtherObjective(1,"Arngrim's spirit fed",5)


quest = faction:AddQuest("HodirsTribute","Hodir's Tribute",650,77,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Rune_14")
quest:AddQuestAccepter("Lillehoff")
quest:AddItemObjective("Relic of Ulduar",42780,10,true)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

