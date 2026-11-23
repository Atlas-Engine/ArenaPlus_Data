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
	built = 1795420712,
	builtText = "2026-11-23 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 3, 3, 17, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 15, 22, -9, 100 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 307 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 227 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 280 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 207 },
			["Mopz|nightslayer"] = { 9, 4, 20, 206 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 280 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 15, 22, -9, 100 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 307 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 227 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 280 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 207 },
			["Mopz|nightslayer"] = { 9, 4, 20, 206 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 369 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 280 },
			["Willinek|nightslayer"] = { 10, 0, 69, 477 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 447 },
			["Yodead|nightslayer"] = { 0, 1, -20, 447 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 26, -22, 100 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 307 },
			["Ryanin|dreamscythe"] = { 19, 8, 50, 227 },
			["Notwzbx|dreamscythe"] = { 18, 3, 109, 280 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 207 },
			["Mopz|nightslayer"] = { 9, 4, 20, 206 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 369 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 280 },
			["Willinek|nightslayer"] = { 10, 0, 69, 477 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 1439 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 447 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 1439 },
			["Yodead|nightslayer"] = { 0, 1, -20, 447 },
		},
	},
}

