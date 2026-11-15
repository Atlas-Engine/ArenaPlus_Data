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
	built = 1794776314,
	builtText = "2026-11-15 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 0, 7, -38, 701 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 701 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 701 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 15, -16, 701 },
			["Ryanin|dreamscythe"] = { 16, 7, 25, 809 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 861 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 861 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 841 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 877 },
			["Morepower|nightslayer"] = { 6, 5, -31, 830 },
			["Yodead|nightslayer"] = { 6, 5, -22, 825 },
			["Amazý|nightslayer"] = { 8, 2, 39, 881 },
			["Cptnbubbles|dreamscythe"] = { 10, 0, 33, 1388 },
			["Gengiscon|nightslayer"] = { 6, 4, 2, 1241 },
			["Pallypwr|dreamscythe"] = { 10, 0, 49, 1241 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 884 },
			["Getpopped|dreamscythe"] = { 6, 0, 45, 1241 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 990 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 881 },
			["Béon|nightslayer"] = { 3, 1, 0, 984 },
			["Negzor|nightslayer"] = { 4, 0, 23, 989 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 989 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 701 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 701 },
			["Creationw|nightslayer"] = { 1, 0, 5, 1266 },
			["Indoorcow|nightslayer"] = { 1, 0, 1, 1266 },
		},
	},
}

