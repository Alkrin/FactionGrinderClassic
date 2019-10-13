
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("Scryers", --UniqueTag (no whitespace)
                                  "The Scryers", --enUS faction name
                                  "Sc", --enUS faction abbreviation
                                  "BurningCrusade", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Jewelry_Ring_23")
faction:SetRacialRepBonus("Draenei",-3000)
faction:SetRacialRepBonus("Blood Elf",3000)


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Arcanist Adyria","Shattrath City",55,22)
faction:AddNPC("Magistrix Fyalenn","Shattrath City",45,81)
faction:AddNPC("Voren'thal the Seer","Shattrath City",43,92)
faction:AddNPC("Battlemage Vyara","Shadowmoon Valley",56,58)


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

quest = faction:AddQuest("DampscaleBasiliskEye","More Basilisk Eyes",250,62,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Eye_01")
quest:AddRepRequirement("Scryers",nil,3,nil,nil)
quest:AddQuestAccepter("Arcanist Adyria")
quest:AddItemObjective("Dampscale Basilisk Eye",25744,8,true)


quest = faction:AddQuest("FirewingSignet","More Firewing Signets",25,62,true)
quest:AddAlternateName("Single Firewing Signet")
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Ring_23")
quest:AddRepRequirement("Scryers",4,5,nil,nil)
quest:AddQuestAccepter("Magistrix Fyalenn")
quest:AddItemObjective("Firewing Signet",29426,1,true)


quest = faction:AddQuest("ArcaneTome","Arcane Tomes",350,64,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Book_07")
quest:AddRepRequirement("Scryers",4,nil,nil,nil)
quest:AddQuestAccepter("Voren'thal the Seer")
quest:AddItemObjective("Arcane Tome",29739,1,true)


quest = faction:AddQuest("SunfurySignet","More Sunfury Signets",25,68,true)
quest:AddAlternateName("Single Sunfury Signet")
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Ring_36")
quest:AddRepRequirement("Scryers",4,nil,nil,nil)
quest:AddQuestAccepter("Magistrix Fyalenn")
quest:AddQuestAccepter("Battlemage Vyara")
quest:AddItemObjective("Sunfury Signet",30810,1,true)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

