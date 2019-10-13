--FactionGrinderClassic
--Written By Tiok - US Thrall
function D(t) DEFAULT_CHAT_FRAME:AddMessage(t) end

FGC_INITIALIZED = false
FGC_INITIAL_UPDATE_QUEUED = false

FGC_PREFIX = "FACTIONGRINDERCLASSIC";

FGC_Categories = 
{
    [1] = "Classic",
    --The rest of these are currently disabled, but I'm leaving them in in case Blizzard
    --decides to do 'classic' versions of more expansions.
    --[2] = "BurningCrusade",
    --[3] = "Wrath",
}

FGC_RED      = "|cffff0000";
FGC_ORANGE   = "|cffff8800";
FGC_GREEN    = "|cff00ff00";
FGC_BLUE     = "|cff0000ff";
FGC_YELLOW   = "|cffffff00";
FGC_WHITE    = "|cffffffff";
FGC_GOLD     = "|cffffcc22";
FGC_GREY     = "|cffaaaaaa";
FGC_GRELLOW  = "|cffaaff00";
FGC_GRUE     = "|cff00ff50";
FGC_EPIC     = "|cffa436ee"; --that epic purpley color
FGC_SUPERIOR = "|cff0071df"; --that superior bluey color

FGC_FactionTopValues = --Key:factionStandingID (0-6), Value:rep amount to move to next standing
{
    [1] = -6000,
    [2] = -3000,
    [3] = 0,
    [4] = 3000,
    [5] = 9000,
    [6] = 21000,
    [7] = 42000,
    [8] = 43000
}

FGC_FactionBottomValues = --Key:factionStandingID (0-6), Value:rep amount to move to next standing
{
    [1] = -42000,
    [2] = -6000,
    [3] = -3000,
    [4] = 0,
    [5] = 3000,
    [6] = 9000,
    [7] = 21000,
    [8] = 42000
}

FGC_FactionStandingNames = 
{
    [1] = "Hated",
    [2] = "Hostile",
    [3] = "Unfriendly",
    [4] = "Neutral",
    [5] = "Friendly",
    [6] = "Honored",
    [7] = "Revered",
    [8] = "Exalted"
}

FGC_FactionStandingColors = 
{
    [1] = FGC_RED,
    [2] = FGC_RED,
    [3] = FGC_ORANGE,
    [4] = FGC_YELLOW,
    [5] = FGC_WHITE,
    [6] = FGC_GREEN,
    [7] = FGC_SUPERIOR,
    [8] = FGC_EPIC
}

FGC_GRIND_UPDATE_INTERVAL = 1.0
FGC_NEXT_GRIND_UPDATE = 0

FGC_PendingRep = {}
FGC_NowGrinding = {}
FGC_GrindingStartedAt = {}
FGC_InitialRep = {}
FGC_PreviousGrindingTime = {}
FGC_PreviousRepGround = {}

FGC_FactionWidgetsCreated = {}

if (FGC_FactionData == nil) then FGC_FactionData = {} end


function FGC_RegisterEvents()
    FGC_SettingsFrame:RegisterEvent("VARIABLES_LOADED")
    FGC_SettingsFrame:RegisterEvent("CHAT_MSG_CHANNEL_NOTICE")
    FGC_SettingsFrame:RegisterEvent("CHAT_MSG_COMBAT_FACTION_CHANGE")
    FGC_SettingsFrame:RegisterEvent("QUEST_LOG_UPDATE")
    FGC_SettingsFrame:RegisterEvent("PLAYER_LEAVING_WORLD")
    --add event registrations here
end

function FGC_Init()
    FGC_INITIALIZED = true
    FGC_NEXT_GRIND_UPDATE = GetTime() + FGC_GRIND_UPDATE_INTERVAL
    --Version Check
    if (FGCSettings == nil) or (FGCSettings["Version"] ~= GetAddOnMetadata("FactionGrinderClassic", "Version")) then
        FGCSettings = {}
        FGCSettings["GrindStatsTrackersShown"] = {}
        FGCSettings["TurnInTrackersShown"] = {}
        FGCSettings["TrackerPositions"] = {}
        FGCSettings["Version"] = GetAddOnMetadata("FactionGrinderClassic", "Version");
    end
    --Category Display
    if (FGCSettings["Categories"] == nil) then FGCSettings["Categories"] = {} end
    for order,cat in pairs(FGC_Categories) do
        --Add any new categories to the list, defaults to ON.
        if (FGCSettings["Categories"][cat] == nil) then
            FGCSettings["Categories"][cat] = 1
        end
    end
    for cat,show in pairs(FGCSettings["Categories"]) do
        --Remove any "extinct" categories from the list.
        local found = false
        for i,livecat in ipairs(FGC_Categories) do
            if (livecat == cat) then
                found = true
                break
            end
        end
        if (found == false) then
            FGCSettings["Categories"][cat] = nil
        end
    end

    --Create Category labels and checkboxes.
    local name,win
    local top = -5
    local yInc = -20
    local f = getglobal("FGC_CategoriesScrollChild");

    for order,cat in ipairs(FGC_Categories) do
        --Create the labels
        name = "FGC_"..cat.."CategoryLabel"
        f:CreateFontString(name)
        win = _G[name]
        win:SetFontObject("GameFontNormalSmall")
        win:SetText(FGC_TEXT:Get(cat))
        win:SetPoint("TOPLEFT",30,top)

        --Create the checkboxes
        name = "FGC_"..cat.."CategoryCheckbox"
        win = CreateFrame("CheckButton",name,f,"FGC_CategoryCheckButton")
        win:SetPoint("TOPLEFT",10,top+5)
        --Check the checkboxes if necessary
        win:SetChecked(FGCSettings["Categories"][cat] == 1)

        top = top + yInc
    end
    f:SetHeight(math.max(f:GetParent():GetHeight(),-top))

    --Now that we know what categories are selected, let's show all the appropriate factions.
    FGC_DisplaySelectedCategories()

    --Update the General Settings status
    FGC_CB_IncludeBankBags:SetChecked(FGCSettings["IncludeBankBags"])
    FGC_CB_IncludeItemsOnAlts:SetChecked(FGCSettings["IncludeItemsOnAlts"])

    --And show/hide anything that was shown/hidden during the last play session.
    FGC_ToggleTrackerDisplay(FGCSettings["Show"] == 1)
    FGC_UpdateDisplayData()
    FGC_UpdateRepBars()
end

function FGC_SlashSettings()
    local frame = _G["FGC_SettingsFrame"];
    InterfaceOptionsFrame_OpenToCategory(frame)
end

function FGC_SlashShow()
    FGC_ToggleTrackerDisplay(FGCSettings["Show"] ~= 1)
end

function FGC_RegisterSlashCommands()
    SLASH_fgcsettings1 = "/fgs"
    SLASH_fgcshow1 = "/fg"

    SlashCmdList["fgcsettings"] = function() FGC_SlashSettings() end
    SlashCmdList["fgcshow"] = function() FGC_SlashShow() end

    --add slash command registrations here
end

