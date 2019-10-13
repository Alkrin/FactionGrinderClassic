
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("ShatariSkyguard", --UniqueTag (no whitespace)
                                  "Sha'tari Skyguard", --enUS faction name
                                  "SS", --enUS faction abbreviation
                                  "BurningCrusade", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\Ability_Hunter_Pet_NetherRay")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord,index) - index is optional and should only be used if you have multiple NPCs with the same englishName
faction:AddNPC("Severin","Terokkar Forest",53,79)
faction:AddNPC("Sky Sergeant Doryn","Terokkar Forest",53,79)
faction:AddNPC("Sky Sergeant Vanderlip","Blade's Edge Mountains",27,52)
faction:AddNPC("Skyguard Khatie","Blade's Edge Mountains",27,51)


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

quest = faction:AddQuest("ShadowDust","More Shadow Dust",150,70,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Dust_02")
quest:AddRepRequirement("ShatariSkyguard",4,nil,nil,nil)
quest:AddQuestAccepter("Severin")
quest:AddItemObjective("Shadow Dust",32388,6,true)


faction:EndRow()
quest = faction:AddQuest("FiresOverSkettis","Fires Over Skettis",350,70,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bomb_07")
quest:AddRepRequirement("ShatariSkyguard",4,nil,nil,nil)
quest:AddQuestAccepter("Sky Sergeant Doryn")
quest:AddOtherObjective(1,"Monstrous Kaliri Egg Destroyed",20)


quest = faction:AddQuest("EscapefromSkettis","Escape from Skettis",150,70,false)
quest:SetIcon("Interface\\Icons\\INV_Box_PetCarrier_01")
quest:AddRepRequirement("ShatariSkyguard",4,nil,nil,nil)
quest:AddQuestAccepter("Sky Sergeant Doryn")
quest:AddOtherObjective(1,"Skyguard Prisoner Rescued",0)


quest = faction:AddQuest("BombThemAgain","Bomb Them Again!",500,70,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Bomb_04")
quest:AddRepRequirement("ShatariSkyguard",4,nil,nil,nil)
quest:AddQuestAccepter("Sky Sergeant Vanderlip")
quest:AddOtherObjective(1,"Fel Cannonball Stacks destroyed",15)


quest = faction:AddQuest("WrangleMoreAetherRays","Wrangle More Aether Rays!",350,70,false)
quest:SetIcon("Interface\\Icons\\INV_Misc_Noose_01")
quest:AddRepRequirement("ShatariSkyguard",4,nil,nil,nil)
quest:AddQuestAccepter("Skyguard Khatie")
quest:AddOtherObjective(1,"Aether Rays wrangled",5)


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

