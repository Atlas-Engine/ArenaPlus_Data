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
	built = 1795305513,
	builtText = "2026-11-21 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Grimmajoow|nightslayer"] = { 0, 3, -27, 31 },
			["Druudix|nightslayer"] = { 2, 0, 8, 50 },
			["Warex|nightslayer"] = { 2, 0, 8, 50 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 3, 3, -34, 109 },
			["Grimmajoow|nightslayer"] = { 0, 3, -27, 31 },
			["Thundersháft|nightslayer"] = { 3, 0, 14, 160 },
			["Druudix|nightslayer"] = { 2, 0, 8, 50 },
			["Warex|nightslayer"] = { 2, 0, 8, 50 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 104 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 3, 3, -34, 109 },
			["Grimmajoow|nightslayer"] = { 0, 3, -27, 31 },
			["Thundersháft|nightslayer"] = { 3, 0, 14, 160 },
			["Druudix|nightslayer"] = { 2, 0, 8, 50 },
			["Warex|nightslayer"] = { 2, 0, 8, 50 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 104 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Xczv|dreamscythe"] = { 3, 3, -34, 109 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 700 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 700 },
			["Grimmajoow|nightslayer"] = { 0, 3, -27, 31 },
			["Thundersháft|nightslayer"] = { 3, 0, 14, 160 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 700 },
			["Druudix|nightslayer"] = { 2, 0, 8, 50 },
			["Gzlol|dreamscythe"] = { 0, 2, -22, 700 },
			["Qantas|nightslayer"] = { 1, 1, 1, 700 },
			["Warex|nightslayer"] = { 2, 0, 8, 50 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 104 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 15, 15, -6, 1021 },
			["Yodead|nightslayer"] = { 15, 15, 7, 1020 },
			["Thundersháft|nightslayer"] = { 18, 8, 86, 160 },
			["Coneily|nightslayer"] = { 15, 8, 74, 1120 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 1078 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 1078 },
			["Ryanin|dreamscythe"] = { 8, 9, -35, 848 },
			["Gzlol|dreamscythe"] = { 4, 11, -92, 700 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 1116 },
			["Mopz|nightslayer"] = { 12, 3, 78, 1116 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 1022 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 1022 },
			["Àli|nightslayer"] = { 7, 4, 1, 1083 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 723 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 725 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 1060 },
			["Xczv|dreamscythe"] = { 4, 5, -37, 109 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 919 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 919 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 1365 },
			["Tycat|nightslayer"] = { 2, 2, -31, 1365 },
			["Bazook|nightslayer"] = { 2, 1, 1, 1221 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 700 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 700 },
			["Grimmajoow|nightslayer"] = { 0, 3, -27, 31 },
			["Truccz|nightslayer"] = { 2, 1, 1, 1222 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 700 },
			["Druudix|nightslayer"] = { 2, 0, 8, 50 },
			["Qantas|nightslayer"] = { 1, 1, 1, 700 },
			["Warex|nightslayer"] = { 2, 0, 8, 50 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 1360 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 104 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 1057 },
		},
	},
}