function FGC_OnLoad(panel)
    FGC_RegisterEvents()
    FGC_RegisterSlashCommands()

    --Some localization
    FGC_GeneralSettingsHeader:SetText(FGC_TEXT:Get("General Settings"));
    FGC_CategoriesHeader:SetText(FGC_TEXT:Get("Categories"));
    FGC_FactionsHeader:SetText(FGC_TEXT:Get("Factions"));
    FGC_TurninLabel:SetText(FGC_TEXT:Get("Turn-ins"));
    FGC_GrindStatsLabel:SetText(FGC_TEXT:Get("Grind Stats"));

    --Hook our settings panel into the built-in Interface Settings stuff.
    panel.name = FGC_TEXT:Get("Faction Grinder Classic")
    panel.okay = function(self) end
    panel.cancel = function(self) end
    InterfaceOptions_AddCategory(panel)
end

function FGC_OnEvent(self, event,...)
    if ( event == "VARIABLES_LOADED" ) then
        FGC_Init();
    elseif ( event == "CHAT_MSG_CHANNEL_NOTICE") then
        --This event usually fires late enough for all item and faction data to have been loaded,
        --so we use it to trigger an initial update on visible trackers.
        FGC_SettingsFrame:UnregisterEvent("CHAT_MSG_CHANNEL_NOTICE");
        FGC_InitialDataUpdate()
    elseif ( event == "CHAT_MSG_COMBAT_FACTION_CHANGE") then
        FGC_UpdateRepBars()
    elseif ( event == "QUEST_LOG_UPDATE") then
        FGC_UpdateDisplayData()
    elseif ( event == "PLAYER_LEAVING_WORLD") then
        FGC_OnPlayerLeavingWorld()
    end

    if (FGC_INITIAL_UPDATE_QUEUED and FGC_INITIALIZED) then
        FGC_InitialDataUpdate()
    end
end

function FGC_OnCategoryCheckButtonClicked(category,checked)
    if (checked) then
        FGCSettings["Categories"][category] = 1
    else
        FGCSettings["Categories"][category] = 0
    end

    FGC_DisplaySelectedCategories()
end

function FGC_OnIncludeBankBagsClicked(checked)
    FGCSettings["IncludeBankBags"] = checked
    FGC_UpdateDisplayData()
end

function FGC_OnIncludeItemsOnAltsClicked(checked)
    FGCSettings["IncludeItemsOnAlts"] = checked
    FGC_UpdateDisplayData()
end

function FGC_OnResetWindowPositionsClicked()
    local win

    for faction,_ in pairs(FGCSettings["GrindStatsTrackersShown"]) do
        win = _G["FGC_"..faction.."GrindStatsTrackerFrame"]
        if (win) then
            win:ClearAllPoints()
            win:SetPoint("CENTER",-win:GetWidth()-10,0)
        end
    end

    for faction,_ in pairs(FGCSettings["TurnInTrackersShown"]) do
        win = _G["FGC_"..faction.."TurnInTrackerFrame"]
        if (win) then
            win:ClearAllPoints()
            win:SetPoint("CENTER",10,0)
        end
    end
end

function FGC_DisplaySelectedCategories()
    if not (FGC_INITIALIZED) then
        FGC_INITIAL_UPDATE_QUEUED = true
        return
    end
    
    --Make a list of all factions that match the selected categories.
    local factions = {} --Key:localized faction name, Value:faction code name
    local name,win

    for faction,data in pairs(FGC_FactionData) do
        --Only show factions from checked categories.
        if (FGCSettings["Categories"][data.Category] == 1) then
            --Only show Side-appropriate factions
            if (data.Side == "Both") or (data.Side == UnitFactionGroup("player")) then
                factions[data.Text:Get("FactionName")] = faction
            end
        end

        --Hide any already-created widgets from all factions.
        local widgetNames = 
        {
            "FGC_"..faction.."FactionNameLabel",
            "FGC_"..faction.."ListTexture",
            "FGC_"..faction.."GrindStatsTrackerCheckbox",
            "FGC_"..faction.."TurnInTrackerCheckbox"
        }
        for i,n in ipairs(widgetNames) do
            win = _G[n]
            if (win) then win:Hide() end
        end
    end

    --Now, go through the list in localized alphabetical order and add them
    local top = -20
    local yInc = -20
    local f = FGC_FactionsScrollChild
    for fname,faction in FGC_sortedpairs(factions) do
        --If the faction's list widgets haven't been created yet, create them.
        if (not FGC_FactionWidgetsCreated[faction]) then
            --Create the faction label
            name = "FGC_"..faction.."FactionNameLabel"
            f:CreateFontString(name)
            win = _G[name]
            win:SetFontObject("GameFontNormalSmall")
            win:SetText(fname) --Name was pre-localized already.
            win:SetPoint("TOPLEFT",30,top)

            --Create the faction icon
            name = "FGC_"..faction.."ListTexture"
            f:CreateTexture(name)
            win = _G[name]
            win:SetTexture(FGC_FactionData[faction].Icon);
            win:SetWidth(18);
            win:SetHeight(18);
            win:SetTexCoord(0,1,0,1);

            --Create the checkbox for the rep-tracker
            name = "FGC_"..faction.."GrindStatsTrackerCheckbox"
            win = CreateFrame("CheckButton",name,f,"FGC_GrindStatsTrackerCheckButton");
            win:SetChecked(false);

            --If necessary, create the checkbox for the quest-tracker
            if (FGC_tablesize(FGC_FactionData[faction].Quests) > 0) then
                name = "FGC_"..faction.."TurnInTrackerCheckbox"
                win = CreateFrame("CheckButton",name,f,"FGC_TurnInTrackerCheckButton");
                win:SetChecked(false);
            end

            FGC_FactionWidgetsCreated[faction] = true
        end

        --Now that we're sure the widgets for this faction exist, we can place them.
        win = _G["FGC_"..faction.."FactionNameLabel"]
        win:SetPoint("TOPLEFT",100,top-2)
        win:Show()

        win = _G["FGC_"..faction.."ListTexture"]
        win:SetPoint("TOPLEFT",48,top+2)
        win:Show()

        win = _G["FGC_"..faction.."GrindStatsTrackerCheckbox"]
        win:SetPoint("TOPLEFT",70,top+3)
        win:SetChecked(FGCSettings["GrindStatsTrackersShown"][faction])
        win:Show()

        if (FGC_tablesize(FGC_FactionData[faction].Quests) > 0) then
            win = _G["FGC_"..faction.."TurnInTrackerCheckbox"]
            win:SetChecked(FGCSettings["TurnInTrackersShown"][faction])
            win:SetPoint("TOPLEFT",25,top+3)
            win:Show()
        end

        top = top + yInc
    end
    f:SetHeight(math.max(f:GetParent():GetHeight(),-top))
end

function FGC_sortedpairs(t,comparator)
    local sortedKeys = {};
    table.foreach(t, function(k,v) table.insert(sortedKeys,k) end);
    table.sort(sortedKeys,comparator);
    local i = 0;
    local function _f(_s,_v)
    i = i + 1;
    local k = sortedKeys[i];
    if (k) then
       return k,t[k];
    end
    end
    return _f,nil,nil;
end

function FGC_tablesize(t)
    local count = 0
    for k,v in pairs(t) do
        count = count + 1
    end
    return count
end

function FGC_OnGrindStatsTrackerCheckButtonClicked(faction,checked)
    if (checked) then
        FGCSettings["GrindStatsTrackersShown"][faction] = 1
    else
        FGCSettings["GrindStatsTrackersShown"][faction] = 0
    end

    FGC_ToggleTrackerDisplay(true)
end

