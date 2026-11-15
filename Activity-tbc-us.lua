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
	built = 1794758313,
	builtText = "2026-11-15 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 10, 15, -63, 401 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 561 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 561 },
			["Ryanin|dreamscythe"] = { 9, 7, -10, 509 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 541 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 577 },
			["Morepower|nightslayer"] = { 6, 5, -31, 530 },
			["Yodead|nightslayer"] = { 6, 5, -22, 524 },
			["Amazý|nightslayer"] = { 8, 2, 39, 581 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 584 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 690 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 581 },
			["Béon|nightslayer"] = { 3, 1, 0, 684 },
			["Negzor|nightslayer"] = { 4, 0, 23, 689 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 689 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 401 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 401 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 15, -16, 401 },
			["Ryanin|dreamscythe"] = { 16, 7, 25, 509 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 561 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 561 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 541 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 577 },
			["Morepower|nightslayer"] = { 6, 5, -31, 530 },
			["Yodead|nightslayer"] = { 6, 5, -22, 524 },
			["Amazý|nightslayer"] = { 8, 2, 39, 581 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 1088 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 941 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 941 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 584 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 941 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 690 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 581 },
			["Béon|nightslayer"] = { 3, 1, 0, 684 },
			["Negzor|nightslayer"] = { 4, 0, 23, 689 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 689 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 401 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 401 },
			["Creationw|nightslayer"] = { 1, 0, 5, 966 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 966 },
		},
	},
}

