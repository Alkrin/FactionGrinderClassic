--Index is factionTag, not name
local faction = FGC_FactionData["Darnassus"]
local T = faction.Text

T:SetLocale("zhTW")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet

T:Add("FactionName","達納蘇斯")
T:Add("Abbreviation","達納")

--NPC names
T:Add("Pratt McGrubben","普拉特·馬克格魯比")
T:Add("Mathrengyl Bearwalker","瑪斯雷·馭熊者")
T:Add("Raedon Duskstriker","萊頓·暗影")
T:Add("Quintis Jonespyre","奎恩提斯")

--Quest names
T:Add("Pristine Yeti Hide","完美的雪人毛皮")
T:Add("Morrowgrain to Darnassus","達納蘇斯的晨光麥")
T:Add("Morrowgrain to Feathermoon Stronghold","羽月要塞的晨光麥")
T:Add("A Donation of Runecloth","捐獻符文布")

--Quest objective text

--Item names
T:Add("Pristine Yeti Hide","完美的雪人毛皮")
T:Add("Morrowgrain","晨光麥")
T:Add("Runecloth","符文布")

--ExtraInfo text
T:Add("Quintis accepts 5 Morrowgrain, but grants only 1/3 the rep","奎恩提斯接受 5 個晨光麥, 但是僅可獲得 1/3 的聲望值")

