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
	built = 1795327113,
	builtText = "2026-11-22 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 3, 2, -1, 20 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 5, 4, -1, 160 },
			["Zvn|dreamscythe"] = { 5, 4, -21, 160 },
			["Xczv|dreamscythe"] = { 6, 1, 48, 160 },
			["Möxie|dreamscythe"] = { 3, 2, -1, 20 },
			["Coneily|nightslayer"] = { 0, 4, -41, 160 },
			["Thundersháft|nightslayer"] = { 0, 4, -49, 160 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 90 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 13, 10, 53, 20 },
			["Thundersháft|nightslayer"] = { 14, 9, -10, 160 },
			["Gzlol|dreamscythe"] = { 10, 8, -25, 160 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 281 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 281 },
			["Xczv|dreamscythe"] = { 9, 1, 77, 160 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 160 },
			["Coneily|nightslayer"] = { 0, 4, -41, 160 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 90 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 17, 9, 4, 160 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 20 },
			["Gzlol|dreamscythe"] = { 10, 8, -25, 160 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 160 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 281 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 281 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 160 },
			["Coneily|nightslayer"] = { 0, 4, -41, 160 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 90 },
			["Druudix|nightslayer"] = { 2, 0, 8, 410 },
			["Warex|nightslayer"] = { 2, 0, 8, 410 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 464 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 16, 23, 48, 20 },
			["Gzlol|dreamscythe"] = { 14, 19, -117, 160 },
			["Morepower|nightslayer"] = { 15, 15, -6, 1381 },
			["Yodead|nightslayer"] = { 15, 15, 7, 1380 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 160 },
			["Tnyni|nightslayer"] = { 11, 6, 25, 1438 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 160 },
			["Ryanin|dreamscythe"] = { 7, 7, -24, 1208 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 1382 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 1382 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 1083 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 1085 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 281 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 281 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 160 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 1420 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 1279 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 1279 },
			["Kohhan|nightslayer"] = { 3, 3, -3, 1438 },
			["Coneily|nightslayer"] = { 0, 4, -41, 160 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 1060 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 1060 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 90 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 1060 },
			["Druudix|nightslayer"] = { 2, 0, 8, 410 },
			["Qantas|nightslayer"] = { 1, 1, 1, 1060 },
			["Warex|nightslayer"] = { 2, 0, 8, 410 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 464 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 1417 },
		},
	},
}

