
--Faction
--  faction:SetIcon(iconPath)
--  faction:SetStartingRep(value) - value is -42000 to 42000
--  faction:SetRacialRepBonus(race,value) - value can be positive or negative
--                                          race is Human, Gnome, Dwarf, Night Elf, Draenei, Pandaren, Orc, Troll, Tauren, Blood Elf, Scourge (scourge = undead)
--  faction:SetClassRepBonus(class,value) - value can be positive or negative
--                                          class is DEATH KNIGHT, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR
local faction = FGC_CreateFaction("Shatar", --UniqueTag (no whitespace)
                                  "The Sha'tar", --enUS faction name
                                  "Sh", --enUS faction abbreviation
                                  "BurningCrusade", --Category / Expansion tag
                                  "Both") --Side (Horde/Alliance/Both)

faction:SetIcon("Interface\\Icons\\INV_Jewelry_Ring_63")


--Quest NPCs
--  faction:AddNPC(englishName,englishZone,xCoord,yCoord)
faction:AddNPC("Adyen the Lightwarden","Shattrath City",31,35)
faction:AddNPC("Ishanah","Shattrath City",24,30)
faction:AddNPC("Harbinger Saronen","Shadowmoon Valley",62,29)
faction:AddNPC("Magistrix Fyalenn","Shattrath City",45,81)
faction:AddNPC("Voren'thal the Seer","Shattrath City",43,92)
faction:AddNPC("Battlemage Vyara","Shadowmoon Valley",56,58)


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

quest = faction:AddQuest("MarkofKiljaeden","More Marks of Kil'jaeden",12.5,62,true)
quest:AddAlternateName("Single Mark of Kil'jaeden")
quest:SetIcon("Interface\\Icons\\Spell_Shadow_DemonicFortitude")
quest:AddRepRequirement("Shatar",nil,5,nil,nil)
quest:AddRepRequirement("Aldor",4,5,nil,nil)
quest:AddQuestAccepter("Adyen the Lightwarden")
quest:AddItemObjective("Mark of Kil'jaeden",29425,1,true)


quest = faction:AddQuest("FelArmament","Fel Armaments",175,64,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Desecrated_PlateGloves")
quest:AddRepRequirement("Shatar",nil,5,nil,nil)
quest:AddRepRequirement("Aldor",4,nil,nil,nil)
quest:AddQuestAccepter("Ishanah")
quest:AddItemObjective("Fel Armament",29740,1,true)
quest:AddExtraInfo("Grants Aldor rep but no Sha'tar rep once Honored with Sha'tar")


quest = faction:AddQuest("MarkofSargeras","More Marks of Sargeras",12.5,68,true)
quest:AddAlternateName("Single Mark of Sargeras")
quest:SetIcon("Interface\\Icons\\Spell_Shadow_DemonicFortitude")
quest:AddRepRequirement("Shatar",nil,5,nil,nil)
quest:AddRepRequirement("Aldor",4,nil,nil,nil)
quest:AddQuestAccepter("Adyen the Lightwarden")
quest:AddQuestAccepter("Harbinger Saronen")
quest:AddItemObjective("Mark of Sargeras",30809,1,true)
quest:AddExtraInfo("Grants Aldor rep but no Sha'tar rep once Honored with Sha'tar")


faction:EndRow()
quest = faction:AddQuest("FirewingSignet","More Firewing Signets",12.5,62,true)
quest:AddAlternateName("Single Firewing Signet")
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Ring_23")
quest:AddRepRequirement("Shatar",nil,5,nil,nil)
quest:AddRepRequirement("Scryers",4,5,nil,nil)
quest:AddQuestAccepter("Magistrix Fyalenn")
quest:AddItemObjective("Firewing Signet",29426,1,true)


quest = faction:AddQuest("ArcaneTome","Arcane Tomes",175,64,true)
quest:SetIcon("Interface\\Icons\\INV_Misc_Book_07")
quest:AddRepRequirement("Shatar",nil,5,nil,nil)
quest:AddRepRequirement("Scryers",4,nil,nil,nil)
quest:AddQuestAccepter("Voren'thal the Seer")
quest:AddItemObjective("Arcane Tome",29739,1,true)
quest:AddExtraInfo("Grants Scryers rep but no Sha'tar rep once Honored with Sha'tar")


quest = faction:AddQuest("SunfurySignet","More Sunfury Signets",12.5,68,true)
quest:AddAlternateName("Single Sunfury Signet")
quest:SetIcon("Interface\\Icons\\INV_Jewelry_Ring_36")
quest:AddRepRequirement("Shatar",nil,5,nil,nil)
quest:AddRepRequirement("Scryers",4,nil,nil,nil)
quest:AddQuestAccepter("Magistrix Fyalenn")
quest:AddQuestAccepter("Battlemage Vyara")
quest:AddItemObjective("Sunfury Signet",30810,1,true)
quest:AddExtraInfo("Grants Scryers rep but no Sha'tar rep once Honored with Sha'tar")


faction:EndRow()


--Don't forget to set up the Localization files for this faction!

