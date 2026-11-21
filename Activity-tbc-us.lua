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
	built = 1795269510,
	builtText = "2026-11-21 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dhaos|nightslayer"] = { 2, 1, 0, 100 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 100 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 100 },
			["Clothfaté|nightslayer"] = { 1, 1, -5, 123 },
			["Gzlol|dreamscythe"] = { 0, 2, -22, 100 },
			["Kasupi|nightslayer"] = { 1, 1, -9, 125 },
			["Qantas|nightslayer"] = { 1, 1, 1, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 11, -92, 100 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 248 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 123 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 125 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 319 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 319 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 100 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 100 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 100 },
			["Qantas|nightslayer"] = { 1, 1, 1, 100 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 421 },
			["Yodead|nightslayer"] = { 15, 15, 7, 420 },
			["Coneily|nightslayer"] = { 15, 8, 74, 520 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 511 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 478 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 478 },
			["Ryanin|dreamscythe"] = { 7, 9, -38, 248 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 100 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 516 },
			["Mopz|nightslayer"] = { 12, 3, 78, 516 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 422 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 422 },
			["Àli|nightslayer"] = { 7, 4, 1, 483 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 123 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 125 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 460 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 319 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 319 },
			["Bazook|nightslayer"] = { 2, 1, 1, 621 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 100 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 100 },
			["Truccz|nightslayer"] = { 2, 1, 1, 622 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 100 },
			["Qantas|nightslayer"] = { 1, 1, 1, 100 },
			["Xczv|dreamscythe"] = { 0, 2, -8, 640 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 457 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 421 },
			["Yodead|nightslayer"] = { 15, 15, 7, 420 },
			["Coneily|nightslayer"] = { 15, 8, 74, 520 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 511 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 478 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 478 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 248 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 100 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 516 },
			["Mopz|nightslayer"] = { 12, 3, 78, 516 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 422 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 422 },
			["Àli|nightslayer"] = { 7, 4, 1, 483 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 123 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 125 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 460 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 319 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 319 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 765 },
			["Tycat|nightslayer"] = { 2, 2, -31, 765 },
			["Bazook|nightslayer"] = { 2, 1, 1, 621 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 100 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 100 },
			["Truccz|nightslayer"] = { 2, 1, 1, 622 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 640 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 100 },
			["Qantas|nightslayer"] = { 1, 1, 1, 100 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 760 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 457 },
		},
	},
}

