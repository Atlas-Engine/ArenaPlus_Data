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
	built = 1794718712,
	builtText = "2026-11-14 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Negzor|nightslayer"] = { 4, 0, 23, 29 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 0, 47, 101 },
			["Ryanin|dreamscythe"] = { 7, 0, 35, 101 },
			["Negzor|nightslayer"] = { 4, 0, 23, 29 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gengiscon|nightslayer"] = { 6, 4, 2, 281 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 281 },
			["Gzlol|dreamscythe"] = { 9, 0, 47, 101 },
			["Ryanin|dreamscythe"] = { 7, 0, 35, 101 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 281 },
			["Negzor|nightslayer"] = { 4, 0, 23, 29 },
			["Creationw|nightslayer"] = { 1, 0, 5, 306 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 306 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 428 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 281 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 281 },
			["Gzlol|dreamscythe"] = { 9, 0, 47, 101 },
			["Ryanin|dreamscythe"] = { 7, 0, 35, 101 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 281 },
			["Negzor|nightslayer"] = { 4, 0, 23, 29 },
			["Creationw|nightslayer"] = { 1, 0, 5, 306 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 306 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 27, 24, 94, 101 },
			["Xczv|dreamscythe"] = { 10, 4, 40, 1262 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 428 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 281 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 281 },
			["Ryanin|dreamscythe"] = { 7, 0, 35, 101 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 281 },
			["Astias|nightslayer"] = { 3, 2, 0, 1330 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 1286 },
			["Negzor|nightslayer"] = { 4, 0, 23, 29 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 1286 },
			["Adooken|nightslayer"] = { 0, 1, -9, 1181 },
			["Creationw|nightslayer"] = { 1, 0, 5, 306 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 306 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 1347 },
		},
	},
}

