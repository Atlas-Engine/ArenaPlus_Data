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
	built = 1794628716,
	builtText = "2026-11-13 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 6, 5, 0, 41 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 41 },
			["Lizzygrey|nightslayer"] = { 3, 2, 22, 41 },
			["Mopz|nightslayer"] = { 3, 2, 26, 41 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 41 },
			["Tycat|nightslayer"] = { 4, 0, 10, 41 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 0 },
			["Frotted|nightslayer"] = { 0, 2, -41, 41 },
			["Xczv|dreamscythe"] = { 1, 0, 11, 41 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 4, 0, 8, 41 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 41 },
			["Paxii|nightslayer"] = { 4, 0, 5, 41 },
			["Ryzp|nightslayer"] = { 3, 0, 0, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 6, 5, 0, 41 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 41 },
			["Lizzygrey|nightslayer"] = { 3, 2, 22, 41 },
			["Mopz|nightslayer"] = { 3, 2, 26, 41 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 41 },
			["Tycat|nightslayer"] = { 4, 0, 10, 41 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 0 },
			["Frotted|nightslayer"] = { 0, 2, -41, 41 },
			["Xczv|dreamscythe"] = { 1, 0, 11, 41 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 4, 0, 8, 41 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 41 },
			["Paxii|nightslayer"] = { 4, 0, 5, 41 },
			["Ryzp|nightslayer"] = { 3, 0, 0, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 6, 5, 0, 41 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 41 },
			["Bigfudgy|dreamscythe"] = { 5, 0, 16, 343 },
			["Lizzygrey|nightslayer"] = { 3, 2, 22, 41 },
			["Mopz|nightslayer"] = { 3, 2, 26, 41 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 41 },
			["Tycat|nightslayer"] = { 4, 0, 10, 41 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 0 },
			["Frotted|nightslayer"] = { 0, 2, -41, 41 },
			["Xczv|dreamscythe"] = { 1, 0, 11, 41 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 4, 0, 8, 41 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 41 },
			["Paxii|nightslayer"] = { 4, 0, 5, 41 },
			["Ryzp|nightslayer"] = { 3, 0, 0, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 343 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 41 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 41 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 401 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 401 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 581 },
			["Lizzygrey|nightslayer"] = { 3, 2, 22, 41 },
			["Mopz|nightslayer"] = { 3, 2, 26, 41 },
			["Cream|nightslayer"] = { 3, 1, 4, 499 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 41 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 496 },
			["Tycat|nightslayer"] = { 4, 0, 10, 41 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 497 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 451 },
			["Shob|nightslayer"] = { 2, 1, 11, 497 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 0 },
			["Creationx|nightslayer"] = { 0, 2, -15, 509 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 502 },
			["Frotted|nightslayer"] = { 0, 2, -41, 41 },
			["Losticus|nightslayer"] = { 2, 0, 16, 401 },
			["Swácked|nightslayer"] = { 0, 2, -21, 401 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 512 },
			["Creation|nightslayer"] = { 1, 0, 21, 491 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 401 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 401 },
			["Kedern|nightslayer"] = { 1, 0, 3, 487 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 503 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 513 },
			["Xczv|dreamscythe"] = { 1, 0, 11, 41 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 401 },
			["Hybro|nightslayer"] = { 4, 0, 8, 41 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 41 },
			["Paxii|nightslayer"] = { 4, 0, 5, 41 },
			["Ryzp|nightslayer"] = { 3, 0, 0, 41 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 401 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 343 },
			["Shigekazu|nightslayer"] = { 7, 11, -26, 1287 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 1287 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 1315 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 1316 },
			["Clothfate|nightslayer"] = { 5, 7, -41, 0 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 41 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 41 },
			["Bohagons|nightslayer"] = { 6, 4, 21, 1381 },
			["Chugzila|nightslayer"] = { 6, 4, 21, 1382 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 401 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 401 },
			["Qantas|nightslayer"] = { 4, 6, -23, 1274 },
			["Hillarybankz|nightslayer"] = { 4, 5, -19, 1391 },
			["Woodbugs|nightslayer"] = { 4, 5, -46, 1392 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 581 },
			["Lizzygrey|nightslayer"] = { 3, 2, 22, 41 },
			["Mopz|nightslayer"] = { 3, 2, 26, 41 },
			["Cream|nightslayer"] = { 3, 1, 4, 499 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 41 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 496 },
			["Tycat|nightslayer"] = { 4, 0, 10, 41 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 497 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 1121 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 451 },
			["Shob|nightslayer"] = { 2, 1, 11, 497 },
			["Arpx|nightslayer"] = { 2, 0, 14, 1291 },
			["Creationx|nightslayer"] = { 0, 2, -15, 509 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 502 },
			["Frotted|nightslayer"] = { 0, 2, -41, 41 },
			["Losticus|nightslayer"] = { 2, 0, 16, 401 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 1291 },
			["Swácked|nightslayer"] = { 0, 2, -21, 401 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 512 },
			["Creation|nightslayer"] = { 1, 0, 21, 491 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 401 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 401 },
			["Kedern|nightslayer"] = { 1, 0, 3, 487 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 503 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 513 },
			["Xczv|dreamscythe"] = { 1, 0, 11, 41 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 5, 0, 3, 401 },
			["Hybro|nightslayer"] = { 4, 0, 8, 41 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 41 },
			["Paxii|nightslayer"] = { 4, 0, 5, 41 },
			["Ryzp|nightslayer"] = { 3, 0, 0, 41 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 401 },
		},
	},
}

