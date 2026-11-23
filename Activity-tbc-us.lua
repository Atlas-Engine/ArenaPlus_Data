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
	built = 1795406313,
	builtText = "2026-11-22 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 19, -26, 40 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 40 },
			["Ryanin|dreamscythe"] = { 13, 2, 84, 40 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 40 },
			["Lizzygrey|nightslayer"] = { 1, 2, -13, 40 },
			["Mopz|nightslayer"] = { 1, 2, -12, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 19, -26, 40 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 67 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 40 },
			["Ryanin|dreamscythe"] = { 13, 2, 84, 40 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 129 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 40 },
			["Lizzygrey|nightslayer"] = { 1, 2, -13, 40 },
			["Mopz|nightslayer"] = { 1, 2, -12, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 19, -26, 40 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 67 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 40 },
			["Ryanin|dreamscythe"] = { 13, 2, 84, 40 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 129 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 40 },
			["Willinek|nightslayer"] = { 10, 0, 69, 237 },
			["Lizzygrey|nightslayer"] = { 1, 2, -13, 40 },
			["Mopz|nightslayer"] = { 1, 2, -12, 40 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 207 },
			["Yodead|nightslayer"] = { 0, 1, -20, 207 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 19, -26, 40 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 67 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 40 },
			["Ryanin|dreamscythe"] = { 13, 2, 84, 40 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 129 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 40 },
			["Willinek|nightslayer"] = { 10, 0, 69, 237 },
			["Lizzygrey|nightslayer"] = { 1, 2, -13, 40 },
			["Mopz|nightslayer"] = { 1, 2, -12, 40 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 207 },
			["Yodead|nightslayer"] = { 0, 1, -20, 207 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 21, 30, -45, 40 },
			["Ryanin|dreamscythe"] = { 22, 13, 17, 40 },
			["Möxie|dreamscythe"] = { 13, 20, 27, 67 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 1258 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 1256 },
			["Lizzygrey|nightslayer"] = { 11, 11, 47, 40 },
			["Mopz|nightslayer"] = { 11, 11, 58, 40 },
			["Notwzbx|dreamscythe"] = { 18, 3, 109, 40 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 129 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 40 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 1265 },
			["Rjp|nightslayer"] = { 6, 4, -32, 1266 },
			["Willinek|nightslayer"] = { 10, 0, 69, 237 },
			["Morepower|nightslayer"] = { 2, 4, -33, 1292 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 1292 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 1410 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 1199 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 207 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 1300 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 1199 },
			["Yodead|nightslayer"] = { 0, 1, -20, 207 },
		},
	},
}

