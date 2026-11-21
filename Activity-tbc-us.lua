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
	built = 1795273112,
	builtText = "2026-11-21 09:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dhaos|nightslayer"] = { 2, 1, 0, 160 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 160 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 160 },
			["Gzlol|dreamscythe"] = { 0, 2, -22, 160 },
			["Qantas|nightslayer"] = { 1, 1, 1, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 11, -92, 160 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 183 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 185 },
			["Ryanin|dreamscythe"] = { 3, 1, 11, 308 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 160 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 160 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 160 },
			["Qantas|nightslayer"] = { 1, 1, 1, 160 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 481 },
			["Yodead|nightslayer"] = { 15, 15, 7, 480 },
			["Coneily|nightslayer"] = { 15, 8, 74, 580 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 571 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 538 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 538 },
			["Ryanin|dreamscythe"] = { 7, 9, -38, 308 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 160 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 576 },
			["Mopz|nightslayer"] = { 12, 3, 78, 576 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 482 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 482 },
			["Àli|nightslayer"] = { 7, 4, 1, 543 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 183 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 185 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 520 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 379 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 379 },
			["Bazook|nightslayer"] = { 2, 1, 1, 681 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 160 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 160 },
			["Truccz|nightslayer"] = { 2, 1, 1, 682 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 160 },
			["Qantas|nightslayer"] = { 1, 1, 1, 160 },
			["Xczv|dreamscythe"] = { 0, 2, -8, 700 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 517 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 481 },
			["Yodead|nightslayer"] = { 15, 15, 7, 480 },
			["Coneily|nightslayer"] = { 15, 8, 74, 580 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 571 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 538 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 538 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 308 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 160 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 576 },
			["Mopz|nightslayer"] = { 12, 3, 78, 576 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 482 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 482 },
			["Àli|nightslayer"] = { 7, 4, 1, 543 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 183 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 185 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 520 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 379 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 379 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 825 },
			["Tycat|nightslayer"] = { 2, 2, -31, 825 },
			["Bazook|nightslayer"] = { 2, 1, 1, 681 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 160 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 160 },
			["Truccz|nightslayer"] = { 2, 1, 1, 682 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 700 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 160 },
			["Qantas|nightslayer"] = { 1, 1, 1, 160 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 820 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 517 },
		},
	},
}

