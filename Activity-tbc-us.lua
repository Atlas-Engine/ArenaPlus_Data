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
	built = 1795355914,
	builtText = "2026-11-22 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 3, 4, -13, 280 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 280 },
			["Ryanin|dreamscythe"] = { 3, 3, -20, 323 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 359 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 359 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 418 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 416 },
			["Gzlol|dreamscythe"] = { 14, 15, -20, 280 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 500 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 323 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 490 },
			["Mopz|nightslayer"] = { 10, 9, 70, 476 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 425 },
			["Rjp|nightslayer"] = { 6, 4, -32, 426 },
			["Zvn|dreamscythe"] = { 5, 4, -21, 640 },
			["Xczv|dreamscythe"] = { 6, 1, 48, 640 },
			["Morepower|nightslayer"] = { 2, 4, -33, 452 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 280 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 453 },
			["Coneily|nightslayer"] = { 0, 4, -41, 640 },
			["Thundersháft|nightslayer"] = { 0, 4, -49, 640 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 570 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 359 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 460 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 359 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 19, -44, 280 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 418 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 416 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 640 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 500 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 323 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 490 },
			["Mopz|nightslayer"] = { 10, 9, 70, 476 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 640 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 761 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 761 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 425 },
			["Rjp|nightslayer"] = { 6, 4, -32, 426 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 640 },
			["Morepower|nightslayer"] = { 2, 4, -33, 452 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 280 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 453 },
			["Coneily|nightslayer"] = { 0, 4, -41, 640 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 570 },
			["Druudix|nightslayer"] = { 2, 0, 8, 890 },
			["Warex|nightslayer"] = { 2, 0, 8, 890 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 359 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 944 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 460 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 359 },
		},
	},
}

