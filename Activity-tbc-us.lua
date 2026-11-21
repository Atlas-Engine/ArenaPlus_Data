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
	built = 1795251514,
	builtText = "2026-11-21 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 4, 6, -35, 21 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 19 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 19 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 121 },
			["Yodead|nightslayer"] = { 15, 15, 7, 120 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 178 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 122 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 122 },
			["Ryanin|dreamscythe"] = { 4, 6, -35, 21 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 160 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 19 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 19 },
			["Kohhan|nightslayer"] = { 3, 3, -3, 178 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 157 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 121 },
			["Yodead|nightslayer"] = { 15, 15, 7, 120 },
			["Coneily|nightslayer"] = { 15, 8, 74, 221 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 211 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 178 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 178 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 216 },
			["Mopz|nightslayer"] = { 12, 3, 78, 216 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 122 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 122 },
			["Ryanin|dreamscythe"] = { 4, 8, -49, 21 },
			["Àli|nightslayer"] = { 7, 4, 1, 183 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 160 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 19 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 19 },
			["Bazook|nightslayer"] = { 2, 1, 1, 321 },
			["Truccz|nightslayer"] = { 2, 1, 1, 322 },
			["Xczv|dreamscythe"] = { 0, 2, -8, 340 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 157 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 121 },
			["Yodead|nightslayer"] = { 15, 15, 7, 120 },
			["Coneily|nightslayer"] = { 15, 8, 74, 221 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 211 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 178 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 178 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 216 },
			["Mopz|nightslayer"] = { 12, 3, 78, 216 },
			["Ryanin|dreamscythe"] = { 5, 8, -46, 21 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 122 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 122 },
			["Àli|nightslayer"] = { 7, 4, 1, 183 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 160 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 19 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 19 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 465 },
			["Tycat|nightslayer"] = { 2, 2, -31, 465 },
			["Bazook|nightslayer"] = { 2, 1, 1, 321 },
			["Truccz|nightslayer"] = { 2, 1, 1, 322 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 340 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 460 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 157 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 121 },
			["Yodead|nightslayer"] = { 15, 15, 7, 120 },
			["Coneily|nightslayer"] = { 15, 8, 74, 221 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 211 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 178 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 178 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 216 },
			["Mopz|nightslayer"] = { 12, 3, 78, 216 },
			["Ryanin|dreamscythe"] = { 5, 8, -46, 21 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 122 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 122 },
			["Àli|nightslayer"] = { 7, 4, 1, 183 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 160 },
			["Gzlol|dreamscythe"] = { 7, 2, 59, 1420 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 19 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 19 },
			["Henra|nightslayer"] = { 1, 4, -70, 1420 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 1420 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 465 },
			["Tycat|nightslayer"] = { 2, 2, -31, 465 },
			["Bazook|nightslayer"] = { 2, 1, 1, 321 },
			["Truccz|nightslayer"] = { 2, 1, 1, 322 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 340 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 460 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 157 },
		},
	},
}

