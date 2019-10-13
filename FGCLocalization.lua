--This file contains the functions used to create and use localization tables for FactionGrinder.

function D(t) DEFAULT_CHAT_FRAME:AddMessage(t) end

--Creates an empty localization table.
function FGC_CreateLocalizationTable()
    local result = {};

    result.SetLocale = FGC_SetLocale
    result.Add = FGC_AddLocalization
    result.Get = FGC_Localize

    result:SetLocale("enUS") --Default language used when adding entries

    return result
end

function FGC_SetLocale(self,locale)
    self._locale = locale

    if (self[locale] == nil) then
    self[locale] = {} --Empty localization set
    end
end

function FGC_AddLocalization(self,englishText,otherText)
    if (otherText ~= nil) then
        self[self._locale][englishText] = otherText
    elseif (self._locale == "enUS") then
    self[self._locale][englishText] = englishText
    end
end

function FGC_Localize(self,text)
    local locale = GetLocale()

    if (self[locale] == nil or self[locale][text] == nil) then return "Needs Translation" end
    return self[locale][text]
end
