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
	built = 1794733112,
	builtText = "2026-11-15 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 10, 8, -25, 161 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 121 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 157 },
			["Ryanin|dreamscythe"] = { 5, 6, -28, 89 },
			["Shigekazu|nightslayer"] = { 8, 3, 23, 141 },
			["Wílleh|nightslayer"] = { 8, 3, 23, 141 },
			["Amazý|nightslayer"] = { 8, 2, 39, 161 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 164 },
			["Morepower|nightslayer"] = { 5, 3, -12, 110 },
			["Yodead|nightslayer"] = { 5, 3, -5, 104 },
			["Xczv|dreamscythe"] = { 0, 1, -12, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 8, 22, 161 },
			["Ryanin|dreamscythe"] = { 16, 7, 25, 89 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 141 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 141 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 121 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 157 },
			["Morepower|nightslayer"] = { 6, 5, -31, 110 },
			["Yodead|nightslayer"] = { 6, 5, -22, 104 },
			["Amazý|nightslayer"] = { 8, 2, 39, 161 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 164 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 270 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 161 },
			["Béon|nightslayer"] = { 3, 1, 0, 264 },
			["Negzor|nightslayer"] = { 4, 0, 23, 269 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 269 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 8, 22, 161 },
			["Ryanin|dreamscythe"] = { 16, 7, 25, 89 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 141 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 141 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 121 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 157 },
			["Morepower|nightslayer"] = { 6, 5, -31, 110 },
			["Yodead|nightslayer"] = { 6, 5, -22, 104 },
			["Amazý|nightslayer"] = { 8, 2, 39, 161 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 668 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 521 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 521 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 164 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 521 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 270 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 161 },
			["Béon|nightslayer"] = { 3, 1, 0, 264 },
			["Negzor|nightslayer"] = { 4, 0, 23, 269 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 269 },
			["Creationw|nightslayer"] = { 1, 0, 5, 546 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 546 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 24, 11, 73, 161 },
			["Ryanin|dreamscythe"] = { 16, 7, 25, 89 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 141 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 141 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 121 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 157 },
			["Morepower|nightslayer"] = { 6, 5, -31, 110 },
			["Yodead|nightslayer"] = { 6, 5, -22, 104 },
			["Amazý|nightslayer"] = { 8, 2, 39, 161 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 668 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 521 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 521 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 164 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 521 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 270 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 161 },
			["Béon|nightslayer"] = { 3, 1, 0, 264 },
			["Negzor|nightslayer"] = { 4, 0, 23, 269 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 269 },
			["Adooken|nightslayer"] = { 0, 1, -9, 1421 },
			["Creationw|nightslayer"] = { 1, 0, 5, 546 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 546 },
		},
	},
}

