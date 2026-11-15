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
	built = 1794722313,
	builtText = "2026-11-15 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 5, 1, 21, 48 },
			["Wílleh|nightslayer"] = { 5, 1, 21, 48 },
			["Ryanin|dreamscythe"] = { 4, 1, 18, 32 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 11, 1, 53, 32 },
			["Gzlol|dreamscythe"] = { 9, 0, 47, 161 },
			["Shigekazu|nightslayer"] = { 5, 1, 21, 48 },
			["Wílleh|nightslayer"] = { 5, 1, 21, 48 },
			["Béon|nightslayer"] = { 3, 1, 0, 84 },
			["Negzor|nightslayer"] = { 4, 0, 23, 89 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 89 },
			["Xczv|dreamscythe"] = { 2, 2, -7, 93 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 11, 1, 53, 32 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 341 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 341 },
			["Gzlol|dreamscythe"] = { 9, 0, 47, 161 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 341 },
			["Shigekazu|nightslayer"] = { 5, 1, 21, 48 },
			["Wílleh|nightslayer"] = { 5, 1, 21, 48 },
			["Béon|nightslayer"] = { 3, 1, 0, 84 },
			["Negzor|nightslayer"] = { 4, 0, 23, 89 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 89 },
			["Xczv|dreamscythe"] = { 2, 2, -7, 93 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 11, 1, 53, 32 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 488 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 341 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 341 },
			["Gzlol|dreamscythe"] = { 9, 0, 47, 161 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 341 },
			["Shigekazu|nightslayer"] = { 5, 1, 21, 48 },
			["Wílleh|nightslayer"] = { 5, 1, 21, 48 },
			["Béon|nightslayer"] = { 3, 1, 0, 84 },
			["Negzor|nightslayer"] = { 4, 0, 23, 89 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 89 },
			["Xczv|dreamscythe"] = { 2, 2, -7, 93 },
			["Creationw|nightslayer"] = { 1, 0, 5, 366 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 366 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 27, 24, 94, 161 },
			["Xczv|dreamscythe"] = { 12, 6, 33, 93 },
			["Ryanin|dreamscythe"] = { 11, 1, 53, 32 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 488 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 341 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 341 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 341 },
			["Shigekazu|nightslayer"] = { 5, 1, 21, 48 },
			["Wílleh|nightslayer"] = { 5, 1, 21, 48 },
			["Astias|nightslayer"] = { 3, 2, 0, 1390 },
			["Béon|nightslayer"] = { 3, 1, 0, 84 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 1346 },
			["Negzor|nightslayer"] = { 4, 0, 23, 89 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 1346 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 89 },
			["Adooken|nightslayer"] = { 0, 1, -9, 1241 },
			["Creationw|nightslayer"] = { 1, 0, 5, 366 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 366 },
			["Pocketcpa|nightslayer"] = { 0, 1, -9, 1407 },
		},
	},
}

