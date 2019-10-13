
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("Consortium", --UniqueTag (no whitespace)
                                  "The Consortium", --enUS faction name
                                  "Co", --enUS faction abbreviation
                                  "BurningCrusade", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Misc_Bone_04")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Shadrek","Nagrand",32,57)
faction:AddNPC("Gezhe","Nagrand",31,58)
faction:AddNPC("Nether-Stalker Khay'ji","Netherstorm",32,64)


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

quest = faction:AddQuest("PairofIvoryTusks","More Heads Full of Ivory",250,64,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bone_04")
quest:AddRepRequirement("Consortium",4,4,nil,nil)
quest:AddQuestAccepter("Shadrek")
quest:AddItemObjective("Pair of Ivory Tusks",25463,3,true)


quest = faction:AddQuest("OshugunCrystalFragment","More Crystal Fragments",250,64,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Gem_Diamond_03")
quest:AddRepRequirement("Consortium",4,4,nil,nil)
quest:AddQuestAccepter("Gezhe")
quest:AddItemObjective("Oshu'gun Crystal Fragment",25416,10,true)


quest = faction:AddQuest("ObsidianWarbeads","More Obsidian Warbeads",250,64,true)
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Necklace_19")
quest:AddRepRequirement("Consortium",5,nil,nil,nil)
quest:AddQuestAccepter("Gezhe")
quest:AddItemObjective("Obsidian Warbeads",25433,10,false)


quest = faction:AddQuest("ZaxxisInsignia","Another Heap of Ethereals",250,67,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_WartornScrap_Leather")
quest:AddRepRequirement("Consortium",5,nil,nil,nil)
quest:AddQuestAccepter("Nether-Stalker Khay'ji")
quest:AddItemObjective("Zaxxis Insignia",29209,10,false)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

