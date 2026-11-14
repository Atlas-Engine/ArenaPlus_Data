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
	built = 1794653913,
	builtText = "2026-11-14 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 3, 51, 101 },
			["Adooken|nightslayer"] = { 0, 1, -9, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 101 },
			["Xczv|dreamscythe"] = { 10, 4, 40, 182 },
			["Astias|nightslayer"] = { 3, 2, 0, 250 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 206 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 206 },
			["Adooken|nightslayer"] = { 0, 1, -9, 101 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 267 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 101 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 182 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 421 },
			["Mopz|nightslayer"] = { 7, 5, 19, 418 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 461 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 461 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 370 },
			["Astias|nightslayer"] = { 3, 2, 0, 250 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 206 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 461 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 206 },
			["Tycat|nightslayer"] = { 4, 0, 10, 461 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 420 },
			["Frotted|nightslayer"] = { 0, 2, -41, 461 },
			["Qantas|nightslayer"] = { 1, 1, -18, 419 },
			["Adooken|nightslayer"] = { 0, 1, -9, 101 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 376 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 267 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 372 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 373 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 390 },
			["Paxii|nightslayer"] = { 9, 0, 14, 402 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 403 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 404 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 461 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 101 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 182 },
			["Bigfudgy|dreamscythe"] = { 18, 2, 82, 763 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 421 },
			["Mopz|nightslayer"] = { 7, 5, 19, 418 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 461 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 461 },
			["Fatherdreams|nightslayer"] = { 4, 6, -115, 821 },
			["Jukedlawl|nightslayer"] = { 8, 2, 34, 821 },
			["Yagoona|nightslayer"] = { 8, 1, 3, 1001 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 370 },
			["Astias|nightslayer"] = { 3, 2, 0, 250 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 206 },
			["Cream|nightslayer"] = { 3, 1, 4, 918 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 461 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 206 },
			["Roguedude|nightslayer"] = { 3, 1, -6, 916 },
			["Tycat|nightslayer"] = { 4, 0, 10, 461 },
			["Dunstanttv|nightslayer"] = { 2, 1, 13, 917 },
			["Neytïrï|dreamscythe"] = { 2, 1, -12, 871 },
			["Shob|nightslayer"] = { 2, 1, 11, 917 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 420 },
			["Creationx|nightslayer"] = { 0, 2, -15, 929 },
			["Doopdefuq|nightslayer"] = { 0, 2, -18, 922 },
			["Frotted|nightslayer"] = { 0, 2, -41, 461 },
			["Losticus|nightslayer"] = { 2, 0, 16, 821 },
			["Qantas|nightslayer"] = { 1, 1, -18, 419 },
			["Swácked|nightslayer"] = { 0, 2, -21, 821 },
			["Adooken|nightslayer"] = { 0, 1, -9, 101 },
			["Cazaanos|nightslayer"] = { 0, 1, -5, 932 },
			["Creation|nightslayer"] = { 1, 0, 21, 911 },
			["Dispelzlol|nightslayer"] = { 0, 1, -8, 821 },
			["Esfandina|nightslayer"] = { 0, 1, -10, 821 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 376 },
			["Kedern|nightslayer"] = { 1, 0, 3, 907 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 267 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 372 },
			["Stopsniping|nightslayer"] = { 1, 0, 18, 923 },
			["Tehexd|nightslayer"] = { 0, 1, -15, 933 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 373 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 390 },
			["Paxii|nightslayer"] = { 9, 0, 14, 402 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 403 },
			["Umàdbro|nightslayer"] = { 5, 0, 3, 821 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 404 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 461 },
			["Esfandina|nightslayer"] = { 1, 0, 2, 821 },
		},
	},
}

