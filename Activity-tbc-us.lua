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
	built = 1794632313,
	builtText = "2026-11-13 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 13, 4, 83, 14 },
			["Grimmajöw|nightslayer"] = { 2, 5, -39, 54 },
			["Mopz|nightslayer"] = { 4, 3, -7, 58 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 10 },
			["Rirí|nightslayer"] = { 2, 3, -3, 35 },
			["Qantas|nightslayer"] = { 1, 1, -18, 59 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 16 },
		},
		[3] = {
			["Ryzp|nightslayer"] = { 6, 0, 3, 43 },
			["Hybro|nightslayer"] = { 5, 0, 11, 30 },
			["Paxii|nightslayer"] = { 5, 0, 9, 42 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 14, 4, 94, 14 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 61 },
			["Mopz|nightslayer"] = { 7, 5, 19, 58 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 101 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 101 },
			["Grimmajöw|nightslayer"] = { 2, 5, -39, 54 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 10 },
			["Rirí|nightslayer"] = { 2, 3, -3, 35 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 101 },
			["Tycat|nightslayer"] = { 4, 0, 10, 101 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 60 },
			["Frotted|nightslayer"] = { 0, 2, -41, 101 },
			["Qantas|nightslayer"] = { 1, 1, -18, 59 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 16 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 30 },
			["Paxii|nightslayer"] = { 9, 0, 14, 42 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 43 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 44 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 14, 4, 94, 14 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 61 },
			["Mopz|nightslayer"] = { 7, 5, 19, 58 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 101 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 101 },
			["Grimmajöw|nightslayer"] = { 2, 5, -39, 54 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 10 },
			["Rirí|nightslayer"] = { 2, 3, -3, 35 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 101 },
			["Tycat|nightslayer"] = { 4, 0, 10, 101 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 60 },
			["Frotted|nightslayer"] = { 0, 2, -41, 101 },
			["Qantas|nightslayer"] = { 1, 1, -18, 59 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 16 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 30 },
			["Paxii|nightslayer"] = { 9, 0, 14, 42 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 43 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 44 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 101 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 403 },
			["Xczv|dreamscythe"] = { 14, 4, 94, 14 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 61 },
			["Mopz|nightslayer"] = { 7, 5, 19, 58 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 101 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 101 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 461 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 461 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 641 },
			["Grimmajöw|nightslayer"] = { 2, 5, -39, 54 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 10 },
			["Rirí|nightslayer"] = { 2, 3, -3, 35 },
			["Cream|nightslayer"] = { 3, 1, 4, 558 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 101 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 556 },
			["Tycat|nightslayer"] = { 4, 0, 10, 101 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 557 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 511 },
			["Shob|nightslayer"] = { 2, 1, 11, 557 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 60 },
			["Creationx|nightslayer"] = { 0, 2, -15, 569 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 562 },
			["Frotted|nightslayer"] = { 0, 2, -41, 101 },
			["Losticus|nightslayer"] = { 2, 0, 16, 461 },
			["Qantas|nightslayer"] = { 1, 1, -18, 59 },
			["Swácked|nightslayer"] = { 0, 2, -21, 461 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 572 },
			["Creation|nightslayer"] = { 1, 0, 21, 551 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 461 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 461 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 16 },
			["Kedern|nightslayer"] = { 1, 0, 3, 547 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 563 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 573 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 30 },
			["Paxii|nightslayer"] = { 9, 0, 14, 42 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 43 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 461 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 44 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 101 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 461 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 403 },
			["Shigekazu|nightslayer"] = { 7, 11, -26, 1347 },
			["Wílleh|nightslayer"] = { 7, 11, -26, 1346 },
			["Xczv|dreamscythe"] = { 14, 4, 94, 14 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 1375 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 1376 },
			["Clothfate|nightslayer"] = { 5, 7, -41, 60 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 61 },
			["Mopz|nightslayer"] = { 7, 5, 19, 58 },
			["Qantas|nightslayer"] = { 5, 7, -41, 59 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 101 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 101 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 461 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 461 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 641 },
			["Grimmajöw|nightslayer"] = { 2, 5, -39, 54 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 10 },
			["Rirí|nightslayer"] = { 2, 3, -3, 35 },
			["Cream|nightslayer"] = { 3, 1, 4, 558 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 101 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 556 },
			["Tycat|nightslayer"] = { 4, 0, 10, 101 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 557 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 1181 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 511 },
			["Shob|nightslayer"] = { 2, 1, 11, 557 },
			["Arpx|nightslayer"] = { 2, 0, 14, 1351 },
			["Creationx|nightslayer"] = { 0, 2, -15, 569 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 562 },
			["Frotted|nightslayer"] = { 0, 2, -41, 101 },
			["Losticus|nightslayer"] = { 2, 0, 16, 461 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 1351 },
			["Swácked|nightslayer"] = { 0, 2, -21, 461 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 572 },
			["Creation|nightslayer"] = { 1, 0, 21, 551 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 461 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 461 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 16 },
			["Kedern|nightslayer"] = { 1, 0, 3, 547 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 563 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 573 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 30 },
			["Paxii|nightslayer"] = { 9, 0, 14, 42 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 43 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 461 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 44 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 101 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 461 },
		},
	},
}

