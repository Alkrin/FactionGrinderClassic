
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("WarsongOffensive", --UniqueTag (no whitespace)
                                  "Warsong Offensive", --enUS faction name
                                  "WO", --enUS faction abbreviation
                                  "Wrath", --Category / Expansion tag
                                  "Horde") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_BannerPVP_01")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Raider Captain Kronn","Grizzly Hills",26,65)
faction:AddNPC("Lurz","Grizzly Hills","34","34")
faction:AddNPC("Aumana","Grizzly Hills",34,34)
faction:AddNPC("Commander Bargok","Grizzly Hills",34,34)
faction:AddNPC("Grekk","Grizzly Hills",34,34)
faction:AddNPC("Ground Commander Xutjja","Icecrown",58,46)
faction:AddNPC("Warbringer Davos Rioht","Icecrown, Orgrim's Hammer","??-??","??-??")
faction:AddNPC("Sky-Reaver Korm Blackscar","Icecrown, Orgrim's Hammer","??-??","??-??")
faction:AddNPC("Blast Thunderbomb","Icecrown",51,57)


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

quest = faction:AddQuest("BlackriverBrawl","Blackriver Brawl",250,73,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Head_Human_01")
quest:AddQuestAccepter("Raider Captain Kronn")
quest:AddOtherObjective(1,"Alliance in Blackriver slain",10)


quest = faction:AddQuest("MakingRepairs","Making Repairs",250,73,false)
quest:SetIcon("Interface\\Icons\\INV_Gizmo_02")
quest:AddQuestAccepter("Lurz")
quest:AddItemObjective("Grooved Cog",37412,4,false)
quest:AddItemObjective("Notched Sprocket",37413,3,false)
quest:AddItemObjective("High Tension Spring",37416,2,false)


quest = faction:AddQuest("Overwhelmed","Overwhelmed!",250,73,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bandana_03")
quest:AddQuestAccepter("Aumana")
quest:AddOtherObjective(1,"Wounded Skirmishers Healed",10)


quest = faction:AddQuest("KeepEmOnTheirHeels","Keep 'Em on Their Heels",250,73,false)
quest:SetIcon("Interface\\Icons\\INV_Boots_Plate_06")
quest:AddQuestAccepter("Commander Bargok")
quest:AddOtherObjective(1,"Alliance units eliminated",15)


quest = faction:AddQuest("ShredtheAlliance","Shred the Alliance",250,73,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Key_14")
quest:AddQuestAccepter("Grekk")
quest:AddOtherObjective(1,"Shredder Delivered",3)


faction:EndRow()
quest = faction:AddQuest("AssaultbyAir","Assault by Air",250,77,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bag_08")
quest:AddQuestAccepter("Ground Commander Xutjja")
quest:AddOtherObjective(1,"Kor'kron Infiltrators dropped",4)


quest = faction:AddQuest("AssaultbyGround","Assault by Ground",250,77,false)
quest:SetIcon("Interface\\Icons\\INV_Banner_03")
quest:AddQuestAccepter("Ground Commander Xutjja")
quest:AddOtherObjective(1,"Horde troops escorted to Ymirheim",4)


quest = faction:AddQuest("BloodoftheChosen","Blood of the Chosen",250,77,false)
quest:SetIcon("Interface\\Icons\\Spell_Shadow_BloodBoil")
quest:AddQuestAccepter("Warbringer Davos Rioht")
quest:AddOtherObjective(1,"Ymirheim Vrykul slain",20)


quest = faction:AddQuest("KeepingtheAllianceBlind","Keeping the Alliance Blind",250,77,false)
quest:SetIcon("Interface\\Icons\\INV_Gizmo_TheBiggerOne")
quest:AddQuestAccepter("Sky-Reaver Korm Blackscar")
quest:AddOtherObjective(1,"Skybreaker Recon Fighters shot down",6)


quest = faction:AddQuest("KingoftheMountain","King of the Mountain",250,77,false)
quest:SetIcon("Interface\\Icons\\INV_Gizmo_RocketBoot_01")
quest:AddQuestAccepter("Blast Thunderbomb")
quest:AddOtherObjective(1,"Horde Battle Standard planted",0)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

