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
	built = 1795341512,
	builtText = "2026-11-22 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 3, 4, -13, 40 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 5, 3, 17, 178 },
			["Wílleh|nightslayer"] = { 5, 3, 17, 176 },
			["Gzlol|dreamscythe"] = { 3, 4, -13, 40 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 40 },
			["Ryanin|dreamscythe"] = { 3, 3, -20, 83 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 119 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 119 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 178 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 176 },
			["Gzlol|dreamscythe"] = { 9, 11, -19, 40 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 83 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 250 },
			["Mopz|nightslayer"] = { 10, 9, 70, 236 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 185 },
			["Rjp|nightslayer"] = { 6, 4, -32, 186 },
			["Morepower|nightslayer"] = { 2, 4, -33, 212 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 40 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 212 },
			["Möxie|dreamscythe"] = { 3, 2, -1, 260 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 330 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 119 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 220 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 119 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 19, -44, 40 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 178 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 176 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 260 },
			["Thundersháft|nightslayer"] = { 14, 9, -10, 400 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 83 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 250 },
			["Mopz|nightslayer"] = { 10, 9, 70, 236 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 400 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 521 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 521 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 185 },
			["Rjp|nightslayer"] = { 6, 4, -32, 186 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 400 },
			["Morepower|nightslayer"] = { 2, 4, -33, 212 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 40 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 212 },
			["Coneily|nightslayer"] = { 0, 4, -41, 400 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 330 },
			["Druudix|nightslayer"] = { 2, 0, 8, 650 },
			["Warex|nightslayer"] = { 2, 0, 8, 650 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 119 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 704 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 220 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 119 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 21, -66, 40 },
			["Möxie|dreamscythe"] = { 16, 23, 48, 260 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 178 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 176 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 400 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 83 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 250 },
			["Mopz|nightslayer"] = { 10, 9, 70, 236 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 400 },
			["Clothfaté|nightslayer"] = { 9, 2, 51, 1323 },
			["Kasupi|nightslayer"] = { 9, 2, 15, 1325 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 521 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 521 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 185 },
			["Rjp|nightslayer"] = { 6, 4, -32, 186 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 400 },
			["Morepower|nightslayer"] = { 2, 4, -33, 212 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 40 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 212 },
			["Coneily|nightslayer"] = { 0, 4, -41, 400 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 1300 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 1300 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 330 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 1300 },
			["Druudix|nightslayer"] = { 2, 0, 8, 650 },
			["Qantas|nightslayer"] = { 1, 1, 1, 1300 },
			["Warex|nightslayer"] = { 2, 0, 8, 650 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 119 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 704 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 220 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 119 },
		},
	},
}

