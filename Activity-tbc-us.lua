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
	built = 1795348711,
	builtText = "2026-11-22 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 3, 4, -13, 160 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 298 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 296 },
			["Gzlol|dreamscythe"] = { 9, 11, -19, 160 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 203 },
			["Mopz|nightslayer"] = { 10, 9, 70, 356 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 305 },
			["Rjp|nightslayer"] = { 6, 4, -32, 306 },
			["Morepower|nightslayer"] = { 2, 4, -33, 332 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 160 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 332 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 239 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 340 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 239 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 19, -44, 160 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 298 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 296 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 380 },
			["Thundersháft|nightslayer"] = { 14, 9, -10, 520 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 203 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 370 },
			["Mopz|nightslayer"] = { 10, 9, 70, 356 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 641 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 641 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 305 },
			["Rjp|nightslayer"] = { 6, 4, -32, 306 },
			["Xczv|dreamscythe"] = { 9, 1, 77, 520 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 520 },
			["Morepower|nightslayer"] = { 2, 4, -33, 332 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 160 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 332 },
			["Coneily|nightslayer"] = { 0, 4, -41, 520 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 450 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 239 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 340 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 239 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 21, -66, 160 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 298 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 296 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 520 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 380 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 203 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 370 },
			["Mopz|nightslayer"] = { 10, 9, 70, 356 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 520 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 641 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 641 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 305 },
			["Rjp|nightslayer"] = { 6, 4, -32, 306 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 520 },
			["Morepower|nightslayer"] = { 2, 4, -33, 332 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 160 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 332 },
			["Coneily|nightslayer"] = { 0, 4, -41, 520 },
			["Dhaos|nightslayer"] = { 2, 1, 0, 1420 },
			["Dunyain|nightslayer"] = { 2, 1, 8, 1420 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 450 },
			["Clothfate|nightslayer"] = { 1, 1, 1, 1420 },
			["Druudix|nightslayer"] = { 2, 0, 8, 770 },
			["Qantas|nightslayer"] = { 1, 1, 1, 1420 },
			["Warex|nightslayer"] = { 2, 0, 8, 770 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 239 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 824 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 340 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 239 },
		},
	},
}

