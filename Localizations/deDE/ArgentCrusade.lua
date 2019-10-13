--Index is factionTag, not name
local faction = FGC_FactionData["ArgentCrusade"]
local T = faction.Text

T:SetLocale("deDE")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet
T:Add("FactionName","Argentumkreuzzug")
T:Add("Abbreviation","AK")

--NPC names
T:Add("(A) Absalan the Pious",nil)
T:Add("(H) Brother Keltan",nil)
T:Add("Commander Kunz","Kommandant Kunz")

--Quest names
T:Add("Slaves to Saronite","Vom Saronit abhängig")
T:Add("Troll Patrol","Trollpatrouille")

--Quest objective text
T:Add("Saronite Mine Slave rescued","Saronitminensklave gerettet")
T:Add("Captain Brandon's Task","Hauptmann Brandons Auftrag")
T:Add("Captain Rupert's Task","Hauptmann Ruperts Auftrag")
T:Add("Captain Grondel's Task","Hauptmann Grondels Auftrag")
T:Add("Alchemist Finklestein's Task","Alchemist Finkelsteins Auftrag")

--Item names


--ExtraInfo text
T:Add("Bonus rep awarded if completed in less than 20 minutes",nil)
