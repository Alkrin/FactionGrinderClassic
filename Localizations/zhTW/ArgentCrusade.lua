--Index is factionTag, not name
local faction = FGC_FactionData["ArgentCrusade"]
local T = faction.Text

T:SetLocale("zhTW")

--T:Add(englishNameOrTag,translation) - translation can be nil if no translation yet
T:Add("FactionName","銀白十字軍")
T:Add("Abbreviation","銀白十字")

--NPC names
T:Add("(A) Absalan the Pious",nil)
T:Add("(H) Brother Keltan",nil)
T:Add("Commander Kunz","指揮官康茲")

--Quest names
T:Add("Slaves to Saronite","搶救薩鋼礦奴")
T:Add("Troll Patrol","食人妖巡邏")

--Quest objective text
T:Add("Saronite Mine Slave rescued","薩鋼礦坑奴隸已救出")
T:Add("Captain Brandon's Task","布蘭登上尉的工作")
T:Add("Captain Rupert's Task","魯伯特上尉的工作")
T:Add("Captain Grondel's Task","格隆戴爾上尉的工作")
T:Add("Alchemist Finklestein's Task","鍊金師芬克斯坦的工作")

--Item names


--ExtraInfo text
T:Add("Bonus rep awarded if completed in less than 20 minutes",nil)
