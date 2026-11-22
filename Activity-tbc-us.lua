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
	built = 1795319912,
	builtText = "2026-11-21 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 4, -1, 40 },
			["Zvn|dreamscythe"] = { 5, 4, -21, 40 },
			["Xczv|dreamscythe"] = { 6, 1, 48, 40 },
			["Coneily|nightslayer"] = { 0, 4, -41, 40 },
			["Thundersháft|nightslayer"] = { 0, 4, -49, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 10, 8, 54, 111 },
			["Gzlol|dreamscythe"] = { 5, 4, -1, 40 },
			["Magicb|dreamscythe"] = { 5, 4, -8, 161 },
			["Zvn|dreamscythe"] = { 5, 4, -21, 40 },
			["Neytïrï|dreamscythe"] = { 6, 1, 52, 161 },
			["Xczv|dreamscythe"] = { 6, 1, 48, 40 },
			["Coneily|nightslayer"] = { 0, 4, -41, 40 },
			["Thundersháft|nightslayer"] = { 0, 4, -49, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 14, 9, -10, 40 },
			["Gzlol|dreamscythe"] = { 10, 8, -25, 40 },
			["Möxie|dreamscythe"] = { 10, 8, 54, 111 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 40 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 161 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 161 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 40 },
			["Coneily|nightslayer"] = { 0, 4, -41, 40 },
			["Druudix|nightslayer"] = { 2, 0, 8, 290 },
			["Warex|nightslayer"] = { 2, 0, 8, 290 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 344 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 17, 9, 4, 40 },
			["Gzlol|dreamscythe"] = { 10, 8, -25, 40 },
			["Möxie|dreamscythe"] = { 10, 8, 54, 111 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 40 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 161 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 161 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 40 },
			["Coneily|nightslayer"] = { 0, 4, -41, 40 },
			["Druudix|nightslayer"] = { 2, 0, 8, 290 },
			["Warex|nightslayer"] = { 2, 0, 8, 290 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 344 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 27, 15, 39, 40 },
			["Möxie|dreamscythe"] = { 13, 21, 49, 111 },
			["Gzlol|dreamscythe"] = { 14, 19, -117, 40 },
			["Morepower|nightslayer"] = { 15, 15, -6, 1261 },
			["Yodead|nightslayer"] = { 15, 15, 7, 1260 },
			["Coneily|nightslayer"] = { 10, 10, -5, 40 },
			["Kohhan|nightslayer"] = { 11, 6, 25, 1318 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 1318 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 40 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 1356 },
			["Mopz|nightslayer"] = { 12, 3, 78, 1356 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 1088 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 1262 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 1262 },
			["Àli|nightslayer"] = { 7, 4, 1, 1323 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 963 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 965 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 161 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 161 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 40 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 1300 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 1159 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 1159 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 940 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 940 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 940 },
			["Druudix|nightslayer"] = { 2, 0, 8, 290 },
			["Qantas|nightslayer"] = { 1, 1, 1, 940 },
			["Warex|nightslayer"] = { 2, 0, 8, 290 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 344 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 1297 },
		},
	},
}

