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
	built = 1794808714,
	builtText = "2026-11-16 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 10, 6, -30, 11 },
			["Gwedysseus|nightslayer"] = { 9, 5, -27, 11 },
			["Ryanin|dreamscythe"] = { 1, 1, -1, 28 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 16, 8, -48, 11 },
			["Gwedysseus|nightslayer"] = { 15, 7, -43, 11 },
			["Bazook|nightslayer"] = { 9, 1, 76, 106 },
			["Truccz|nightslayer"] = { 9, 1, 76, 105 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 63 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 63 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 28 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 157 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 156 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 88 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 88 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 95 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 16, 8, -48, 11 },
			["Gwedysseus|nightslayer"] = { 15, 7, -43, 11 },
			["Bazook|nightslayer"] = { 9, 1, 76, 106 },
			["Truccz|nightslayer"] = { 9, 1, 76, 105 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 336 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 193 },
			["Béon|nightslayer"] = { 4, 2, 4, 193 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 63 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 63 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 28 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 157 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 156 },
			["Levimis|nightslayer"] = { 1, 2, -26, 341 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 88 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 88 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 238 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 95 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 16, 8, -48, 11 },
			["Gwedysseus|nightslayer"] = { 15, 7, -43, 11 },
			["Lekiz|dreamscythe"] = { 11, 1, 30, 409 },
			["Bazook|nightslayer"] = { 9, 1, 76, 106 },
			["Truccz|nightslayer"] = { 9, 1, 76, 105 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 336 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 193 },
			["Béon|nightslayer"] = { 4, 2, 4, 193 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 63 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 63 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 28 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 157 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 156 },
			["Levimis|nightslayer"] = { 1, 2, -26, 341 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 88 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 88 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 238 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 95 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 10, 15, -63, 1241 },
			["Gaekpoong|nightslayer"] = { 16, 8, -48, 11 },
			["Gwedysseus|nightslayer"] = { 15, 7, -43, 11 },
			["Ryanin|dreamscythe"] = { 8, 8, -39, 28 },
			["Sunnyslow|nightslayer"] = { 5, 11, -63, 95 },
			["Jodaldal|nightslayer"] = { 4, 10, -38, 1381 },
			["Shigekazu|nightslayer"] = { 11, 3, 41, 88 },
			["Wílleh|nightslayer"] = { 11, 3, 41, 88 },
			["Lekiz|dreamscythe"] = { 11, 1, 30, 409 },
			["Amazý|nightslayer"] = { 8, 2, 39, 1421 },
			["Bazook|nightslayer"] = { 9, 1, 76, 106 },
			["Truccz|nightslayer"] = { 9, 1, 76, 105 },
			["Undrcvr|nightslayer"] = { 8, 2, 61, 1424 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 336 },
			["Morepower|nightslayer"] = { 5, 3, -12, 1370 },
			["Yodead|nightslayer"] = { 5, 3, -5, 1365 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 193 },
			["Béon|nightslayer"] = { 4, 2, 4, 193 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 63 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 63 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 157 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 156 },
			["Levimis|nightslayer"] = { 1, 2, -26, 341 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 1241 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 238 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 1241 },
			["Xczv|dreamscythe"] = { 0, 1, -12, 1421 },
		},
	},
}

