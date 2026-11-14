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
	built = 1794643112,
	builtText = "2026-11-14 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 5, 3, 30, 2 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 26 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 26 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 101 },
			["Xczv|dreamscythe"] = { 10, 4, 40, 2 },
			["Astias|nightslayer"] = { 3, 2, 0, 70 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 26 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 26 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 87 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 101 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 2 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 241 },
			["Mopz|nightslayer"] = { 7, 5, 19, 238 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 281 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 281 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 190 },
			["Astias|nightslayer"] = { 3, 2, 0, 70 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 26 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 281 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 26 },
			["Tycat|nightslayer"] = { 4, 0, 10, 281 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 240 },
			["Frotted|nightslayer"] = { 0, 2, -41, 281 },
			["Qantas|nightslayer"] = { 1, 1, -18, 239 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 196 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 87 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 192 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 193 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 210 },
			["Paxii|nightslayer"] = { 9, 0, 14, 222 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 223 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 223 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 281 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 101 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 2 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 583 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 241 },
			["Mopz|nightslayer"] = { 7, 5, 19, 238 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 281 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 281 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 641 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 641 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 190 },
			["Astias|nightslayer"] = { 3, 2, 0, 70 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 26 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 281 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 26 },
			["Tycat|nightslayer"] = { 4, 0, 10, 281 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 691 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 240 },
			["Frotted|nightslayer"] = { 0, 2, -41, 281 },
			["Losticus|nightslayer"] = { 2, 0, 16, 641 },
			["Qantas|nightslayer"] = { 1, 1, -18, 239 },
			["Swácked|nightslayer"] = { 0, 2, -21, 641 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 641 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 641 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 196 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 87 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 192 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 193 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 210 },
			["Paxii|nightslayer"] = { 9, 0, 14, 222 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 223 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 641 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 223 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 281 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 641 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 21, -4, 101 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 2 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 583 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 241 },
			["Mopz|nightslayer"] = { 7, 5, 19, 238 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 281 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 281 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 641 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 641 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 821 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 190 },
			["Astias|nightslayer"] = { 3, 2, 0, 70 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 26 },
			["Cream|nightslayer"] = { 3, 1, 4, 738 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 281 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 26 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 736 },
			["Tycat|nightslayer"] = { 4, 0, 10, 281 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 737 },
			["Largemoot|nightslayer"] = { 0, 3, -7, 1361 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 691 },
			["Shob|nightslayer"] = { 2, 1, 11, 737 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 240 },
			["Creationx|nightslayer"] = { 0, 2, -15, 749 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 742 },
			["Frotted|nightslayer"] = { 0, 2, -41, 281 },
			["Losticus|nightslayer"] = { 2, 0, 16, 641 },
			["Qantas|nightslayer"] = { 1, 1, -18, 239 },
			["Swácked|nightslayer"] = { 0, 2, -21, 641 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 751 },
			["Creation|nightslayer"] = { 1, 0, 21, 731 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 641 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 641 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 196 },
			["Kedern|nightslayer"] = { 1, 0, 3, 727 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 87 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 192 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 743 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 753 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 193 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 210 },
			["Paxii|nightslayer"] = { 9, 0, 14, 222 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 223 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 641 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 223 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 281 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 641 },
		},
	},
}

