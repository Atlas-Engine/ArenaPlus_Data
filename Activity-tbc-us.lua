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
	built = 1794999513,
	builtText = "2026-11-18 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 0, 56, 100 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 164 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 100 },
			["Duudah|nightslayer"] = { 9, 1, 45, 280 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 356 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 280 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 164 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 100 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 280 },
			["Nikz|nightslayer"] = { 0, 1, -3, 280 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 280 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 100 },
			["Duudah|nightslayer"] = { 9, 1, 45, 280 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 363 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 356 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 280 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 164 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 100 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 363 },
			["Rjp|nightslayer"] = { 0, 5, -54, 372 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 543 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 280 },
			["Merdog|nightslayer"] = { 0, 2, -5, 370 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 405 },
			["Tycat|nightslayer"] = { 2, 0, 2, 544 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 381 },
			["Frotted|nightslayer"] = { 1, 0, 0, 572 },
			["Nikz|nightslayer"] = { 0, 1, -3, 280 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 280 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 27, 6, 95, 100 },
			["Ryanin|dreamscythe"] = { 22, 3, 78, 164 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 1288 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 1413 },
			["Duudah|nightslayer"] = { 9, 1, 45, 280 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 363 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 1292 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 356 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 280 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 100 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 1433 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 363 },
			["Rjp|nightslayer"] = { 0, 5, -54, 372 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 543 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 280 },
			["Merdog|nightslayer"] = { 0, 2, -5, 370 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 405 },
			["Tycat|nightslayer"] = { 2, 0, 2, 544 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 381 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 1361 },
			["Frotted|nightslayer"] = { 1, 0, 0, 572 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 1180 },
			["Nikz|nightslayer"] = { 0, 1, -3, 280 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 280 },
		},
	},
}

