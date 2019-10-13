
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("ValianceExpedition", --UniqueTag (no whitespace)
                                  "Valiance Expedition", --enUS faction name
                                  "VE", --enUS faction abbreviation
                                  "Wrath", --Category / Expansion tag
                                  "Alliance") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_BannerPVP_02")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Bombardier Petrov","Howling Fjord",28,41)
faction:AddNPC("Scout Captain Carter","Grizzly Hills",29,59)
faction:AddNPC("Rheanna","Grizzly Hills",40,41)
faction:AddNPC("Sergeant Hartsman","Grizzly Hills",38,42)
faction:AddNPC("Ground Commander Koup","Icecrown",62,51)
faction:AddNPC("Knight-Captain Drosche","Icecrown, Skybreaker","55-66","38-57")
faction:AddNPC("High Captain Justin Bartlett","Icecrown, Skybreaker","55-66","38-57")
faction:AddNPC("Frazzle Geargrinder","Icecrown",56,62)


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

quest = faction:AddQuest("BreaktheBlockade","Break the Blockade",250,68,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bomb_02")
quest:AddQuestAccepter("Bombardier Petrov")
quest:AddOtherObjective(1,"Blockade Pirate",25)
quest:AddOtherObjective(2,"Blockade Cannons destroyed",10)


quest = faction:AddQuest("BlackriverSkirmish","Blackriver Skirmish",250,73,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Head_Orc_01")
quest:AddQuestAccepter("Scout Captain Carter")
quest:AddOtherObjective(1,"Horde in Blackriver slain",10)


quest = faction:AddQuest("LifeorDeath","Life or Death",250,73,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bandage_16")
quest:AddQuestAccepter("Rheanna")
quest:AddOtherObjective(1,"Westfall Infantry Healed",10)


quest = faction:AddQuest("KickEmWhileTheyreDown","Kick 'Em While They're Down",250,73,false)
quest:SetIcon("Interface\\Icons\\INV_Boots_Plate_06")
quest:AddQuestAccepter("Sergeant Hartsman")
quest:AddOtherObjective(1,"Horde units eliminated",15)


faction:EndRow()
quest = faction:AddQuest("AssaultbyAir","Assault by Air",250,77,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bag_08")
quest:AddQuestAccepter("Ground Commander Koup")
quest:AddOtherObjective(1,"Skybreaker Infiltrators dropped",4)


quest = faction:AddQuest("AssaultbyGround","Assault by Ground",250,77,false)
quest:SetIcon("Interface\\Icons\\INV_Banner_02")
quest:AddQuestAccepter("Ground Commander Koup")
quest:AddOtherObjective(1,"Alliance troops escorted to Ymirheim",4)


quest = faction:AddQuest("BloodoftheChosen","Blood of the Chosen",250,77,false)
quest:SetIcon("Interface\\Icons\\Spell_Shadow_BloodBoil")
quest:AddQuestAccepter("Knight-Captain Drosche")
quest:AddOtherObjective(1,"Ymirheim Vrykul slain",20)


quest = faction:AddQuest("CaptureMoreDispatches","Capture More Dispatches",250,77,false)
quest:SetIcon("Interface\\Icons\\INV_Scroll_16")
quest:AddQuestAccepter("High Captain Justin Bartlett")
quest:AddItemObjective("Orgrim's Hammer Dispatch",44220,4,false)


quest = faction:AddQuest("KingoftheMountain","King of the Mountain",250,77,false)
quest:SetIcon("Interface\\Icons\\INV_Gizmo_RocketBoot_01")
quest:AddQuestAccepter("Frazzle Geargrinder")
quest:AddOtherObjective(1,"Alliance Battle Standard planted",0)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