function FGC_OnTurnInTrackerCheckButtonClicked(faction,checked)
    if (checked) then
        FGCSettings["TurnInTrackersShown"][faction] = 1
    else
        FGCSettings["TurnInTrackersShown"][faction] = 0
    end

    FGC_ToggleTrackerDisplay(true)
end

function FGC_ToggleTrackerDisplay(show)
    if not (FGC_INITIALIZED) then
        FGC_INITIAL_UPDATE_QUEUED = true
        return
    end

    local someVisible = false
    local win
    if (FGCSettings["GrindStatsTrackersShown"] ~= nil) then
        --Show all "shown" grind stats trackers.
        for faction,display in pairs(FGCSettings["GrindStatsTrackersShown"]) do
            display = (display == 1) --Convert from int to bool
            win = _G["FGC_"..faction.."GrindStatsTrackerFrame"]
            if (display and win==nil) then
                FGC_CreateGrindStatsTrackerFor(faction)
                win = _G["FGC_"..faction.."GrindStatsTrackerFrame"]
            end
            if (win) then
                if (display and show) then
                    someVisible = true
                    win:Show()
                else
                    win:Hide()
                end
            end
        end
    end

    if (FGCSettings["TurnInTrackersShown"] ~= nil) then
        --Show all "shown" turn in trackers.
        for faction,display in pairs(FGCSettings["TurnInTrackersShown"]) do
            display = (display == 1) --Convert from int to bool
            win = _G["FGC_"..faction.."TurnInTrackerFrame"]
            if (display and win==nil) then
                FGC_CreateTurnInTrackerFor(faction)
                win = _G["FGC_"..faction.."TurnInTrackerFrame"]
            end
            if (win) then
                if (display and show) then
                    someVisible = true
                    win:Show()
                else
                    win:Hide()
                end
            end
        end
    end

    if (someVisible) then
        FGCSettings["Show"] = 1
        FGC_UpdateDisplayData()
        FGC_UpdateRepBars()
    else
        FGCSettings["Show"] = 0
    end
end

function FGC_RecordFramePosition(win)
    --Window positions are stored as single anchors
    local name = win:GetName()

    FGCSettings["TrackerPositions"][name] = {}

    local numPoints = win:GetNumPoints()
    local pointData
    local point,relativeTo,relativePoint,x,y
    for i=1,numPoints do
        point,relativeTo,relativePoint,x,y = win:GetPoint(i)

        pointData = 
        {
            ["point"] = point,
            ["relativeTo"] = relativeTo,
            ["relativePoint"] = relativePoint,
            ["x"] = x,
            ["y"] = y
        }

        table.insert(FGCSettings["TrackerPositions"][name], pointData)
    end
end

function FGC_CreateTurnInTrackerFor(faction)
    local name = "FGC_"..faction.."TurnInTrackerFrame"
    local win = _G[name]
    if (win == nil) then
        win = CreateFrame("Frame",name,UIParent,"FGC_TrackerFrame")
        win:SetFrameStrata("BACKGROUND")

        local questWins = {}
        local numRows = 0
        local rowWidth
        local widestRow = 0

        for i,data in ipairs(FGC_FactionData[faction]["Quests"]) do
            if (data.EndOfRow) then
                --If this is the end of a row, place the windows.
                rowWidth = FGC_tablesize(questWins)
                if (rowWidth > widestRow) then widestRow = rowWidth end

                for col,qw in ipairs(questWins) do
                    local x = (-20*(rowWidth-1)) + (col-1)*40
                    local y = -13 - (numRows)*50
                    qw:SetPoint("TOP",win,"TOP",x,y)
                end
                --And clear out the list for the next row of quests.
                questWins = {}
                numRows = numRows + 1
            else
                --If this is not the end of a row, just create the window
                local button = CreateFrame("Button","FGC_"..faction.."_"..data.Quest.."QuestButton",win,"FGC_QuestButton")
                local texture = button:CreateTexture("FGC_"..faction.."_"..data.Quest.."QuestButtonTexture","ARTWORK")
                texture:SetTexture(data.Icon)
                texture:SetAllPoints(button)
                texture:SetTexCoord(0,1,0,1)
                local count = button:CreateFontString("FGC_"..faction.."_"..data.Quest.."QuestButtonCount","OVERLAY")
                count:SetFontObject("GameFontNormalSmall");
                count:SetText("0")
                count:SetPoint("TOP",button,"BOTTOM",0,-3)

                table.insert(questWins,button)

                --If this quest has any Item Objectives, we need to register them with GrinderCoreClassic.
                for itemID,itemData in pairs(data["ItemObjectives"]) do
                    GrinderCoreClassic_RegisterItem(faction,itemID)
                end
            end
        end

        --Now, set the size of the tracker window.
        local height = numRows * 50 + 20
        if (height < 70) then height = 70 end
        win:SetHeight(height)

        local width = widestRow * 40 + 20
        if (width < 140) then width = 140 end
        win:SetWidth(width)

        --And finally, set the tracker window's position.
        win:ClearAllPoints()
        if (FGCSettings["TrackerPositions"][name]) then
            --This tracker already had a saved, user-defined position, so we need to use that.
            for _,point in pairs(FGCSettings["TrackerPositions"][name]) do
                win:SetPoint(point.point,point.relativeTo,point.relativePoint,point.x,point.y)
            end
        else
            --This tracker had no saved position, so put it in the default.
            win:SetPoint("CENTER","UIParent","CENTER",-width-200,0)
        end
    end
end

function FGC_CreateGrindStatsTrackerFor(faction)
    local fdata = FGC_FactionData[faction]
    local name = "FGC_"..faction.."GrindStatsTrackerFrame"

    local widget
    local win = _G[name]
    if (win==nil) then
        win = CreateFrame("Frame",name,UIParent,"FGC_GrindStatsTrackerFrame")
        win:SetFrameStrata("BACKGROUND")
        --Set the icon
        widget = _G[name.."_Texture"]
        widget:SetTexture(fdata.Icon)
        --Localize the static text labels
        _G[name.."_ToRepUpFrame_Abbreviation"]:SetText(fdata.Text:Get("Abbreviation"))
        _G[name.."_BU_ToggleGrinding"]:SetText(FGC_TEXT:Get("Start Grinding"))
        _G[name.."_CurrentlyGrinding"]:SetText(FGC_RED..FGC_TEXT:Get("Not Grinding"))

        _G[name.."_Today"]:SetText(FGC_WHITE..FGC_TEXT:Get("Today's Grinding"))
        _G[name.."_TimeToday"]:SetText(FGC_GREY..FGC_TEXT:Get("Time").." :")
        _G[name.."_RepToday"]:SetText(FGC_GREY..FGC_TEXT:Get("Rep").." :")
        _G[name.."_RepPerHourToday"]:SetText(FGC_GREY..FGC_TEXT:Get("Rep/Hour").." :")
        _G[name.."_Total"]:SetText(FGC_WHITE..FGC_TEXT:Get("Total Grinding"))
        _G[name.."_TimeTotal"]:SetText(FGC_GREY..FGC_TEXT:Get("Time").." :")
        _G[name.."_RepTotal"]:SetText(FGC_GREY..FGC_TEXT:Get("Rep").." :")
        _G[name.."_RepPerHourTotal"]:SetText(FGC_GREY..FGC_TEXT:Get("Rep/Hour").." :")
        _G[name.."_TimeToRepUpToday"]:SetText(FGC_GREY..FGC_TEXT:Get("Rep-up In").." :")
        _G[name.."_TimeToRepUpTotal"]:SetText(FGC_GREY..FGC_TEXT:Get("Rep-up In").." :")
        
        --And finally, set the tracker window's position.
        win:ClearAllPoints()
        if (FGCSettings["TrackerPositions"][name]) then
            --This tracker already had a saved, user-defined position, so we need to use that.
            for _,point in pairs(FGCSettings["TrackerPositions"][name]) do
                win:SetPoint(point.point,point.relativeTo,point.relativePoint,point.x,point.y)
            end
        else
            --This tracker had no saved position, so put it in the default.
            win:SetPoint("CENTER","UIParent","CENTER",200,0)
        end
    end
