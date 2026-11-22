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
	built = 1795337913,
	builtText = "2026-11-22 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 3, 3, -20, 23 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 59 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 59 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 118 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 116 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 23 },
			["Mopz|nightslayer"] = { 10, 9, 70, 176 },
			["Gzlol|dreamscythe"] = { 6, 7, -6, 160 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 125 },
			["Rjp|nightslayer"] = { 6, 4, -32, 126 },
			["Morepower|nightslayer"] = { 2, 4, -33, 152 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 152 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 59 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 160 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 59 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 118 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 116 },
			["Gzlol|dreamscythe"] = { 11, 11, -7, 160 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 23 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 190 },
			["Mopz|nightslayer"] = { 10, 9, 70, 176 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 125 },
			["Rjp|nightslayer"] = { 6, 4, -32, 126 },
			["Zvn|dreamscythe"] = { 5, 4, -21, 340 },
			["Xczv|dreamscythe"] = { 6, 1, 48, 340 },
			["Morepower|nightslayer"] = { 2, 4, -33, 152 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 152 },
			["Möxie|dreamscythe"] = { 3, 2, -1, 200 },
			["Coneily|nightslayer"] = { 0, 4, -41, 340 },
			["Thundersháft|nightslayer"] = { 0, 4, -49, 340 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 270 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 59 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 160 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 59 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 16, 15, -31, 160 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 118 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 116 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 340 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 200 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 23 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 190 },
			["Mopz|nightslayer"] = { 10, 9, 70, 176 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 340 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 461 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 461 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 125 },
			["Rjp|nightslayer"] = { 6, 4, -32, 126 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 340 },
			["Morepower|nightslayer"] = { 2, 4, -33, 152 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 152 },
			["Coneily|nightslayer"] = { 0, 4, -41, 340 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 270 },
			["Druudix|nightslayer"] = { 2, 0, 8, 590 },
			["Warex|nightslayer"] = { 2, 0, 8, 590 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 59 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 644 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 160 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 59 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 20, 26, -123, 160 },
			["Möxie|dreamscythe"] = { 16, 23, 48, 200 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 118 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 116 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 340 },
			["Ryanin|dreamscythe"] = { 12, 12, -56, 23 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 190 },
			["Mopz|nightslayer"] = { 10, 9, 70, 176 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 340 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 1263 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 1265 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 461 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 461 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 125 },
			["Rjp|nightslayer"] = { 6, 4, -32, 126 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 340 },
			["Morepower|nightslayer"] = { 2, 4, -33, 152 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 152 },
			["Coneily|nightslayer"] = { 0, 4, -41, 340 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 1240 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 1240 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 270 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 1240 },
			["Druudix|nightslayer"] = { 2, 0, 8, 590 },
			["Qantas|nightslayer"] = { 1, 1, 1, 1240 },
			["Warex|nightslayer"] = { 2, 0, 8, 590 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 59 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 644 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 160 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 59 },
		},
	},
}

