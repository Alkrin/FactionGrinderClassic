--Index is factionTag, not name
local faction = FGC_FactionData["Darnassus"]
local T = faction.Text

T:SetLocale("deDE")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet

T:Add("FactionName","Darnassus")
T:Add("Abbreviation","Da")

--NPC names
T:Add("Pratt McGrubben","Pratt McGrubben")
T:Add("Mathrengyl Bearwalker","Mathrengyl Bärenfährte")
T:Add("Raedon Duskstriker","Raedon Dämmersturm")
T:Add("Quintis Jonespyre","Quintis Lebenshand")

--Quest names
T:Add("Pristine Yeti Hide","Makelloser Yetibalg")
T:Add("Morrowgrain to Darnassus","Morgenkorn nach Darnassus")
T:Add("Morrowgrain to Feathermoon Stronghold","Morgenkorn für die Mondfederfeste")
T:Add("A Donation of Runecloth","Spendet Runenstoff")

--Quest objective text

--Item names
T:Add("Pristine Yeti Hide","Makelloser Yetibalg")
T:Add("Morrowgrain","Morgenkorn")
T:Add("Runecloth","Runenstoff")

--ExtraInfo text
T:Add("Quintis accepts 5 Morrowgrain, but grants only 1/3 the rep","Quintis nimmt 5 Morgenkorn entgegen, gibt aber nur 1/3 des Rufs")

