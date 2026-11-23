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
	built = 1795424312,
	builtText = "2026-11-23 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 3, 3, 17, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 15, 22, -9, 160 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 287 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 340 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 267 },
			["Mopz|nightslayer"] = { 9, 4, 20, 266 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 340 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 15, 22, -9, 160 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 367 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 287 },
			["Notwzbx|dreamscythe"] = { 13, 2, 90, 340 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 267 },
			["Mopz|nightslayer"] = { 9, 4, 20, 266 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 429 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 340 },
			["Willinek|nightslayer"] = { 10, 0, 69, 537 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 507 },
			["Yodead|nightslayer"] = { 0, 1, -20, 507 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 18, 26, -22, 160 },
			["Möxie|dreamscythe"] = { 10, 18, 28, 367 },
			["Notwzbx|dreamscythe"] = { 18, 3, 109, 340 },
			["Ryanin|dreamscythe"] = { 16, 5, 70, 287 },
			["Lizzygrey|nightslayer"] = { 9, 4, 19, 267 },
			["Mopz|nightslayer"] = { 9, 4, 20, 266 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 429 },
			["Xczv|dreamscythe"] = { 11, 1, 80, 340 },
			["Willinek|nightslayer"] = { 10, 0, 69, 537 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 507 },
			["Yodead|nightslayer"] = { 0, 1, -20, 507 },
		},
	},
}

