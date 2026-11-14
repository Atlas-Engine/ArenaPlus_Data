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
	built = 1794650312,
	builtText = "2026-11-14 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 3, 51, 41 },
			["Adooken|nightslayer"] = { 0, 1, -9, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 3, 51, 41 },
			["Xczv|dreamscythe"] = { 5, 3, 30, 122 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 146 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 146 },
			["Adooken|nightslayer"] = { 0, 1, -9, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 41 },
			["Xczv|dreamscythe"] = { 23, 8, 123, 122 },
			["Mopz|nightslayer"] = { 4, 3, -7, 358 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 310 },
			["Astias|nightslayer"] = { 3, 2, 0, 190 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 146 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 146 },
			["Qantas|nightslayer"] = { 1, 1, -18, 359 },
			["Adooken|nightslayer"] = { 0, 1, -9, 41 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 316 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 207 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 312 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 313 },
		},
		[3] = {
			["Ryzp|nightslayer"] = { 6, 0, 3, 343 },
			["Hybro|nightslayer"] = { 5, 0, 11, 330 },
			["Paxii|nightslayer"] = { 5, 0, 9, 342 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 343 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 41 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 122 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 361 },
			["Mopz|nightslayer"] = { 7, 5, 19, 358 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 401 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 401 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 310 },
			["Astias|nightslayer"] = { 3, 2, 0, 190 },
			["Bigfudgy|dreamscythe"] = { 5, 0, 16, 703 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 146 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 401 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 146 },
			["Tycat|nightslayer"] = { 4, 0, 10, 401 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 360 },
			["Frotted|nightslayer"] = { 0, 2, -41, 401 },
			["Qantas|nightslayer"] = { 1, 1, -18, 359 },
			["Adooken|nightslayer"] = { 0, 1, -9, 41 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 316 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 207 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 312 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 313 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 330 },
			["Paxii|nightslayer"] = { 9, 0, 14, 342 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 343 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 343 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 401 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 41 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 122 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 703 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 361 },
			["Mopz|nightslayer"] = { 7, 5, 19, 358 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 401 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 401 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 761 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 761 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 941 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 310 },
			["Astias|nightslayer"] = { 3, 2, 0, 190 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 146 },
			["Cream|nightslayer"] = { 3, 1, 4, 858 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 401 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 146 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 856 },
			["Tycat|nightslayer"] = { 4, 0, 10, 401 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 857 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 811 },
			["Shob|nightslayer"] = { 2, 1, 11, 857 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 360 },
			["Creationx|nightslayer"] = { 0, 2, -15, 869 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 862 },
			["Frotted|nightslayer"] = { 0, 2, -41, 401 },
			["Losticus|nightslayer"] = { 2, 0, 16, 761 },
			["Qantas|nightslayer"] = { 1, 1, -18, 359 },
			["Swácked|nightslayer"] = { 0, 2, -21, 761 },
			["Adooken|nightslayer"] = { 0, 1, -9, 41 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 871 },
			["Creation|nightslayer"] = { 1, 0, 21, 851 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 761 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 761 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 316 },
			["Kedern|nightslayer"] = { 1, 0, 3, 847 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 207 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 312 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 863 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 873 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 313 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 330 },
			["Paxii|nightslayer"] = { 9, 0, 14, 342 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 343 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 761 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 343 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 401 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 761 },
		},
	},
}

