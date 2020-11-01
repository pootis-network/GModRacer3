-- GMod Racer 3 Translation Credits:
-- thexkey : en-US / spanish translations.


-- obtain a player's language via convar
--playerLanguage = GetConVar("gmod_language"):GetString()

local convar = GetConVar("gmod_language")

-- hotfix by TankNut
function L(key)
    local lang = translationTable[convar:GetString()] or translationTable["en"]

    return lang[key] or key
end

-- translations go here.
translationTable = {
    -- english
    en = {
        MUSIC_DISABLED = "Music disabled!",
        MUSIC_ENABLED = "Music enabled!",
        CHECKPOINTS = "CHECKPOINTS",
        MONEY = "MONEY",
        CUSTOMIZATION_TITLE = "Customization Menu",
        COLORMENUBUTTON = "Customize Car Color",
		BUYCARBUTTON = "Buy Car",
        CUSTOMIZECARBUTTON = "Customize Car",
        COLORMENUTITLE = "Color Picker",
        SETCOLORTEXT = "Set This Color",
        BUYTHECARSTRING = "Buy the ",
        BUYUPGRADESSTRING = "Buy upgrades for ",
        DEFAULTBUMPERSTRING = "Front Bumpers",
        BUMPERPARTTEXT = "Bumper",
        DEFBACKBUMPERSTRING = "Rear Bumpers",
        BACKBUMPERTEXT = "Rear Bumper",
        SKIRTS = "Skirts",
        SKIRTOPTION = "Skirt Option",
        HOODS = "Hoods",
        HOODOPTION = "Hood Option",
        SPOILERS = "Spoilers",
        SPOILEROPTION = "Spoiler Option",
        WHEELS = "Wheels",
        WHEELOPTION = "Tire Option",
    }
}

--print(translationTable[playerLanguage]["MUSIC_DISABLED"])