end

function FGC_HideToolTip()
    FGCToolTip:Hide()
end

function FGC_QuestButtonClick(button)
    --TODO:
    D("CLICK!")
end

function FGC_GetPendingRep(faction)
    if (FGC_PendingRep[faction]) then
        return FGC_PendingRep[faction]
    else
        return 0
    end
end

function FGC_ShowToolTip(button)
    local _,playerRace = UnitRace("player")
    local _,playerClass = UnitClass("player")
    local _,_,faction,quest = string.find(button:GetName(),"FGC_(.*)_(.*)QuestButton")

    --Find the quest data for this button.
    local fdata = FGC_FactionData[faction]
    local qdata
    for i,qd in ipairs(fdata.Quests) do
        if (qd.Quest == quest) then
            qdata = qd
            break
        end
    end

    local RepToRepUp = 0
    local RepToExalted = 0

    ExpandAllFactionHeaders()

    for factionIndex = 1, GetNumFactions() do
        factionName,_,standingId,_,topValue,earnedValue,_,_,isHeader,_,_ = GetFactionInfo(factionIndex)
        if ((isHeader ~= nil) and (string.find(factionName, fdata.Text:Get("FactionName")))) then
            factionFound = true;
            break
        end
    end

    if(not factionFound)then
        earnedValue = fdata.StartingRep + fdata.RacialRepBonuses[playerRace] + fdata.ClassRepBonuses[playerClass]
        standingId = FGC_RepToStandingID(earnedValue)
        topValue = FGC_FactionTopValues[standingId]
    end

    RepToRepUp = math.max(topValue - earnedValue - FGC_GetPendingRep(faction),0);
    RepToExalted = math.max(42000  - earnedValue - FGC_GetPendingRep(faction),0);

    --Start populating the tooltip data
    local tooltip = FGCToolTip
    tooltip:SetOwner(button,"ANCHOR_TOPLEFT",0,0)
    tooltip:ClearLines()
    --Add Quest Name(s)
    for i,qname in ipairs(qdata.Names) do
        tooltip:AddLine(fdata.Text:Get(qname))
    end

    local qRepValue = qdata.RepValue
    local repMultiplier = 1.0;
    if (playerRace == "Human") then repMultiplier = repMultiplier + 0.1 end      --Racial bonus: Diplomacy
    if (IsInGuild() and GetGuildLevel ~= nil) then
        if (GetGuildLevel() >= 4)  then repMultiplier = repMultiplier + 0.05 end --Guild Perk: Mr. Popularity, Rank 1
        if (GetGuildLevel() >= 12) then repMultiplier = repMultiplier + 0.05 end --Guild Perk: Mr. Popularity, Rank 2
    end

    qRepValue = qRepValue * repMultiplier;

    tooltip:AddLine(FGC_GREY..qRepValue.." "..FGC_TEXT:Get("rep"))

    --Get the data for any item objectives.
    local itemCounts = {}
    for itemID,itemData in pairs(qdata.ItemObjectives) do
        itemCounts[itemID] = GetItemCount(itemID,FGCSettings["IncludeBankBags"])
        if (itemData.Shareable and FGCSettings["IncludeItemsOnAlts"]) then
            itemCounts[itemID] = itemCounts[itemID] + GrinderCoreClassic_AltTotalCount(itemID)
        end
    end

    --Only repeatable item turnin quests are "Stackable".
    --For such, we get to display the total rep value of all their collection of the item(s).
    local timesCompleted
    if (qdata.Stackable) then
        --Find the total number of times they could complete this quest with their current items.
        timesCompleted = 999999999999999999
        for itemID,itemData in pairs(qdata.ItemObjectives) do
            timesCompleted = math.floor(math.min(timesCompleted,itemCounts[itemID]/itemData.Count))
        end
        --And now display the rep value for that total number of turnins.
        tooltip:AddLine(FGC_YELLOW..timesCompleted.."x = "..(timesCompleted*qRepValue).." "..FGC_TEXT:Get("rep"))
    end

    tooltip:AddLine(" ")
    tooltip:AddLine(FGC_TEXT:Get("Objectives"))

    --Does this quest cost Gold to complete?
    local GoldCostMet = false
    if (qdata.GoldCost > 0) then
        local playerCash = GetMoney()
        GoldCostMet = (playerCash >= qdata.GoldCost)

        if (GoldCostMet) then
            tooltip:AddLine("  "..FGC_GREEN..FGC_FormatMoney(qdata.GoldCost).." / "..FGC_FormatMoney(qdata.GoldCost).." "..FGC_TEXT:Get("Gold"))
        else
            tooltip:AddLine("  "..FGC_GREY..FGC_FormatMoney(playerCash).." / "..FGC_FormatMoney(qdata.GoldCost).." "..FGC_TEXT:Get("Gold"))
        end
    end

    --Does this quest have item objectives?
    if (FGC_tablesize(qdata.ItemObjectives) > 0) then
        local itemName
        for itemID,itemData in pairs(qdata.ItemObjectives) do
            itemName = fdata.Text:Get(itemData.Name)
            if (itemCounts[itemID] >= itemData.Count) then
                if(qdata.Stackable) then
                    local fullCount = math.floor(itemCounts[itemID]/itemData.Count)*itemData.Count
                    local spareCount = itemCounts[itemID] - fullCount
                    local s = "  "..FGC_GREEN..itemName..": "..(fullCount)
                    if (spareCount > 0) then
                        s = s.."(+"..spareCount..")"
                    end
                    s = s.." / "..itemData.Count.."  =  "..math.floor(itemCounts[itemID]/itemData.Count).." "..FGC_TEXT:Get("turn-ins")
                    tooltip:AddLine(s)
                else
                    tooltip:AddLine("  "..FGC_GREEN..itemName..": "..itemData.Count.." / "..itemData.Count)
                end
            else
                tooltip:AddLine("  "..FGC_GREY..itemName..": "..itemCounts[itemID].." / "..itemData.Count)
            end
        end
    end

    --Does this quest have other objectives?
    if (FGC_tablesize(qdata.OtherObjectives) > 0)then
        --See if the player is on this quest right now.
        local questIndex
        for qi=1,GetNumQuestLogEntries(),1 do
            for i,qname in pairs(qdata.Names) do
                if (GetQuestLogTitle(qi) == fdata.Text:Get(qname)) then
                    questIndex = qi
                    break
                end
            end
            if (questIndex) then break end
        end

        --Check the status of all the objectives.
        for i,objectiveData in ipairs(qdata.OtherObjectives) do
            local oText, oDone
            if (questIndex) then
                oText,_,oDone = GetQuestLogLeaderBoard(objectiveData.ObjectiveIndex,questIndex)
            else
                oDone = false
                if (objectiveData.Count > 0) then
                    oText = fdata.Text:Get(objectiveData.Text).." : 0/"..objectiveData.Count
                else
                    oText = fdata.Text:Get(objectiveData.Text)
                end
            end

            if (oDone) then
                tooltip:AddLine("  "..FGC_GREEN..oText)
            else
                tooltip:AddLine("  "..FGC_GREY..oText)
            end
        end
    end

    tooltip:AddLine(" ")

    --Add the number to completion info
    if(standingId < 7) then
        tooltip:AddLine(FGC_GRUE..(math.max(0,math.floor((RepToRepUp/qRepValue)+0.9999))).." "..FGC_TEXT:Get("quests to rep-up"))
    end
    if(standingId < 8) then
        tooltip:AddLine(FGC_GRUE..(math.max(0,math.floor((RepToExalted/qRepValue)+0.9999))).." "..FGC_TEXT:Get("quests to exalted"))
        tooltip:AddLine(" ")
    end

    --Add the requirements info
    if (qdata.MinLevel > 0) or (FGC_tablesize(qdata.RepRequirements)>0) then
        tooltip:AddLine(FGC_TEXT:Get("Requirements"))

        --Level requirement
        if (qdata.MinLevel > 0) then
            if (UnitLevel("player") >= qdata.MinLevel) then
                tooltip:AddLine("  "..FGC_GREEN..FGC_TEXT:Get("Level").." "..qdata.MinLevel)
            else
                tooltip:AddLine("  "..FGC_RED..FGC_TEXT:Get("Level").." "..qdata.MinLevel)
            end
        end

        --Rep requirements
        local reqfdata
        local reqFactionFound
        if (FGC_tablesize(qdata.RepRequirements)>0) then
            for reqFaction,reqData in pairs(qdata.RepRequirements) do
                reqFactionFound = false
                reqfdata = FGC_FactionData[reqFaction]

        ExpandAllFactionHeaders()

        if (reqfdata) then --If we don't have this faction in our system, we can't check its name.
                    for reqFactionIndex = 1, GetNumFactions() do
                    reqFactionName,_,reqStandingId,_,_,reqEarnedValue,_,_,isHeader,_,_ = GetFactionInfo(reqFactionIndex)
                    if ((isHeader ~= nil) and (string.find(reqFactionName, reqfdata.Text:Get("FactionName")))) then
                    reqFactionFound = true;
                    break
            end
            end
                end

                if(not reqFactionFound)then
                    reqEarnedValue = reqfdata.StartingRep + reqfdata.RacialRepBonuses[playerRace] + reqfdata.ClassRepBonuses[playerClass]
                    reqStandingId = FGC_RepToStandingID(reqEarnedValue)
                end

                local repReqMet
        local s
        if (reqfdata) then
            s = "  "..reqfdata.Text:Get("FactionName").." : "
        else
            s = "  "..reqFaction.." : "
        end

                if (reqData.Min) and not(reqData.Max) then
                    repReqMet = reqStandingId >= reqData.Min
                    s = s .. FGC_TEXT:Get(FGC_FactionStandingNames[reqData.Min])
                    if (reqData.MinExact) then
                        repReqMet = repReqMet and ( reqEarnedValue >= reqData.MinExact )
                        s = s .. " ("..(reqData.MinExact - FGC_FactionBottomValues[reqData.Min])..")"
                    end
                    s = s .. " " .. FGC_TEXT:Get("or higher")
                end
                if(reqData.Max) and not(reqData.Min) then
                    repReqMet = reqStandingId <= reqData.Max
                    s = s .. FGC_TEXT:Get(FGC_FactionStandingNames[reqData.Max])
                    if (reqData.MaxExact) then
                        repReqMet = repReqMet and (reqEarnedValue <= reqData.MaxExact)
                        s = s .. " ("..(reqData.MaxExact - FGC_FactionBottomValues[reqData.Max])..")"
                    end
                    s = s .. " " .. FGC_TEXT:Get("or lower")
                end
                if(reqData.Min) and (reqData.Max) then
                    repReqMet = (reqStandingId >= reqData.Min) and (reqStandingId <= reqData.Max)
                    s = s .. FGC_TEXT:Get("between").." "..FGC_TEXT:Get(FGC_FactionStandingNames[reqData.Min])
                    if (reqData.MinExact) then
                        repReqMet = repReqMet and ( reqEarnedValue >= reqData.MinExact )
                        s = s .. " ("..(reqData.MinExact - FGC_FactionBottomValues[reqData.Min])..")"
                    end
                    s = s .. " " .. FGC_TEXT:Get("and") .. " " .. FGC_TEXT:Get(FGC_FactionStandingNames[reqData.Max])
                    if (reqData.MaxExact) then
                        repReqMet = repReqMet and (reqEarnedValue <= reqData.MaxExact)
                        s = s .. " ("..(reqData.MaxExact - FGC_FactionBottomValues[reqData.Max])..")"
                    end

                    --Some quests are only available at one exact rep level.  This covers those.
                    if (reqData.Min == reqData.Max) then
            if (reqfdata) then
                s = "  "..reqfdata.Text:Get("FactionName").." : "..FGC_TEXT:Get(FGC_FactionStandingNames[reqData.Max])
            else
                s = "  "..reqFaction.." : "..FGC_TEXT:Get(FGC_FactionStandingNames[reqData.Max])
            end
                    end
                end

                if (repReqMet) then
                    tooltip:AddLine(FGC_GREEN..s)
                else
                    tooltip:AddLine(FGC_RED..s)
                end
            end
        end
    end

    --Display any "extra" info
    if (qdata.ExtraInfo) then
        tooltip:AddLine(" ")
        tooltip:AddLine(FGC_WHITE..fdata.Text:Get(qdata.ExtraInfo))
    end

    --Add the turn-in locations.
    tooltip:AddLine(" ")
    tooltip:AddLine(FGC_TEXT:Get("Turn-in Locations"))

    for i,questGuy in ipairs(qdata.QuestAccepters) do
        tooltip:AddLine(FGC_GREY.."  "..fdata.Text:Get(questGuy.Name).." - "..FGC_ZONE:Get(questGuy.Zone).." ("..questGuy.xCoord..","..questGuy.yCoord..")")
    end

    tooltip:Show()
    tooltip:ClearAllPoints()
    tooltip:SetPoint("BOTTOM",button:GetParent(),"TOP",0,-5)
