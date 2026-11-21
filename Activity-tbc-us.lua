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
	built = 1795265912,
	builtText = "2026-11-21 07:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dhaos|nightslayer"] = { 2, 1, 0, 40 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 40 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 40 },
			["Gzlol|dreamscythe"] = { 0, 2, -22, 40 },
			["Qantas|nightslayer"] = { 1, 1, 1, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 9, 2, 51, 63 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 65 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 40 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 40 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 40 },
			["Gzlol|dreamscythe"] = { 0, 2, -22, 40 },
			["Qantas|nightslayer"] = { 1, 1, 1, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 11, -92, 40 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 188 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 63 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 65 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 259 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 259 },
			["Yodead|nightslayer"] = { 5, 3, 18, 360 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 40 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 40 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 40 },
			["Qantas|nightslayer"] = { 1, 1, 1, 40 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 361 },
			["Yodead|nightslayer"] = { 15, 15, 7, 360 },
			["Coneily|nightslayer"] = { 15, 8, 74, 460 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 451 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 418 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 418 },
			["Ryanin|dreamscythe"] = { 7, 9, -38, 188 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 40 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 456 },
			["Mopz|nightslayer"] = { 12, 3, 78, 456 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 362 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 362 },
			["Àli|nightslayer"] = { 7, 4, 1, 423 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 63 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 65 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 400 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 259 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 259 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 705 },
			["Tycat|nightslayer"] = { 2, 2, -31, 705 },
			["Bazook|nightslayer"] = { 2, 1, 1, 561 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 40 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 40 },
			["Truccz|nightslayer"] = { 2, 1, 1, 562 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 40 },
			["Qantas|nightslayer"] = { 1, 1, 1, 40 },
			["Xczv|dreamscythe"] = { 0, 2, -8, 580 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 700 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 397 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 361 },
			["Yodead|nightslayer"] = { 15, 15, 7, 360 },
			["Coneily|nightslayer"] = { 15, 8, 74, 460 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 451 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 418 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 418 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 188 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 40 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 456 },
			["Mopz|nightslayer"] = { 12, 3, 78, 456 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 362 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 362 },
			["Àli|nightslayer"] = { 7, 4, 1, 423 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 63 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 65 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 400 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 259 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 259 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 705 },
			["Tycat|nightslayer"] = { 2, 2, -31, 705 },
			["Bazook|nightslayer"] = { 2, 1, 1, 561 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 40 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 40 },
			["Truccz|nightslayer"] = { 2, 1, 1, 562 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 580 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 40 },
			["Qantas|nightslayer"] = { 1, 1, 1, 40 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 700 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 397 },
		},
	},
}

