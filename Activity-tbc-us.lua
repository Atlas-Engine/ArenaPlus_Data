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
	built = 1794635915,
	builtText = "2026-11-14 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 14, 4, 94, 74 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 121 },
			["Mopz|nightslayer"] = { 7, 5, 19, 118 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 161 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 161 },
			["Grimmajöw|nightslayer"] = { 2, 5, -39, 114 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 70 },
			["Rirí|nightslayer"] = { 2, 3, -3, 95 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 161 },
			["Tycat|nightslayer"] = { 4, 0, 10, 161 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 120 },
			["Frotted|nightslayer"] = { 0, 2, -41, 161 },
			["Qantas|nightslayer"] = { 1, 1, -18, 119 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 76 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 72 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 73 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 90 },
			["Paxii|nightslayer"] = { 9, 0, 14, 102 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 103 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 104 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 14, 4, 94, 74 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 121 },
			["Mopz|nightslayer"] = { 7, 5, 19, 118 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 161 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 161 },
			["Grimmajöw|nightslayer"] = { 2, 5, -39, 114 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 70 },
			["Rirí|nightslayer"] = { 2, 3, -3, 95 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 161 },
			["Tycat|nightslayer"] = { 4, 0, 10, 161 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 120 },
			["Frotted|nightslayer"] = { 0, 2, -41, 161 },
			["Qantas|nightslayer"] = { 1, 1, -18, 119 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 76 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 72 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 73 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 90 },
			["Paxii|nightslayer"] = { 9, 0, 14, 102 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 103 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 104 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 161 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 463 },
			["Xczv|dreamscythe"] = { 14, 4, 94, 74 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 121 },
			["Mopz|nightslayer"] = { 7, 5, 19, 118 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 161 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 161 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 521 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 521 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 701 },
			["Grimmajöw|nightslayer"] = { 2, 5, -39, 114 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 70 },
			["Rirí|nightslayer"] = { 2, 3, -3, 95 },
			["Cream|nightslayer"] = { 3, 1, 4, 618 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 161 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 616 },
			["Tycat|nightslayer"] = { 4, 0, 10, 161 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 617 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 571 },
			["Shob|nightslayer"] = { 2, 1, 11, 617 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 120 },
			["Creationx|nightslayer"] = { 0, 2, -15, 629 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 622 },
			["Frotted|nightslayer"] = { 0, 2, -41, 161 },
			["Losticus|nightslayer"] = { 2, 0, 16, 521 },
			["Qantas|nightslayer"] = { 1, 1, -18, 119 },
			["Swácked|nightslayer"] = { 0, 2, -21, 521 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 632 },
			["Creation|nightslayer"] = { 1, 0, 21, 611 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 521 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 521 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 76 },
			["Kedern|nightslayer"] = { 1, 0, 3, 607 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 72 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 623 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 633 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 73 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 90 },
			["Paxii|nightslayer"] = { 9, 0, 14, 102 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 103 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 521 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 104 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 161 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 521 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 463 },
			["Shigekazu|nightslayer"] = { 8, 11, -22, 72 },
			["Wílleh|nightslayer"] = { 8, 11, -22, 73 },
			["Xczv|dreamscythe"] = { 14, 4, 94, 74 },
			["Chrispratt|nightslayer"] = { 13, 3, 40, 1435 },
			["Lefttenclear|nightslayer"] = { 13, 3, 40, 1436 },
			["Clothfate|nightslayer"] = { 5, 7, -41, 120 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 121 },
			["Mopz|nightslayer"] = { 7, 5, 19, 118 },
			["Qantas|nightslayer"] = { 5, 7, -41, 119 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 161 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 161 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 521 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 521 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 701 },
			["Grimmajöw|nightslayer"] = { 2, 5, -39, 114 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 70 },
			["Rirí|nightslayer"] = { 2, 3, -3, 95 },
			["Cream|nightslayer"] = { 3, 1, 4, 618 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 161 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 616 },
			["Tycat|nightslayer"] = { 4, 0, 10, 161 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 617 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 1241 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 571 },
			["Shob|nightslayer"] = { 2, 1, 11, 617 },
			["Arpx|nightslayer"] = { 2, 0, 14, 1411 },
			["Creationx|nightslayer"] = { 0, 2, -15, 629 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 622 },
			["Frotted|nightslayer"] = { 0, 2, -41, 161 },
			["Losticus|nightslayer"] = { 2, 0, 16, 521 },
			["Palapapa|nightslayer"] = { 2, 0, 14, 1411 },
			["Swácked|nightslayer"] = { 0, 2, -21, 521 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 632 },
			["Creation|nightslayer"] = { 1, 0, 21, 611 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 521 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 521 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 76 },
			["Kedern|nightslayer"] = { 1, 0, 3, 607 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 623 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 633 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 90 },
			["Paxii|nightslayer"] = { 9, 0, 14, 102 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 103 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 521 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 104 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 161 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 521 },
		},
	},
}