end

function FGC_RepToStandingID(rep)
    local result = 4
    for standingID,topValue in ipairs(FGC_FactionTopValues) do
        if (rep < topValue) then
            result = standingID
            break
        end
    end
    return result
end

function FGC_FormatMoney(cash)
    local gold = math.floor(cash/100/100)
    cash = cash - gold*100*100
    local silver = math.floor(cash/100)
    cash = cash - silver*100
    local copper = cash

    if (copper == 0 and silver == 0) then
        return ""..gold
    else
        return ""..gold.."."..silver.."."..copper
    end
end

function FGC_UpdateGrindingStats(self)
    --If there was an item-count change for a faction with visible trackers, update it.
    for faction,updated in pairs(GrinderCoreClassic_Settings["Item Update For"]) do
        if updated then
            gsWin = _G["FGC_"..faction.."GrindStatsTrackerFrame"]
            tiWin = _G["FGC_"..faction.."TurnInTrackerFrame"]
            GrinderCoreClassic_AcknowledgeItemChange(faction)
            if (gsWin and gsWin:IsVisible()) or (tiWin and tiWin:IsVisible()) then
                FGC_UpdateDisplayDataFor(faction)
            end
        end
    end

    --Update visible GrindStatsTrackers on a timer.
    if (FGC_NEXT_GRIND_UPDATE) and (GetTime() > FGC_NEXT_GRIND_UPDATE) then
    FGC_NEXT_GRIND_UPDATE = FGC_NEXT_GRIND_UPDATE + FGC_GRIND_UPDATE_INTERVAL
        --Find who's visible
        if (FGCSettings ~= nil) and (FGCSettings["GrindStatsTrackersShown"] ~= nil) then
            for faction,_ in pairs(FGCSettings["GrindStatsTrackersShown"]) do
                gsWin = _G["FGC_"..faction.."GrindStatsTrackerFrame"]
                if (gsWin and gsWin:IsVisible()) then
                    FGC_UpdateGrindingStatsFor(faction)
                end
            end
        end
    end 
