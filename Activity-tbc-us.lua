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
	built = 1795301912,
	builtText = "2026-11-21 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 3, 3, -34, 49 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 3, 3, -34, 49 },
			["Thundersháft|nightslayer"] = { 3, 0, 14, 100 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 44 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 3, 3, -34, 49 },
			["Thundersháft|nightslayer"] = { 3, 0, 14, 100 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 44 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 3, 3, -34, 49 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 640 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 640 },
			["Thundersháft|nightslayer"] = { 3, 0, 14, 100 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 640 },
			["Clothfaté|nightslayer"] = { 1, 1, -5, 663 },
			["Gzlol|dreamscythe"] = { 0, 2, -22, 640 },
			["Kasupi|nightslayer"] = { 1, 1, -9, 665 },
			["Qantas|nightslayer"] = { 1, 1, 1, 640 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 44 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 961 },
			["Yodead|nightslayer"] = { 15, 15, 7, 960 },
			["Thundersháft|nightslayer"] = { 18, 8, 86, 100 },
			["Coneily|nightslayer"] = { 15, 8, 74, 1060 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 1018 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 1018 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 788 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 640 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 1056 },
			["Mopz|nightslayer"] = { 12, 3, 78, 1056 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 962 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 962 },
			["Àli|nightslayer"] = { 7, 4, 1, 1023 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 663 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 665 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 1000 },
			["Xczv|dreamscythe"] = { 4, 5, -37, 49 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 859 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 859 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 1305 },
			["Tycat|nightslayer"] = { 2, 2, -31, 1305 },
			["Bazook|nightslayer"] = { 2, 1, 1, 1161 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 640 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 640 },
			["Truccz|nightslayer"] = { 2, 1, 1, 1162 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 640 },
			["Qantas|nightslayer"] = { 1, 1, 1, 640 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 1300 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 44 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 997 },
		},
	},
}

