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
	built = 1795334313,
	builtText = "2026-11-22 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 5, 3, 17, 58 },
			["Wílleh|nightslayer"] = { 5, 3, 17, 56 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 58 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 56 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 130 },
			["Mopz|nightslayer"] = { 10, 9, 70, 116 },
			["Ryanin|dreamscythe"] = { 6, 8, -47, 100 },
			["Gzlol|dreamscythe"] = { 6, 7, -6, 100 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 65 },
			["Rjp|nightslayer"] = { 6, 4, -32, 66 },
			["Morepower|nightslayer"] = { 2, 4, -33, 92 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 92 },
			["Möxie|dreamscythe"] = { 3, 2, -1, 140 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 58 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 56 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 140 },
			["Gzlol|dreamscythe"] = { 11, 11, -7, 100 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 130 },
			["Mopz|nightslayer"] = { 10, 9, 70, 116 },
			["Ryanin|dreamscythe"] = { 6, 8, -47, 100 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 65 },
			["Rjp|nightslayer"] = { 6, 4, -32, 66 },
			["Zvn|dreamscythe"] = { 5, 4, -21, 280 },
			["Xczv|dreamscythe"] = { 6, 1, 48, 280 },
			["Morepower|nightslayer"] = { 2, 4, -33, 92 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 92 },
			["Coneily|nightslayer"] = { 0, 4, -41, 280 },
			["Thundersháft|nightslayer"] = { 0, 4, -49, 280 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 210 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 100 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 16, 15, -31, 100 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 58 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 56 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 280 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 140 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 130 },
			["Mopz|nightslayer"] = { 10, 9, 70, 116 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 280 },
			["Ryanin|dreamscythe"] = { 6, 8, -47, 100 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 401 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 401 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 65 },
			["Rjp|nightslayer"] = { 6, 4, -32, 66 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 280 },
			["Morepower|nightslayer"] = { 2, 4, -33, 92 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 92 },
			["Coneily|nightslayer"] = { 0, 4, -41, 280 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 210 },
			["Druudix|nightslayer"] = { 2, 0, 8, 530 },
			["Warex|nightslayer"] = { 2, 0, 8, 530 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 584 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 100 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 20, 26, -123, 100 },
			["Möxie|dreamscythe"] = { 16, 23, 48, 140 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 58 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 56 },
			["Ryanin|dreamscythe"] = { 13, 15, -71, 100 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 280 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 130 },
			["Mopz|nightslayer"] = { 10, 9, 70, 116 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 280 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 1203 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 1205 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 401 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 401 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 65 },
			["Rjp|nightslayer"] = { 6, 4, -32, 66 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 280 },
			["Cogitatos|nightslayer"] = { 7, 1, 40, 1399 },
			["Reverencèx|nightslayer"] = { 7, 1, 36, 1399 },
			["Morepower|nightslayer"] = { 2, 4, -33, 92 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 92 },
			["Coneily|nightslayer"] = { 0, 4, -41, 280 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 1180 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 1180 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 210 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 1180 },
			["Druudix|nightslayer"] = { 2, 0, 8, 530 },
			["Qantas|nightslayer"] = { 1, 1, 1, 1180 },
			["Warex|nightslayer"] = { 2, 0, 8, 530 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 584 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 100 },
		},
	},
}

