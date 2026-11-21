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
	built = 1795255114,
	builtText = "2026-11-21 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 9, -70, 40 },
			["Ryanin|dreamscythe"] = { 3, 1, 11, 8 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 7, 7, -24, 8 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 40 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 79 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 79 },
			["Yodead|nightslayer"] = { 5, 3, 18, 180 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 181 },
			["Yodead|nightslayer"] = { 15, 15, 7, 180 },
			["Kohhan|nightslayer"] = { 11, 6, 25, 238 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 238 },
			["Coneily|nightslayer"] = { 10, 6, 36, 281 },
			["Thundersháft|nightslayer"] = { 10, 6, 35, 271 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 276 },
			["Mopz|nightslayer"] = { 12, 3, 78, 276 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 8 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 40 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 182 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 182 },
			["Àli|nightslayer"] = { 7, 4, 1, 243 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 220 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 79 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 79 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 217 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 181 },
			["Yodead|nightslayer"] = { 15, 15, 7, 180 },
			["Coneily|nightslayer"] = { 15, 8, 74, 281 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 271 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 238 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 238 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 8 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 276 },
			["Mopz|nightslayer"] = { 12, 3, 78, 276 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 40 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 182 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 182 },
			["Àli|nightslayer"] = { 7, 4, 1, 243 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 220 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 79 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 79 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 525 },
			["Tycat|nightslayer"] = { 2, 2, -31, 525 },
			["Bazook|nightslayer"] = { 2, 1, 1, 381 },
			["Truccz|nightslayer"] = { 2, 1, 1, 382 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 400 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 520 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 217 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 181 },
			["Yodead|nightslayer"] = { 15, 15, 7, 180 },
			["Coneily|nightslayer"] = { 15, 8, 74, 281 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 271 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 238 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 238 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 8 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 276 },
			["Mopz|nightslayer"] = { 12, 3, 78, 276 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 40 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 182 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 182 },
			["Àli|nightslayer"] = { 7, 4, 1, 243 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 220 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 79 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 79 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 525 },
			["Tycat|nightslayer"] = { 2, 2, -31, 525 },
			["Bazook|nightslayer"] = { 2, 1, 1, 381 },
			["Truccz|nightslayer"] = { 2, 1, 1, 382 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 400 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 520 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 217 },
		},
	},
}

