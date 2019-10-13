--Index is factionTag, not name
local faction = FGC_FactionData["Exodar"]
local T = faction.Text

T:SetLocale("deDE")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet
T:Add("FactionName","Die Exodar")
T:Add("Abbreviation","Ex")

--NPC names
T:Add("Dugiru","Dugiru")

--Quest names
T:Add("A Donation of Runecloth","Spendet Runenstoff")

--Quest objective text


--Item names
T:Add("Runecloth","Runenstoff")

--ExtraInfo text
