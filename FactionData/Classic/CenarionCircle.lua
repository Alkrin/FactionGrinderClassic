--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("CenarionCircle", --UniqueTag (no whitespace)
                                  "Cenarion Circle", --enUS faction name
                                  "CC", --enUS faction abbreviation
                                  "Classic", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Misc_Note_06")

--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Aurel Goldleaf","Silithus",51,38)
faction:AddNPC("Bor Wildmane","Silithus",48,37)
faction:AddNPC("Windcaller Kaldon","Silithus",49,36)

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

quest = faction:AddQuest("EncryptedTwilightText","Encrypted Twilight Texts",500,57,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Note_06")
quest:AddQuestAccepter("Bor Wildmane")
quest:AddItemObjective("Encrypted Twilight Text",20404,10,true)

quest = faction:AddQuest("CenarionBadges","Allegiance to Cenarion Circle",1000,60,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Necklace_16")
quest:AddQuestAccepter("Windcaller Kaldon")
quest:AddItemObjective("Cenarion Logistics Badge",20800,1,false)
quest:AddItemObjective("Cenarion Tactical Badge",20801,1,false)
quest:AddItemObjective("Cenarion Combat Badge",20802,1,false)

faction:EndRow()

quest = faction:AddQuest("AbyssalCrest","Abyssal Crests",150,60,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_05")
quest:AddQuestAccepter("Bor Wildmane")
quest:AddItemObjective("Abyssal Crest",20513,3,true)

quest = faction:AddQuest("AbyssalSignet","Abyssal Signets",500,60,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Ring_36")
quest:AddQuestAccepter("Bor Wildmane")
quest:AddItemObjective("Abyssal Signet",20514,3,true)

quest = faction:AddQuest("AbyssalScepter","Abyssal Scepters",700,60,true)
quest:SetIcon("Interface\\Icons\\INV_Staff_13")
quest:AddQuestAccepter("Aurel Goldleaf")
quest:AddItemObjective("Abyssal Scepter",20515,3,true)

faction:EndRow()

--Don't forget to set up the Localization files for this faction!
