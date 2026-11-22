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
	built = 1795316314,
	builtText = "2026-11-21 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 14, 5, 39, 160 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 101 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 101 },
			["Gzlol|dreamscythe"] = { 5, 4, -24, 160 },
			["Xczv|dreamscythe"] = { 3, 0, 29, 160 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 17, 5, 53, 160 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 101 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 101 },
			["Gzlol|dreamscythe"] = { 5, 4, -24, 160 },
			["Xczv|dreamscythe"] = { 6, 3, -5, 160 },
			["Druudix|nightslayer"] = { 2, 0, 8, 230 },
			["Warex|nightslayer"] = { 2, 0, 8, 230 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 284 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 160 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 17, 5, 53, 160 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 101 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 101 },
			["Gzlol|dreamscythe"] = { 5, 4, -24, 160 },
			["Xczv|dreamscythe"] = { 6, 3, -5, 160 },
			["Druudix|nightslayer"] = { 2, 0, 8, 230 },
			["Warex|nightslayer"] = { 2, 0, 8, 230 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 284 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 160 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thundersháft|nightslayer"] = { 32, 13, 125, 160 },
			["Morepower|nightslayer"] = { 15, 15, -6, 1201 },
			["Yodead|nightslayer"] = { 15, 15, 7, 1200 },
			["Gzlol|dreamscythe"] = { 9, 15, -116, 160 },
			["Coneily|nightslayer"] = { 15, 8, 74, 1301 },
			["Kohhan|nightslayer"] = { 12, 7, 30, 1258 },
			["Tnyni|nightslayer"] = { 12, 7, 30, 1258 },
			["Ryanin|dreamscythe"] = { 7, 9, -38, 1028 },
			["Lizzygrey|nightslayer"] = { 12, 3, 69, 1296 },
			["Mopz|nightslayer"] = { 12, 3, 78, 1296 },
			["Shigekazu|nightslayer"] = { 8, 5, -33, 1202 },
			["Wílleh|nightslayer"] = { 8, 5, -33, 1202 },
			["Àli|nightslayer"] = { 7, 4, 1, 1263 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 904 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 905 },
			["Xczv|dreamscythe"] = { 6, 5, -13, 160 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 101 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 101 },
			["Frozenvirgin|nightslayer"] = { 6, 3, 2, 1240 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 1099 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 1099 },
			["Bazook|nightslayer"] = { 2, 1, 1, 1401 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 880 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 880 },
			["Truccz|nightslayer"] = { 2, 1, 1, 1402 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 880 },
			["Druudix|nightslayer"] = { 2, 0, 8, 230 },
			["Qantas|nightslayer"] = { 1, 1, 1, 880 },
			["Warex|nightslayer"] = { 2, 0, 8, 230 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 284 },
			["Kelanthor|nightslayer"] = { 0, 1, -14, 1237 },
			["Zvn|dreamscythe"] = { 1, 0, 7, 160 },
		},
	},
}

