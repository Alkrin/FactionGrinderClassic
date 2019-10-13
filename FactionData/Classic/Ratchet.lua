--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("Ratchet", --UniqueTag (no whitespace)
                                  "Ratchet", --enUS faction name
                                  "Ra", --enUS faction abbreviation
                                  "Classic", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Misc_Bomb_04")

--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Bloodsail Traitor","Stranglethorn Vale",31,70)
faction:AddNPC("Bronn Fitzwrench","Winterspring",59,39)
faction:AddNPC("Rumsen Fizzlebrack","Tanaris",50,26)
faction:AddNPC("Mupsi Shacklefridd","The Barrens",61,38)
faction:AddNPC("Zorbin Fandazzle","Feralas",44,43)
faction:AddNPC("Knot Thimblejack","Dire Maul North","??","??")

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

quest = faction:AddQuest("TraitortotheBloodsail","Traitor to the Bloodsail",250,0,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bandana_03")
quest:AddRepRequirement("BootyBay",nil,3)
quest:AddQuestAccepter("Bloodsail Traitor")
quest:AddItemObjective("Silk Cloth",4306,40,true)
quest:AddItemObjective("Red Dye",2604,4,true)

quest = faction:AddQuest("MakingAmends","Making Amends",250,0,true)
quest:SetIcon("Interface\\Icons\\INV_Ore_Tin_01")
quest:AddRepRequirement("Everlook",nil,3)
quest:AddQuestAccepter("Bronn Fitzwrench")
quest:AddItemObjective("Runecloth",14047,40,true)
quest:AddItemObjective("Coal",3857,4,true)

quest = faction:AddQuest("WaratSea","War at Sea",250,0,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Ammo_Gunpowder_01")
quest:AddRepRequirement("Gadgetzan",nil,3)
quest:AddQuestAccepter("Rumsen Fizzlebrack")
quest:AddItemObjective("Mageweave Cloth",4338,40,true)
quest:AddItemObjective("Strong Flux",3466,4,true)

quest = faction:AddQuest("MendingOldWounds","Mending Old Wounds",500,0,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bandage_15")
quest:AddRepRequirement("Ratchet",nil,3)
quest:AddQuestAccepter("Mupsi Shacklefridd")
quest:AddItemObjective("Linen Cloth",2589,40,true)
quest:AddItemObjective("Empty Vial",3371,4,true)

faction:EndRow()

quest = faction:AddQuest("RefuelfortheZapping","Refuel for the Zapping",25,0,false)
quest:SetIcon("Interface\\Icons\\INV_Stone_02")
quest:AddQuestAccepter("Zorbin Fandazzle")
quest:AddItemObjective("Water Elemental Core",18958,6,false)

quest = faction:AddQuest("AgainWiththeZappedGiants","Again With the Zapped Giants",25,0,false)
quest:SetIcon("Interface\\Icons\\INV_Gizmo_09")
quest:AddQuestAccepter("Zorbin Fandazzle")
quest:AddItemObjective("Miniaturization Residue",18956,10,false)

quest = faction:AddQuest("FreeKnot","Free Knot!",350,0,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Key_11")
quest:AddQuestAccepter("Knot Thimblejack")
quest:AddItemObjective("Gordok Shackle Key",18250,1,false)

quest = faction:AddQuest("TheGordokOgreSuit","The Gordok Ogre Suit",75,0,true)
quest:SetIcon("Interface\\Icons\\INV_Chest_Chain_14")
quest:AddQuestAccepter("Knot Thimblejack")
quest:AddItemObjective("Bolt of Runecloth",14048,4,true)
quest:AddItemObjective("Rugged Leather",8170,8,true)
quest:AddItemObjective("Rune Thread",14341,2,true)
quest:AddItemObjective("Ogre Tannin",18240,1,false)

faction:EndRow()

--Don't forget to set up the Localization files for this faction!
