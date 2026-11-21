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
	built = 1795262313,
	builtText = "2026-11-21 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 1, 1, -5, 3 },
			["Kasupi|nightslayer"] = { 1, 1, -9, 5 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 9, -70, 160 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 3 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 5 },
			["Ryanin|dreamscythe"] = { 3, 1, 11, 128 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 301 },
			["Yodead|nightslayer"] = { 15, 15, 7, 300 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 358 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 128 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 160 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 302 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 302 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 3 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 5 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 340 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 199 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 199 },
			["Kohhan|nightslayer"] = { 3, 3, -3, 358 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 337 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 301 },
			["Yodead|nightslayer"] = { 15, 15, 7, 300 },
			["Coneily|nightslayer"] = { 15, 8, 74, 400 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 391 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 358 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 358 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 128 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 396 },
			["Mopz|nightslayer"] = { 12, 3, 78, 396 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 160 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 302 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 302 },
			["Àli|nightslayer"] = { 7, 4, 1, 363 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 3 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 5 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 340 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 199 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 199 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 645 },
			["Tycat|nightslayer"] = { 2, 2, -31, 645 },
			["Bazook|nightslayer"] = { 2, 1, 1, 501 },
			["Truccz|nightslayer"] = { 2, 1, 1, 502 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 520 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 640 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 337 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 301 },
			["Yodead|nightslayer"] = { 15, 15, 7, 300 },
			["Coneily|nightslayer"] = { 15, 8, 74, 400 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 391 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 358 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 358 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 128 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 396 },
			["Mopz|nightslayer"] = { 12, 3, 78, 396 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 160 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 302 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 302 },
			["Àli|nightslayer"] = { 7, 4, 1, 363 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 3 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 5 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 340 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 199 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 199 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 645 },
			["Tycat|nightslayer"] = { 2, 2, -31, 645 },
			["Bazook|nightslayer"] = { 2, 1, 1, 501 },
			["Truccz|nightslayer"] = { 2, 1, 1, 502 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 520 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 640 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 337 },
		},
	},
}

