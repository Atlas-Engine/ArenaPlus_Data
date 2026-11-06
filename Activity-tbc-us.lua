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
	built = 1793926710,
	builtText = "2026-11-05 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Stabse|dreamscythe"] = { 6, 2, 78, 400 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 540 },
			["Fremi|nightslayer"] = { 3, 1, 25, 490 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 539 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 490 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 400 },
			["Sunnyslow|nightslayer"] = { 2, 0, 10, 475 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 467 },
			["Tbalc|nightslayer"] = { 1, 0, 4, 580 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Stickerzx|nightslayer"] = { 15, 16, 23, 1150 },
			["Stoggimeistr|nightslayer"] = { 13, 15, 1, 1150 },
			["Bohagons|nightslayer"] = { 16, 10, -37, 1192 },
			["Chugzila|nightslayer"] = { 16, 10, -37, 1192 },
			["Boxxing|nightslayer"] = { 11, 7, -10, 1373 },
			["Ébay|nightslayer"] = { 11, 7, -33, 1378 },
			["Woodbugss|nightslayer"] = { 7, 10, 26, 1224 },
			["Ashleybankz|nightslayer"] = { 9, 6, 28, 1311 },
			["Leafless|nightslayer"] = { 9, 6, 28, 1346 },
			["Yodead|nightslayer"] = { 6, 6, -14, 1197 },
			["Bubballos|nightslayer"] = { 8, 3, 0, 1114 },
			["Peacemanlol|nightslayer"] = { 8, 3, -25, 1085 },
			["Christofferr|dreamscythe"] = { 3, 7, -39, 1300 },
			["Dokurowow|dreamscythe"] = { 4, 6, -15, 1120 },
			["Morepower|nightslayer"] = { 6, 4, 5, 1279 },
			["Nefitatemata|dreamscythe"] = { 4, 6, -15, 1120 },
			["Tabula|dreamscythe"] = { 3, 7, -38, 1300 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 400 },
			["Leftténclear|nightslayer"] = { 7, 0, 61, 1200 },
			["Psilocybé|nightslayer"] = { 6, 1, -7, 1300 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 475 },
			["Angelniu|nightslayer"] = { 3, 3, 35, 1112 },
			["Ashlol|nightslayer"] = { 4, 2, 29, 1225 },
			["Hutudz|nightslayer"] = { 3, 3, 33, 940 },
			["Lilburrxo|nightslayer"] = { 4, 2, 17, 1376 },
			["Mewandya|nightslayer"] = { 4, 2, 41, 1372 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 580 },
			["Chromattic|nightslayer"] = { 3, 2, -13, 1285 },
			["Grannygamer|nightslayer"] = { 5, 0, 48, 1120 },
			["Spry|nightslayer"] = { 3, 2, -13, 1286 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 540 },
			["Fremi|nightslayer"] = { 3, 1, 25, 490 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 539 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 490 },
			["Twofeetjimmy|nightslayer"] = { 2, 1, 21, 1173 },
			["Healdyf|nightslayer"] = { 2, 0, 15, 1120 },
			["Healobot|nightslayer"] = { 1, 1, -1, 1300 },
			["Kytara|nightslayer"] = { 0, 2, -19, 1199 },
			["Mcjonwald|nightslayer"] = { 1, 1, -1, 1300 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 400 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 760 },
			["Ariiana|nightslayer"] = { 1, 0, 2, 1011 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 467 },
			["Swky|nightslayer"] = { 1, 0, 1, 1007 },
		},
	},
}

