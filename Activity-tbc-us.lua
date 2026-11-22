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
	built = 1795323511,
	builtText = "2026-11-21 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 10, 8, 54, 171 },
			["Gzlol|dreamscythe"] = { 5, 4, -1, 100 },
			["Zvn|dreamscythe"] = { 5, 4, -21, 100 },
			["Xczv|dreamscythe"] = { 6, 1, 48, 100 },
			["Coneily|nightslayer"] = { 0, 4, -41, 100 },
			["Thundersháft|nightslayer"] = { 0, 4, -49, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 14, 9, -10, 100 },
			["Gzlol|dreamscythe"] = { 10, 8, -25, 100 },
			["Möxie|dreamscythe"] = { 10, 8, 54, 171 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 221 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 221 },
			["Xczv|dreamscythe"] = { 9, 1, 77, 100 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 100 },
			["Coneily|nightslayer"] = { 0, 4, -41, 100 },
			["Druudix|nightslayer"] = { 2, 0, 8, 350 },
			["Warex|nightslayer"] = { 2, 0, 8, 350 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 17, 9, 4, 100 },
			["Gzlol|dreamscythe"] = { 10, 8, -25, 100 },
			["Möxie|dreamscythe"] = { 10, 8, 54, 171 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 100 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 221 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 221 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 100 },
			["Coneily|nightslayer"] = { 0, 4, -41, 100 },
			["Druudix|nightslayer"] = { 2, 0, 8, 350 },
			["Warex|nightslayer"] = { 2, 0, 8, 350 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 404 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 27, 15, 39, 100 },
			["Möxie|dreamscythe"] = { 13, 21, 49, 171 },
			["Gzlol|dreamscythe"] = { 14, 19, -117, 100 },
			["Morepower|nightslayer"] = { 15, 15, -6, 1321 },
			["Yodead|nightslayer"] = { 15, 15, 7, 1320 },
			["Coneily|nightslayer"] = { 10, 10, -5, 100 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 1378 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 100 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 1416 },
			["Mopz|nightslayer"] = { 12, 3, 78, 1416 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 1148 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 1322 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 1322 },
			["Àli|nightslayer"] = { 7, 4, 1, 1383 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 1023 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 1025 },
			["Kohhan|nightslayer"] = { 6, 4, 13, 1378 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 221 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 221 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 100 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 1360 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 1219 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 1219 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 1000 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 1000 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 1000 },
			["Druudix|nightslayer"] = { 2, 0, 8, 350 },
			["Qantas|nightslayer"] = { 1, 1, 1, 1000 },
			["Warex|nightslayer"] = { 2, 0, 8, 350 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 404 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 1357 },
		},
	},
}

