-- Copyright (C) 2021 Norbert Thien, multimediamobil - Region Süd, Lizenz: Creative Commons BY-SA 4.0
-- Keine Rezepte, nur im Creative Modus verwendbar oder mit give <playername> zeichen:zeichen_A

local alle_zeichen = {
	{"A", "Buchstabe A"},
	{"AE", "Buchstabe Ä"},
	{"B", "Buchstabe B"},
	{"C", "Buchstabe C"},
	{"D", "Buchstabe D"},
	{"E", "Buchstabe E"},
	{"F", "Buchstabe F"},
	{"G", "Buchstabe G"},
	{"H", "Buchstabe H"},
	{"I", "Buchstabe I"},
	{"J", "Buchstabe J"},
	{"K", "Buchstabe K"},
	{"L", "Buchstabe L"},
	{"M", "Buchstabe M"},
	{"N", "Buchstabe N"},
	{"O", "Buchstabe O"},
	{"OE", "Buchstabe Ö"},
	{"P", "Buchstabe P"},
	{"Q", "Buchstabe Q"},
	{"R", "Buchstabe R"},
	{"S", "Buchstabe S"},
	{"T", "Buchstabe T"},
	{"U", "Buchstabe U"},
	{"UE", "Buchstabe Ü"},
	{"V", "Buchstabe V"},
	{"W", "Buchstabe W"},
	{"X", "Buchstabe X"},
	{"Y", "Buchstabe Y"},
	{"Z", "Buchstabe Z"},
	{"za0", "Zahl 0"},
	{"za1", "Zahl 1"},
	{"za2", "Zahl 2"},
	{"za3", "Zahl 3"},
	{"za4", "Zahl 4"},
	{"za5", "Zahl 5"},
	{"za6", "Zahl 6"},
	{"za7", "Zahl 7"},
	{"za8", "Zahl 8"},
	{"za9", "Zahl 9"},
	{"zbBlank", "Blank"},
	{"zeAmpersand", "Ampersand"},
	{"zeAnfuehrungszeichen", "Anführungszeichen"},
	{"zeAsterik", "Asterik"},
	{"zeAusrufezeichen", "Ausrufezeichen"},
	{"zeCopyright", "Copyright"},
	{"zeDoppelpunkt", "Doppelpunkt"},
	{"zeDreieck", "Dreieck"},
	{"zeEmail", "E-Mail"},
	{"zeForm", "Form"},
	{"zeFragezeichen", "Fragezeichen"},
	{"zeGleichheit", "Gleichheitszeichen"},
	{"zeHashtag", "Hash-Tag"},
	{"zeMal", "x-Mal"},
	{"zeMinus", "Minus"},
	{"zePlus", "Plus"},
	{"zeProzent", "Prozent"},
	{"zePunkt", "Punkt"},
	{"zeSlash", "Slash"}
}

for _, eintrag in ipairs(alle_zeichen) do
	local zeichen = eintrag[1]
	local beschreibung = eintrag[2]
	minetest.register_node('zeichen:zeichen_' .. zeichen, {
		description = beschreibung,
		drawtype = "nodebox",
		tiles = {
			'zeichen_seiten.png^zeichen_' .. zeichen .. '.png^[transformR90',
			'zeichen_seiten.png',
			'zeichen_seiten.png',
			'zeichen_seiten.png',
			'zeichen_seiten.png',
			'zeichen_seiten.png'
			},
		node_box =  {
			type = "fixed",
			fixed = { -0.5, -0.5, -0.5, 0.5, -0.4, 0.5 }
		},
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = true,
		groups = { snappy = 3 },
		sounds = default.node_sound_wood_defaults(),
		on_place = minetest.rotate_node
	})
end
