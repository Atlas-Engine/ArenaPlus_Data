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
	built = 1795280311,
	builtText = "2026-11-21 11:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dhaos|nightslayer"] = { 2, 1, 0, 280 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 280 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 280 },
			["Clothfaté|nightslayer"] = { 1, 1, -5, 303 },
			["Gzlol|dreamscythe"] = { 0, 2, -22, 280 },
			["Kasupi|nightslayer"] = { 1, 1, -9, 305 },
			["Qantas|nightslayer"] = { 1, 1, 1, 280 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 601 },
			["Yodead|nightslayer"] = { 15, 15, 7, 600 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 658 },
			["Coneily|nightslayer"] = { 10, 6, 36, 700 },
			["Thundersháft|nightslayer"] = { 10, 6, 35, 691 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 280 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 696 },
			["Mopz|nightslayer"] = { 12, 3, 78, 696 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 428 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 602 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 602 },
			["Àli|nightslayer"] = { 7, 4, 1, 663 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 303 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 305 },
			["Kohhan|nightslayer"] = { 6, 4, 13, 658 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 640 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 499 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 499 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 280 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 280 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 280 },
			["Qantas|nightslayer"] = { 1, 1, 1, 280 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 637 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 601 },
			["Yodead|nightslayer"] = { 15, 15, 7, 600 },
			["Coneily|nightslayer"] = { 15, 8, 74, 700 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 691 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 658 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 658 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 428 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 280 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 696 },
			["Mopz|nightslayer"] = { 12, 3, 78, 696 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 602 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 602 },
			["Àli|nightslayer"] = { 7, 4, 1, 663 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 303 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 305 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 640 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 499 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 499 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 945 },
			["Tycat|nightslayer"] = { 2, 2, -31, 945 },
			["Bazook|nightslayer"] = { 2, 1, 1, 801 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 280 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 280 },
			["Truccz|nightslayer"] = { 2, 1, 1, 802 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 820 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 280 },
			["Qantas|nightslayer"] = { 1, 1, 1, 280 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 940 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 637 },
		},
	},
}

