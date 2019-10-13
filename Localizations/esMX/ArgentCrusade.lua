--Index is factionTag, not name
local faction = FGC_FactionData["ArgentCrusade"]
local T = faction.Text

T:SetLocale("esMX")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet
T:Add("FactionName",nil)
T:Add("Abbreviation",nil)

--NPC names
T:Add("(A) Absalan the Pious",nil)
T:Add("(H) Brother Keltan",nil)
T:Add("Commander Kunz",nil)

--Quest names
T:Add("Slaves to Saronite",nil)
T:Add("Troll Patrol",nil)

--Quest objective text
T:Add("Saronite Mine Slave rescued",nil)
T:Add("Captain Brandon's Task",nil)
T:Add("Captain Rupert's Task",nil)
T:Add("Captain Grondel's Task",nil)
T:Add("Alchemist Finklestein's Task",nil)

--Item names


--ExtraInfo text
T:Add("Bonus rep awarded if completed in less than 20 minutes",nil)
