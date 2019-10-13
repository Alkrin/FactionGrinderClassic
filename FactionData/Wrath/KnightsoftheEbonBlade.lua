
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("KnightsoftheEbonBlade", --UniqueTag (no whitespace)
                                  "Knights of the Ebon Blade", --enUS faction name
                                  "KEB", --enUS faction abbreviation
                                  "Wrath", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Weapon_Hand_01")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Setaal Darkmender","Icecrown",20,48)
faction:AddNPC("Aurochs Grimbane","Icecrown",19,48)
faction:AddNPC("Uzo Deathcaller","Icecrown",19,47)
faction:AddNPC("Baron Sliver","Icecrown",42,24)
faction:AddNPC("Vile","Icecrown",43,24)
faction:AddNPC("The Leaper","Icecrown",45,23)


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

quest = faction:AddQuest("FromTheirCorpsesRise","From Their Corpses, Rise!",250,80,false)
quest:SetIcon("Interface\\Icons\\INV_Potion_54")
quest:AddQuestAccepter("Setaal Darkmender")
quest:AddOtherObjective(1,"Scarlet Onslaught corpse tranformed",10)


quest = faction:AddQuest("IntelligenceGathering","Intelligence Gathering",250,80,false)
quest:SetIcon("Interface\\Icons\\INV_Letter_14")
quest:AddQuestAccepter("Aurochs Grimbane")
quest:AddItemObjective("Onslaught Intel Documents",40640,5,false)


quest = faction:AddQuest("NoFlyZone","No Fly Zone",250,80,false)
quest:SetIcon("Interface\\Icons\\Ability_Mount_Undeadhorse")
quest:AddQuestAccepter("Uzo Deathcaller")
quest:AddOtherObjective(1,"Onslaught Gryphon Rider slain",10)


faction:EndRow()
quest = faction:AddQuest("LeaveOurMark","Leave Our Mark",250,80,false)
quest:SetIcon("Interface\\Icons\\INV_Sword_126")
quest:AddQuestAccepter("Baron Sliver")
quest:AddOtherObjective(1,"Ebon Blade Banner planted near vrykul corpse",15)


quest = faction:AddQuest("VileLikeFire","Vile Like Fire!",250,80,false)
quest:SetIcon("Interface\\Icons\\Spell_Fire_LavaSpawn")
quest:AddQuestAccepter("Vile")
quest:AddOtherObjective(1,"Vrykul buildings set ablaze",8)


quest = faction:AddQuest("ShootEmUp","Shoot 'Em Up",250,80,false)
quest:SetIcon("Interface\\Icons\\INV_Spear_03")
quest:AddQuestAccepter("The Leaper")
quest:AddOtherObjective(1,"Jotunheim Proto-Drakes & their riders shot down",15)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

