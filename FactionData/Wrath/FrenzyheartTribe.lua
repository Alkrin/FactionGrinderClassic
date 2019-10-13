
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("FrenzyheartTribe", --UniqueTag (no whitespace)
                                  "Frenzyheart Tribe", --enUS faction name
                                  "FT", --enUS faction abbreviation
                                  "Wrath", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Misc_Rune_14")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Elder Harkek","Sholozar Basin",55,69)
faction:AddNPC("Shaman Jakjek","Sholozar Basin",23,83)
faction:AddNPC("Rejek","Sholozar Basin",56,69)


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

quest = faction:AddQuest("ChickenParty","Chicken Party!",500,77,false)
quest:SetIcon("Interface\\Icons\\Spell_Magic_PolymorphChicken")
quest:AddRepRequirement("FrenzyheartTribe",6,nil,nil,nil)
quest:AddQuestAccepter("Elder Harkek")
quest:AddItemObjective("Captured Chicken",38483,12,false)


faction:EndRow()
quest = faction:AddQuest("KartaksRampage","Kartak's Rampage",700,77,false)
quest:SetIcon("Interface\\Icons\\Spell_Shadow_LifeDrain")
quest:AddRepRequirement("FrenzyheartTribe",6,nil,nil,nil)
quest:AddQuestAccepter("Shaman Jakjek")
quest:AddOtherObjective(1,"Sparktouched Gorloc",50)
quest:AddExtraInfo("Only one quest from Vekgar is offered per day.")


quest = faction:AddQuest("ToolsofWar","Tools of War",700,77,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bone_09")
quest:AddRepRequirement("FrenzyheartTribe",6,nil,nil,nil)
quest:AddQuestAccepter("Shaman Jakjek")
quest:AddOtherObjective(1,"Sparktouched Gorloc",50)
quest:AddExtraInfo("Only one quest from Vekgar is offered per day.")


quest = faction:AddQuest("SecretStrengthoftheFrenzyheart","Secret Strength of the Frenzyheart",700,78,false)
quest:SetIcon("Interface\\Icons\\INV_Drink_05")
quest:AddRepRequirement("FrenzyheartTribe",6,nil,nil,nil)
quest:AddQuestAccepter("Shaman Jakjek")
quest:AddItemObjective("Secret Strength of the Frenzyheart",39737,1,false)
quest:AddOtherObjective(1,"Sparktouched Gorloc",30)
quest:AddExtraInfo("Only one quest from Vekgar is offered per day.")


faction:EndRow()
quest = faction:AddQuest("RejekFirstBlood","Rejek: First Blood",500,77,false)
quest:SetIcon("Interface\\Icons\\INV_Sword_103")
quest:AddRepRequirement("FrenzyheartTribe",6,nil,nil,nil)
quest:AddQuestAccepter("Rejek")
quest:AddOtherObjective(1,"Blade blooded on Sapphire Hive Wasp",0)
quest:AddOtherObjective(2,"Blade blooded on Hardknuckle Charger",0)
quest:AddOtherObjective(3,"Blade blooded on Mistwhisper members",3)
quest:AddExtraInfo("Only one quest from Rejek is offered per day.")


quest = faction:AddQuest("AHerosHeadgear","A Hero's Headgear",500,77,false)
quest:SetIcon("Interface\\Icons\\INV_Helmet_97")
quest:AddRepRequirement("FrenzyheartTribe",6,nil,nil,nil)
quest:AddQuestAccepter("Rejek")
quest:AddItemObjective("Stormwatcher's Head",39667,1,false)
quest:AddExtraInfo("Only one quest from Rejek is offered per day.")


quest = faction:AddQuest("StrengthoftheTempest","Strength of the Tempest",500,77,false)
quest:SetIcon("Interface\\Icons\\Spell_Nature_StormReach")
quest:AddRepRequirement("FrenzyheartTribe",6,nil,nil,nil)
quest:AddQuestAccepter("Rejek")
quest:AddItemObjective("True Power of the Tempest",39614,1,false)
quest:AddExtraInfo("Only one quest from Rejek is offered per day.")


quest = faction:AddQuest("TheHeartbloodsStrength","The Heartblood's Strength",500,77,false)
quest:SetIcon("Interface\\Icons\\INV_Potion_36")
quest:AddRepRequirement("FrenzyheartTribe",6,nil,nil,nil)
quest:AddQuestAccepter("Rejek")
quest:AddItemObjective("Suntouched Heartblood",39575,1,false)
quest:AddExtraInfo("Only one quest from Rejek is offered per day.")


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

