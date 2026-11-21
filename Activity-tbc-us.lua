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
	built = 1795258715,
	builtText = "2026-11-21 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 7, 7, -24, 68 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 100 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 139 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 139 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 241 },
			["Yodead|nightslayer"] = { 15, 15, 7, 240 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 298 },
			["Coneily|nightslayer"] = { 10, 6, 36, 341 },
			["Thundersháft|nightslayer"] = { 10, 6, 35, 331 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 336 },
			["Mopz|nightslayer"] = { 12, 3, 78, 336 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 68 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 100 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 242 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 242 },
			["Àli|nightslayer"] = { 7, 4, 1, 303 },
			["Kohhan|nightslayer"] = { 6, 4, 13, 298 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 280 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 139 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 139 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 277 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 241 },
			["Yodead|nightslayer"] = { 15, 15, 7, 240 },
			["Coneily|nightslayer"] = { 15, 8, 74, 341 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 331 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 298 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 298 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 68 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 336 },
			["Mopz|nightslayer"] = { 12, 3, 78, 336 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 100 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 242 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 242 },
			["Àli|nightslayer"] = { 7, 4, 1, 303 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 280 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 139 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 139 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 585 },
			["Tycat|nightslayer"] = { 2, 2, -31, 585 },
			["Bazook|nightslayer"] = { 2, 1, 1, 441 },
			["Truccz|nightslayer"] = { 2, 1, 1, 442 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 460 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 580 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 277 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 241 },
			["Yodead|nightslayer"] = { 15, 15, 7, 240 },
			["Coneily|nightslayer"] = { 15, 8, 74, 341 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 331 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 298 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 298 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 68 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 336 },
			["Mopz|nightslayer"] = { 12, 3, 78, 336 },
			["Gzlol|dreamscythe"] = { 4, 9, -70, 100 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 242 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 242 },
			["Àli|nightslayer"] = { 7, 4, 1, 303 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 280 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 139 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 139 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 585 },
			["Tycat|nightslayer"] = { 2, 2, -31, 585 },
			["Bazook|nightslayer"] = { 2, 1, 1, 441 },
			["Truccz|nightslayer"] = { 2, 1, 1, 442 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 460 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 580 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 277 },
		},
	},
}

