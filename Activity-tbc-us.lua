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
	built = 1795003113,
	builtText = "2026-11-18 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 0, 56, 160 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 160 },
			["Duudah|nightslayer"] = { 9, 1, 45, 340 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 340 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 224 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 160 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 340 },
			["Nikz|nightslayer"] = { 0, 1, -3, 340 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 340 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 160 },
			["Duudah|nightslayer"] = { 9, 1, 45, 340 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 423 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 416 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 340 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 224 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 160 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 423 },
			["Rjp|nightslayer"] = { 0, 5, -54, 432 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 603 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 340 },
			["Merdog|nightslayer"] = { 0, 2, -5, 430 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 465 },
			["Tycat|nightslayer"] = { 2, 0, 2, 604 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 441 },
			["Frotted|nightslayer"] = { 1, 0, 0, 632 },
			["Nikz|nightslayer"] = { 0, 1, -3, 340 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 340 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 27, 6, 95, 160 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 1348 },
			["Duudah|nightslayer"] = { 9, 1, 45, 340 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 423 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 1352 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 416 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 340 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 224 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 160 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 423 },
			["Rjp|nightslayer"] = { 0, 5, -54, 432 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 603 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 340 },
			["Merdog|nightslayer"] = { 0, 2, -5, 430 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 465 },
			["Tycat|nightslayer"] = { 2, 0, 2, 604 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 441 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 1421 },
			["Frotted|nightslayer"] = { 1, 0, 0, 632 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 1240 },
			["Nikz|nightslayer"] = { 0, 1, -3, 340 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 340 },
		},
	},
}

