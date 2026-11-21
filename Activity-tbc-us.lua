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
	built = 1795244316,
	builtText = "2026-11-21 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 10, 12, -22, 40 },
			["Yodead|nightslayer"] = { 10, 12, -11, 40 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 58 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 40 },
			["Shigekazu|nightslayer"] = { 5, 2, -11, 40 },
			["Wílleh|nightslayer"] = { 5, 2, -11, 40 },
			["Kohhan|nightslayer"] = { 3, 3, -3, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 10, 12, -22, 40 },
			["Yodead|nightslayer"] = { 10, 12, -11, 40 },
			["Kohhan|nightslayer"] = { 11, 6, 25, 58 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 58 },
			["Coneily|nightslayer"] = { 10, 6, 36, 101 },
			["Thundersháft|nightslayer"] = { 10, 6, 35, 91 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 96 },
			["Mopz|nightslayer"] = { 12, 3, 78, 96 },
			["Àli|nightslayer"] = { 7, 4, 1, 63 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 40 },
			["Shigekazu|nightslayer"] = { 5, 2, -11, 40 },
			["Wílleh|nightslayer"] = { 5, 2, -11, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 15, 8, 74, 101 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 91 },
			["Morepower|nightslayer"] = { 10, 12, -22, 40 },
			["Yodead|nightslayer"] = { 10, 12, -11, 40 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 58 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 58 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 96 },
			["Mopz|nightslayer"] = { 12, 3, 78, 96 },
			["Àli|nightslayer"] = { 7, 4, 1, 63 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 40 },
			["Shigekazu|nightslayer"] = { 5, 2, -11, 40 },
			["Wílleh|nightslayer"] = { 5, 2, -11, 40 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 345 },
			["Tycat|nightslayer"] = { 2, 2, -31, 345 },
			["Bazook|nightslayer"] = { 2, 1, 1, 201 },
			["Truccz|nightslayer"] = { 2, 1, 1, 202 },
			["Ryanin|dreamscythe"] = { 0, 2, -14, 220 },
			["Xczv|dreamscythe"] = { 0, 2, -8, 220 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 340 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 15, 8, 74, 101 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 91 },
			["Morepower|nightslayer"] = { 10, 12, -22, 40 },
			["Yodead|nightslayer"] = { 10, 12, -11, 40 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 58 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 58 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 96 },
			["Mopz|nightslayer"] = { 12, 3, 78, 96 },
			["Àli|nightslayer"] = { 7, 4, 1, 63 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 40 },
			["Shigekazu|nightslayer"] = { 5, 2, -11, 40 },
			["Wílleh|nightslayer"] = { 5, 2, -11, 40 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 345 },
			["Tycat|nightslayer"] = { 2, 2, -31, 345 },
			["Bazook|nightslayer"] = { 2, 1, 1, 201 },
			["Ryanin|dreamscythe"] = { 1, 2, -11, 220 },
			["Truccz|nightslayer"] = { 2, 1, 1, 202 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 220 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 340 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Coneily|nightslayer"] = { 15, 8, 74, 101 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 91 },
			["Morepower|nightslayer"] = { 10, 12, -22, 40 },
			["Yodead|nightslayer"] = { 10, 12, -11, 40 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 58 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 58 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 96 },
			["Mopz|nightslayer"] = { 12, 3, 78, 96 },
			["Ryanin|dreamscythe"] = { 8, 4, 38, 220 },
			["Àli|nightslayer"] = { 7, 4, 1, 63 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 40 },
			["Gzlol|dreamscythe"] = { 7, 2, 59, 1300 },
			["Shigekazu|nightslayer"] = { 5, 2, -11, 40 },
			["Wílleh|nightslayer"] = { 5, 2, -11, 40 },
			["Henra|nightslayer"] = { 1, 4, -70, 1300 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 1300 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 345 },
			["Tycat|nightslayer"] = { 2, 2, -31, 345 },
			["Bazook|nightslayer"] = { 2, 1, 1, 201 },
			["Truccz|nightslayer"] = { 2, 1, 1, 202 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 220 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 340 },
		},
	},
}

