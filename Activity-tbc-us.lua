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
	built = 1795330714,
	builtText = "2026-11-22 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 16, 6, -35, 40 },
			["Wílleh|nightslayer"] = { 16, 6, -36, 40 },
			["Mopz|nightslayer"] = { 10, 9, 70, 56 },
			["Ryanin|dreamscythe"] = { 6, 8, -47, 40 },
			["Gzlol|dreamscythe"] = { 6, 7, -6, 40 },
			["Morepower|nightslayer"] = { 2, 4, -33, 32 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 33 },
			["Palapapa|nightslayer"] = { 3, 1, -5, 40 },
			["Rjp|nightslayer"] = { 3, 1, -4, 40 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 16, 6, -35, 40 },
			["Wílleh|nightslayer"] = { 16, 6, -36, 40 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 70 },
			["Mopz|nightslayer"] = { 10, 9, 70, 56 },
			["Ryanin|dreamscythe"] = { 6, 8, -47, 40 },
			["Gzlol|dreamscythe"] = { 6, 7, -6, 40 },
			["Morepower|nightslayer"] = { 2, 4, -33, 32 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 33 },
			["Möxie|dreamscythe"] = { 3, 2, -1, 80 },
			["Palapapa|nightslayer"] = { 3, 1, -5, 40 },
			["Rjp|nightslayer"] = { 3, 1, -4, 40 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 150 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 13, 10, 53, 80 },
			["Gzlol|dreamscythe"] = { 11, 11, -7, 40 },
			["Shigekazu|nightslayer"] = { 16, 6, -35, 40 },
			["Wílleh|nightslayer"] = { 16, 6, -36, 40 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 70 },
			["Mopz|nightslayer"] = { 10, 9, 70, 56 },
			["Ryanin|dreamscythe"] = { 6, 8, -47, 40 },
			["Magicb|dreamscythe"] = { 5, 4, -8, 341 },
			["Zvn|dreamscythe"] = { 5, 4, -21, 220 },
			["Neytïrï|dreamscythe"] = { 6, 1, 52, 341 },
			["Xczv|dreamscythe"] = { 6, 1, 48, 220 },
			["Morepower|nightslayer"] = { 2, 4, -33, 32 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 33 },
			["Coneily|nightslayer"] = { 0, 4, -41, 220 },
			["Palapapa|nightslayer"] = { 3, 1, -5, 40 },
			["Rjp|nightslayer"] = { 3, 1, -4, 40 },
			["Thundersháft|nightslayer"] = { 0, 4, -49, 220 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 150 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 40 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 16, 15, -31, 40 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 220 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 80 },
			["Shigekazu|nightslayer"] = { 16, 6, -35, 40 },
			["Wílleh|nightslayer"] = { 16, 6, -36, 40 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 70 },
			["Mopz|nightslayer"] = { 10, 9, 70, 56 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 220 },
			["Ryanin|dreamscythe"] = { 6, 8, -47, 40 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 341 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 341 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 220 },
			["Morepower|nightslayer"] = { 2, 4, -33, 32 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 33 },
			["Coneily|nightslayer"] = { 0, 4, -41, 220 },
			["Palapapa|nightslayer"] = { 3, 1, -5, 40 },
			["Rjp|nightslayer"] = { 3, 1, -4, 40 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 150 },
			["Druudix|nightslayer"] = { 2, 0, 8, 470 },
			["Warex|nightslayer"] = { 2, 0, 8, 470 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 524 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 40 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 20, 26, -123, 40 },
			["Möxie|dreamscythe"] = { 16, 23, 48, 80 },
			["Ryanin|dreamscythe"] = { 13, 15, -71, 40 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 220 },
			["Shigekazu|nightslayer"] = { 16, 6, -35, 40 },
			["Wílleh|nightslayer"] = { 16, 6, -36, 40 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 70 },
			["Mopz|nightslayer"] = { 10, 9, 70, 56 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 220 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 1144 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 1145 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 341 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 341 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 220 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 1339 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 1339 },
			["Yodead|nightslayer"] = { 5, 3, 18, 1440 },
			["Morepower|nightslayer"] = { 2, 4, -33, 32 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 33 },
			["Coneily|nightslayer"] = { 0, 4, -41, 220 },
			["Palapapa|nightslayer"] = { 3, 1, -5, 40 },
			["Rjp|nightslayer"] = { 3, 1, -4, 40 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 1120 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 1120 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 150 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 1120 },
			["Druudix|nightslayer"] = { 2, 0, 8, 470 },
			["Qantas|nightslayer"] = { 1, 1, 1, 1120 },
			["Warex|nightslayer"] = { 2, 0, 8, 470 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 524 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 40 },
		},
	},
}

