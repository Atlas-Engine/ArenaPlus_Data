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
	built = 1795312712,
	builtText = "2026-11-21 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Magicb|dreamscythe"] = { 5, 4, -8, 41 },
			["Neytïrï|dreamscythe"] = { 6, 1, 52, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 14, 5, 39, 100 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 41 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 41 },
			["Gzlol|dreamscythe"] = { 5, 4, -24, 100 },
			["Xczv|dreamscythe"] = { 3, 0, 29, 100 },
			["Druudix|nightslayer"] = { 2, 0, 8, 170 },
			["Warex|nightslayer"] = { 2, 0, 8, 170 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 17, 5, 53, 100 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 41 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 41 },
			["Gzlol|dreamscythe"] = { 5, 4, -24, 100 },
			["Xczv|dreamscythe"] = { 6, 3, -5, 100 },
			["Druudix|nightslayer"] = { 2, 0, 8, 170 },
			["Warex|nightslayer"] = { 2, 0, 8, 170 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 224 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 100 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 17, 5, 53, 100 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 41 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 41 },
			["Gzlol|dreamscythe"] = { 5, 4, -24, 100 },
			["Xczv|dreamscythe"] = { 6, 3, -5, 100 },
			["Druudix|nightslayer"] = { 2, 0, 8, 170 },
			["Warex|nightslayer"] = { 2, 0, 8, 170 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 224 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 100 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 32, 13, 125, 100 },
			["Morepower|nightslayer"] = { 15, 15, -6, 1141 },
			["Yodead|nightslayer"] = { 15, 15, 7, 1140 },
			["Gzlol|dreamscythe"] = { 9, 15, -116, 100 },
			["Coneily|nightslayer"] = { 15, 8, 74, 1240 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 1198 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 1198 },
			["Ryanin|dreamscythe"] = { 7, 9, -38, 968 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 1236 },
			["Mopz|nightslayer"] = { 12, 3, 78, 1236 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 1142 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 1142 },
			["Àli|nightslayer"] = { 7, 4, 1, 1203 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 843 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 845 },
			["Xczv|dreamscythe"] = { 6, 5, -13, 100 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 41 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 41 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 1180 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 1039 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 1039 },
			["Bazook|nightslayer"] = { 2, 1, 1, 1341 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 820 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 820 },
			["Truccz|nightslayer"] = { 2, 1, 1, 1342 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 820 },
			["Druudix|nightslayer"] = { 2, 0, 8, 170 },
			["Qantas|nightslayer"] = { 1, 1, 1, 820 },
			["Warex|nightslayer"] = { 2, 0, 8, 170 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 224 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 1177 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 100 },
		},
	},
}

