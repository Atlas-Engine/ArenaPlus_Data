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
	built = 1795409913,
	builtText = "2026-11-22 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Lizzygrey|nightslayer"] = { 8, 2, 32, 27 },
			["Mopz|nightslayer"] = { 8, 2, 32, 26 },
			["Ryanin|dreamscythe"] = { 3, 3, -14, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 19, -26, 100 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 127 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 47 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 100 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 27 },
			["Mopz|nightslayer"] = { 9, 4, 20, 26 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 19, -26, 100 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 127 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 47 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 100 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 27 },
			["Mopz|nightslayer"] = { 9, 4, 20, 26 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 189 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 100 },
			["Willinek|nightslayer"] = { 10, 0, 69, 297 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 267 },
			["Yodead|nightslayer"] = { 0, 1, -20, 267 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 19, -26, 100 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 127 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 47 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 100 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 27 },
			["Mopz|nightslayer"] = { 9, 4, 20, 26 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 189 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 100 },
			["Willinek|nightslayer"] = { 10, 0, 69, 297 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 267 },
			["Yodead|nightslayer"] = { 0, 1, -20, 267 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 21, 30, -45, 100 },
			["Ryanin|dreamscythe"] = { 25, 16, 3, 47 },
			["Möxie|dreamscythe"] = { 13, 20, 27, 127 },
			["Lizzygrey|nightslayer"] = { 19, 13, 79, 27 },
			["Mopz|nightslayer"] = { 19, 13, 90, 26 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 1318 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 1316 },
			["Notwzbx|dreamscythe"] = { 18, 3, 109, 100 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 189 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 100 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 1325 },
			["Rjp|nightslayer"] = { 6, 4, -32, 1326 },
			["Willinek|nightslayer"] = { 10, 0, 69, 297 },
			["Morepower|nightslayer"] = { 2, 4, -33, 1352 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 1352 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 1259 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 267 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 1360 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 1259 },
			["Yodead|nightslayer"] = { 0, 1, -20, 267 },
		},
	},
}

