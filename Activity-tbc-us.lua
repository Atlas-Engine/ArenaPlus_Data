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
	built = 1795035514,
	builtText = "2026-11-18 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Domenek|nightslayer"] = { 2, 1, 0, 232 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 232 },
			["Morepower|nightslayer"] = { 2, 0, 5, 202 },
			["Yodead|nightslayer"] = { 2, 0, 6, 203 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 0, 56, 700 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 700 },
			["Domenek|nightslayer"] = { 2, 1, 0, 232 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 232 },
			["Morepower|nightslayer"] = { 2, 0, 5, 202 },
			["Yodead|nightslayer"] = { 2, 0, 6, 203 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 700 },
			["Duudah|nightslayer"] = { 9, 1, 45, 880 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 963 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 956 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 880 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 764 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 700 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 963 },
			["Rjp|nightslayer"] = { 0, 5, -54, 972 },
			["Domenek|nightslayer"] = { 2, 1, 0, 232 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 232 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 1143 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 880 },
			["Merdog|nightslayer"] = { 0, 2, -5, 970 },
			["Morepower|nightslayer"] = { 2, 0, 5, 202 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 1005 },
			["Tycat|nightslayer"] = { 2, 0, 2, 1144 },
			["Yodead|nightslayer"] = { 2, 0, 6, 203 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 981 },
			["Frotted|nightslayer"] = { 1, 0, 0, 1172 },
			["Nikz|nightslayer"] = { 0, 1, -3, 880 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 880 },
		},
	},
}

