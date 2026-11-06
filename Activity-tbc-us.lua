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
	built = 1793930315,
	builtText = "2026-11-05 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 2, -19, 15 },
			["Tycat|nightslayer"] = { 2, 2, -19, 15 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 2, -19, 15 },
			["Tycat|nightslayer"] = { 2, 2, -19, 15 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 2, -19, 15 },
			["Tycat|nightslayer"] = { 2, 2, -19, 15 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Stabse|dreamscythe"] = { 6, 2, 78, 461 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 600 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 15 },
			["Fremi|nightslayer"] = { 3, 1, 25, 550 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 599 },
			["Tycat|nightslayer"] = { 2, 2, -19, 15 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 550 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 461 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 527 },
			["Sunnyslow|nightslayer"] = { 1, 0, 7, 535 },
			["Tbalc|nightslayer"] = { 1, 0, 4, 641 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Stickerzx|nightslayer"] = { 15, 16, 23, 1210 },
			["Stoggimeistr|nightslayer"] = { 13, 15, 1, 1210 },
			["Bohagons|nightslayer"] = { 16, 10, -37, 1252 },
			["Chugzila|nightslayer"] = { 16, 10, -37, 1252 },
			["Boxxing|nightslayer"] = { 11, 7, -10, 1434 },
			["Ébay|nightslayer"] = { 11, 7, -33, 1438 },
			["Ashleybankz|nightslayer"] = { 9, 6, 28, 1371 },
			["Leafless|nightslayer"] = { 9, 6, 28, 1406 },
			["Woodbugss|nightslayer"] = { 7, 7, 41, 1284 },
			["Yodead|nightslayer"] = { 6, 6, -14, 1257 },
			["Bubballos|nightslayer"] = { 8, 3, 0, 1174 },
			["Peacemanlol|nightslayer"] = { 8, 3, -25, 1145 },
			["Christofferr|dreamscythe"] = { 3, 7, -39, 1361 },
			["Dokurowow|dreamscythe"] = { 4, 6, -15, 1181 },
			["Morepower|nightslayer"] = { 6, 4, 5, 1339 },
			["Nefitatemata|dreamscythe"] = { 4, 6, -15, 1181 },
			["Tabula|dreamscythe"] = { 3, 7, -38, 1361 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 461 },
			["Leftténclear|nightslayer"] = { 7, 0, 61, 1260 },
			["Psilocybé|nightslayer"] = { 6, 1, -7, 1361 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 535 },
			["Angelniu|nightslayer"] = { 3, 3, 35, 1172 },
			["Ashlol|nightslayer"] = { 4, 2, 29, 1285 },
			["Hutudz|nightslayer"] = { 3, 3, 33, 1001 },
			["Lilburrxo|nightslayer"] = { 4, 2, 17, 1436 },
			["Mewandya|nightslayer"] = { 4, 2, 41, 1432 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 641 },
			["Chromattic|nightslayer"] = { 3, 2, -13, 1345 },
			["Grannygamer|nightslayer"] = { 5, 0, 48, 1181 },
			["Spry|nightslayer"] = { 3, 2, -13, 1346 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 600 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 15 },
			["Fremi|nightslayer"] = { 3, 1, 25, 550 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 599 },
			["Tycat|nightslayer"] = { 2, 2, -19, 15 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 550 },
			["Twofeetjimmy|nightslayer"] = { 2, 1, 21, 1233 },
			["Healdyf|nightslayer"] = { 2, 0, 15, 1181 },
			["Healobot|nightslayer"] = { 1, 1, -1, 1361 },
			["Kytara|nightslayer"] = { 0, 2, -19, 1259 },
			["Mcjonwald|nightslayer"] = { 1, 1, -1, 1361 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 461 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 821 },
			["Ariiana|nightslayer"] = { 1, 0, 2, 1071 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 527 },
			["Swky|nightslayer"] = { 1, 0, 1, 1067 },
		},
	},
}

