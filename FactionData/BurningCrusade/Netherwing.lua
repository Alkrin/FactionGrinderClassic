
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("Netherwing", --UniqueTag (no whitespace)
                                  "Netherwing", --enUS faction name
                                  "NW", --enUS faction abbreviation
                                  "BurningCrusade", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\Ability_Mount_NetherdrakePurple")
faction:SetStartingRep(-42000)


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Taskmaster Varkule Dragonbreath","Shadowmoon Valley",66,86)
faction:AddNPC("Yarzill the Merc","Shadowmoon Valley",66,86)
faction:AddNPC("Mistress of the Mines","Shadowmoon Valley",63,87)
faction:AddNPC("Chief Overseer Mudlump","Shadowmoon Valley",66,86)
faction:AddNPC("Dragonmaw Foreman","Shadowmoon Valley",65,88)
faction:AddNPC("Overlord Mor'ghor","Shadowmoon Valley",66,85)


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

quest = faction:AddQuest("NetherciteOre","Nethercite Ore",250,70,true)
quest:SetIcon("Interface\\Icons\\INV_Ore_Ethernium_01")
quest:AddRepRequirement("Netherwing",4,nil,nil,nil)
quest:AddQuestAccepter("Taskmaster Varkule Dragonbreath")
quest:AddItemObjective("Nethercite Ore",32464,40,true)


quest = faction:AddQuest("NetherdustPollen","Netherdust Pollen",250,70,true)
quest:SetIcon("Interface\\Icons\\INV_Enchant_DustSoul")
quest:AddRepRequirement("Netherwing",4,nil,nil,nil)
quest:AddQuestAccepter("Taskmaster Varkule Dragonbreath")
quest:AddItemObjective("Netherdust Pollen",32468,40,true)


quest = faction:AddQuest("NethermineFlayerHide","Nethermine Flayer Hides",250,70,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Rune_12")
quest:AddRepRequirement("Netherwing",4,nil,nil,nil)
quest:AddQuestAccepter("Taskmaster Varkule Dragonbreath")
quest:AddItemObjective("Nethermine Flayer Hide",32470,40,true)


quest = faction:AddQuest("NetherwingCrystal","Netherwing Crystal",250,70,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Gem_CrystalCut_01")
quest:AddRepRequirement("Netherwing",4,nil,nil,nil)
quest:AddQuestAccepter("Taskmaster Varkule Dragonbreath")
quest:AddItemObjective("Netherwing Crystal",32427,30,false)


quest = faction:AddQuest("NetherwingEgg","Accepting All Eggs",250,70,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_ShadowEgg")
quest:AddRepRequirement("Netherwing",4,nil,nil,nil)
quest:AddQuestAccepter("Yarzill the Merc")
quest:AddItemObjective("Netherwing Egg",32506,1,false)


faction:EndRow()
quest = faction:AddQuest("ASlowDeath","A Slow Death",350,70,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Food_60")
quest:AddRepRequirement("Netherwing",4,nil,nil,nil)
quest:AddQuestAccepter("Yarzill the Merc")
quest:AddOtherObjective(1,"Camps Poisoned",12)


quest = faction:AddQuest("NetherwingRelic","The Not-So-Friendly Skies...",250,70,false)
quest:SetIcon("Interface\\Icons\\INV_Bijou_Blue")
quest:AddRepRequirement("Netherwing",4,nil,nil,nil)
quest:AddQuestAccepter("Yarzill the Merc")
quest:AddItemObjective("Netherwing Relic",32509,10,false)


quest = faction:AddQuest("Nethermine Cargo","Picking Up The Pieces...",350,70,false)
quest:SetIcon("Interface\\Icons\\INV_Crate_04")
quest:AddRepRequirement("Netherwing",5,nil,nil,nil)
quest:AddQuestAccepter("Mistress of the Mines")
quest:AddItemObjective("Nethermine Cargo",32723,15,true)


faction:EndRow()
quest = faction:AddQuest("TheBooterang","The Booterang: A Cure For The Common Worthless Peon",350,70,false)
quest:SetIcon("Interface\\Icons\\INV_Boots_Chain_01")
quest:AddRepRequirement("Netherwing",5,nil,nil,nil)
quest:AddQuestAccepter("Chief Overseer Mudlump")
quest:AddOtherObjective(1,"Dragonmaw Peon Disciplined",20)


quest = faction:AddQuest("DragonsAre","Dragons are the Least of Our Problems",350,70,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_AhnQirajTrinket_02")
quest:AddRepRequirement("Netherwing",5,nil,nil,nil)
quest:AddQuestAccepter("Dragonmaw Foreman")
quest:AddOtherObjective(1,"Nethermine Flayers Slain",15)
quest:AddOtherObjective(2,"Nethermine Ravagers Slain",5)


quest = faction:AddQuest("TwilightPortal","Disrupting the Twilight Portal",500,70,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Head_Orc_01")
quest:AddRepRequirement("Netherwing",6,nil,nil,nil)
quest:AddQuestAccepter("Overlord Mor'ghor")
quest:AddOtherObjective(1,"Deathshadow Agents Slain",20)


quest = faction:AddQuest("DeadliestTrap","The Deadliest Trap Ever Laid",500,70,false)
quest:SetIcon("Interface\\Icons\\Ability_Ensnare")
quest:AddRepRequirement("Netherwing",7,nil,nil,nil)
quest:AddQuestAccepter("Overlord Mor'ghor")
quest:AddOtherObjective(1,"Dragonmaw Forces Defeated",0)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

