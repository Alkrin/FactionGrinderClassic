--Index is factionTag, not name
local faction = FGC_FactionData["Darnassus"]
local T = faction.Text

T:SetLocale("koKR")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet

T:Add("FactionName",nil)
T:Add("Abbreviation",nil)

--NPC names
T:Add("Pratt McGrubben",nil)
T:Add("Mathrengyl Bearwalker",nil)
T:Add("Raedon Duskstriker",nil)
T:Add("Quintis Jonespyre",nil)

--Quest names
T:Add("Pristine Yeti Hide",nil)
T:Add("Morrowgrain to Darnassus",nil)
T:Add("Morrowgrain to Feathermoon Stronghold",nil)
T:Add("A Donation of Runecloth",nil)

--Quest objective text

--Item names
T:Add("Pristine Yeti Hide",nil)
T:Add("Morrowgrain",nil)
T:Add("Runecloth",nil)

--ExtraInfo text
T:Add("Quintis accepts 5 Morrowgrain, but grants only 1/3 the rep",nil)

