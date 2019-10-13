--Index is factionTag, not name
local faction = FGC_FactionData["Darnassus"]
local T = faction.Text

T:SetLocale("frFR")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet

T:Add("FactionName","Darnassus")
T:Add("Abbreviation","Da")

--NPC names
T:Add("Pratt McGrubben","Pratt McGrubben")
T:Add("Mathrengyl Bearwalker","Mathrengyl Pasdelours")
T:Add("Raedon Duskstriker","Raedon Heurtebrune")
T:Add("Quintis Jonespyre","Quintis Gentecime")

--Quest names
T:Add("Pristine Yeti Hide","Une peau de yéti en parfait état")
T:Add("Morrowgrain to Darnassus","De la fibre d'aurore pour Darnassus")
T:Add("Morrowgrain to Feathermoon Stronghold","De la Fibre d'aurore au bastion de Pennelune")
T:Add("A Donation of Runecloth","Encore de l'étoffe runique")

--Quest objective text

--Item names
T:Add("Pristine Yeti Hide","Peau de yéti en parfait état")
T:Add("Morrowgrain","Fibre d'aurore")
T:Add("Runecloth","Etoffe runique")

--ExtraInfo text
T:Add("Quintis accepts 5 Morrowgrain, but grants only 1/3 the rep","Quintis accepte 5 fibres d'aurore, mais ne propose qu'un tiers de la réputation")

