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
	built = 1794621518,
	builtText = "2026-11-13 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 223 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 281 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 281 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 331 },
			["Losticus|nightslayer"] = { 2, 0, 16, 281 },
			["Swácked|nightslayer"] = { 0, 2, -21, 281 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 281 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 281 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 281 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 281 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 223 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 281 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 281 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 461 },
			["Cream|nightslayer"] = { 3, 1, 4, 379 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 376 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 377 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 331 },
			["Shob|nightslayer"] = { 2, 1, 11, 377 },
			["Creationx|nightslayer"] = { 0, 2, -15, 389 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 382 },
			["Losticus|nightslayer"] = { 2, 0, 16, 281 },
			["Swácked|nightslayer"] = { 0, 2, -21, 281 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 392 },
			["Creation|nightslayer"] = { 1, 0, 21, 371 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 281 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 281 },
			["Kedern|nightslayer"] = { 1, 0, 3, 367 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 383 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 393 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 281 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 281 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 223 },
			["Shigekazu|nightslayer"] = { 7, 11, -26, 1167 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 1167 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 1195 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 1196 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 1261 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 1262 },
			["Clothfate|nightslayer"] = { 4, 6, -23, 1153 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 281 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 281 },
			["Qantas|nightslayer"] = { 4, 6, -23, 1154 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 1271 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 1272 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 461 },
			["Duudah|nightslayer"] = { 6, 0, 19, 1361 },
			["Vanderden|nightslayer"] = { 6, 0, 18, 1361 },
			["Cream|nightslayer"] = { 3, 1, 4, 379 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 376 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 377 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 1001 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 331 },
			["Shob|nightslayer"] = { 2, 1, 11, 377 },
			["Arpx|nightslayer"] = { 2, 0, 14, 1171 },
			["Creationx|nightslayer"] = { 0, 2, -15, 389 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 382 },
			["Losticus|nightslayer"] = { 2, 0, 16, 281 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 1171 },
			["Swácked|nightslayer"] = { 0, 2, -21, 281 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 392 },
			["Creation|nightslayer"] = { 1, 0, 21, 371 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 281 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 281 },
			["Kedern|nightslayer"] = { 1, 0, 3, 367 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 383 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 393 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 281 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 281 },
		},
	},
}

