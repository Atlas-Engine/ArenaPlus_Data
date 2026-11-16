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
	built = 1794805113,
	builtText = "2026-11-15 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bazook|nightslayer"] = { 7, 1, 48, 46 },
			["Truccz|nightslayer"] = { 7, 1, 48, 45 },
			["Shigekazu|nightslayer"] = { 2, 0, 11, 28 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 35 },
			["Wílleh|nightslayer"] = { 2, 0, 11, 28 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bazook|nightslayer"] = { 9, 1, 76, 46 },
			["Truccz|nightslayer"] = { 9, 1, 76, 45 },
			["Gaekpoong|nightslayer"] = { 6, 2, -18, 101 },
			["Gwedysseus|nightslayer"] = { 6, 2, -16, 101 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 133 },
			["Béon|nightslayer"] = { 4, 2, 4, 133 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 97 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 96 },
			["Ryanin|dreamscythe"] = { 2, 1, -10, 89 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 28 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 28 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 178 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 35 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lekiz|dreamscythe"] = { 11, 1, 30, 349 },
			["Bazook|nightslayer"] = { 9, 1, 76, 46 },
			["Truccz|nightslayer"] = { 9, 1, 76, 45 },
			["Gaekpoong|nightslayer"] = { 6, 2, -18, 101 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 276 },
			["Gwedysseus|nightslayer"] = { 6, 2, -16, 101 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 133 },
			["Béon|nightslayer"] = { 4, 2, 4, 133 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 97 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 96 },
			["Levimis|nightslayer"] = { 1, 2, -26, 281 },
			["Ryanin|dreamscythe"] = { 2, 1, -10, 89 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 28 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 28 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 178 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 35 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lekiz|dreamscythe"] = { 11, 1, 30, 349 },
			["Bazook|nightslayer"] = { 9, 1, 76, 46 },
			["Truccz|nightslayer"] = { 9, 1, 76, 45 },
			["Gaekpoong|nightslayer"] = { 6, 2, -18, 101 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 276 },
			["Gwedysseus|nightslayer"] = { 6, 2, -16, 101 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 133 },
			["Béon|nightslayer"] = { 4, 2, 4, 133 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 97 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 96 },
			["Levimis|nightslayer"] = { 1, 2, -26, 281 },
			["Ryanin|dreamscythe"] = { 2, 1, -10, 89 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 28 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 28 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 178 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 35 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 10, 15, -63, 1181 },
			["Shigekazu|nightslayer"] = { 16, 4, 62, 28 },
			["Wílleh|nightslayer"] = { 16, 4, 62, 28 },
			["Ryanin|dreamscythe"] = { 11, 8, -20, 89 },
			["Sunnyslow|nightslayer"] = { 5, 11, -63, 35 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 1321 },
			["Lekiz|dreamscythe"] = { 11, 1, 30, 349 },
			["Morepower|nightslayer"] = { 6, 5, -31, 1310 },
			["Yodead|nightslayer"] = { 6, 5, -22, 1304 },
			["Amazý|nightslayer"] = { 8, 2, 39, 1361 },
			["Bazook|nightslayer"] = { 9, 1, 76, 46 },
			["Truccz|nightslayer"] = { 9, 1, 76, 45 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 1364 },
			["Gaekpoong|nightslayer"] = { 6, 2, -18, 101 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 276 },
			["Gwedysseus|nightslayer"] = { 6, 2, -16, 101 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 133 },
			["Béon|nightslayer"] = { 4, 2, 4, 133 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 97 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 96 },
			["Levimis|nightslayer"] = { 1, 2, -26, 281 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 1181 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 178 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 1181 },
			["Xczv|dreamscythe"] = { 0, 1, -12, 1361 },
		},
	},
}

