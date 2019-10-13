--Make sure the global FactionData table exists.
if (FGC_FactionData == nil) then FGC_FactionData = {} end

--And now, define the faction.
FGC_FactionData["WintersaberTrainers"] = 
{
    ["Category"] = "Classic",  --The current list of Categories is at the top of FactionGrinder2.lua
    ["Side"]     = "Alliance",     --Alliance, Horde, or Both

    ["Icon"] = "Interface\\Icons\\Ability_Mount_PinkTiger",

    ["FactionName"] =          --These are the faction names as returned by the client in each language
        {
            ["enUS"] = "Wintersaber Trainers",
            ["deDE"] = "Wintersäblerausbilder",
            ["frFR"] = "\195\169leveurs de sabres-d'hiver",
            ["zhTW"] = "冬刃豹訓練師",
            ["zhCN"] = "冬刃豹训练师",
        },

    ["Abbreviation"] =
        {
            ["enUS"] = "WT",
            ["deDE"] = "WT",
            ["frFR"] = "ES",
            ["zhTW"] = "冬刃豹",
            ["zhCN"] = "冬刃豹",
        },

    ["StartingRep"] = 0,
    ["RacialRepBonuses"] = 
        {
            ["Human"]     = 0,
            ["Gnome"]     = 0,
            ["Dwarf"]     = 0,
            ["Night Elf"] = 0,
            ["Draenei"]   = 0,

            ["Orc"]       = 0,
            ["Scourge"]   = 0,  --Yes, this is the undead.  Not sure why they mix it up like this.
            ["Troll"]     = 0,
            ["Tauren"]    = 0,
            ["Blood Elf"] = 0
        },
    ["ClassRepBonuses"] = 
        {
            ["DEATH KNIGHT"] = 0,
            ["DRUID"]        = 0,
            ["HUNTER"]       = 0,
            ["MAGE"]         = 0,
            ["PALADIN"]      = 0,
            ["PRIEST"]       = 0,
            ["ROGUE"]        = 0,
            ["SHAMAN"]       = 0,
            ["WARLOCK"]      = 0,
            ["WARRIOR"]      = 0
        },
    ["Quests"] = 
        {
            [1]={
                    ["Quest"] = "FrostsaberProvisions",
                    ["Stackable"] = false,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Food_14",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Frostsaber Provisions",
                                    ["deDE"] = "Frostsäblerverpflegung",
                                    ["frFR"] = "Provisions de sabres-de-givre",
                                    ["zhTW"] = "霜刃豹的糧食",
                                    ["zhCN"] = "霜刃豹的食物",
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [12622] =
                                {
                                    ["Count"] = 5, --Number per turn in
                                    ["Shareable"] = false,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Shardtooth Meat",
                                            ["deDE"] = "Splitterzahnfleisch",
                                            ["frFR"] = "Viande de Croc ac\195\169r\195\169",
                                            ["zhTW"] = "裂齒熊肉",
                                            ["zhCN"] = "碎齿熊肉",
                                        }
                                },
                            [12623] =
                                {
                                    ["Count"] = 5, --Number per turn in
                                    ["Shareable"] = false,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Chillwind Meat",
                                            ["deDE"] = "Fleisch einer Eiswindschimäre",
                                            ["frFR"] = "Viande de Noro\195\174t",
                                            ["zhTW"] = "冰風奇美拉肉",
                                            ["zhCN"] = "冰风奇美拉肉",
                                        }
                                }
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 58,
                    ["RepRequirements"] =
                        {
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rivern Frostwind",
                                            ["deDE"] = "Rivern Frostwind",
                                            ["frFR"] = "Rivern Givrevent",
                                            ["zhTW"] = "雷沃·霜風",
                                            ["zhCN"] = "雷沃·霜翼",
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Winterspring",
                                            ["deDE"] = "Winterquell",
                                            ["frFR"] = "Berceau-de-l'Hiver",
                                            ["zhTW"] = "冬泉谷",
                                            ["zhCN"] = "冬泉谷",
                                        },
                                    ["xCoord"] = 50,
                                    ["yCoord"] = 10
                                }
                        }
                },
            [2]={
                    ["Quest"] = "WinterfallIntrusion",
                    ["Stackable"] = false,
                    ["Icon"]  = "Interface\\Icons\\Ability_Druid_DemoralizingRoar",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Winterfall Intrusion",
                                    ["deDE"] = "Eindringlinge der Winterfelle",
                                    ["frFR"] = "L'incursion des Tombe-hiver",
                                    ["zhTW"] = "冬泉熊怪的侵擾",
                                    ["zhCN"] = "冬泉熊怪的侵扰",
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                        },
                    ["OtherObjectives"] =
                        {
                            [1]={
                                    ["ObjectiveIndex"] = 1,
                                    ["Text"] = 
                                        {
                                            ["enUS"] = "Winterfall Shaman slain",
                                            ["deDE"] = "Schamane der Winterfelle getötet",
                                            ["frFR"] = "Chaman Tombe-hiver tu\195\169",
                                            ["zhTW"] = "殺死冬泉薩滿",
                                            ["zhCN"] = "杀死冬泉萨满祭司",
                                        },
                                    ["Count"] = 5
                                },
                            [2]={
                                    ["ObjectiveIndex"] = 2,
                                    ["Text"] = 
                                        {
                                            ["enUS"] = "Winterfall Ursa slain",
                                            ["deDE"] = "Ursa der Winterfelle getötet",
                                            ["frFR"] = "Ursa Tombe-hiver tu\195\169",
                                            ["zhTW"] = "殺死冬泉巨熊怪",
                                            ["zhCN"] = "杀死冬泉巨熊怪",
                                        },
                                    ["Count"] = 5
                                }
                        },
                    ["MinLevel"] = 58,
                    ["RepRequirements"] =
                        {
                            ["WintersaberTrainers"]=
                                {
                                    ["Min"] = 4,
                                    ["MinExact"] = 1500
                                }
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rivern Frostwind",
                                            ["deDE"] = "Rivern Frostwind",
                                            ["frFR"] = "Rivern Givrevent",
                                            ["zhTW"] = "雷沃·霜風",
                                            ["zhCN"] = "雷沃·霜翼",    
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Winterspring",
                                            ["deDE"] = "Winterquell",
                                            ["frFR"] = "Berceau-de-l'Hiver",
                                            ["zhTW"] = "冬泉谷",
                                            ["zhCN"] = "冬泉谷",
                                        },
                                    ["xCoord"] = 50,
                                    ["yCoord"] = 10
                                }
                        }
                },
            [3]={
                    ["Quest"] = "RampagingGiants",
                    ["Stackable"] = false,
                    ["Icon"]  = "Interface\\Icons\\Ability_Racial_Avatar",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Rampaging Giants",
                                    ["deDE"] = "Tobende Riesen",
                                    ["frFR"] = "G\195\169ants d\195\169cha\195\174n\195\169s",
                                    ["zhTW"] = "狂暴的巨人",
                                    ["zhCN"] = "狂暴的巨人",
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                        },
                    ["OtherObjectives"] =
                        {
                            [1]={
                                    ["ObjectiveIndex"] = 1,
                                    ["Text"] = 
                                        {
                                            ["enUS"] = "Frostmaul Giant slain",
                                            ["deDE"] = "Frosthagelriese getötet",
                                            ["frFR"] = "G\195\169ant Cognegivre tu\195\169",
                                            ["zhTW"] = "殺死霜槌巨人",
                                            ["zhCN"] = "杀死霜槌巨人",
                                        },
                                    ["Count"] = 4
                                },
                            [2]={
                                    ["ObjectiveIndex"] = 2,
                                    ["Text"] = 
                                        {
                                            ["enUS"] = "Frostmaul Preserver slain",
                                            ["deDE"] = "Frosthagelbewahrer getötet",
                                            ["frFR"] = "Protecteur Cognegivre tu\195\169",
                                            ["zhTW"] = "殺死霜槌保衛者",
                                            ["zhCN"] = "杀死霜槌保卫者",
                                        },
                                    ["Count"] = 4
                                }
                        },
                    ["MinLevel"] = 58,
                    ["RepRequirements"] =
                        {
                            ["WintersaberTrainers"]=
                                {
                                    ["Min"] = 6
                                }
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rivern Frostwind",
                                            ["deDE"] = "Rivern Frostwind",
                                            ["frFR"] = "Rivern Givrevent",
                                            ["zhTW"] = "雷沃·霜風",
                                            ["zhCN"] = "雷沃·霜翼",
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Winterspring",
                                            ["deDE"] = "Winterquell",
                                            ["frFR"] = "Berceau-de-l'Hiver",
                                            ["zhTW"] = "冬泉谷",
                                            ["zhCN"] = "冬泉谷",
                                        },
                                    ["xCoord"] = 50,
                                    ["yCoord"] = 10
                                }
                        }
                },
            [4]={["EndOfRow"] = true}
        }
}
