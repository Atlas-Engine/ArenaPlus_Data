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
	built = 1794985113,
	builtText = "2026-11-18 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 45, 40 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 40 },
			["Gzlol|dreamscythe"] = { 5, 3, -22, 40 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 40 },
			["Nikz|nightslayer"] = { 0, 1, -3, 40 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 45, 40 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 123 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 116 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 40 },
			["Gzlol|dreamscythe"] = { 5, 3, -22, 40 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 123 },
			["Rjp|nightslayer"] = { 0, 5, -54, 132 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 40 },
			["Merdog|nightslayer"] = { 0, 2, -5, 130 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 165 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 141 },
			["Nikz|nightslayer"] = { 0, 1, -3, 40 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 45, 40 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 123 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 116 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 40 },
			["Gzlol|dreamscythe"] = { 5, 3, -22, 40 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 123 },
			["Rjp|nightslayer"] = { 0, 5, -54, 132 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 303 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 40 },
			["Merdog|nightslayer"] = { 0, 2, -5, 130 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 165 },
			["Tycat|nightslayer"] = { 2, 0, 2, 304 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 141 },
			["Frotted|nightslayer"] = { 1, 0, 0, 332 },
			["Nikz|nightslayer"] = { 0, 1, -3, 40 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 40 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Duudah|nightslayer"] = { 9, 1, 45, 40 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 123 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 116 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 40 },
			["Gzlol|dreamscythe"] = { 5, 3, -22, 40 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 123 },
			["Rjp|nightslayer"] = { 0, 5, -54, 132 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 303 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 40 },
			["Merdog|nightslayer"] = { 0, 2, -5, 130 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 165 },
			["Tycat|nightslayer"] = { 2, 0, 2, 304 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 141 },
			["Frotted|nightslayer"] = { 1, 0, 0, 332 },
			["Nikz|nightslayer"] = { 0, 1, -3, 40 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 40 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 27, 7, 103, 40 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 1161 },
			["Ðade|nightslayer"] = { 6, 5, -37, 1222 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 1048 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 1173 },
			["Duudah|nightslayer"] = { 9, 1, 45, 40 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 123 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 1223 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 1052 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 116 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 40 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 1193 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 1207 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 123 },
			["Rjp|nightslayer"] = { 0, 5, -54, 132 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 303 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 40 },
			["Merdog|nightslayer"] = { 0, 2, -5, 130 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 165 },
			["Tycat|nightslayer"] = { 2, 0, 2, 304 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 141 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 1121 },
			["Frotted|nightslayer"] = { 1, 0, 0, 332 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 940 },
			["Nikz|nightslayer"] = { 0, 1, -3, 40 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 40 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 1301 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 1301 },
		},
	},
}

