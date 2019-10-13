
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("Ogrila", --UniqueTag (no whitespace)
                                  "Ogri'la", --enUS faction name
                                  "Og", --enUS faction abbreviation
                                  "BurningCrusade", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Misc_Statue_06")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Chu'a'lor","Blade's Edge Mountains",28,57)
faction:AddNPC("Sky Sergeant Vanderlip","Blade's Edge Mountains",27,52)
faction:AddNPC("Skyguard Khatie","Blade's Edge Mountains",27,51)
faction:AddNPC("Kronk","Blade's Edge Mountains",28,57)


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

quest = faction:AddQuest("TheRelicsEmanation","The Relic's Emanation",350,70,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Apexis_Shard")
quest:AddRepRequirement("Ogrila",4,nil,nil,nil)
quest:AddQuestAccepter("Chu'a'lor")
quest:AddOtherObjective(1,"Apexis Emanations attained",0)


quest = faction:AddQuest("BombThemAgain","Bomb Them Again!",500,70,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bomb_04")
quest:AddRepRequirement("Ogrila",4,nil,nil,nil)
quest:AddQuestAccepter("Sky Sergeant Vanderlip")
quest:AddOtherObjective(1,"Fel Cannonball Stacks destroyed",15)


quest = faction:AddQuest("WrangleMoreAetherRays","Wrangle More Aether Rays!",350,70,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Noose_01")
quest:AddRepRequirement("Ogrila",4,nil,nil,nil)
quest:AddQuestAccepter("Skyguard Khatie")
quest:AddOtherObjective(1,"Aether Rays wrangled",5)


quest = faction:AddQuest("BanishMoreDemons","Banish More Demons",350,70,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Gem_AzureDraenite_02")
quest:AddRepRequirement("Ogrila",6,nil,nil,nil)
quest:AddQuestAccepter("Kronk")
quest:AddOtherObjective(1,"Demons banished",15)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

