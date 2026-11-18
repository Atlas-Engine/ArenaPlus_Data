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
	built = 1795042713,
	builtText = "2026-11-18 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Domenek|nightslayer"] = { 2, 1, 0, 352 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 352 },
			["Morepower|nightslayer"] = { 2, 0, 5, 322 },
			["Yodead|nightslayer"] = { 2, 0, 6, 323 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Domenek|nightslayer"] = { 2, 1, 0, 352 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 352 },
			["Morepower|nightslayer"] = { 2, 0, 5, 322 },
			["Yodead|nightslayer"] = { 2, 0, 6, 323 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 820 },
			["Duudah|nightslayer"] = { 9, 1, 45, 1000 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 1083 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 1076 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 1000 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 884 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 820 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 1083 },
			["Rjp|nightslayer"] = { 0, 5, -54, 1092 },
			["Domenek|nightslayer"] = { 2, 1, 0, 352 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 352 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 1263 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 1000 },
			["Merdog|nightslayer"] = { 0, 2, -5, 1090 },
			["Morepower|nightslayer"] = { 2, 0, 5, 322 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 1125 },
			["Tycat|nightslayer"] = { 2, 0, 2, 1264 },
			["Yodead|nightslayer"] = { 2, 0, 6, 323 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 1101 },
			["Frotted|nightslayer"] = { 1, 0, 0, 1292 },
			["Nikz|nightslayer"] = { 0, 1, -3, 1000 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 1000 },
		},
	},
}

