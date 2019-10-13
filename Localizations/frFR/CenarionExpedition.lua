--Index is factionTag, not name
local faction = FGC_FactionData["CenarionExpedition"]
local T = faction.Text

T:SetLocale("frFR")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet

T:Add("FactionName","Expédition cénarienne")
T:Add("Abbreviation","CE")

--NPC names
T:Add("Arch Druid Lathorius",nil)
T:Add("Ysiel Windsinger","Ysiel Chantelevent")
T:Add("Lauranna Thar'well","Lauranna Thar'well")

--Quest names
T:Add("Identify Plant Parts","Identifier les morceaux de plantes")
T:Add("Coilfang Armaments","Les armes de Glissecroc")
T:Add("Can't Get Ear-nough...",nil)

--Quest objective text

--Item names
T:Add("Unidentified Plant Parts","Morceaux de plantes non identifiées")
T:Add("Coilfang Armaments","Armes de Glissecroc")
T:Add("Nesingwary Lackey Ear",nil)

--ExtraInfo text

