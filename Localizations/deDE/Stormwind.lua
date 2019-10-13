--Index is factionTag, not name
local faction = FGC_FactionData["Stormwind"]
local T = faction.Text

T:SetLocale("deDE")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet
T:Add("FactionName","Sturmwind")
T:Add("Abbreviation","SW")

--NPC names
T:Add("Clavicus Knavingham","Clavicus Knappheim")

--Quest names
T:Add("A Donation of Runecloth","Spendet Runenstoff")

--Quest objective text


--Item names
T:Add("Runecloth","Runenstoff")

--ExtraInfo text
