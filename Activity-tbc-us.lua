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
	built = 1795053512,
	builtText = "2026-11-18 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Domenek|nightslayer"] = { 2, 1, 0, 532 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 532 },
			["Morepower|nightslayer"] = { 2, 0, 5, 502 },
			["Yodead|nightslayer"] = { 2, 0, 6, 503 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 14, 3, 34, 1000 },
			["Duudah|nightslayer"] = { 9, 1, 45, 1180 },
			["Facemaskx|nightslayer"] = { 10, 0, 96, 1263 },
			["Surveillant|nightslayer"] = { 10, 0, 96, 1256 },
			["Vanderden|nightslayer"] = { 9, 1, 42, 1180 },
			["Ryanin|dreamscythe"] = { 9, 0, 41, 1064 },
			["Lekiz|dreamscythe"] = { 0, 7, -61, 1000 },
			["Palapapa|nightslayer"] = { 0, 5, -61, 1263 },
			["Rjp|nightslayer"] = { 0, 5, -54, 1272 },
			["Domenek|nightslayer"] = { 2, 1, 0, 532 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 532 },
			["Mageperson|nightslayer"] = { 0, 2, -23, 1180 },
			["Merdog|nightslayer"] = { 0, 2, -5, 1270 },
			["Morepower|nightslayer"] = { 2, 0, 5, 502 },
			["Muffinmanx|nightslayer"] = { 0, 2, -23, 1305 },
			["Yodead|nightslayer"] = { 2, 0, 6, 503 },
			["Akaszo|nightslayer"] = { 0, 1, -8, 1281 },
			["Nikz|nightslayer"] = { 0, 1, -3, 1180 },
			["Oszaka|nightslayer"] = { 0, 1, -4, 1180 },
		},
	},
}

