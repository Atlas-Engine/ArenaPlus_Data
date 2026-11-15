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
	built = 1794725923,
	builtText = "2026-11-15 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 10, 8, -25, 41 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 37 },
			["Jodaldal|nightslayer"] = { 4, 9, -30, 41 },
			["Amazý|nightslayer"] = { 8, 2, 39, 41 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 44 },
			["Shigekazu|nightslayer"] = { 4, 3, 5, 41 },
			["Wílleh|nightslayer"] = { 4, 3, 5, 41 },
			["Ryanin|dreamscythe"] = { 5, 1, 10, 41 },
			["Morepower|nightslayer"] = { 0, 2, -21, 41 },
			["Yodead|nightslayer"] = { 0, 2, -19, 41 },
			["Xczv|dreamscythe"] = { 0, 1, -12, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 10, 8, -25, 41 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 37 },
			["Jodaldal|nightslayer"] = { 4, 9, -30, 41 },
			["Shigekazu|nightslayer"] = { 9, 4, 26, 41 },
			["Wílleh|nightslayer"] = { 9, 4, 26, 41 },
			["Ryanin|dreamscythe"] = { 9, 2, 28, 41 },
			["Amazý|nightslayer"] = { 8, 2, 39, 41 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 44 },
			["Morepower|nightslayer"] = { 1, 4, -40, 41 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 150 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 41 },
			["Yodead|nightslayer"] = { 1, 4, -36, 41 },
			["Béon|nightslayer"] = { 3, 1, 0, 144 },
			["Negzor|nightslayer"] = { 4, 0, 23, 150 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 149 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 8, 22, 41 },
			["Ryanin|dreamscythe"] = { 16, 2, 63, 41 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 37 },
			["Jodaldal|nightslayer"] = { 4, 9, -30, 41 },
			["Shigekazu|nightslayer"] = { 9, 4, 26, 41 },
			["Wílleh|nightslayer"] = { 9, 4, 26, 41 },
			["Amazý|nightslayer"] = { 8, 2, 39, 41 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 44 },
			["Morepower|nightslayer"] = { 1, 4, -40, 41 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 150 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 41 },
			["Yodead|nightslayer"] = { 1, 4, -36, 41 },
			["Béon|nightslayer"] = { 3, 1, 0, 144 },
			["Negzor|nightslayer"] = { 4, 0, 23, 150 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 149 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 8, 22, 41 },
			["Ryanin|dreamscythe"] = { 16, 2, 63, 41 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 37 },
			["Jodaldal|nightslayer"] = { 4, 9, -30, 41 },
			["Shigekazu|nightslayer"] = { 9, 4, 26, 41 },
			["Wílleh|nightslayer"] = { 9, 4, 26, 41 },
			["Amazý|nightslayer"] = { 8, 2, 39, 41 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 548 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 401 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 401 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 44 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 401 },
			["Morepower|nightslayer"] = { 1, 4, -40, 41 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 150 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 41 },
			["Yodead|nightslayer"] = { 1, 4, -36, 41 },
			["Béon|nightslayer"] = { 3, 1, 0, 144 },
			["Negzor|nightslayer"] = { 4, 0, 23, 150 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 149 },
			["Creationw|nightslayer"] = { 1, 0, 5, 426 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 426 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 24, 11, 73, 41 },
			["Ryanin|dreamscythe"] = { 16, 2, 63, 41 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 37 },
			["Jodaldal|nightslayer"] = { 4, 9, -30, 41 },
			["Shigekazu|nightslayer"] = { 9, 4, 26, 41 },
			["Wílleh|nightslayer"] = { 9, 4, 26, 41 },
			["Xczv|dreamscythe"] = { 7, 6, 11, 41 },
			["Amazý|nightslayer"] = { 8, 2, 39, 41 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 548 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 401 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 401 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 44 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 401 },
			["Morepower|nightslayer"] = { 1, 4, -40, 41 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 150 },
			["Yodead|nightslayer"] = { 1, 4, -36, 41 },
			["Béon|nightslayer"] = { 3, 1, 0, 144 },
			["Cogitatos|nightslayer"] = { 2, 2, -36, 1406 },
			["Negzor|nightslayer"] = { 4, 0, 23, 150 },
			["Reverencèx|nightslayer"] = { 2, 2, -28, 1406 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 149 },
			["Adooken|nightslayer"] = { 0, 1, -9, 1301 },
			["Creationw|nightslayer"] = { 1, 0, 5, 426 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 426 },
		},
	},
}

