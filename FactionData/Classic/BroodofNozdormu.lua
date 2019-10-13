--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("BroodofNozdormu", --UniqueTag (no whitespace)
                                  "Brood of Nozdormu", --enUS faction name
                                  "BN", --enUS faction abbreviation
                                  "Classic", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Misc_Head_Dragon_01")
faction:SetStartingRep(-42000)

--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Andorgos","Temple of Ahn'qiraj","??","??")
faction:AddNPC("Baristolth of the Shifting Sands","Silithus",49,36)
faction:AddNPC("Kandrostrasz","Temple of Ahn'qiraj","??","??")

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

quest = faction:AddQuest("SilithidCarapaceFragment","The Hand of the Righteous",500,60,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_MonsterScales_13")
quest:AddQuestAccepter("Baristolth of the Shifting Sands")
quest:AddItemObjective("Silithid Carapace Fragment",20384,200,true)

quest = faction:AddQuest("QirajiLordsInsignia","Mortal Champions",500,60,true)
quest:SetIcon("Interface\\Icons\\INV_ZulGurubTrinket")
quest:AddQuestAccepter("Kandrostrasz")
quest:AddItemObjective("Qiraji Lord's Insignia",21229,1,false)

quest = faction:AddQuest("AncientQirajiArtifact","Secrets of the Qiraji",1000,60,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Idol_03")
quest:AddQuestAccepter("Andorgos")
quest:AddItemObjective("Ancient Qiraji Artifact",21230,1,false)

faction:EndRow()

--Don't forget to set up the Localization files for this faction!
