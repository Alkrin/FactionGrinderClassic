--This file contains the functions used to assemble Faction data tables.


--factionTag - unique identifier for the faction.  Must contain no whitespace.
--factionName - the enUS name for this faction
--factionAbbreviation - the enUS abbreviation for this faction
--category - the tag for the expansion this faction is from ("Classic","BurningCrusade","Wrath",etc.)
--side - "Alliance","Horde", or "Both"
function FGC_CreateFaction(factionTag,factionName,factionAbbreviation,category,side)
    --Set up this faction's data table with default values.
    local result = {}
    result.Category = category
    result.Side = side
    result.Icon = "Interface\\Icons\\TEMP.BLP"

    result.Text = FGC_CreateLocalizationTable()
    result.Text:Add("FactionName",factionName)
    result.Text:Add("Abbreviation",factionAbbreviation)

    result.StartingRep = 0
    result.RacialRepBonuses =
    {
            ["Human"]     = 0,
            ["Gnome"]     = 0,
            ["Dwarf"]     = 0,
            ["Night Elf"] = 0,
            ["Draenei"]   = 0,

            ["Pandaren"]  = 0,

            ["Orc"]       = 0,
            ["Scourge"]   = 0,  --Yes, this is the undead.  Not sure why they mix it up like this.
            ["Troll"]     = 0,
            ["Tauren"]    = 0,
            ["Blood Elf"] = 0
        }
    result.ClassRepBonuses =
    {
            ["DEATH KNIGHT"] = 0,
            ["DRUID"]        = 0,
            ["HUNTER"]       = 0,
            ["MAGE"]         = 0,
            ["MONK"]         = 0,
            ["PALADIN"]      = 0,
            ["PRIEST"]       = 0,
            ["ROGUE"]        = 0,
            ["SHAMAN"]       = 0,
            ["WARLOCK"]      = 0,
            ["WARRIOR"]      = 0
        }
    result.NPCs = {}
    result.Quests = {}

    --Attach the table functions.
    result.SetIcon = FGC_SetIcon
    result.SetStartingRep = FGC_SetStartingRep
    result.SetRacialRepBonus = FGC_SetRacialRepBonus
    result.SetClassRepBonus = FGC_SetClassRepBonus

    result.AddNPC = FGC_AddNPC
    result.AddQuest = FGC_AddQuest
    result.EndRow = FGC_EndRow

    --Ensure the parent table's existence.
    if (FGC_FactionData == nil) then FGC_FactionData = {} end
    --Put this faction into the parent table.
    FGC_FactionData[factionTag] = result
    FGC_CurrentFaction = result

    return result
end

function FGC_SetIcon(self,iconPath)
    self.Icon = iconPath
end

function FGC_SetStartingRep(self,baseValue)
    self.StartingRep = baseValue
end

function FGC_SetRacialRepBonus(self,race,bonus)
    self.RacialRepBonuses[race] = bonus
end

function FGC_SetClassRepBonus(self,class,bonus)
    self.ClassRepBonuses[class] = bonus
end

function FGC_AddNPC(self,englishName,zone,xCoord,yCoord)
    local npc = {}
    npc.Name = englishName
    npc.Zone = zone
    npc.xCoord = xCoord
    npc.yCoord = yCoord

    self.NPCs[englishName] = npc

    --Add the NPC name to our localization table.
    self.Text:Add(englishName)
end

function FGC_AddQuest(self,tag,englishName,baseRep,minLevel,stackable)
    local quest = {}
    quest.Quest = tag
    quest.Stackable = stackable
    quest.Names = {[1]=englishName}
    quest.RepValue = baseRep
    quest.GoldCost = 0
    quest.Icon = "Interface\\Icons\\TEMP.BLP"
    quest.MinLevel = minLevel
    quest.ItemObjectives = {}
    quest.OtherObjectives = {}
    quest.RepRequirements = {}
    quest.QuestAccepters = {}

    --Attach the table functions.
    quest.AddAlternateName = FGC_AddAlternateName
    quest.SetIcon = FGC_SetIcon
    quest.AddGoldObjective = FGC_AddGoldObjective
    quest.AddItemObjective = FGC_AddItemObjective
    quest.AddOtherObjective = FGC_AddOtherObjective
    quest.AddRepRequirement = FGC_AddRepRequirement
    quest.AddQuestAccepter = FGC_AddQuestAccepter
    quest.AddExtraInfo = FGC_AddExtraInfo

    table.insert(self.Quests,quest) --Maintains creation order.

    FGC_CurrentFaction.Text:Add(englishName)

    return quest
end

function FGC_EndRow(self)
    local ender = {["EndOfRow"] = true}
    table.insert(self.Quests,ender)
end

function FGC_AddAlternateName(self,name)
    table.insert(self.Names,name)

    FGC_CurrentFaction.Text:Add(name)
end

function FGC_AddGoldObjective(self,amount)
    self.GoldCost = amount
end

function FGC_AddItemObjective(self,englishName,itemID,count,shareable)
    local obj = {}
    obj.Count = count
    obj.Shareable = shareable
    obj.Name = englishName

    self.ItemObjectives[itemID] = obj

    --Add the item name to our localization table
    FGC_CurrentFaction.Text:Add(englishName)
end

function FGC_AddOtherObjective(self,objectiveIndex,text,count)
    if (count == nil) then count=0 end

    local obj = {}
    obj.ObjectiveIndex = objectiveIndex
    obj.Text = text
    obj.Count = count

    table.insert(self.OtherObjectives,obj)

    --Add the objective text to our localization table
    FGC_CurrentFaction.Text:Add(text)
end

function FGC_AddRepRequirement(self,factionTag,minRepLevel,maxRepLevel,minExact,maxExact)
    local req = {}
    if (minRepLevel ~= nil) then req.Min = minRepLevel end
    if (maxRepLevel ~= nil) then req.Max = maxRepLevel end
    if (minExact ~= nil) then req.MinExact = minExact end
    if (maxExact ~= nil) then req.MaxExact = maxExact end

    self.RepRequirements[factionTag] = req
end

function FGC_AddQuestAccepter(self,englishName)
    table.insert(self.QuestAccepters,FGC_CurrentFaction.NPCs[englishName])
end

function FGC_AddExtraInfo(self,text)
    self.ExtraInfo = text

    --Add the text to our localization table
    FGC_CurrentFaction.Text:Add(text)
end
