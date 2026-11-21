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
	built = 1795291111,
	builtText = "2026-11-21 02:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 4, 11, -92, 460 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 608 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 483 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 485 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 679 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 679 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 460 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 460 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 460 },
			["Qantas|nightslayer"] = { 1, 1, 1, 460 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 781 },
			["Yodead|nightslayer"] = { 15, 15, 7, 780 },
			["Coneily|nightslayer"] = { 15, 8, 74, 880 },
			["Thundersháft|nightslayer"] = { 15, 8, 72, 871 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 838 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 838 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 608 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 460 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 876 },
			["Mopz|nightslayer"] = { 12, 3, 78, 876 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 782 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 782 },
			["Àli|nightslayer"] = { 7, 4, 1, 843 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 483 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 485 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 820 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 679 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 679 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 1125 },
			["Tycat|nightslayer"] = { 2, 2, -31, 1125 },
			["Bazook|nightslayer"] = { 2, 1, 1, 981 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 460 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 460 },
			["Truccz|nightslayer"] = { 2, 1, 1, 982 },
			["Xczv|dreamscythe"] = { 1, 2, -3, 1000 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 460 },
			["Qantas|nightslayer"] = { 1, 1, 1, 460 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 1120 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 817 },
		},
	},
}

