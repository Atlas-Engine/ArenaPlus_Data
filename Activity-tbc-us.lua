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
	built = 1794761916,
	builtText = "2026-11-15 11:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 10, 15, -63, 461 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 621 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 621 },
			["Ryanin|dreamscythe"] = { 9, 7, -10, 569 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 601 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 637 },
			["Morepower|nightslayer"] = { 6, 5, -31, 590 },
			["Yodead|nightslayer"] = { 6, 5, -22, 585 },
			["Amazý|nightslayer"] = { 8, 2, 39, 641 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 644 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 461 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 461 },
			["Xczv|dreamscythe"] = { 0, 1, -12, 641 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 15, -16, 461 },
			["Ryanin|dreamscythe"] = { 16, 7, 25, 569 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 621 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 621 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 601 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 637 },
			["Morepower|nightslayer"] = { 6, 5, -31, 590 },
			["Yodead|nightslayer"] = { 6, 5, -22, 585 },
			["Amazý|nightslayer"] = { 8, 2, 39, 641 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 1148 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 1001 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 1001 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 644 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 1001 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 750 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 641 },
			["Béon|nightslayer"] = { 3, 1, 0, 744 },
			["Negzor|nightslayer"] = { 4, 0, 23, 749 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 749 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 461 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 461 },
			["Creationw|nightslayer"] = { 1, 0, 5, 1026 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 1026 },
		},
	},
}

