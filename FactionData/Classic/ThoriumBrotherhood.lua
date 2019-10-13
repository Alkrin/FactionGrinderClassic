
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                        class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("ThoriumBrotherhood", --UniqueTag (no whitespace)
                                  "Thorium Brotherhood", --enUS faction name
                                  "TB", --enUS faction abbreviation
                                  "Classic", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Ingot_Mithril")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Master Smith Burninate","Searing Gorge",38,28)
faction:AddNPC("Lokhtos Darkbargainer","Blackrock Depths, The Bar","??","??")


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

quest = faction:AddQuest("HeavyLeather","Restoring Fiery Flux Supplies via Heavy Leather",25,46,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_LeatherScrap_07")
quest:AddRepRequirement("ThoriumBrotherhood",4,4,nil,nil)
quest:AddQuestAccepter("Master Smith Burninate")
quest:AddItemObjective("Incendosaur Scale",18944,2,true)
quest:AddItemObjective("Coal",3857,1,true)
quest:AddItemObjective("Heavy Leather",4234,10,true)


quest = faction:AddQuest("Iron","Restoring Fiery Flux Supplies via Iron",25,46,true)
quest:SetIcon("Interface\\Icons\\INV_Ingot_Iron")
quest:AddRepRequirement("ThoriumBrotherhood",4,4,nil,nil)
quest:AddQuestAccepter("Master Smith Burninate")
quest:AddItemObjective("Incendosaur Scale",18944,2,true)
quest:AddItemObjective("Iron Bar",3575,4,true)
quest:AddItemObjective("Coal",3857,1,true)


quest = faction:AddQuest("Kingsblood","Restoring Fiery Flux Supplies via Kingsblood",25,46,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Herb_03")
quest:AddRepRequirement("ThoriumBrotherhood",4,4,nil,nil)
quest:AddQuestAccepter("Master Smith Burninate")
quest:AddItemObjective("Incendosaur Scale",18944,2,true)
quest:AddItemObjective("Kingsblood",3356,4,true)
quest:AddItemObjective("Coal",3857,1,true)


faction:EndRow()
quest = faction:AddQuest("DarkIronResidue","Gaining Acceptance",25,48,true)
quest:SetIcon("Interface\\Icons\\INV_Enchant_DustSoul")
quest:AddRepRequirement("ThoriumBrotherhood",5,5,nil,nil)
quest:AddQuestAccepter("Master Smith Burninate")
quest:AddItemObjective("Dark Iron Residue",18945,4,true)


faction:EndRow()
quest = faction:AddQuest("DarkIronOre","Favor Amongst the Brotherhood, Dark Iron Ore",75,0,true)
quest:SetIcon("Interface\\Icons\\INV_Ore_Mithril_01")
quest:AddRepRequirement("ThoriumBrotherhood",6,nil,nil,nil)
quest:AddQuestAccepter("Lokhtos Darkbargainer")
quest:AddItemObjective("Dark Iron Ore",11370,10,true)


quest = faction:AddQuest("CoreLeather","Favor Amongst the Brotherhood, Core Leather",350,0,true)
quest:SetIcon("Interface\\Icons\\INV_Ammo_FireTar")
quest:AddRepRequirement("ThoriumBrotherhood",6,nil,nil,nil)
quest:AddQuestAccepter("Lokhtos Darkbargainer")
quest:AddItemObjective("Core Leather",17012,2,true)


quest = faction:AddQuest("FieryCore","Favor Amongst the Brotherhood, Fiery Core",500,0,true)
quest:SetIcon("Interface\\Icons\\Spell_Fire_FlameBolt")
quest:AddRepRequirement("ThoriumBrotherhood",6,nil,nil,nil)
quest:AddQuestAccepter("Lokhtos Darkbargainer")
quest:AddItemObjective("Fiery Core",17010,1,true)


quest = faction:AddQuest("LavaCore","Favor Amongst the Brotherhood, Lava Core",500,0,true)
quest:SetIcon("Interface\\Icons\\Spell_Nature_Earthquake")
quest:AddRepRequirement("ThoriumBrotherhood",6,nil,nil,nil)
quest:AddQuestAccepter("Lokhtos Darkbargainer")
quest:AddItemObjective("Lava Core",17011,1,true)


quest = faction:AddQuest("BloodoftheMountain","Favor Amongst the Brotherhood, Blood of the Mountain",500,0,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Gem_Bloodstone_03")
quest:AddRepRequirement("ThoriumBrotherhood",6,nil,nil,nil)
quest:AddQuestAccepter("Lokhtos Darkbargainer")
quest:AddItemObjective("Blood of the Mountain",11382,1,true)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

