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
	built = 1795413515,
	builtText = "2026-11-23 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 19, -26, 160 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 107 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 160 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 87 },
			["Mopz|nightslayer"] = { 9, 4, 20, 86 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 19, -26, 160 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 187 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 107 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 160 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 87 },
			["Mopz|nightslayer"] = { 9, 4, 20, 86 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 249 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 160 },
			["Willinek|nightslayer"] = { 10, 0, 69, 357 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 327 },
			["Yodead|nightslayer"] = { 0, 1, -20, 327 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 19, -26, 160 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 187 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 107 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 160 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 87 },
			["Mopz|nightslayer"] = { 9, 4, 20, 86 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 249 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 160 },
			["Willinek|nightslayer"] = { 10, 0, 69, 357 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 327 },
			["Yodead|nightslayer"] = { 0, 1, -20, 327 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 21, 30, -45, 160 },
			["Ryanin|dreamscythe"] = { 25, 16, 3, 107 },
			["Mopz|nightslayer"] = { 19, 13, 90, 86 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 1378 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 1376 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 187 },
			["Notwzbx|dreamscythe"] = { 18, 3, 109, 160 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 87 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 249 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 160 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 1385 },
			["Rjp|nightslayer"] = { 6, 4, -32, 1386 },
			["Willinek|nightslayer"] = { 10, 0, 69, 357 },
			["Morepower|nightslayer"] = { 2, 4, -33, 1412 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 1413 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 1319 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 327 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 1420 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 1319 },
			["Yodead|nightslayer"] = { 0, 1, -20, 327 },
		},
	},
}

