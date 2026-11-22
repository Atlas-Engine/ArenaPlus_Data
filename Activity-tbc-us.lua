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
	built = 1795352312,
	builtText = "2026-11-22 07:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 5, 3, 17, 358 },
			["Wílleh|nightslayer"] = { 5, 3, 17, 356 },
			["Gzlol|dreamscythe"] = { 3, 4, -13, 220 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 220 },
			["Ryanin|dreamscythe"] = { 3, 3, -20, 263 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 299 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 299 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 358 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 356 },
			["Gzlol|dreamscythe"] = { 14, 15, -20, 220 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 440 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 263 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 430 },
			["Mopz|nightslayer"] = { 10, 9, 70, 416 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 365 },
			["Rjp|nightslayer"] = { 6, 4, -32, 366 },
			["Magicb|dreamscythe"] = { 5, 4, -8, 701 },
			["Zvn|dreamscythe"] = { 5, 4, -21, 580 },
			["Neytïrï|dreamscythe"] = { 6, 1, 52, 701 },
			["Xczv|dreamscythe"] = { 6, 1, 48, 580 },
			["Morepower|nightslayer"] = { 2, 4, -33, 392 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 220 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 392 },
			["Coneily|nightslayer"] = { 0, 4, -41, 580 },
			["Thundersháft|nightslayer"] = { 0, 4, -49, 580 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 510 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 299 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 400 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 299 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 19, -44, 220 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 358 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 356 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 580 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 440 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 263 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 430 },
			["Mopz|nightslayer"] = { 10, 9, 70, 416 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 580 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 701 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 701 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 365 },
			["Rjp|nightslayer"] = { 6, 4, -32, 366 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 580 },
			["Morepower|nightslayer"] = { 2, 4, -33, 392 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 220 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 392 },
			["Coneily|nightslayer"] = { 0, 4, -41, 580 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 510 },
			["Druudix|nightslayer"] = { 2, 0, 8, 830 },
			["Warex|nightslayer"] = { 2, 0, 8, 830 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 299 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 884 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 400 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 299 },
		},
	},
}

