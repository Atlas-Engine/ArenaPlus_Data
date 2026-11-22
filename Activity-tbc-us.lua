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
	built = 1795345112,
	builtText = "2026-11-22 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 3, 4, -13, 100 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 100 },
			["Ryanin|dreamscythe"] = { 3, 3, -20, 143 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 179 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 179 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 238 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 236 },
			["Gzlol|dreamscythe"] = { 9, 11, -19, 100 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 143 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 310 },
			["Mopz|nightslayer"] = { 10, 9, 70, 296 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 245 },
			["Rjp|nightslayer"] = { 6, 4, -32, 246 },
			["Morepower|nightslayer"] = { 2, 4, -33, 272 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 100 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 272 },
			["Möxie|dreamscythe"] = { 3, 2, -1, 320 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 179 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 280 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 179 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 19, -44, 100 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 238 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 236 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 320 },
			["Thundersháft|nightslayer"] = { 14, 9, -10, 460 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 143 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 310 },
			["Mopz|nightslayer"] = { 10, 9, 70, 296 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 581 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 581 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 245 },
			["Rjp|nightslayer"] = { 6, 4, -32, 246 },
			["Xczv|dreamscythe"] = { 9, 1, 77, 460 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 460 },
			["Morepower|nightslayer"] = { 2, 4, -33, 272 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 100 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 272 },
			["Coneily|nightslayer"] = { 0, 4, -41, 460 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 390 },
			["Druudix|nightslayer"] = { 2, 0, 8, 710 },
			["Warex|nightslayer"] = { 2, 0, 8, 710 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 179 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 280 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 179 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 21, -66, 100 },
			["Möxie|dreamscythe"] = { 16, 23, 48, 320 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 238 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 236 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 460 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 143 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 310 },
			["Mopz|nightslayer"] = { 10, 9, 70, 296 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 460 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 581 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 581 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 245 },
			["Rjp|nightslayer"] = { 6, 4, -32, 246 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 460 },
			["Morepower|nightslayer"] = { 2, 4, -33, 272 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 100 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 272 },
			["Coneily|nightslayer"] = { 0, 4, -41, 460 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 1360 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 1360 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 390 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 1360 },
			["Clothfaté|nightslayer"] = { 1, 1, -5, 1383 },
			["Druudix|nightslayer"] = { 2, 0, 8, 710 },
			["Kasupi|nightslayer"] = { 1, 1, -9, 1385 },
			["Qantas|nightslayer"] = { 1, 1, 1, 1360 },
			["Warex|nightslayer"] = { 2, 0, 8, 710 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 179 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 764 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 280 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 179 },
		},
	},
}

