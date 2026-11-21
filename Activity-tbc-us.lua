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
	built = 1795294715,
	builtText = "2026-11-21 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 11, -92, 520 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 544 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 545 },
			["Ryanin|dreamscythe"] = { 3, 1, 11, 668 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 520 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 520 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 520 },
			["Qantas|nightslayer"] = { 1, 1, 1, 520 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 841 },
			["Yodead|nightslayer"] = { 15, 15, 7, 840 },
			["Coneily|nightslayer"] = { 15, 8, 74, 941 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 931 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 898 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 898 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 668 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 520 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 936 },
			["Mopz|nightslayer"] = { 12, 3, 78, 936 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 842 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 842 },
			["Àli|nightslayer"] = { 7, 4, 1, 903 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 544 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 545 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 880 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 739 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 739 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 1185 },
			["Tycat|nightslayer"] = { 2, 2, -31, 1185 },
			["Bazook|nightslayer"] = { 2, 1, 1, 1041 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 520 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 520 },
			["Truccz|nightslayer"] = { 2, 1, 1, 1042 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 1060 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 520 },
			["Qantas|nightslayer"] = { 1, 1, 1, 520 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 1180 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 877 },
		},
	},
}

