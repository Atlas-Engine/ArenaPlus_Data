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
	built = 1794729513,
	builtText = "2026-11-15 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 5, 1, 9, 50 },
			["Yodead|nightslayer"] = { 5, 1, 14, 44 },
			["Ryanin|dreamscythe"] = { 0, 5, -38, 29 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 10, 8, -25, 101 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 81 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 81 },
			["Ryanin|dreamscythe"] = { 9, 7, -10, 29 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 61 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 97 },
			["Morepower|nightslayer"] = { 6, 5, -31, 50 },
			["Yodead|nightslayer"] = { 6, 5, -22, 44 },
			["Amazý|nightslayer"] = { 8, 2, 39, 101 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 104 },
			["Xczv|dreamscythe"] = { 0, 1, -12, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 8, 22, 101 },
			["Ryanin|dreamscythe"] = { 16, 7, 25, 29 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 81 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 81 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 61 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 97 },
			["Morepower|nightslayer"] = { 6, 5, -31, 50 },
			["Yodead|nightslayer"] = { 6, 5, -22, 44 },
			["Amazý|nightslayer"] = { 8, 2, 39, 101 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 104 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 210 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 101 },
			["Béon|nightslayer"] = { 3, 1, 0, 204 },
			["Negzor|nightslayer"] = { 4, 0, 23, 209 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 209 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 8, 22, 101 },
			["Ryanin|dreamscythe"] = { 16, 7, 25, 29 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 81 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 81 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 61 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 97 },
			["Morepower|nightslayer"] = { 6, 5, -31, 50 },
			["Yodead|nightslayer"] = { 6, 5, -22, 44 },
			["Amazý|nightslayer"] = { 8, 2, 39, 101 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 608 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 461 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 461 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 104 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 461 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 210 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 101 },
			["Béon|nightslayer"] = { 3, 1, 0, 204 },
			["Negzor|nightslayer"] = { 4, 0, 23, 209 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 209 },
			["Creationw|nightslayer"] = { 1, 0, 5, 486 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 486 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 24, 11, 73, 101 },
			["Ryanin|dreamscythe"] = { 16, 7, 25, 29 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 81 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 81 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 61 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 97 },
			["Morepower|nightslayer"] = { 6, 5, -31, 50 },
			["Yodead|nightslayer"] = { 6, 5, -22, 44 },
			["Amazý|nightslayer"] = { 8, 2, 39, 101 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 608 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 461 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 461 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 104 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 461 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 210 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 101 },
			["Béon|nightslayer"] = { 3, 1, 0, 204 },
			["Negzor|nightslayer"] = { 4, 0, 23, 209 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 209 },
			["Adooken|nightslayer"] = { 0, 1, -9, 1361 },
			["Creationw|nightslayer"] = { 1, 0, 5, 486 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 486 },
		},
	},
}

