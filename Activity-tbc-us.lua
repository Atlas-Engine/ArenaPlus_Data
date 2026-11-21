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
	built = 1795247915,
	builtText = "2026-11-21 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Yodead|nightslayer"] = { 5, 3, 18, 60 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 61 },
			["Yodead|nightslayer"] = { 15, 15, 7, 60 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 118 },
			["Coneily|nightslayer"] = { 10, 6, 36, 161 },
			["Thundersháft|nightslayer"] = { 10, 6, 35, 151 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 156 },
			["Mopz|nightslayer"] = { 12, 3, 78, 156 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 62 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 62 },
			["Àli|nightslayer"] = { 7, 4, 1, 123 },
			["Kohhan|nightslayer"] = { 6, 4, 13, 118 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 100 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 97 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 61 },
			["Yodead|nightslayer"] = { 15, 15, 7, 60 },
			["Coneily|nightslayer"] = { 15, 8, 74, 161 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 151 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 118 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 118 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 156 },
			["Mopz|nightslayer"] = { 12, 3, 78, 156 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 62 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 62 },
			["Àli|nightslayer"] = { 7, 4, 1, 123 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 100 },
			["Bazook|nightslayer"] = { 2, 1, 1, 261 },
			["Truccz|nightslayer"] = { 2, 1, 1, 262 },
			["Ryanin|dreamscythe"] = { 0, 2, -14, 280 },
			["Xczv|dreamscythe"] = { 0, 2, -8, 280 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 97 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 61 },
			["Yodead|nightslayer"] = { 15, 15, 7, 60 },
			["Coneily|nightslayer"] = { 15, 8, 74, 161 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 151 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 118 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 118 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 156 },
			["Mopz|nightslayer"] = { 12, 3, 78, 156 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 62 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 62 },
			["Àli|nightslayer"] = { 7, 4, 1, 123 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 100 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 405 },
			["Tycat|nightslayer"] = { 2, 2, -31, 405 },
			["Bazook|nightslayer"] = { 2, 1, 1, 261 },
			["Ryanin|dreamscythe"] = { 1, 2, -11, 280 },
			["Truccz|nightslayer"] = { 2, 1, 1, 262 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 280 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 400 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 97 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 61 },
			["Yodead|nightslayer"] = { 15, 15, 7, 60 },
			["Coneily|nightslayer"] = { 15, 8, 74, 161 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 151 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 118 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 118 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 156 },
			["Mopz|nightslayer"] = { 12, 3, 78, 156 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 62 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 62 },
			["Ryanin|dreamscythe"] = { 8, 4, 38, 280 },
			["Àli|nightslayer"] = { 7, 4, 1, 123 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 100 },
			["Gzlol|dreamscythe"] = { 7, 2, 59, 1360 },
			["Henra|nightslayer"] = { 1, 4, -70, 1360 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 1360 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 405 },
			["Tycat|nightslayer"] = { 2, 2, -31, 405 },
			["Bazook|nightslayer"] = { 2, 1, 1, 261 },
			["Truccz|nightslayer"] = { 2, 1, 1, 262 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 280 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 400 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 97 },
		},
	},
}

