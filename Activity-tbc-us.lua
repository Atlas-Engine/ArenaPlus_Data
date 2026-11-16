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
	built = 1794801513,
	builtText = "2026-11-15 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 6, 2, -18, 41 },
			["Gwedysseus|nightslayer"] = { 6, 2, -16, 41 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 37 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 36 },
			["Ryanin|dreamscythe"] = { 2, 1, -10, 29 },
			["Bazook|nightslayer"] = { 2, 0, 28, 41 },
			["Truccz|nightslayer"] = { 2, 0, 28, 41 },
			["Shigekazu|nightslayer"] = { 1, 0, 7, 41 },
			["Wílleh|nightslayer"] = { 1, 0, 7, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 6, 2, -18, 41 },
			["Gwedysseus|nightslayer"] = { 6, 2, -16, 41 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 73 },
			["Béon|nightslayer"] = { 4, 2, 4, 73 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 37 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 36 },
			["Ryanin|dreamscythe"] = { 2, 1, -10, 29 },
			["Bazook|nightslayer"] = { 2, 0, 28, 41 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 118 },
			["Truccz|nightslayer"] = { 2, 0, 28, 41 },
			["Shigekazu|nightslayer"] = { 1, 0, 7, 41 },
			["Wílleh|nightslayer"] = { 1, 0, 7, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lekiz|dreamscythe"] = { 11, 1, 30, 289 },
			["Gaekpoong|nightslayer"] = { 6, 2, -18, 41 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 216 },
			["Gwedysseus|nightslayer"] = { 6, 2, -16, 41 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 73 },
			["Béon|nightslayer"] = { 4, 2, 4, 73 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 37 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 36 },
			["Levimis|nightslayer"] = { 1, 2, -26, 221 },
			["Ryanin|dreamscythe"] = { 2, 1, -10, 29 },
			["Bazook|nightslayer"] = { 2, 0, 28, 41 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 118 },
			["Truccz|nightslayer"] = { 2, 0, 28, 41 },
			["Shigekazu|nightslayer"] = { 1, 0, 7, 41 },
			["Wílleh|nightslayer"] = { 1, 0, 7, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lekiz|dreamscythe"] = { 11, 1, 30, 289 },
			["Gaekpoong|nightslayer"] = { 6, 2, -18, 41 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 216 },
			["Gwedysseus|nightslayer"] = { 6, 2, -16, 41 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 73 },
			["Béon|nightslayer"] = { 4, 2, 4, 73 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 37 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 36 },
			["Levimis|nightslayer"] = { 1, 2, -26, 221 },
			["Ryanin|dreamscythe"] = { 2, 1, -10, 29 },
			["Bazook|nightslayer"] = { 2, 0, 28, 41 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 118 },
			["Truccz|nightslayer"] = { 2, 0, 28, 41 },
			["Shigekazu|nightslayer"] = { 1, 0, 7, 41 },
			["Wílleh|nightslayer"] = { 1, 0, 7, 41 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 10, 15, -63, 1121 },
			["Ryanin|dreamscythe"] = { 11, 8, -20, 29 },
			["Shigekazu|nightslayer"] = { 14, 4, 51, 41 },
			["Wílleh|nightslayer"] = { 14, 4, 51, 41 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 1261 },
			["Sunnyslow|nightslayer"] = { 4, 10, -59, 1297 },
			["Lekiz|dreamscythe"] = { 11, 1, 30, 289 },
			["Morepower|nightslayer"] = { 6, 5, -31, 1250 },
			["Yodead|nightslayer"] = { 6, 5, -22, 1244 },
			["Amazý|nightslayer"] = { 8, 2, 39, 1301 },
			["Béon|nightslayer"] = { 7, 3, 4, 73 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 1304 },
			["Gaekpoong|nightslayer"] = { 6, 2, -18, 41 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 216 },
			["Gwedysseus|nightslayer"] = { 6, 2, -16, 41 },
			["Neytïrï|dreamscythe"] = { 4, 3, -12, 118 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 73 },
			["Xczv|dreamscythe"] = { 2, 3, -19, 1301 },
			["Negzor|nightslayer"] = { 4, 0, 23, 1409 },
			["Tøppìñgÿøú|nightslayer"] = { 4, 0, 15, 1409 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 37 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 36 },
			["Levimis|nightslayer"] = { 1, 2, -26, 221 },
			["Bazook|nightslayer"] = { 2, 0, 28, 41 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 1121 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 1121 },
			["Truccz|nightslayer"] = { 2, 0, 28, 41 },
		},
	},
}

