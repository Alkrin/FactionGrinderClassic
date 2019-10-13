--Index is factionTag, not name
local faction = FGC_FactionData["Undercity"]
local T = faction.Text

T:SetLocale("deDE")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet
T:Add("FactionName","Unterstadt")
T:Add("Abbreviation","US")

--NPC names
T:Add("Ralston Farnsley","Ralston Farnsblatt")

--Quest names
T:Add("A Donation of Runecloth","Spendet Runenstoff")

--Quest objective text


--Item names
T:Add("Runecloth","Runenstoff")

--ExtraInfo text