end

function FGC_GetCurrentRepTotal(faction)
    --If we know the faction, we can get its data directly.
    ExpandAllFactionHeaders()

    for factionIndex = 1, GetNumFactions() do
        factionName,_,_,_,_,earnedValue,_,_,isHeader,_,_,_,_ = GetFactionInfo(factionIndex)
        if ((isHeader ~= true)and(string.find(factionName, FGC_FactionData[faction].Text:Get("FactionName")))) then
            return earnedValue + FGC_GetPendingRep(faction);
        end
    end

    --If we don't know the faction, we have to calculate the starting rep first.
    local _,playerRace = UnitRace("player")
    local _,playerClass = UnitClass("player")
    local fdata = FGC_FactionData[faction]

    return fdata.StartingRep + fdata.RacialRepBonuses[playerRace] + fdata.ClassRepBonuses[playerClass] + FGC_GetPendingRep(faction);
end

function FGC_ToggleGrinding(button)
    local _,_,faction = string.find(button:GetName(),"FGC_(.*)GrindStatsTrackerFrame_BU_ToggleGrinding")

    if (FGC_NowGrinding[faction] == nil) then FGC_NowGrinding[faction] = 0 end

    FGC_NowGrinding[faction] = math.abs(FGC_NowGrinding[faction]-1) --Yes, this toggles between 1 and 0.

    if(FGC_NowGrinding[faction] == 1)then
        button:SetText(FGC_TEXT:Get("Stop Grinding"));
        _G["FGC_"..faction.."GrindStatsTrackerFrame_CurrentlyGrinding"]:SetText(FGC_GREEN..FGC_TEXT:Get("Grinding"))

        FGC_GrindingStartedAt[faction] = GetTime()
        FGC_InitialRep[faction] = FGC_GetCurrentRepTotal(faction)
    else
        button:SetText(FGC_TEXT:Get("Start Grinding"));
        _G["FGC_"..faction.."GrindStatsTrackerFrame_CurrentlyGrinding"]:SetText(FGC_RED..FGC_TEXT:Get("Not Grinding"))

        if(FGC_PreviousGrindingTime[faction] == nil) then FGC_PreviousGrindingTime[faction] = 0 end
        if(FGC_PreviousRepGround[faction] == nil) then FGC_PreviousRepGround[faction] = 0 end

        FGC_PreviousGrindingTime[faction] = FGC_PreviousGrindingTime[faction] + (GetTime() - FGC_GrindingStartedAt[faction])
        FGC_PreviousRepGround[faction] = FGC_PreviousRepGround[faction] + (FGC_GetCurrentRepTotal(faction) - FGC_InitialRep[faction])
    end
end

function FGC_InitialDataUpdate()
    if not (FGC_INITIALIZED) then
        FGC_INITIAL_UPDATE_QUEUED = true
        return
    end
    FGC_INITIAL_UPDATE_QUEUED = false

    for faction,_ in pairs(FGCSettings["GrindStatsTrackersShown"]) do
        gsWin = _G["FGC_"..faction.."GrindStatsTrackerFrame"]
        if (gsWin and gsWin:IsVisible()) then
            FGC_UpdateDisplayDataFor(faction)
            FGC_UpdateRepBarsFor(faction)
        end
    end

    for faction,_ in pairs(FGCSettings["TurnInTrackersShown"]) do
        tiWin = _G["FGC_"..faction.."TurnInTrackerFrame"]
        if (tiWin and tiWin:IsVisible())then
            FGC_UpdateDisplayDataFor(faction)
            FGC_UpdateRepBarsFor(faction)
        end
    end
end

function FGC_UpdateRepBars()
    --We only need to update factions with visible GrindStatsTrackers.
    for faction,_ in pairs(FGCSettings["GrindStatsTrackersShown"]) do
        gsWin = _G["FGC_"..faction.."GrindStatsTrackerFrame"]
        if (gsWin and gsWin:IsVisible()) then
            FGC_UpdateRepBarsFor(faction)
        end
    end
end

function FGC_UpdateDisplayData()
    if not (FGC_INITIALIZED) then
        FGC_INITIAL_UPDATE_QUEUED = true
        return
    end

    --We only need to update factions with visible Trackers.
    for faction,_ in pairs(FGCSettings["GrindStatsTrackersShown"]) do
        gsWin = _G["FGC_"..faction.."GrindStatsTrackerFrame"]
        if (gsWin and gsWin:IsVisible()) then
            FGC_UpdateDisplayDataFor(faction)
        end
    end

    for faction,_ in pairs(FGCSettings["TurnInTrackersShown"]) do
        tiWin = _G["FGC_"..faction.."TurnInTrackerFrame"]
        if (tiWin and tiWin:IsVisible()) then
            FGC_UpdateDisplayDataFor(faction)
        end
    end
end

function FGC_OnPlayerLeavingWorld()
    --Save grinding data for all factions that were tracked this session.
    for faction,nowGrinding in pairs(FGC_NowGrinding) do
        if (FGC_PreviousGrindingTime[faction] == nil) then FGC_PreviousGrindingTime[faction] = 0 end
        if (FGC_PreviousRepGround[faction] == nil) then FGC_PreviousRepGround[faction] = 0 end

        GrinderCoreClassic_SetGrindingTime(faction,GrinderCoreClassic_GetGrindingTime(faction)+FGC_PreviousGrindingTime[faction]);
        GrinderCoreClassic_SetRepGround(faction,GrinderCoreClassic_GetRepGround(faction)+FGC_PreviousRepGround[faction]);
        if(nowGrinding==1)then
            GrinderCoreClassic_SetGrindingTime(faction,GrinderCoreClassic_GetGrindingTime(faction)+(GetTime()-FGC_GrindingStartedAt[faction]));
            GrinderCoreClassic_SetRepGround(faction,GrinderCoreClassic_GetRepGround(faction)+(FGC_GetCurrentRepTotal(faction) - FGC_InitialRep[faction]));
        end
    end
end

