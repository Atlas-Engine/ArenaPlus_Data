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
	built = 1794992312,
	builtText = "2026-11-18 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 9, 0, 41, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 45, 160 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 160 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 44 },
			["Gzlol|dreamscythe"] = { 5, 3, -22, 160 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 160 },
			["Nikz|nightslayer"] = { 0, 1, -3, 160 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 45, 160 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 243 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 236 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 160 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 44 },
			["Gzlol|dreamscythe"] = { 5, 3, -22, 160 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 243 },
			["Rjp|nightslayer"] = { 0, 5, -54, 252 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 160 },
			["Merdog|nightslayer"] = { 0, 2, -5, 250 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 285 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 261 },
			["Nikz|nightslayer"] = { 0, 1, -3, 160 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 160 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 45, 160 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 243 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 236 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 160 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 44 },
			["Gzlol|dreamscythe"] = { 5, 3, -22, 160 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 243 },
			["Rjp|nightslayer"] = { 0, 5, -54, 252 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 423 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 160 },
			["Merdog|nightslayer"] = { 0, 2, -5, 250 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 285 },
			["Tycat|nightslayer"] = { 2, 0, 2, 424 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 261 },
			["Frotted|nightslayer"] = { 1, 0, 0, 452 },
			["Nikz|nightslayer"] = { 0, 1, -3, 160 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 160 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 27, 7, 103, 160 },
			["Ryanin|dreamscythe"] = { 30, 4, 116, 44 },
			["Ðade|nightslayer"] = { 6, 5, -37, 1342 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 1168 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 1293 },
			["Duudah|nightslayer"] = { 9, 1, 45, 160 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 243 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 1343 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 1172 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 236 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 160 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 1313 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 1327 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 243 },
			["Rjp|nightslayer"] = { 0, 5, -54, 252 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 423 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 160 },
			["Merdog|nightslayer"] = { 0, 2, -5, 250 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 285 },
			["Tycat|nightslayer"] = { 2, 0, 2, 424 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 261 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 1241 },
			["Frotted|nightslayer"] = { 1, 0, 0, 452 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 1060 },
			["Nikz|nightslayer"] = { 0, 1, -3, 160 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 160 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 1421 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 1421 },
		},
	},
}

