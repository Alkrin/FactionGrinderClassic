--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("ArgentDawn", --UniqueTag (no whitespace)
                                  "Argent Dawn", --enUS faction name
                                  "AD", --enUS faction abbreviation
                                  "Classic", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_07")

--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Argent Officer Pureheart","Western Plaguelands",42,83)
faction:AddNPC("Duke Nicholas Zverenhoff","Eastern Plaguelands",81,59)

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

quest = faction:AddQuest("MinionsScourgestone","Minion's Scourgestones",150,50,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_14")
quest:AddQuestAccepter("Argent Officer Pureheart")
quest:AddQuestAccepter("Duke Nicholas Zverenhoff")
quest:AddItemObjective("Minion's Scourgestone",12840,20,false)

quest = faction:AddQuest("InvadersScourgestone","Invader's Scourgestones",150,50,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_13")
quest:AddQuestAccepter("Argent Officer Pureheart")
quest:AddQuestAccepter("Duke Nicholas Zverenhoff")
quest:AddItemObjective("Invader's Scourgestone",12841,10,false)

quest = faction:AddQuest("CorruptorsScourgestone","Corruptor's Scourgestones",150,50,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_12")
quest:AddQuestAccepter("Argent Officer Pureheart")
quest:AddQuestAccepter("Duke Nicholas Zverenhoff")
quest:AddItemObjective("Corruptor's Scourgestone",12843,1,false)

quest = faction:AddQuest("ArgentDawnValorToken","Argent Dawn Valor Tokens",100,50,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_08")
quest:AddItemObjective("Argent Dawn Valor Token",12844,1,false)

faction:EndRow()

--Don't forget to set up the Localization files for this faction!
