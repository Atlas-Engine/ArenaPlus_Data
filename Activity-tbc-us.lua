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
	built = 1795276712,
	builtText = "2026-11-21 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 9, 2, 51, 243 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 245 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 220 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 220 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 220 },
			["Gzlol|dreamscythe"] = { 0, 2, -22, 220 },
			["Qantas|nightslayer"] = { 1, 1, 1, 220 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 541 },
			["Yodead|nightslayer"] = { 15, 15, 7, 540 },
			["Kohhan|nightslayer"] = { 11, 6, 25, 598 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 598 },
			["Coneily|nightslayer"] = { 10, 6, 36, 640 },
			["Thundersháft|nightslayer"] = { 10, 6, 35, 631 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 220 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 636 },
			["Mopz|nightslayer"] = { 12, 3, 78, 636 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 368 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 542 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 542 },
			["Àli|nightslayer"] = { 7, 4, 1, 603 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 243 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 245 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 580 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 439 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 439 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 220 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 220 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 220 },
			["Qantas|nightslayer"] = { 1, 1, 1, 220 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 577 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 541 },
			["Yodead|nightslayer"] = { 15, 15, 7, 540 },
			["Coneily|nightslayer"] = { 15, 8, 74, 640 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 631 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 598 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 598 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 368 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 220 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 636 },
			["Mopz|nightslayer"] = { 12, 3, 78, 636 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 542 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 542 },
			["Àli|nightslayer"] = { 7, 4, 1, 603 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 243 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 245 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 580 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 439 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 439 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 885 },
			["Tycat|nightslayer"] = { 2, 2, -31, 885 },
			["Bazook|nightslayer"] = { 2, 1, 1, 741 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 220 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 220 },
			["Truccz|nightslayer"] = { 2, 1, 1, 742 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 760 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 220 },
			["Qantas|nightslayer"] = { 1, 1, 1, 220 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 880 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 577 },
		},
	},
}

