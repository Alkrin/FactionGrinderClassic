--Index is factionTag, not name
local faction = FGC_FactionData["Darnassus"]
local T = faction.Text

T:SetLocale("zhCN")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet

T:Add("FactionName","达纳苏斯")
T:Add("Abbreviation","达纳")

--NPC names
T:Add("Pratt McGrubben","普拉特·马克格鲁比")
T:Add("Mathrengyl Bearwalker","玛斯雷·驭熊者")
T:Add("Raedon Duskstriker","莱顿·暗影")
T:Add("Quintis Jonespyre","奎恩提斯")

--Quest names
T:Add("Pristine Yeti Hide","完美的雪人毛皮")
T:Add("Morrowgrain to Darnassus","达纳苏斯的晨光麦")
T:Add("Morrowgrain to Feathermoon Stronghold","羽月要塞的晨光麦")
T:Add("A Donation of Runecloth","捐献符文布")

--Quest objective text

--Item names
T:Add("Pristine Yeti Hide","完美的雪人毛皮")
T:Add("Morrowgrain","晨光麦")
T:Add("Runecloth","符文布")

--ExtraInfo text
T:Add("Quintis accepts 5 Morrowgrain, but grants only 1/3 the rep","奎恩提斯接受 5 个晨光麦, 但是仅可获得 1/3 的声望值")

