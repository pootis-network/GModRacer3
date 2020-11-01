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
    },
	-- spanish
	 es = {
        MUSIC_DISABLED = "¡Música deshabilitada!",
        MUSIC_ENABLED = "¡Música habilitada!",
        CHECKPOINTS = "PUNTOS DE CONTROL",
        MONEY = "DINERO",
        CUSTOMIZATION_TITLE = "Menú de personalización",
        COLORMENUBUTTON = "Personalizar el color del coche",
		BUYCARBUTTON = "Comprar coche",
        CUSTOMIZECARBUTTON = "Personalizar coche",
        COLORMENUTITLE = "Selector de color",
        SETCOLORTEXT = "Establecer este color",
        BUYTHECARSTRING = "Compra la ",
        BUYUPGRADESSTRING = "Comprar actualizaciones para ",
        DEFAULTBUMPERSTRING = "Parachoques delanteros",
        BUMPERPARTTEXT = "Parachoque",
        DEFBACKBUMPERSTRING = "Parachoques traseros",
        BACKBUMPERTEXT = "Parachoques trasero",
        SKIRTS = "Faldas",
        SKIRTOPTION = "Opción de falda",
        HOODS = "Campanas",
        HOODOPTION = "Opción de capucha",
        SPOILERS = "Spoilers",
        SPOILEROPTION = "Opción de spoiler",
        WHEELS = "Ruedas",
        WHEELOPTION = "Opción de neumáticos",
    }
}

--print(translationTable[playerLanguage]["MUSIC_DISABLED"])
