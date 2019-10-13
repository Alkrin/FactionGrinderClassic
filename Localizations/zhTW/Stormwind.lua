--Index is factionTag, not name
local faction = FGC_FactionData["Stormwind"]
local T = faction.Text

T:SetLocale("zhTW")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet
T:Add("FactionName","暴風城")
T:Add("Abbreviation","暴風")

--NPC names
T:Add("Clavicus Knavingham","克拉維斯·納文哈姆")

--Quest names
T:Add("A Donation of Runecloth","捐獻符文布")

--Quest objective text


--Item names
T:Add("Runecloth","符文布")

--ExtraInfo text
