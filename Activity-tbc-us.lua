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
	built = 1794794313,
	builtText = "2026-11-15 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Lekiz|dreamscythe"] = { 11, 1, 30, 169 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 96 },
			["Levimis|nightslayer"] = { 1, 2, -26, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lekiz|dreamscythe"] = { 11, 1, 30, 169 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 96 },
			["Levimis|nightslayer"] = { 1, 2, -26, 101 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lekiz|dreamscythe"] = { 11, 1, 30, 169 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 96 },
			["Levimis|nightslayer"] = { 1, 2, -26, 101 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 15, -16, 1001 },
			["Ryanin|dreamscythe"] = { 16, 7, 25, 1109 },
			["Shigekazu|nightslayer"] = { 13, 4, 44, 1161 },
			["Wílleh|nightslayer"] = { 13, 4, 44, 1161 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 1141 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 1177 },
			["Lekiz|dreamscythe"] = { 11, 1, 30, 169 },
			["Morepower|nightslayer"] = { 6, 5, -31, 1130 },
			["Yodead|nightslayer"] = { 6, 5, -22, 1124 },
			["Amazý|nightslayer"] = { 8, 2, 39, 1181 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 1184 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 96 },
			["Neytïrï|dreamscythe"] = { 2, 3, -20, 1290 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 1181 },
			["Béon|nightslayer"] = { 3, 1, 0, 1284 },
			["Negzor|nightslayer"] = { 4, 0, 23, 1289 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 1289 },
			["Levimis|nightslayer"] = { 1, 2, -26, 101 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 1001 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 1001 },
		},
	},
}

