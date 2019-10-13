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
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Argent Officer Pureheart","Western Plaguelands",42,83)
faction:AddNPC("Duke Nicholas Zverenhoff","Eastern Plaguelands",81,59)
faction:AddNPC("Archmage Angelas Dosantos","Eastern Plaguelands",81,58)
faction:AddNPC("Korfax, Champion of the Light","Eastern Plaguelands",81,58)
faction:AddNPC("Rohan the Assassin","Eastern Plaguelands",81,58)
faction:AddNPC("Huntsman Leopold","Eastern Plaguelands",81,58)
faction:AddNPC("Rayne","Eastern Plaguelands",81,59)
faction:AddNPC("Scourge Cauldron","Western Plaguelands",37,56,1)
faction:AddNPC("Scourge Cauldron","Western Plaguelands",46,51,2)
faction:AddNPC("Scourge Cauldron","Western Plaguelands",53,65,3)
faction:AddNPC("Scourge Cauldron","Western Plaguelands",62,58,4)


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

quest = faction:AddQuest("MinionsScourgestone","Minion's Scourgestones",50,50,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_14")
quest:AddQuestAccepter("Argent Officer Pureheart")
quest:AddQuestAccepter("Duke Nicholas Zverenhoff")
quest:AddItemObjective("Minion's Scourgestone",12840,20,false)

quest = faction:AddQuest("InvadersScourgestone","Invader's Scourgestones",50,50,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_13")
quest:AddQuestAccepter("Argent Officer Pureheart")
quest:AddQuestAccepter("Duke Nicholas Zverenhoff")
quest:AddItemObjective("Invader's Scourgestone",12841,10,false)

quest = faction:AddQuest("CorruptorsScourgestone","Corruptor's Scourgestones",50,50,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_12")
quest:AddQuestAccepter("Argent Officer Pureheart")
quest:AddQuestAccepter("Duke Nicholas Zverenhoff")
quest:AddItemObjective("Corruptor's Scourgestone",12843,1,false)

quest = faction:AddQuest("ArgentDawnValorToken","Argent Dawn Valor Tokens",25,50,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Talisman_08")
quest:AddItemObjective("Argent Dawn Valor Token",12844,1,false)

faction:EndRow()

quest = faction:AddQuest("CoreofElements","Core of Elements",10,55,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Gem_Variety_02")
quest:AddItemObjective("Core of Elements",22527,30,true)
quest:AddQuestAccepter("Archmage Angelas Dosantos")

quest = faction:AddQuest("DarkIronScraps","Dark Iron Scraps",10,55,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_ArmorKit_20")
quest:AddItemObjective("Dark Iron Scraps",22528,30,true)
quest:AddQuestAccepter("Korfax, Champion of the Light")

quest = faction:AddQuest("BoneFragments","Bone Fragments",10,55,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bone_07")
quest:AddItemObjective("Bone Fragments",22526,30,true)
quest:AddQuestAccepter("Rohan the Assassin")

quest = faction:AddQuest("CryptFiendParts","Crypt Fiend Parts",10,55,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_AhnQirajTrinket_02")
quest:AddItemObjective("Bone Fragments",22525,30,true)
quest:AddQuestAccepter("Huntsman Leopold")

quest = faction:AddQuest("SavageFronds","Savage Fronds",10,55,true)
quest:SetIcon("Interface\\Icons\\Spell_Nature_ProtectionformNature")
quest:AddItemObjective("Savage Frond",22529,30,true)
quest:AddQuestAccepter("Rayne")

faction:EndRow()

quest = faction:AddQuest("FelstoneFieldCauldron","Felstone Field Cauldron",15,55,true)
quest:SetIcon("Interface\\Icons\\Spell_Shadow_Requiem")
quest:AddItemObjective("Arcane Quickener",13320,1,true)
quest:AddItemObjective("Osseous Agitator",13357,6,true)
quest:AddItemObjective("Runecloth",14047,4,true)
quest:AddQuestAccepter("Scourge Cauldron",1)

quest = faction:AddQuest("DalsonsTearsCauldron","Dalson's Tears Cauldron",25,55,true)
quest:AddAlternateName("Writhing Haunt Cauldron")
quest:SetIcon("Interface\\Icons\\Spell_Shadow_CreepingPlague")
quest:AddItemObjective("Arcane Quickener",13320,1,true)
quest:AddItemObjective("Somatic Intensifier",13356,5,true)
quest:AddItemObjective("Runecloth",14047,4,true)
quest:AddQuestAccepter("Scourge Cauldron",2)
quest:AddQuestAccepter("Scourge Cauldron",3)

quest = faction:AddQuest("GahrronsWitheringCauldron","Gahrron's Withering Cauldron",25,55,true)
quest:SetIcon("Interface\\Icons\\Spell_Shadow_DetectInvisibility")
quest:AddItemObjective("Arcane Quickener",13320,1,true)
quest:AddItemObjective("Ectoplasmic Resonator",13354,4,true)
quest:AddItemObjective("Runecloth",14047,4,true)
quest:AddQuestAccepter("Scourge Cauldron",4)

faction:EndRow()

--Don't forget to set up the Localization files for this faction!
