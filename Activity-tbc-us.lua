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
	built = 1793933912,
	builtText = "2026-11-05 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 6 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 2, -19, 75 },
			["Tycat|nightslayer"] = { 2, 2, -19, 75 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 6 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 2, -19, 75 },
			["Tycat|nightslayer"] = { 2, 2, -19, 75 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 6 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Stabse|dreamscythe"] = { 6, 2, 78, 521 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 660 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 75 },
			["Fremi|nightslayer"] = { 3, 1, 25, 610 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 659 },
			["Tycat|nightslayer"] = { 2, 2, -19, 75 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 610 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 6 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 521 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 587 },
			["Sunnyslow|nightslayer"] = { 1, 0, 7, 595 },
			["Tbalc|nightslayer"] = { 1, 0, 4, 701 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Stickerzx|nightslayer"] = { 15, 16, 23, 1270 },
			["Stoggimeistr|nightslayer"] = { 13, 15, 1, 1270 },
			["Bohagons|nightslayer"] = { 16, 10, -37, 1312 },
			["Chugzila|nightslayer"] = { 16, 10, -37, 1312 },
			["Ashleybankz|nightslayer"] = { 9, 6, 28, 1431 },
			["Woodbugss|nightslayer"] = { 7, 7, 41, 1344 },
			["Yodead|nightslayer"] = { 6, 6, -14, 1317 },
			["Bubballos|nightslayer"] = { 8, 3, 0, 1234 },
			["Peacemanlol|nightslayer"] = { 8, 3, -25, 1205 },
			["Christofferr|dreamscythe"] = { 3, 7, -39, 1421 },
			["Dokurowow|dreamscythe"] = { 4, 6, -15, 1241 },
			["Morepower|nightslayer"] = { 6, 4, 5, 1399 },
			["Nefitatemata|dreamscythe"] = { 4, 6, -15, 1241 },
			["Tabula|dreamscythe"] = { 3, 7, -38, 1421 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 521 },
			["Leftténclear|nightslayer"] = { 7, 0, 61, 1320 },
			["Psilocybé|nightslayer"] = { 6, 1, -7, 1421 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 595 },
			["Angelniu|nightslayer"] = { 3, 3, 35, 1232 },
			["Ashlol|nightslayer"] = { 4, 2, 29, 1345 },
			["Hutudz|nightslayer"] = { 3, 3, 33, 1061 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 701 },
			["Chromattic|nightslayer"] = { 3, 2, -13, 1405 },
			["Grannygamer|nightslayer"] = { 5, 0, 48, 1241 },
			["Spry|nightslayer"] = { 3, 2, -13, 1406 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 660 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 75 },
			["Fremi|nightslayer"] = { 3, 1, 25, 610 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 659 },
			["Tycat|nightslayer"] = { 2, 2, -19, 75 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 610 },
			["Twofeetjimmy|nightslayer"] = { 2, 1, 21, 1293 },
			["Healdyf|nightslayer"] = { 2, 0, 15, 1241 },
			["Healobot|nightslayer"] = { 1, 1, -1, 1421 },
			["Kytara|nightslayer"] = { 0, 2, -19, 1319 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 6 },
			["Mcjonwald|nightslayer"] = { 1, 1, -1, 1421 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 521 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 881 },
			["Ariiana|nightslayer"] = { 1, 0, 2, 1131 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 587 },
			["Swky|nightslayer"] = { 1, 0, 1, 1127 },
		},
	},
}

