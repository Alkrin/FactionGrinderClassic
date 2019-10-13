--Index is factionTag, not name
local faction = FGC_FactionData["ArgentCrusade"]
local T = faction.Text

T:SetLocale("zhCN")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet
T:Add("FactionName","银色北伐军")
T:Add("Abbreviation","银色北伐")

--NPC names
T:Add("(A) Absalan the Pious",nil)
T:Add("(H) Brother Keltan",nil)
T:Add("Commander Kunz","指挥官库恩斯")

--Quest names
T:Add("Slaves to Saronite","萨隆邪铁的奴隶")
T:Add("Troll Patrol","巡逻员")

--Quest objective text
T:Add("Saronite Mine Slave rescued","营救萨隆邪铁矿洞奴隶")
T:Add("Captain Brandon's Task","布兰顿上尉的任务")
T:Add("Captain Rupert's Task","鲁伯特上尉的任务")
T:Add("Captain Grondel's Task","格隆迪尔上尉的任务")
T:Add("Alchemist Finklestein's Task","炼金师菲肯斯坦的任务")

--Item names


--ExtraInfo text
T:Add("Bonus rep awarded if completed in less than 20 minutes",nil)
