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
	built = 1795024716,
	builtText = "2026-11-18 12:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Domenek|nightslayer"] = { 2, 1, 0, 52 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 52 },
			["Morepower|nightslayer"] = { 2, 0, 5, 22 },
			["Yodead|nightslayer"] = { 2, 0, 6, 23 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Domenek|nightslayer"] = { 2, 1, 0, 52 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 52 },
			["Morepower|nightslayer"] = { 2, 0, 5, 22 },
			["Yodead|nightslayer"] = { 2, 0, 6, 23 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Domenek|nightslayer"] = { 2, 1, 0, 52 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 52 },
			["Morepower|nightslayer"] = { 2, 0, 5, 22 },
			["Yodead|nightslayer"] = { 2, 0, 6, 23 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 520 },
			["Duudah|nightslayer"] = { 9, 1, 45, 700 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 700 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 584 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 520 },
			["Domenek|nightslayer"] = { 2, 1, 0, 52 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 52 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 700 },
			["Morepower|nightslayer"] = { 2, 0, 5, 22 },
			["Yodead|nightslayer"] = { 2, 0, 6, 23 },
			["Nikz|nightslayer"] = { 0, 1, -3, 700 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 700 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 520 },
			["Duudah|nightslayer"] = { 9, 1, 45, 700 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 783 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 776 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 700 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 584 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 520 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 783 },
			["Rjp|nightslayer"] = { 0, 5, -54, 792 },
			["Domenek|nightslayer"] = { 2, 1, 0, 52 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 52 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 963 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 700 },
			["Merdog|nightslayer"] = { 0, 2, -5, 790 },
			["Morepower|nightslayer"] = { 2, 0, 5, 22 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 825 },
			["Tycat|nightslayer"] = { 2, 0, 2, 964 },
			["Yodead|nightslayer"] = { 2, 0, 6, 23 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 801 },
			["Frotted|nightslayer"] = { 1, 0, 0, 992 },
			["Nikz|nightslayer"] = { 0, 1, -3, 700 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 700 },
		},
	},
}

