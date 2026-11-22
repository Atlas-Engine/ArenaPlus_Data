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
	built = 1795309113,
	builtText = "2026-11-21 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 14, 5, 39, 40 },
			["Gzlol|dreamscythe"] = { 5, 4, -24, 40 },
			["Neytïrï|dreamscythe"] = { 3, 0, 30, 40 },
			["Xczv|dreamscythe"] = { 3, 0, 29, 40 },
			["Magicb|dreamscythe"] = { 1, 0, 8, 40 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 14, 5, 39, 40 },
			["Gzlol|dreamscythe"] = { 5, 4, -24, 40 },
			["Xczv|dreamscythe"] = { 6, 3, -5, 40 },
			["Neytïrï|dreamscythe"] = { 3, 0, 30, 40 },
			["Druudix|nightslayer"] = { 2, 0, 8, 110 },
			["Warex|nightslayer"] = { 2, 0, 8, 110 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 164 },
			["Magicb|dreamscythe"] = { 1, 0, 8, 40 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 17, 5, 53, 40 },
			["Gzlol|dreamscythe"] = { 5, 4, -24, 40 },
			["Xczv|dreamscythe"] = { 6, 3, -5, 40 },
			["Neytïrï|dreamscythe"] = { 3, 0, 30, 40 },
			["Druudix|nightslayer"] = { 2, 0, 8, 110 },
			["Warex|nightslayer"] = { 2, 0, 8, 110 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 164 },
			["Magicb|dreamscythe"] = { 1, 0, 8, 40 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 40 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 17, 5, 53, 40 },
			["Gzlol|dreamscythe"] = { 5, 4, -24, 40 },
			["Xczv|dreamscythe"] = { 6, 3, -5, 40 },
			["Neytïrï|dreamscythe"] = { 3, 0, 30, 40 },
			["Druudix|nightslayer"] = { 2, 0, 8, 110 },
			["Warex|nightslayer"] = { 2, 0, 8, 110 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 164 },
			["Magicb|dreamscythe"] = { 1, 0, 8, 40 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 40 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 32, 13, 125, 40 },
			["Morepower|nightslayer"] = { 15, 15, -6, 1081 },
			["Yodead|nightslayer"] = { 15, 15, 7, 1080 },
			["Gzlol|dreamscythe"] = { 9, 15, -116, 40 },
			["Coneily|nightslayer"] = { 15, 8, 74, 1180 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 1138 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 1138 },
			["Ryanin|dreamscythe"] = { 7, 9, -38, 908 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 1176 },
			["Mopz|nightslayer"] = { 12, 3, 78, 1176 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 1082 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 1082 },
			["Àli|nightslayer"] = { 7, 4, 1, 1143 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 783 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 785 },
			["Xczv|dreamscythe"] = { 6, 5, -13, 40 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 1120 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 979 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 979 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 1425 },
			["Tycat|nightslayer"] = { 2, 2, -31, 1425 },
			["Bazook|nightslayer"] = { 2, 1, 1, 1281 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 760 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 760 },
			["Neytïrï|dreamscythe"] = { 3, 0, 30, 40 },
			["Truccz|nightslayer"] = { 2, 1, 1, 1282 },
			["Zvn|dreamscythe"] = { 3, 0, 42, 40 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 760 },
			["Druudix|nightslayer"] = { 2, 0, 8, 110 },
			["Qantas|nightslayer"] = { 1, 1, 1, 760 },
			["Warex|nightslayer"] = { 2, 0, 8, 110 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 164 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 1117 },
			["Magicb|dreamscythe"] = { 1, 0, 8, 40 },
		},
	},
}