function FGC_UpdateRepBarsFor(faction)
    local repPercent = 0;
    local itemPercent = 0;
    local totalPercent = 0;

    local factionFound = false;

    local _,playerRace = UnitRace("player")
    local _,playerClass = UnitClass("player")

    local fdata = FGC_FactionData[faction]

    ExpandAllFactionHeaders()

    for factionIndex = 1, GetNumFactions() do
        factionName,_,standingId,_,topValue,earnedValue,_,_,isHeader,_,_ = GetFactionInfo(factionIndex)
        if ((isHeader ~= true) and (string.find(factionName, fdata.Text:Get("FactionName")))) then
            factionFound = true;
            break
        end
    end

    if(not factionFound)then
        earnedValue = fdata.StartingRep + fdata.RacialRepBonuses[playerRace] + fdata.ClassRepBonuses[playerClass]
        standingId = FGC_RepToStandingID(earnedValue)
        topValue = FGC_FactionTopValues[standingId]
    end

    local standingRange = FGC_FactionTopValues[standingId] - FGC_FactionBottomValues[standingId]

    --Only do an actual visual update if the grind stats tracker has been created.
    if (_G["FGC_"..faction.."GrindStatsTrackerFrame"] ~= nil) then
        _G["FGC_"..faction.."GrindStatsTrackerFrame_ToRepUpFrame_SB_ActualRep"]:SetValue( 
            math.floor((earnedValue-FGC_FactionBottomValues[standingId])/standingRange*100))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_ToRepUpFrame_SB_RepWithItems"]:SetValue( 
            math.min(100, math.floor((earnedValue+FGC_GetPendingRep(faction)-FGC_FactionBottomValues[standingId])/standingRange*100)))

        repPercent = math.floor((earnedValue-FGC_FactionBottomValues[standingId])/standingRange*1000)/10
        itemPercent = math.floor(FGC_GetPendingRep(faction)/standingRange*1000)/10

        _G["FGC_"..faction.."GrindStatsTrackerFrame_RepLevel"]:SetText(FGC_FactionStandingColors[standingId]..FGC_TEXT:Get("Now "..FGC_FactionStandingNames[standingId]))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_ToRepUpFrame_ToRepUpOverlayFrame_RepPoints"]:SetText((earnedValue+FGC_GetPendingRep(faction)-FGC_FactionBottomValues[standingId]).."/"..standingRange)

        totalPercent = repPercent + itemPercent;
        _G["FGC_"..faction.."GrindStatsTrackerFrame_RepPercent"]:SetText("|cff00ff00"..repPercent.."% |caaaaaaaa+ |cffffff00"..itemPercent.."% |caaaaaaaa\226\137\136 |cff88ff00"..totalPercent.."%");
    end
end

function FGC_SecondsToTime(seconds)
    seconds = math.floor(seconds);
    local daysonly = math.floor(seconds/86400);
    seconds = seconds - (daysonly*86400);
    local hoursonly = math.floor(seconds/3600);
    seconds = seconds - (hoursonly*3600);
    local minutesonly = math.floor(seconds/60);
    seconds = seconds - (minutesonly*60);

    return daysonly    .. FGC_TEXT:Get("day abbreviation").." "..
           hoursonly   .. FGC_TEXT:Get("hour abbreviation").." "..
           minutesonly .. FGC_TEXT:Get("minute abbreviation").." "..
           seconds     .. FGC_TEXT:Get("second abbreviation")
end

function FGC_TimeToRepUp(faction,RepPerSecond)
    if(RepPerSecond==0)then
        return "-----"
    end

    local fdata = FGC_FactionData[faction]
    local _,playerRace = UnitRace("player")
    local _,playerClass = UnitClass("player")

    local factionFound = false

    ExpandAllFactionHeaders()

    local fname = fdata.Text:Get("FactionName")
    for factionIndex = 1, GetNumFactions() do
        factionName,_,standingId,_,topValue,earnedValue,_,_,isHeader,_,_ = GetFactionInfo(factionIndex)
        if ((isHeader ~= nil) and (string.find(factionName, fname))) then
            factionFound = true;
            break
        end
    end

    if(not factionFound)then
        earnedValue = fdata.StartingRep + fdata.RacialRepBonuses[playerRace] + fdata.ClassRepBonuses[playerClass]
        standingId = FGC_RepToStandingID(earnedValue)
        topValue = FGC_FactionTopValues[standingId]
    end

    if(standingId == 8)then --exalted
        return "-----";
    else
        local RepToRepUp = math.max(topValue-earnedValue-FGC_GetPendingRep(faction),0);
        return FGC_SecondsToTime(RepToRepUp / RepPerSecond);
    end
end

function FGC_UpdateGrindingStatsFor(faction)
    local RepPerSecond = 0;

    if (FGC_PreviousGrindingTime[faction] == nil) then FGC_PreviousGrindingTime[faction] = 0 end
    if (FGC_PreviousRepGround[faction] == nil) then FGC_PreviousRepGround[faction] = 0 end

    if (FGC_NowGrinding[faction] == 1) then
        _G["FGC_"..faction.."GrindStatsTrackerFrame_TimeTodayVal"]:SetText(FGC_GREY..FGC_SecondsToTime(FGC_PreviousGrindingTime[faction] + (GetTime()-FGC_GrindingStartedAt[faction])))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_RepTodayVal"]:SetText(FGC_GREY..(FGC_PreviousRepGround[faction] + (FGC_GetCurrentRepTotal(faction) - FGC_InitialRep[faction])))
        RepPerSecond = ((FGC_PreviousRepGround[faction] + (FGC_GetCurrentRepTotal(faction) - FGC_InitialRep[faction])) /
                        math.max(math.floor(FGC_PreviousGrindingTime[faction] + (GetTime() - FGC_GrindingStartedAt[faction])),1))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_RepPerHourTodayVal"]:SetText(FGC_GREY..math.floor(RepPerSecond*3600))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_TimeToRepUpTodayVal"]:SetText(FGC_GREY..FGC_TimeToRepUp(faction,RepPerSecond))

        _G["FGC_"..faction.."GrindStatsTrackerFrame_TimeTotalVal"]:SetText(FGC_GREY..FGC_SecondsToTime(GrinderCoreClassic_GetGrindingTime(faction)+FGC_PreviousGrindingTime[faction] + (GetTime()-FGC_GrindingStartedAt[faction])))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_RepTotalVal"]:SetText(FGC_GREY..(GrinderCoreClassic_GetRepGround(faction)+FGC_PreviousRepGround[faction] + (FGC_GetCurrentRepTotal(faction) - FGC_InitialRep[faction])))
        RepPerSecond = ((GrinderCoreClassic_GetRepGround(faction)+FGC_PreviousRepGround[faction] + (FGC_GetCurrentRepTotal(faction) - FGC_InitialRep[faction])) /
                        math.max(math.floor(GrinderCoreClassic_GetGrindingTime(faction)+FGC_PreviousGrindingTime[faction] + (GetTime() - FGC_GrindingStartedAt[faction])),1))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_RepPerHourTotalVal"]:SetText(FGC_GREY..math.floor(RepPerSecond*3600))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_TimeToRepUpTotalVal"]:SetText(FGC_GREY..FGC_TimeToRepUp(faction,RepPerSecond))
    else
        _G["FGC_"..faction.."GrindStatsTrackerFrame_TimeTodayVal"]:SetText(FGC_GREY..FGC_SecondsToTime(FGC_PreviousGrindingTime[faction]))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_RepTodayVal"]:SetText(FGC_GREY..FGC_PreviousRepGround[faction])
        RepPerSecond = (FGC_PreviousRepGround[faction] / math.max(FGC_PreviousGrindingTime[faction],1))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_RepPerHourTodayVal"]:SetText(FGC_GREY..math.floor(RepPerSecond*3600))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_TimeToRepUpTodayVal"]:SetText(FGC_GREY..FGC_TimeToRepUp(faction,RepPerSecond))

        _G["FGC_"..faction.."GrindStatsTrackerFrame_TimeTotalVal"]:SetText(FGC_GREY..FGC_SecondsToTime(GrinderCoreClassic_GetGrindingTime(faction)+FGC_PreviousGrindingTime[faction]))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_RepTotalVal"]:SetText(FGC_GREY..(GrinderCoreClassic_GetRepGround(faction)+FGC_PreviousRepGround[faction]))
        RepPerSecond = ((GrinderCoreClassic_GetRepGround(faction)+FGC_PreviousRepGround[faction]) /
                        math.max(math.floor(GrinderCoreClassic_GetGrindingTime(faction)+FGC_PreviousGrindingTime[faction]),1))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_RepPerHourTotalVal"]:SetText(FGC_GREY..math.floor(RepPerSecond*3600))
        _G["FGC_"..faction.."GrindStatsTrackerFrame_TimeToRepUpTotalVal"]:SetText(FGC_GREY..FGC_TimeToRepUp(faction,RepPerSecond))
    end
