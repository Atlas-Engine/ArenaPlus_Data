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
	built = 1794610712,
	builtText = "2026-11-13 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 5, 0, 16, 43 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 43 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 101 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 101 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 151 },
			["Losticus|nightslayer"] = { 2, 0, 16, 101 },
			["Swácked|nightslayer"] = { 0, 2, -21, 101 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 101 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 101 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 101 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 43 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 101 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 101 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 281 },
			["Cream|nightslayer"] = { 3, 1, 4, 198 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 196 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 197 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 151 },
			["Shob|nightslayer"] = { 2, 1, 11, 197 },
			["Creationx|nightslayer"] = { 0, 2, -15, 209 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 202 },
			["Losticus|nightslayer"] = { 2, 0, 16, 101 },
			["Swácked|nightslayer"] = { 0, 2, -21, 101 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 211 },
			["Creation|nightslayer"] = { 1, 0, 21, 191 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 101 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 101 },
			["Kedern|nightslayer"] = { 1, 0, 3, 187 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 203 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 213 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 101 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 101 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 43 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 101 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 101 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 281 },
			["Cream|nightslayer"] = { 3, 1, 4, 198 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 196 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 197 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 151 },
			["Shob|nightslayer"] = { 2, 1, 11, 197 },
			["Creationx|nightslayer"] = { 0, 2, -15, 209 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 202 },
			["Losticus|nightslayer"] = { 2, 0, 16, 101 },
			["Swácked|nightslayer"] = { 0, 2, -21, 101 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 211 },
			["Creation|nightslayer"] = { 1, 0, 21, 191 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 101 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 101 },
			["Kedern|nightslayer"] = { 1, 0, 3, 187 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 203 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 213 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 101 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 101 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 43 },
			["Shigekazu|nightslayer"] = { 7, 11, -26, 987 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 986 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 1015 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 1016 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 1081 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 1081 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 973 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 101 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 101 },
			["Qantas|nightslayer"] = { 4, 6, -23, 974 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 1091 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 1092 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 281 },
			["Duudah|nightslayer"] = { 6, 0, 19, 1181 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 1181 },
			["Cream|nightslayer"] = { 3, 1, 4, 198 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 196 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 197 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 821 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 151 },
			["Shob|nightslayer"] = { 2, 1, 11, 197 },
			["Arpx|nightslayer"] = { 2, 0, 14, 991 },
			["Creationx|nightslayer"] = { 0, 2, -15, 209 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 202 },
			["Losticus|nightslayer"] = { 2, 0, 16, 101 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 991 },
			["Swácked|nightslayer"] = { 0, 2, -21, 101 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 211 },
			["Creation|nightslayer"] = { 1, 0, 21, 191 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 101 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 101 },
			["Kedern|nightslayer"] = { 1, 0, 3, 187 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 203 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 213 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 101 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 101 },
		},
	},
}

