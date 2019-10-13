--Index is factionTag, not name
local faction = FGC_FactionData["ArgentCrusade"]
local T = faction.Text

T:SetLocale("frFR")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet
T:Add("FactionName","La croisade d'argent")
T:Add("Abbreviation","CA")

--NPC names
T:Add("(A) Absalan the Pious","(A) Absalan le Pieux")
T:Add("(H) Brother Keltan","(H) Fr\195\168re Keltan")
T:Add("Commander Kunz","Commandant Kunz")

--Quest names
T:Add("Slaves to Saronite","Esclaves de la saronite")
T:Add("Troll Patrol","Patrouille anti-trolls")

--Quest objective text
T:Add("Saronite Mine Slave rescued","Esclave des mines de saronite sauv\195\169")
T:Add("Captain Brandon's Task","T\195\160che pour le capitaine Brandon")
T:Add("Captain Rupert's Task","T\195\160che pour le capitaine Rupert")
T:Add("Captain Grondel's Task","T\195\160che pour le capitaine Grondel")
T:Add("Alchemist Finklestein's Task","T\195\160che pour l'alchimiste Finklestein")

--Item names


--ExtraInfo text
T:Add("Bonus rep awarded if completed in less than 20 minutes",nil)