end

function FGC_UpdateDisplayDataFor(faction)
    local repValue = 0

    local _,playerRace = UnitRace("player")
    local _,playerClass = UnitClass("player")

    local fdata = FGC_FactionData[faction]
    local qdata

    local totalObjectiveCount
    local totalObjectivesCompleted

    --Iterate across all of this faction's quests.
    for i,qdata in ipairs(fdata.Quests) do
        if not(qdata.EndOfRow) then
            totalObjectiveCount = 0
            totalObjectivesCompleted = 0

            --Go through all of this quest's objectives.

            --Money objective?
            if (qdata.GoldCost > 0) then
                totalObjectiveCount = totalObjectiveCount + 1

                --Do they have enough money?
                if (GetMoney() >= qdata.GoldCost) then
                    totalObjectivesCompleted = totalObjectivesCompleted + 1
                end
            end

            --Item objectives?
            local itemCounts = {}
            if (FGC_tablesize(qdata.ItemObjectives) > 0) then
                --Get the data for any item objectives.
                for itemID,itemData in pairs(qdata.ItemObjectives) do
                    totalObjectiveCount = totalObjectiveCount + itemData.Count
                    itemCounts[itemID] = GetItemCount(itemID,FGCSettings["IncludeBankBags"])
                    if (itemData.Shareable and FGCSettings["IncludeItemsOnAlts"]) then
                        itemCounts[itemID] = itemCounts[itemID] + GrinderCoreClassic_AltTotalCount(itemID)
                    end

                    --Enough of this item?
                    if (itemCounts[itemID] >= itemData.Count) then
                        totalObjectivesCompleted = totalObjectivesCompleted + itemData.Count
                    else
                        totalObjectivesCompleted = totalObjectivesCompleted + itemCounts[itemID]
                    end
                end
            end

            --Other objectives?
            local questIndex = nil
            --See if the player is on this quest right now.
            for qi=1,GetNumQuestLogEntries(),1 do
                for i,qname in pairs(qdata.Names) do
                    if (GetQuestLogTitle(qi) == fdata.Text:Get(qname)) then
                        questIndex = qi
                        break
                    end
                end
                if (questIndex) then break end
            end
            if (FGC_tablesize(qdata.OtherObjectives) > 0) then
                --Check the status of all the objectives.
                for i,objectiveData in pairs(qdata.OtherObjectives) do
                    local oText, oDone
                    if (questIndex) then
                        oText,_,oDone = GetQuestLogLeaderBoard(objectiveData.ObjectiveIndex,questIndex)
                    else
                        oDone = false
                    end
    
                    if (objectiveData.Count == 0) then
                        totalObjectiveCount = totalObjectiveCount + 1
    
                        if (oDone) then
                            totalObjectivesCompleted = totalObjectivesCompleted + 1
                        end
                    else
                        totalObjectiveCount = totalObjectiveCount + objectiveData.Count

                        if (oDone) then
                            totalObjectivesCompleted = totalObjectivesCompleted + objectiveData.Count
                        else
                            if (questIndex) then
                                local _,_,done = string.find(oText,"(%d*)/"..objectiveData.Count)
                                totalObjectivesCompleted = totalObjectivesCompleted + done
                            end
                            --If we aren't on the quest, the number of objective parts completed is zero.
                        end
                    end
                end
            end

            --Calculate the rep value gained from this quest (if any)
            local countColor = ""
            if (qdata.Stackable) then
                --A stackable quest may be worth multiple completions.
                local timesCompleted = 999999999999999

                local soloItemID
                for itemID,itemData in pairs(qdata.ItemObjectives) do
                    soloItemID = itemID --Ignored unless it's the only item.
                    timesCompleted = math.floor(math.min(timesCompleted,itemCounts[itemID]/itemData.Count))
                end
                repValue = repValue + timesCompleted * qdata.RepValue
    
                if (timesCompleted > 0) then
                    countColor = FGC_WHITE
                else
                    countColor = FGC_GREY
                end

                local qtexture = _G["FGC_"..faction.."_"..qdata.Quest.."QuestButtonTexture"]
                if (qtexture ~= nil) then
                    qtexture:SetDesaturated(timesCompleted < 1)
                end

                --To match FG1 functionality, single-item stackable quests display the full item count on the count label.
                if (FGC_tablesize(qdata.ItemObjectives) == 1) then
                    totalObjectivesCompleted = itemCounts[soloItemID]
                end
            else
                --A non-stackable quest can only be worth a single completion.
                if (totalObjectivesCompleted >= totalObjectiveCount) then
                    repValue = repValue + qdata.RepValue
                    countColor = FGC_WHITE
                else
                    countColor = FGC_GREY
                end
                --A non-stackable quest that is not in your log gets a greyed-out icon
                local qtexture = _G["FGC_"..faction.."_"..qdata.Quest.."QuestButtonTexture"]
                if (qtexture ~= nil) then
                    qtexture:SetDesaturated(questIndex == nil)
                end
            end
            --Update the objective count label.
            local cwin=_G["FGC_"..faction.."_"..qdata.Quest.."QuestButtonCount"]
            if (cwin ~= nil) then
                cwin:SetText(countColor..totalObjectivesCompleted.."/"..totalObjectiveCount)
            end
        end
    end

    --Account for human rep bonus and guild perk bonus
    local repMultiplier = 1.0;
    if (playerRace=="Human") then
        repMultiplier = repMultiplier + 0.1;
    end
    if (IsInGuild() and GetGuildLevel ~= nil) then
        if (GetGuildLevel() >= 4)  then repMultiplier = repMultiplier + 0.05 end --Guild Perk: Mr. Popularity, Rank 1
        if (GetGuildLevel() >= 12) then repMultiplier = repMultiplier + 0.05 end --Guild Perk: Mr. Popularity, Rank 2
    end

    repValue = repValue * repMultiplier;

    local win = _G["FGC_"..faction.."GrindStatsTrackerFrame_RepValue"]
    if (win ~= nil) then 
        win:SetText(FGC_YELLOW..FGC_TEXT:Get("Rep Value").." : "..repValue) 
    end

    if(FGC_GetPendingRep(faction) ~= repValue)then
        FGC_PendingRep[faction] = repValue
        FGC_UpdateRepBarsFor(faction)
    end
end
