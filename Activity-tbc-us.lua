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
	built = 1795593511,
	builtText = "2026-11-25 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 152 },
			["Yodead|nightslayer"] = { 9, 5, 57, 152 },
			["Myo|nightslayer"] = { 6, 4, 14, 101 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 101 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 146 },
			["Rjp|nightslayer"] = { 2, 4, -44, 148 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 152 },
			["Yodead|nightslayer"] = { 9, 5, 57, 152 },
			["Myo|nightslayer"] = { 6, 4, 14, 101 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 101 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 285 },
			["Tycat|nightslayer"] = { 8, 0, 0, 299 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 146 },
			["Rjp|nightslayer"] = { 2, 4, -44, 148 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 237 },
			["Mopz|nightslayer"] = { 1, 3, -20, 235 },
			["Wopz|nightslayer"] = { 0, 1, 0, 249 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 152 },
			["Yodead|nightslayer"] = { 9, 5, 57, 152 },
			["Myo|nightslayer"] = { 6, 4, 14, 101 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 101 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 285 },
			["Tycat|nightslayer"] = { 8, 0, 0, 299 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 146 },
			["Rjp|nightslayer"] = { 2, 4, -44, 148 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 237 },
			["Mopz|nightslayer"] = { 1, 3, -20, 235 },
			["Jamzki|nightslayer"] = { 1, 1, -19, 511 },
			["Wopz|nightslayer"] = { 0, 1, 0, 249 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 1360 },
			["Ryanin|dreamscythe"] = { 12, 6, -21, 1369 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 1360 },
			["Morepower|nightslayer"] = { 9, 5, 60, 152 },
			["Yodead|nightslayer"] = { 9, 5, 57, 152 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 1360 },
			["Myo|nightslayer"] = { 6, 4, 14, 101 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 101 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 285 },
			["Tycat|nightslayer"] = { 8, 0, 0, 299 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 146 },
			["Rjp|nightslayer"] = { 2, 4, -44, 148 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 237 },
			["Mopz|nightslayer"] = { 1, 3, -20, 235 },
			["Probear|nightslayer"] = { 1, 3, -3, 1390 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 1360 },
			["Jamzki|nightslayer"] = { 1, 1, -19, 511 },
			["Wopz|nightslayer"] = { 0, 1, 0, 249 },
		},
		[3] = {
			["Druidtommy|nightslayer"] = { 5, 0, 7, 1392 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 1388 },
			["Probear|nightslayer"] = { 5, 0, 5, 1390 },
			["Showhan|nightslayer"] = { 5, 0, 0, 1386 },
		},
	},
}

