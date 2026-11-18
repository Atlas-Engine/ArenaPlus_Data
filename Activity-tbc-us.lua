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
	built = 1794988712,
	builtText = "2026-11-18 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 45, 100 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 176 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 100 },
			["Gzlol|dreamscythe"] = { 5, 3, -22, 100 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 100 },
			["Nikz|nightslayer"] = { 0, 1, -3, 100 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 45, 100 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 183 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 176 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 100 },
			["Gzlol|dreamscythe"] = { 5, 3, -22, 100 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 183 },
			["Rjp|nightslayer"] = { 0, 5, -54, 192 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 100 },
			["Merdog|nightslayer"] = { 0, 2, -5, 190 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 225 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 201 },
			["Nikz|nightslayer"] = { 0, 1, -3, 100 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 100 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 45, 100 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 183 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 176 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 100 },
			["Gzlol|dreamscythe"] = { 5, 3, -22, 100 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 183 },
			["Rjp|nightslayer"] = { 0, 5, -54, 192 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 363 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 100 },
			["Merdog|nightslayer"] = { 0, 2, -5, 190 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 225 },
			["Tycat|nightslayer"] = { 2, 0, 2, 364 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 201 },
			["Frotted|nightslayer"] = { 1, 0, 0, 392 },
			["Nikz|nightslayer"] = { 0, 1, -3, 100 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 100 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 27, 7, 103, 100 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 1221 },
			["Ðade|nightslayer"] = { 6, 5, -37, 1282 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 1108 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 1233 },
			["Duudah|nightslayer"] = { 9, 1, 45, 100 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 183 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 1283 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 1112 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 176 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 100 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 1253 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 1267 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 183 },
			["Rjp|nightslayer"] = { 0, 5, -54, 192 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 363 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 100 },
			["Merdog|nightslayer"] = { 0, 2, -5, 190 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 225 },
			["Tycat|nightslayer"] = { 2, 0, 2, 364 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 201 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 1181 },
			["Frotted|nightslayer"] = { 1, 0, 0, 392 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 1000 },
			["Nikz|nightslayer"] = { 0, 1, -3, 100 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 100 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 1361 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 1361 },
		},
	},
}

