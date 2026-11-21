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
	built = 1795298312,
	builtText = "2026-11-21 04:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 3, 0, 14, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 3, 0, 14, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 3, 0, 14, 40 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 9, 2, 51, 603 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 605 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 580 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 580 },
			["Thundersháft|nightslayer"] = { 3, 0, 14, 40 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 580 },
			["Gzlol|dreamscythe"] = { 0, 2, -22, 580 },
			["Qantas|nightslayer"] = { 1, 1, 1, 580 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 901 },
			["Yodead|nightslayer"] = { 15, 15, 7, 900 },
			["Thundersháft|nightslayer"] = { 18, 8, 86, 40 },
			["Coneily|nightslayer"] = { 15, 8, 74, 1000 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 958 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 958 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 728 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 580 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 996 },
			["Mopz|nightslayer"] = { 12, 3, 78, 996 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 902 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 902 },
			["Àli|nightslayer"] = { 7, 4, 1, 963 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 603 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 605 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 940 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 799 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 799 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 1245 },
			["Tycat|nightslayer"] = { 2, 2, -31, 1245 },
			["Bazook|nightslayer"] = { 2, 1, 1, 1101 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 580 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 580 },
			["Truccz|nightslayer"] = { 2, 1, 1, 1102 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 1120 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 580 },
			["Qantas|nightslayer"] = { 1, 1, 1, 580 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 1240 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 937 },
		},
	},
}

