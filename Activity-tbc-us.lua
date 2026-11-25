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
	built = 1795589912,
	builtText = "2026-11-25 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Myo|nightslayer"] = { 6, 4, 14, 41 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 92 },
			["Yodead|nightslayer"] = { 9, 5, 57, 92 },
			["Myo|nightslayer"] = { 6, 4, 14, 41 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 41 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 87 },
			["Rjp|nightslayer"] = { 2, 4, -44, 88 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 177 },
			["Mopz|nightslayer"] = { 1, 1, -5, 175 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 92 },
			["Yodead|nightslayer"] = { 9, 5, 57, 92 },
			["Myo|nightslayer"] = { 6, 4, 14, 41 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 41 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 225 },
			["Tycat|nightslayer"] = { 8, 0, 0, 239 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 87 },
			["Rjp|nightslayer"] = { 2, 4, -44, 88 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 177 },
			["Mopz|nightslayer"] = { 1, 3, -20, 175 },
			["Wopz|nightslayer"] = { 0, 1, 0, 189 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 92 },
			["Yodead|nightslayer"] = { 9, 5, 57, 92 },
			["Myo|nightslayer"] = { 6, 4, 14, 41 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 41 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 225 },
			["Tycat|nightslayer"] = { 8, 0, 0, 239 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 87 },
			["Rjp|nightslayer"] = { 2, 4, -44, 88 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 177 },
			["Mopz|nightslayer"] = { 1, 3, -20, 175 },
			["Jamzki|nightslayer"] = { 1, 1, -19, 451 },
			["Wopz|nightslayer"] = { 0, 1, 0, 189 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 1300 },
			["Ryanin|dreamscythe"] = { 12, 6, -21, 1309 },
			["Gzlol|dreamscythe"] = { 9, 6, 37, 1300 },
			["Morepower|nightslayer"] = { 9, 5, 60, 92 },
			["Yodead|nightslayer"] = { 9, 5, 57, 92 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 1400 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 1300 },
			["Jackular|nightslayer"] = { 3, 7, -42, 1427 },
			["Myo|nightslayer"] = { 6, 4, 14, 41 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 41 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 225 },
			["Tycat|nightslayer"] = { 8, 0, 0, 239 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 87 },
			["Rjp|nightslayer"] = { 2, 4, -44, 88 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 177 },
			["Mopz|nightslayer"] = { 1, 3, -20, 175 },
			["Probear|nightslayer"] = { 1, 3, -3, 1330 },
			["Notwzbx|dreamscythe"] = { 1, 2, -23, 1300 },
			["Jamzki|nightslayer"] = { 1, 1, -19, 451 },
			["Wopz|nightslayer"] = { 0, 1, 0, 189 },
		},
		[3] = {
			["Druidtommy|nightslayer"] = { 5, 0, 7, 1332 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 1328 },
			["Probear|nightslayer"] = { 5, 0, 5, 1330 },
			["Showhan|nightslayer"] = { 5, 0, 0, 1326 },
		},
	},
}

