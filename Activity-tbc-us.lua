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
	built = 1794995913,
	builtText = "2026-11-18 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 0, 56, 40 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 0, 56, 40 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 104 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 40 },
			["Duudah|nightslayer"] = { 9, 1, 45, 220 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 303 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 296 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 220 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 104 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 40 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 303 },
			["Rjp|nightslayer"] = { 0, 5, -54, 312 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 220 },
			["Merdog|nightslayer"] = { 0, 2, -5, 310 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 345 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 321 },
			["Nikz|nightslayer"] = { 0, 1, -3, 220 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 220 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 40 },
			["Duudah|nightslayer"] = { 9, 1, 45, 220 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 303 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 296 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 220 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 104 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 40 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 303 },
			["Rjp|nightslayer"] = { 0, 5, -54, 312 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 483 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 220 },
			["Merdog|nightslayer"] = { 0, 2, -5, 310 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 345 },
			["Tycat|nightslayer"] = { 2, 0, 2, 484 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 321 },
			["Frotted|nightslayer"] = { 1, 0, 0, 512 },
			["Nikz|nightslayer"] = { 0, 1, -3, 220 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 220 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 27, 6, 95, 40 },
			["Ryanin|dreamscythe"] = { 22, 3, 78, 104 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 1228 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 1353 },
			["Duudah|nightslayer"] = { 9, 1, 45, 220 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 303 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 1232 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 296 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 220 },
			["Ðade|nightslayer"] = { 4, 4, -33, 1402 },
			["Floridaboy|nightslayer"] = { 3, 4, -27, 1403 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 40 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 1373 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 1387 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 303 },
			["Rjp|nightslayer"] = { 0, 5, -54, 312 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 483 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 220 },
			["Merdog|nightslayer"] = { 0, 2, -5, 310 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 345 },
			["Tycat|nightslayer"] = { 2, 0, 2, 484 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 321 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 1301 },
			["Frotted|nightslayer"] = { 1, 0, 0, 512 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 1120 },
			["Nikz|nightslayer"] = { 0, 1, -3, 220 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 220 },
		},
	},
}

