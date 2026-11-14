-- Who has been playing, written by tools\UpdateActivity.ps1. Do not edit by hand.
--
-- Built from the activity log the ladder pass keeps, which records a row each
-- time a character's win or loss count moves between two polls. It costs no
-- requests: every figure here was already paid for by that pass.
--
-- Keyed by the display name exactly as the leaderboard carries it, joined to
-- the log on the generator's side. Do NOT lowercase a name to look it up:
-- Lua's :lower() folds only A-Z and would miss every accented character.
--
-- [hours][bracket]["Name|realm"] = { won, lost, rating moved, minutes ago }
--
-- "Minutes ago" counts back from `built` below, not from now, and it is when
-- the character was last SEEN to have played rather than when they played.
-- The ladder is polled on a timer, so a game is noticed at the next poll --
-- accurate to fifteen minutes on Mists and to the hour on Anniversary.
ArenaPlusData = ArenaPlusData or {}
local ns = ArenaPlusData

ns.ACTIVITY_BY_REGION = ns.ACTIVITY_BY_REGION or {}

ns.ACTIVITY_BY_REGION["tbc-us"] = {
	built = 1794614316,
	builtText = "2026-11-13 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 103 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 161 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 161 },
			["Losticus|nightslayer"] = { 2, 0, 16, 161 },
			["Swácked|nightslayer"] = { 0, 2, -21, 161 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 161 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 161 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 161 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 103 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 161 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 161 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 341 },
			["Cream|nightslayer"] = { 3, 1, 4, 259 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 256 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 257 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 211 },
			["Shob|nightslayer"] = { 2, 1, 11, 257 },
			["Creationx|nightslayer"] = { 0, 2, -15, 269 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 262 },
			["Losticus|nightslayer"] = { 2, 0, 16, 161 },
			["Swácked|nightslayer"] = { 0, 2, -21, 161 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 272 },
			["Creation|nightslayer"] = { 1, 0, 21, 251 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 161 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 161 },
			["Kedern|nightslayer"] = { 1, 0, 3, 247 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 263 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 273 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 161 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 161 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 103 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 161 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 161 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 341 },
			["Cream|nightslayer"] = { 3, 1, 4, 259 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 256 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 257 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 211 },
			["Shob|nightslayer"] = { 2, 1, 11, 257 },
			["Creationx|nightslayer"] = { 0, 2, -15, 269 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 262 },
			["Losticus|nightslayer"] = { 2, 0, 16, 161 },
			["Swácked|nightslayer"] = { 0, 2, -21, 161 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 272 },
			["Creation|nightslayer"] = { 1, 0, 21, 251 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 161 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 161 },
			["Kedern|nightslayer"] = { 1, 0, 3, 247 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 263 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 273 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 161 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 161 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 103 },
			["Shigekazu|nightslayer"] = { 7, 11, -26, 1047 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 1047 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 1075 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 1076 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 1141 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 1142 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 1033 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 161 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 161 },
			["Qantas|nightslayer"] = { 4, 6, -23, 1034 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 1151 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 1152 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 341 },
			["Duudah|nightslayer"] = { 6, 0, 19, 1241 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 1241 },
			["Cream|nightslayer"] = { 3, 1, 4, 259 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 256 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 257 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 881 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 211 },
			["Shob|nightslayer"] = { 2, 1, 11, 257 },
			["Arpx|nightslayer"] = { 2, 0, 14, 1051 },
			["Creationx|nightslayer"] = { 0, 2, -15, 269 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 262 },
			["Losticus|nightslayer"] = { 2, 0, 16, 161 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 1051 },
			["Swácked|nightslayer"] = { 0, 2, -21, 161 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 272 },
			["Creation|nightslayer"] = { 1, 0, 21, 251 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 161 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 161 },
			["Kedern|nightslayer"] = { 1, 0, 3, 247 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 263 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 273 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 161 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 161 },
		},
	},
}

