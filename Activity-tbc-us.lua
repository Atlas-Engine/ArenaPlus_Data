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
	built = 1794707912,
	builtText = "2026-11-14 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gengiscon|nightslayer"] = { 6, 4, 2, 101 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 101 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 101 },
			["Creationw|nightslayer"] = { 1, 0, 5, 126 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 126 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 248 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 101 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 101 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 101 },
			["Creationw|nightslayer"] = { 1, 0, 5, 126 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 126 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 248 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 101 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 101 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 101 },
			["Creationw|nightslayer"] = { 1, 0, 5, 126 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 126 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 24, 47, 1001 },
			["Xczv|dreamscythe"] = { 24, 8, 134, 1082 },
			["Lizzygrey|nightslayer"] = { 7, 5, 9, 1321 },
			["Mopz|nightslayer"] = { 7, 5, 19, 1318 },
			["Namkijun|nightslayer"] = { 6, 5, 0, 1361 },
			["Slowfast|nightslayer"] = { 6, 5, -7, 1361 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 248 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 101 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 101 },
			["Clothfaté|nightslayer"] = { 3, 3, 0, 1270 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 101 },
			["Astias|nightslayer"] = { 3, 2, 0, 1150 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 1106 },
			["Fannypacker|nightslayer"] = { 4, 0, 10, 1361 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 1106 },
			["Tycat|nightslayer"] = { 4, 0, 10, 1361 },
			["Clothfate|nightslayer"] = { 1, 1, -18, 1320 },
			["Frotted|nightslayer"] = { 0, 2, -41, 1361 },
			["Qantas|nightslayer"] = { 1, 1, -18, 1319 },
			["Adooken|nightslayer"] = { 0, 1, -9, 1001 },
			["Creationw|nightslayer"] = { 1, 0, 5, 126 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 126 },
			["Kasupi|nightslayer"] = { 1, 0, 10, 1276 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 1167 },
			["Shigekazu|nightslayer"] = { 1, 0, 4, 1272 },
			["Wílleh|nightslayer"] = { 1, 0, 4, 1273 },
		},
		[3] = {
			["Hybro|nightslayer"] = { 9, 0, 19, 1290 },
			["Paxii|nightslayer"] = { 9, 0, 14, 1302 },
			["Ryzp|nightslayer"] = { 9, 0, 3, 1303 },
			["Yagoona|nightslayer"] = { 5, 0, 0, 1303 },
			["Jdughan|nightslayer"] = { 4, 0, 6, 1361 },
		},
	},
}

