--Make sure the global FactionData table exists.
if (FGC_FactionData == nil) then FGC_FactionData = {} end

--And now, define the faction.
FGC_FactionData["DarkmoonFaire"] = 
{
    ["Category"] = "Classic",  --The current list of Categories is at the top of FactionGrinderClassic.lua
    ["Side"]     = "Both",     --Alliance, Horde, or Both

    ["Icon"] = "Interface\\Icons\\INV_Misc_Ticket_Darkmoon_01",

    ["FactionName"] =          --These are the faction names as returned by the client in each language
        {
            ["enUS"] = "Darkmoon Faire",
            ["deDE"] = "Darkmoon Faire", --NOT TRANSLATED
            ["frFR"] = "Darkmoon Faire", --NOT TRANSLATED
            ["zhTW"] = "Darkmoon Faire", --NOT TRANSLATED
            ["zhCN"] = "Darkmoon Faire", --NOT TRANSLATED
        },

    ["Abbreviation"] =
        {
            ["enUS"] = "DF",
            ["deDE"] = "DF", --NOT TRANSLATED
            ["frFR"] = "DF", --NOT TRANSLATED
            ["zhTW"] = "DF", --NOT TRANSLATED
            ["zhCN"] = "DF", --NOT TRANSLATED
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
                    ["Quest"] = "SmallFurryPaws",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\Ability_Hunter_MendPet",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Small Furry Paws",
                                    ["deDE"] = "Small Furry Paws", --NOT TRANSLATED
                                    ["frFR"] = "Small Furry Paws", --NOT TRANSLATED
                                    ["zhTW"] = "Small Furry Paws", --NOT TRANSLATED
                                    ["zhCN"] = "Small Furry Paws", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [5134] =
                                {
                                    ["Count"] = 5, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Small Furry Paw",
                                            ["deDE"] = "Small Furry Paw", --NOT TRANSLATED
                                            ["frFR"] = "Small Furry Paw", --NOT TRANSLATED
                                            ["zhTW"] = "Small Furry Paw", --NOT TRANSLATED
                                            ["zhCN"] = "Small Furry Paw", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 1,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 500,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [2]={
                    ["Quest"] = "TornBearPelt",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Pelt_Bear_Ruin_05",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Torn Bear Pelts",
                                    ["deDE"] = "Torn Bear Pelts", --NOT TRANSLATED
                                    ["frFR"] = "Torn Bear Pelts", --NOT TRANSLATED
                                    ["zhTW"] = "Torn Bear Pelts", --NOT TRANSLATED
                                    ["zhCN"] = "Torn Bear Pelts", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [11407] =
                                {
                                    ["Count"] = 5, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Torn Bear Pelt",
                                            ["deDE"] = "Torn Bear Pelt", --NOT TRANSLATED
                                            ["frFR"] = "Torn Bear Pelt", --NOT TRANSLATED
                                            ["zhTW"] = "Torn Bear Pelt", --NOT TRANSLATED
                                            ["zhCN"] = "Torn Bear Pelt", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 10,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 1100,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [3]={
                    ["Quest"] = "SoftBushyTails",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_MonsterTail_02",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Soft Bushy Tails",
                                    ["deDE"] = "Soft Bushy Tails", --NOT TRANSLATED
                                    ["frFR"] = "Soft Bushy Tails", --NOT TRANSLATED
                                    ["zhTW"] = "Soft Bushy Tails", --NOT TRANSLATED
                                    ["zhCN"] = "Soft Bushy Tails", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [4582] =
                                {
                                    ["Count"] = 5, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Soft Bushy Tail",
                                            ["deDE"] = "Soft Bushy Tail", --NOT TRANSLATED
                                            ["frFR"] = "Soft Bushy Tail", --NOT TRANSLATED
                                            ["zhTW"] = "Soft Bushy Tail", --NOT TRANSLATED
                                            ["zhCN"] = "Soft Bushy Tail", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 20,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 1625,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [4]={
                    ["Quest"] = "VibrantPlumes",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Feather_12",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Vibrant Plumes",
                                    ["deDE"] = "Vibrant Plumes", --NOT TRANSLATED
                                    ["frFR"] = "Vibrant Plumes", --NOT TRANSLATED
                                    ["zhTW"] = "Vibrant Plumes", --NOT TRANSLATED
                                    ["zhCN"] = "Vibrant Plumes", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [5117] =
                                {
                                    ["Count"] = 5, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Vibrant Plume",
                                            ["deDE"] = "Vibrant Plume", --NOT TRANSLATED
                                            ["frFR"] = "Vibrant Plume", --NOT TRANSLATED
                                            ["zhTW"] = "Vibrant Plume", --NOT TRANSLATED
                                            ["zhCN"] = "Vibrant Plume", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 30,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 2500,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [5]={
                    ["Quest"] = "EvilBatEyes",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Eye_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Evil Bat Eyes",
                                    ["deDE"] = "Evil Bat Eyes", --NOT TRANSLATED
                                    ["frFR"] = "Evil Bat Eyes", --NOT TRANSLATED
                                    ["zhTW"] = "Evil Bat Eyes", --NOT TRANSLATED
                                    ["zhCN"] = "Evil Bat Eyes", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [11404] =
                                {
                                    ["Count"] = 10, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Evil Bat Eye",
                                            ["deDE"] = "Evil Bat Eye", --NOT TRANSLATED
                                            ["frFR"] = "Evil Bat Eye", --NOT TRANSLATED
                                            ["zhTW"] = "Evil Bat Eye", --NOT TRANSLATED
                                            ["zhCN"] = "Evil Bat Eye", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 40,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 5,
                                    ["MaxExact"] = 5000,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [6]={
                    ["Quest"] = "GlowingScorpidBlood",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\Spell_Shadow_LifeDrain",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Glowing Scorpid Blood",
                                    ["deDE"] = "Glowing Scorpid Blood", --NOT TRANSLATED
                                    ["frFR"] = "Glowing Scorpid Blood", --NOT TRANSLATED
                                    ["zhTW"] = "Glowing Scorpid Blood", --NOT TRANSLATED
                                    ["zhCN"] = "Glowing Scorpid Blood", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [19933] =
                                {
                                    ["Count"] = 10, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Glowing Scorpid Blood",
                                            ["deDE"] = "Glowing Scorpid Blood", --NOT TRANSLATED
                                            ["frFR"] = "Glowing Scorpid Blood", --NOT TRANSLATED
                                            ["zhTW"] = "Glowing Scorpid Blood", --NOT TRANSLATED
                                            ["zhCN"] = "Glowing Scorpid Blood", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 40,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 5,
                                    ["MaxExact"] = 5000,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Yebb Neblegear",
                                            ["deDE"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["frFR"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhTW"] = "Yebb Neblegear", --NOT TRANSLATED
                                            ["zhCN"] = "Yebb Neblegear", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [7]={["EndOfRow"] = true},
            [8]={
                    ["Quest"] = "CoarseWeightstones",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Stone_Weightstone_02",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Coarse Weightstones",
                                    ["deDE"] = "Coarse Weightstones", --NOT TRANSLATED
                                    ["frFR"] = "Coarse Weightstones", --NOT TRANSLATED
                                    ["zhTW"] = "Coarse Weightstones", --NOT TRANSLATED
                                    ["zhCN"] = "Coarse Weightstones", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [3240] =
                                {
                                    ["Count"] = 10, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Coarse Weightstone",
                                            ["deDE"] = "Coarse Weightstone", --NOT TRANSLATED
                                            ["frFR"] = "Coarse Weightstone", --NOT TRANSLATED
                                            ["zhTW"] = "Coarse Weightstone", --NOT TRANSLATED
                                            ["zhCN"] = "Coarse Weightstone", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 1,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 500,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [9]={
                    ["Quest"] = "HeavyGrindingStones",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Stone_GrindingStone_03",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Heavy Grinding Stones",
                                    ["deDE"] = "Heavy Grinding Stones", --NOT TRANSLATED
                                    ["frFR"] = "Heavy Grinding Stones", --NOT TRANSLATED
                                    ["zhTW"] = "Heavy Grinding Stones", --NOT TRANSLATED
                                    ["zhCN"] = "Heavy Grinding Stones", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [3486] =
                                {
                                    ["Count"] = 7, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Heavy Grinding Stone",
                                            ["deDE"] = "Heavy Grinding Stone", --NOT TRANSLATED
                                            ["frFR"] = "Heavy Grinding Stone", --NOT TRANSLATED
                                            ["zhTW"] = "Heavy Grinding Stone", --NOT TRANSLATED
                                            ["zhCN"] = "Heavy Grinding Stone", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 10,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 1100,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [10]={
                    ["Quest"] = "GreenIronBracers",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Bracer_06",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Green Iron Bracers",
                                    ["deDE"] = "Green Iron Bracers", --NOT TRANSLATED
                                    ["frFR"] = "Green Iron Bracers", --NOT TRANSLATED
                                    ["zhTW"] = "Green Iron Bracers", --NOT TRANSLATED
                                    ["zhCN"] = "Green Iron Bracers", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [3835] =
                                {
                                    ["Count"] = 3, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Green Iron Bracers",
                                            ["deDE"] = "Green Iron Bracers", --NOT TRANSLATED
                                            ["frFR"] = "Green Iron Bracers", --NOT TRANSLATED
                                            ["zhTW"] = "Green Iron Bracers", --NOT TRANSLATED
                                            ["zhCN"] = "Green Iron Bracers", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 20,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 1625,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [11]={
                    ["Quest"] = "BigBlackMaces",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Mace_15",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Big Black Mace",
                                    ["deDE"] = "Big Black Mace", --NOT TRANSLATED
                                    ["frFR"] = "Big Black Mace", --NOT TRANSLATED
                                    ["zhTW"] = "Big Black Mace", --NOT TRANSLATED
                                    ["zhCN"] = "Big Black Mace", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [7945] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Big Black Mace",
                                            ["deDE"] = "Big Black Mace", --NOT TRANSLATED
                                            ["frFR"] = "Big Black Mace", --NOT TRANSLATED
                                            ["zhTW"] = "Big Black Mace", --NOT TRANSLATED
                                            ["zhCN"] = "Big Black Mace", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 30,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 2500,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [12]={
                    ["Quest"] = "DenseGrindingStones",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Stone_GrindingStone_05",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Dense Grinding Stones",
                                    ["deDE"] = "Dense Grinding Stones", --NOT TRANSLATED
                                    ["frFR"] = "Dense Grinding Stones", --NOT TRANSLATED
                                    ["zhTW"] = "Dense Grinding Stones", --NOT TRANSLATED
                                    ["zhCN"] = "Dense Grinding Stones", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [12644] =
                                {
                                    ["Count"] = 8, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Dense Grinding Stone",
                                            ["deDE"] = "Dense Grinding Stone", --NOT TRANSLATED
                                            ["frFR"] = "Dense Grinding Stone", --NOT TRANSLATED
                                            ["zhTW"] = "Dense Grinding Stone", --NOT TRANSLATED
                                            ["zhCN"] = "Dense Grinding Stone", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 40,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 5,
                                    ["MaxExact"] = 5000,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 40,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 39
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Kerri Hicks",
                                            ["deDE"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["frFR"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhTW"] = "Kerri Hicks", --NOT TRANSLATED
                                            ["zhCN"] = "Kerri Hicks", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 36
                                }
                        }
                },
            [13]={["EndOfRow"] = true},
            [14]={
                    ["Quest"] = "CopperModulators",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Gizmo_03",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Copper Modulators",
                                    ["deDE"] = "Copper Modulators", --NOT TRANSLATED
                                    ["frFR"] = "Copper Modulators", --NOT TRANSLATED
                                    ["zhTW"] = "Copper Modulators", --NOT TRANSLATED
                                    ["zhCN"] = "Copper Modulators", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [4363] =
                                {
                                    ["Count"] = 5, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Copper Modulator",
                                            ["deDE"] = "Copper Modulator", --NOT TRANSLATED
                                            ["frFR"] = "Copper Modulator", --NOT TRANSLATED
                                            ["zhTW"] = "Copper Modulator", --NOT TRANSLATED
                                            ["zhCN"] = "Copper Modulator", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 1,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 500,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 70
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 37
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [15]={
                    ["Quest"] = "WhirringBronzeGizmos",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Gizmo_02",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Whirring Bronze Gizmos",
                                    ["deDE"] = "Whirring Bronze Gizmos", --NOT TRANSLATED
                                    ["frFR"] = "Whirring Bronze Gizmos", --NOT TRANSLATED
                                    ["zhTW"] = "Whirring Bronze Gizmos", --NOT TRANSLATED
                                    ["zhCN"] = "Whirring Bronze Gizmos", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [4375] =
                                {
                                    ["Count"] = 7, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Whirring Bronze Gizmo",
                                            ["deDE"] = "Whirring Bronze Gizmo", --NOT TRANSLATED
                                            ["frFR"] = "Whirring Bronze Gizmo", --NOT TRANSLATED
                                            ["zhTW"] = "Whirring Bronze Gizmo", --NOT TRANSLATED
                                            ["zhCN"] = "Whirring Bronze Gizmo", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 10,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 1100,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 70
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 37
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [16]={
                    ["Quest"] = "GreenFireworks",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\Spell_Nature_AbolishMagic",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Green Fireworks",
                                    ["deDE"] = "Green Fireworks", --NOT TRANSLATED
                                    ["frFR"] = "Green Fireworks", --NOT TRANSLATED
                                    ["zhTW"] = "Green Fireworks", --NOT TRANSLATED
                                    ["zhCN"] = "Green Fireworks", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [9313] =
                                {
                                    ["Count"] = 36, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Green Firework",
                                            ["deDE"] = "Green Firework", --NOT TRANSLATED
                                            ["frFR"] = "Green Firework", --NOT TRANSLATED
                                            ["zhTW"] = "Green Firework", --NOT TRANSLATED
                                            ["zhCN"] = "Green Firework", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 20,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 1625,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 70
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 37
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [17]={
                    ["Quest"] = "MechanicalRepairKits",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Gizmo_03",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Mechanical Repair Kits",
                                    ["deDE"] = "Mechanical Repair Kits", --NOT TRANSLATED
                                    ["frFR"] = "Mechanical Repair Kits", --NOT TRANSLATED
                                    ["zhTW"] = "Mechanical Repair Kits", --NOT TRANSLATED
                                    ["zhCN"] = "Mechanical Repair Kits", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [11590] =
                                {
                                    ["Count"] = 6, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Mechanical Repair Kit",
                                            ["deDE"] = "Mechanical Repair Kit", --NOT TRANSLATED
                                            ["frFR"] = "Mechanical Repair Kit", --NOT TRANSLATED
                                            ["zhTW"] = "Mechanical Repair Kit", --NOT TRANSLATED
                                            ["zhCN"] = "Mechanical Repair Kit", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 30,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 2500,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 70
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 37
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [18]={
                    ["Quest"] = "ThoriumWidgets",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Gizmo_04",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Thorium Widgets",
                                    ["deDE"] = "Thorium Widgets", --NOT TRANSLATED
                                    ["frFR"] = "Thorium Widgets", --NOT TRANSLATED
                                    ["zhTW"] = "Thorium Widgets", --NOT TRANSLATED
                                    ["zhCN"] = "Thorium Widgets", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [15994] =
                                {
                                    ["Count"] = 6, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Thorium Widget",
                                            ["deDE"] = "Thorium Widget", --NOT TRANSLATED
                                            ["frFR"] = "Thorium Widget", --NOT TRANSLATED
                                            ["zhTW"] = "Thorium Widget", --NOT TRANSLATED
                                            ["zhCN"] = "Thorium Widget", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 40,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 5,
                                    ["MaxExact"] = 5000,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 70
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 37,
                                    ["yCoord"] = 37
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Rinling",
                                            ["deDE"] = "Rinling", --NOT TRANSLATED
                                            ["frFR"] = "Rinling", --NOT TRANSLATED
                                            ["zhTW"] = "Rinling", --NOT TRANSLATED
                                            ["zhCN"] = "Rinling", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [19]={["EndOfRow"] = true},
            [20]={
                    ["Quest"] = "EmbossedLeatherBoots",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Boots_05",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Embossed Leather Boots",
                                    ["deDE"] = "Embossed Leather Boots", --NOT TRANSLATED
                                    ["frFR"] = "Embossed Leather Boots", --NOT TRANSLATED
                                    ["zhTW"] = "Embossed Leather Boots", --NOT TRANSLATED
                                    ["zhCN"] = "Embossed Leather Boots", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [2309] =
                                {
                                    ["Count"] = 3, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Embossed Leather Boots",
                                            ["deDE"] = "Embossed Leather Boots", --NOT TRANSLATED
                                            ["frFR"] = "Embossed Leather Boots", --NOT TRANSLATED
                                            ["zhTW"] = "Embossed Leather Boots", --NOT TRANSLATED
                                            ["zhCN"] = "Embossed Leather Boots", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 1,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 500,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 43,
                                    ["yCoord"] = 70
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 35
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 35
                                }
                        }
                },
            [21]={
                    ["Quest"] = "ToughenedLeatherArmor",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Chest_Leather_10",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Toughened Leather Armor",
                                    ["deDE"] = "Toughened Leather Armor", --NOT TRANSLATED
                                    ["frFR"] = "Toughened Leather Armor", --NOT TRANSLATED
                                    ["zhTW"] = "Toughened Leather Armor", --NOT TRANSLATED
                                    ["zhCN"] = "Toughened Leather Armor", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [2314] =
                                {
                                    ["Count"] = 3, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Toughened Leather Armor",
                                            ["deDE"] = "Toughened Leather Armor", --NOT TRANSLATED
                                            ["frFR"] = "Toughened Leather Armor", --NOT TRANSLATED
                                            ["zhTW"] = "Toughened Leather Armor", --NOT TRANSLATED
                                            ["zhCN"] = "Toughened Leather Armor", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 10,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 1100,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 43,
                                    ["yCoord"] = 70
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 35
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 35
                                }
                        }
                },
            [22]={
                    ["Quest"] = "BarbaricHarness",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Chest_Leather_04",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Barbaric Harness",
                                    ["deDE"] = "Barbaric Harness", --NOT TRANSLATED
                                    ["frFR"] = "Barbaric Harness", --NOT TRANSLATED
                                    ["zhTW"] = "Barbaric Harness", --NOT TRANSLATED
                                    ["zhCN"] = "Barbaric Harness", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [5739] =
                                {
                                    ["Count"] = 3, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Barbaric Harness",
                                            ["deDE"] = "Barbaric Harness", --NOT TRANSLATED
                                            ["frFR"] = "Barbaric Harness", --NOT TRANSLATED
                                            ["zhTW"] = "Barbaric Harness", --NOT TRANSLATED
                                            ["zhCN"] = "Barbaric Harness", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 20,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 1625,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 43,
                                    ["yCoord"] = 70
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 35
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 35
                                }
                        }
                },
            [23]={
                    ["Quest"] = "TurtleScaleLeggings",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Pants_02",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Turtle Scale Leggings",
                                    ["deDE"] = "Turtle Scale Leggings", --NOT TRANSLATED
                                    ["frFR"] = "Turtle Scale Leggings", --NOT TRANSLATED
                                    ["zhTW"] = "Turtle Scale Leggings", --NOT TRANSLATED
                                    ["zhCN"] = "Turtle Scale Leggings", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [8185] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Turtle Scale Leggings",
                                            ["deDE"] = "Turtle Scale Leggings", --NOT TRANSLATED
                                            ["frFR"] = "Turtle Scale Leggings", --NOT TRANSLATED
                                            ["zhTW"] = "Turtle Scale Leggings", --NOT TRANSLATED
                                            ["zhCN"] = "Turtle Scale Leggings", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 30,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 4,
                                    ["MaxExact"] = 2500,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 43,
                                    ["yCoord"] = 70
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 35
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 35
                                }
                        }
                },
            [24]={
                    ["Quest"] = "RuggedArmorKit",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_ArmorKit_09",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Rugged Armor Kits",
                                    ["deDE"] = "Rugged Armor Kits", --NOT TRANSLATED
                                    ["frFR"] = "Rugged Armor Kits", --NOT TRANSLATED
                                    ["zhTW"] = "Rugged Armor Kits", --NOT TRANSLATED
                                    ["zhCN"] = "Rugged Armor Kits", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 250,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [15564] =
                                {
                                    ["Count"] = 8, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Rugged Armor Kit",
                                            ["deDE"] = "Rugged Armor Kit", --NOT TRANSLATED
                                            ["frFR"] = "Rugged Armor Kit", --NOT TRANSLATED
                                            ["zhTW"] = "Rugged Armor Kit", --NOT TRANSLATED
                                            ["zhCN"] = "Rugged Armor Kit", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 40,
                    ["RepRequirements"] =
                        {
                            ["DarkmoonFaire"]=
                                {
                                    ["Max"] = 5,
                                    ["MaxExact"] = 5000,
                                }
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 43,
                                    ["yCoord"] = 70
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 35
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Chronos",
                                            ["deDE"] = "Chronos", --NOT TRANSLATED
                                            ["frFR"] = "Chronos", --NOT TRANSLATED
                                            ["zhTW"] = "Chronos", --NOT TRANSLATED
                                            ["zhCN"] = "Chronos", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 33,
                                    ["yCoord"] = 35
                                }
                        }
                },
            [25]={["EndOfRow"] = true},
            [26]={
                    ["Quest"] = "Sayge1",
                    ["Stackable"] = false,
                    ["Icon"]  = "Interface\\Icons\\INV_Scroll_02",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Your Fortune Awaits You...",
                                    ["deDE"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["frFR"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["zhTW"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["zhCN"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 75,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [19423] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = false,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Sayge's Fortune #23",
                                            ["deDE"] = "Sayge's Fortune #23", --NOT TRANSLATED
                                            ["frFR"] = "Sayge's Fortune #23", --NOT TRANSLATED
                                            ["zhTW"] = "Sayge's Fortune #23", --NOT TRANSLATED
                                            ["zhCN"] = "Sayge's Fortune #23", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 10,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.",
                            ["deDE"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["frFR"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["zhTW"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["zhCN"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Mysterious Eastvale Haystack",
                                            ["deDE"] = "Mysterious Eastvale Haystack", --NOT TRANSLATED
                                            ["frFR"] = "Mysterious Eastvale Haystack", --NOT TRANSLATED
                                            ["zhTW"] = "Mysterious Eastvale Haystack", --NOT TRANSLATED
                                            ["zhCN"] = "Mysterious Eastvale Haystack", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 84,
                                    ["yCoord"] = 64
                                },
                        }
                },
            [27]={
                    ["Quest"] = "Sayge2",
                    ["Stackable"] = false,
                    ["Icon"]  = "Interface\\Icons\\INV_Scroll_02",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Your Fortune Awaits You...",
                                    ["deDE"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["frFR"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["zhTW"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["zhCN"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 75,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [19424] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = false,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Sayge's Fortune #24",
                                            ["deDE"] = "Sayge's Fortune #24", --NOT TRANSLATED
                                            ["frFR"] = "Sayge's Fortune #24", --NOT TRANSLATED
                                            ["zhTW"] = "Sayge's Fortune #24", --NOT TRANSLATED
                                            ["zhCN"] = "Sayge's Fortune #24", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 10,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.",
                            ["deDE"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["frFR"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["zhTW"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["zhCN"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Mysterious Deadmines Chest",
                                            ["deDE"] = "Mysterious Deadmines Chest", --NOT TRANSLATED
                                            ["frFR"] = "Mysterious Deadmines Chest", --NOT TRANSLATED
                                            ["zhTW"] = "Mysterious Deadmines Chest", --NOT TRANSLATED
                                            ["zhCN"] = "Mysterious Deadmines Chest", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Deadmines",
                                            ["deDE"] = "Deadmines", --NOT TRANSLATED
                                            ["frFR"] = "Deadmines", --NOT TRANSLATED
                                            ["zhTW"] = "Deadmines", --NOT TRANSLATED
                                            ["zhCN"] = "Deadmines", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = "??",
                                    ["yCoord"] = "??"
                                },
                        }
                },
            [28]={
                    ["Quest"] = "Sayge3",
                    ["Stackable"] = false,
                    ["Icon"]  = "Interface\\Icons\\INV_Scroll_02",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Your Fortune Awaits You...",
                                    ["deDE"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["frFR"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["zhTW"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["zhCN"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 75,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [19443] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = false,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Sayge's Fortune #25",
                                            ["deDE"] = "Sayge's Fortune #25", --NOT TRANSLATED
                                            ["frFR"] = "Sayge's Fortune #25", --NOT TRANSLATED
                                            ["zhTW"] = "Sayge's Fortune #25", --NOT TRANSLATED
                                            ["zhCN"] = "Sayge's Fortune #25", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 10,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.",
                            ["deDE"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["frFR"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["zhTW"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["zhCN"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Mysterious Wailing Caverns Chest",
                                            ["deDE"] = "Mysterious Wailing Caverns Chest", --NOT TRANSLATED
                                            ["frFR"] = "Mysterious Wailing Caverns Chest", --NOT TRANSLATED
                                            ["zhTW"] = "Mysterious Wailing Caverns Chest", --NOT TRANSLATED
                                            ["zhCN"] = "Mysterious Wailing Caverns Chest", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Wailing Caverns",
                                            ["deDE"] = "Wailing Caverns", --NOT TRANSLATED
                                            ["frFR"] = "Wailing Caverns", --NOT TRANSLATED
                                            ["zhTW"] = "Wailing Caverns", --NOT TRANSLATED
                                            ["zhCN"] = "Wailing Caverns", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = "??",
                                    ["yCoord"] = "??"
                                },
                        }
                },
            [29]={
                    ["Quest"] = "Sayge4",
                    ["Stackable"] = false,
                    ["Icon"]  = "Interface\\Icons\\INV_Scroll_02",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Your Fortune Awaits You...",
                                    ["deDE"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["frFR"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["zhTW"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                    ["zhCN"] = "Your Fortune Awaits You...", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 75,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [19451] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = false,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Sayge's Fortune #26",
                                            ["deDE"] = "Sayge's Fortune #26", --NOT TRANSLATED
                                            ["frFR"] = "Sayge's Fortune #26", --NOT TRANSLATED
                                            ["zhTW"] = "Sayge's Fortune #26", --NOT TRANSLATED
                                            ["zhCN"] = "Sayge's Fortune #26", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 10,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.",
                            ["deDE"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["frFR"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["zhTW"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                            ["zhCN"] = "Fortunes may be obtained from Sayge at the Faire once every two hours.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Mysterious Tree Stump",
                                            ["deDE"] = "Mysterious Tree Stump", --NOT TRANSLATED
                                            ["frFR"] = "Mysterious Tree Stump", --NOT TRANSLATED
                                            ["zhTW"] = "Mysterious Tree Stump", --NOT TRANSLATED
                                            ["zhCN"] = "Mysterious Tree Stump", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 35,
                                    ["yCoord"] = 61
                                },
                        }
                },
            [30]={["EndOfRow"] = true},
            [31]={
                    ["Quest"] = "RoguesDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Rogues Deck",
                                    ["deDE"] = "Darkmoon Rogues Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Rogues Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Rogues Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Rogues Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 25,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [37163] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Rogues Deck",
                                            ["deDE"] = "Rogues Deck", --NOT TRANSLATED
                                            ["frFR"] = "Rogues Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Rogues Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Rogues Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 10,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Fortune Teller is summoned by the deck.",
                            ["deDE"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Darkmoon Fortune Teller",
                                            ["deDE"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["frFR"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["zhTW"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["zhCN"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Anywhere",
                                            ["deDE"] = "Anywhere", --NOT TRANSLATED
                                            ["frFR"] = "Anywhere", --NOT TRANSLATED
                                            ["zhTW"] = "Anywhere", --NOT TRANSLATED
                                            ["zhCN"] = "Anywhere", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = "??",
                                    ["yCoord"] = "??"
                                }
                        }
                },
            [32]={
                    ["Quest"] = "SwordsDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Swords Deck",
                                    ["deDE"] = "Darkmoon Swords Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Swords Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Swords Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Swords Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 25,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [37164] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Swords Deck",
                                            ["deDE"] = "Swords Deck", --NOT TRANSLATED
                                            ["frFR"] = "Swords Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Swords Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Swords Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 20,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Fortune Teller is summoned by the deck.",
                            ["deDE"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Darkmoon Fortune Teller",
                                            ["deDE"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["frFR"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["zhTW"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["zhCN"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Anywhere",
                                            ["deDE"] = "Anywhere", --NOT TRANSLATED
                                            ["frFR"] = "Anywhere", --NOT TRANSLATED
                                            ["zhTW"] = "Anywhere", --NOT TRANSLATED
                                            ["zhCN"] = "Anywhere", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = "??",
                                    ["yCoord"] = "??"
                                }
                        }
                },
            [33]={
                    ["Quest"] = "MagesDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Mages Deck",
                                    ["deDE"] = "Darkmoon Mages Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Mages Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Mages Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Mages Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 25,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [44148] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Mages Deck",
                                            ["deDE"] = "Mages Deck", --NOT TRANSLATED
                                            ["frFR"] = "Mages Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Mages Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Mages Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 30,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Fortune Teller is summoned by the deck.",
                            ["deDE"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Darkmoon Fortune Teller",
                                            ["deDE"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["frFR"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["zhTW"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["zhCN"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Anywhere",
                                            ["deDE"] = "Anywhere", --NOT TRANSLATED
                                            ["frFR"] = "Anywhere", --NOT TRANSLATED
                                            ["zhTW"] = "Anywhere", --NOT TRANSLATED
                                            ["zhCN"] = "Anywhere", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = "??",
                                    ["yCoord"] = "??"
                                }
                        }
                },
            [34]={
                    ["Quest"] = "DemonsDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Demons Deck",
                                    ["deDE"] = "Darkmoon Demons Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Demons Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Demons Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Demons Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 25,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [44158] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Demons Deck",
                                            ["deDE"] = "Demons Deck", --NOT TRANSLATED
                                            ["frFR"] = "Demons Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Demons Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Demons Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 40,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Fortune Teller is summoned by the deck.",
                            ["deDE"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Fortune Teller is summoned by the deck.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Darkmoon Fortune Teller",
                                            ["deDE"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["frFR"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["zhTW"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                            ["zhCN"] = "Darkmoon Fortune Teller", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Anywhere",
                                            ["deDE"] = "Anywhere", --NOT TRANSLATED
                                            ["frFR"] = "Anywhere", --NOT TRANSLATED
                                            ["zhTW"] = "Anywhere", --NOT TRANSLATED
                                            ["zhCN"] = "Anywhere", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = "??",
                                    ["yCoord"] = "??"
                                }
                        }
                },
            [35]={["EndOfRow"] = true},
            [36]={
                    ["Quest"] = "BeastsDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Beasts Deck",
                                    ["deDE"] = "Darkmoon Beasts Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Beasts Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Beasts Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Beasts Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [19228] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Beasts Deck",
                                            ["deDE"] = "Beasts Deck", --NOT TRANSLATED
                                            ["frFR"] = "Beasts Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Beasts Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Beasts Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 60,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [37]={
                    ["Quest"] = "ElementalsDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Elementals Deck",
                                    ["deDE"] = "Darkmoon Elementals Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Elementals Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Elementals Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Elementals Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [19267] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Elementals Deck",
                                            ["deDE"] = "Elementals Deck", --NOT TRANSLATED
                                            ["frFR"] = "Elementals Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Elementals Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Elementals Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 60,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [38]={
                    ["Quest"] = "PortalsDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Portals Deck",
                                    ["deDE"] = "Darkmoon Portals Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Portals Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Portals Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Portals Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [19277] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Portals Deck",
                                            ["deDE"] = "Portals Deck", --NOT TRANSLATED
                                            ["frFR"] = "Portals Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Portals Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Portals Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 60,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [39]={
                    ["Quest"] = "WarlordsDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Warlords Deck",
                                    ["deDE"] = "Darkmoon Warlords Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Warlords Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Warlords Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Warlords Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [19257] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Warlords Deck",
                                            ["deDE"] = "Warlords Deck", --NOT TRANSLATED
                                            ["frFR"] = "Warlords Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Warlords Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Warlords Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 60,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [40]={["EndOfRow"] = true},
            [41]={
                    ["Quest"] = "BlessingsDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Blessings Deck",
                                    ["deDE"] = "Darkmoon Blessings Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Blessings Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Blessings Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Blessings Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [31890] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Blessings Deck",
                                            ["deDE"] = "Blessings Deck", --NOT TRANSLATED
                                            ["frFR"] = "Blessings Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Blessings Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Blessings Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 70,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [42]={
                    ["Quest"] = "FuriesDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Furies Deck",
                                    ["deDE"] = "Darkmoon Furies Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Furies Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Furies Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Furies Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [31907] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Furies Deck",
                                            ["deDE"] = "Furies Deck", --NOT TRANSLATED
                                            ["frFR"] = "Furies Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Furies Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Furies Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 70,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [43]={
                    ["Quest"] = "LunacyDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Lunacy Deck",
                                    ["deDE"] = "Darkmoon Lunacy Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Lunacy Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Lunacy Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Lunacy Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [31914] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Lunacy Deck",
                                            ["deDE"] = "Lunacy Deck", --NOT TRANSLATED
                                            ["frFR"] = "Lunacy Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Lunacy Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Lunacy Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 70,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [44]={
                    ["Quest"] = "StormsDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Storms Deck",
                                    ["deDE"] = "Darkmoon Storms Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Storms Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Storms Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Storms Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [31891] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Storms Deck",
                                            ["deDE"] = "Storms Deck", --NOT TRANSLATED
                                            ["frFR"] = "Storms Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Storms Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Storms Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 70,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [45]={["EndOfRow"] = true},
            [46]={
                    ["Quest"] = "ChaosDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Chaos Deck",
                                    ["deDE"] = "Darkmoon Chaos Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Chaos Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Chaos Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Chaos Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [44276] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Chaos Deck",
                                            ["deDE"] = "Chaos Deck", --NOT TRANSLATED
                                            ["frFR"] = "Chaos Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Chaos Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Chaos Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 80,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [47]={
                    ["Quest"] = "NoblesDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Nobles Deck",
                                    ["deDE"] = "Darkmoon Nobles Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Nobles Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Nobles Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Nobles Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [44326] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Nobles Deck",
                                            ["deDE"] = "Nobles Deck", --NOT TRANSLATED
                                            ["frFR"] = "Nobles Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Nobles Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Nobles Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 80,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [48]={
                    ["Quest"] = "PrismsDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Prisms Deck",
                                    ["deDE"] = "Darkmoon Prisms Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Prisms Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Prisms Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Prisms Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [44259] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Prisms Deck",
                                            ["deDE"] = "Prisms Deck", --NOT TRANSLATED
                                            ["frFR"] = "Prisms Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Prisms Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Prisms Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 80,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [49]={
                    ["Quest"] = "UndeathDeck",
                    ["Stackable"] = true,
                    ["Icon"]  = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Stack_01",
                    ["Names"] = 
                        {
                            [1]={
                                    ["enUS"] = "Darkmoon Undeath Deck",
                                    ["deDE"] = "Darkmoon Undeath Deck", --NOT TRANSLATED
                                    ["frFR"] = "Darkmoon Undeath Deck", --NOT TRANSLATED
                                    ["zhTW"] = "Darkmoon Undeath Deck", --NOT TRANSLATED
                                    ["zhCN"] = "Darkmoon Undeath Deck", --NOT TRANSLATED
                                }
                        },
                    ["RepValue"] = 350,
                    ["GoldCost"] = 0,
                    ["ItemObjectives"] = --Key:ItemID
                        {
                            [44294] =
                                {
                                    ["Count"] = 1, --Number per turn in
                                    ["Shareable"] = true,
                                    ["Name"] = 
                                        {
                                            ["enUS"] = "Undeath Deck",
                                            ["deDE"] = "Undeath Deck", --NOT TRANSLATED
                                            ["frFR"] = "Undeath Deck", --NOT TRANSLATED
                                            ["zhTW"] = "Undeath Deck", --NOT TRANSLATED
                                            ["zhCN"] = "Undeath Deck", --NOT TRANSLATED
                                        }
                                },
                        },
                    ["OtherObjectives"] =
                        {
                        },
                    ["MinLevel"] = 80,
                    ["RepRequirements"] =
                        {
                        },
                    ["ExtraInfo"] = 
                        {
                            ["enUS"] = "The Darkmoon Faire appears in a different location every few weeks.",
                            ["deDE"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["frFR"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhTW"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                            ["zhCN"] = "The Darkmoon Faire appears in a different location every few weeks.", --NOT TRANSLATED
                        },
                    ["QuestAccepters"] =
                        {
                            [1]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Elwynn Forest",
                                            ["deDE"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["frFR"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Elwynn Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Elwynn Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 41,
                                    ["yCoord"] = 69
                                },
                            [2]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Mulgore",
                                            ["deDE"] = "Mulgore", --NOT TRANSLATED
                                            ["frFR"] = "Mulgore", --NOT TRANSLATED
                                            ["zhTW"] = "Mulgore", --NOT TRANSLATED
                                            ["zhCN"] = "Mulgore", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 36,
                                    ["yCoord"] = 38
                                },
                            [3]={
                                    ["Name"] =
                                        {
                                            ["enUS"] = "Professor Thaddeus Paleo",
                                            ["deDE"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["frFR"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhTW"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                            ["zhCN"] = "Professor Thaddeus Paleo", --NOT TRANSLATED
                                        },
                                    ["Zone"] =
                                        {
                                            ["enUS"] = "Terokkar Forest",
                                            ["deDE"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["frFR"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhTW"] = "Terokkar Forest", --NOT TRANSLATED
                                            ["zhCN"] = "Terokkar Forest", --NOT TRANSLATED
                                        },
                                    ["xCoord"] = 34,
                                    ["yCoord"] = 34
                                }
                        }
                },
            [50]={["EndOfRow"] = true},
        }
}
