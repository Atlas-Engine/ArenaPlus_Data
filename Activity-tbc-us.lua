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
	built = 1793919514,
	builtText = "2026-11-05 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Stabse|dreamscythe"] = { 6, 2, 78, 281 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 281 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 347 },
			["Sunnyslow|nightslayer"] = { 1, 0, 7, 355 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Stabse|dreamscythe"] = { 6, 2, 78, 281 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 355 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 461 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 420 },
			["Fremi|nightslayer"] = { 3, 1, 25, 370 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 419 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 370 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 281 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 641 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 347 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Boxxing|nightslayer"] = { 24, 19, -21, 1254 },
			["Ébay|nightslayer"] = { 18, 15, -55, 1258 },
			["Woodbugss|nightslayer"] = { 14, 18, 75, 1104 },
			["Stickerzx|nightslayer"] = { 15, 16, 23, 1030 },
			["Stoggimeistr|nightslayer"] = { 13, 15, 1, 1030 },
			["Bohagons|nightslayer"] = { 16, 10, -37, 1072 },
			["Chugzila|nightslayer"] = { 16, 10, -37, 1072 },
			["Ragequitqtt|nightslayer"] = { 12, 12, -24, 1361 },
			["ßraxtør|nightslayer"] = { 12, 12, -24, 1361 },
			["Pvperxz|nightslayer"] = { 9, 14, -19, 1347 },
			["Ashlol|nightslayer"] = { 11, 10, 34, 1105 },
			["Yodead|nightslayer"] = { 9, 11, -40, 1077 },
			["Driftz|nightslayer"] = { 7, 11, -1, 1348 },
			["Morepower|nightslayer"] = { 9, 9, -18, 1159 },
			["Amazý|nightslayer"] = { 11, 5, 15, 1440 },
			["Ashleybankz|nightslayer"] = { 9, 6, 28, 1191 },
			["Leafless|nightslayer"] = { 9, 6, 28, 1226 },
			["Dinnathx|dreamscythe"] = { 8, 4, 42, 1433 },
			["Taxidermyz|dreamscythe"] = { 8, 4, 79, 1427 },
			["Bubballos|nightslayer"] = { 8, 3, 0, 994 },
			["Dadskisses|dreamscythe"] = { 3, 8, -51, 1417 },
			["Duudah|nightslayer"] = { 6, 5, -8, 1437 },
			["Peacemanlol|nightslayer"] = { 8, 3, -25, 965 },
			["Sharkittyy|dreamscythe"] = { 3, 8, -44, 1429 },
			["Christofferr|dreamscythe"] = { 3, 7, -39, 1181 },
			["Dokurowow|dreamscythe"] = { 4, 6, -15, 1001 },
			["Nefitatemata|dreamscythe"] = { 4, 6, -15, 1001 },
			["Tabula|dreamscythe"] = { 3, 7, -38, 1181 },
			["Stuckinroot|dreamscythe"] = { 4, 5, 3, 1438 },
			["Sufferìng|dreamscythe"] = { 4, 5, 3, 1437 },
			["Redalertt|nightslayer"] = { 6, 2, 55, 1338 },
			["Reddhots|nightslayer"] = { 6, 2, 54, 1338 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 281 },
			["Leftténclear|nightslayer"] = { 7, 0, 61, 1080 },
			["Lls|nightslayer"] = { 3, 4, -40, 1361 },
			["Psilocybé|nightslayer"] = { 6, 1, -7, 1181 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 355 },
			["Angelniu|nightslayer"] = { 3, 3, 35, 992 },
			["Dexed|nightslayer"] = { 3, 3, -19, 1436 },
			["Gódféáríng|nightslayer"] = { 5, 1, -7, 1361 },
			["Hutudz|nightslayer"] = { 3, 3, 33, 821 },
			["Lilburrxo|nightslayer"] = { 4, 2, 17, 1256 },
			["Llamallamaa|dreamscythe"] = { 3, 3, -7, 1361 },
			["Mewandya|nightslayer"] = { 4, 2, 41, 1252 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 461 },
			["Chromattic|nightslayer"] = { 3, 2, -13, 1165 },
			["Grannygamer|nightslayer"] = { 5, 0, 48, 1001 },
			["Spry|nightslayer"] = { 3, 2, -13, 1166 },
			["Weepers|nightslayer"] = { 3, 2, 17, 1437 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 420 },
			["Bcupz|nightslayer"] = { 2, 2, 24, 1361 },
			["Fremi|nightslayer"] = { 3, 1, 25, 370 },
			["Kytara|nightslayer"] = { 1, 3, -31, 1079 },
			["Soyfreebeef|nightslayer"] = { 2, 2, 8, 1436 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 419 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 370 },
			["Djbuttercupx|nightslayer"] = { 2, 1, 26, 1361 },
			["Minixboy|nightslayer"] = { 1, 2, -5, 1373 },
			["Twofeetjimmy|nightslayer"] = { 2, 1, 21, 1053 },
			["Erinthoss|nightslayer"] = { 2, 0, 22, 1420 },
			["Fatreason|nightslayer"] = { 1, 1, -13, 1436 },
			["Flacciddady|nightslayer"] = { 1, 1, -13, 1437 },
			["Freezetard|nightslayer"] = { 0, 2, -21, 1361 },
			["Healdyf|nightslayer"] = { 2, 0, 15, 1001 },
			["Healobot|nightslayer"] = { 1, 1, -1, 1181 },
			["Hillarybankz|nightslayer"] = { 1, 1, 3, 1323 },
			["Inyokid|nightslayer"] = { 1, 1, 4, 1332 },
			["Mcjonwald|nightslayer"] = { 1, 1, -1, 1181 },
			["Mmrcollector|nightslayer"] = { 1, 1, -12, 1431 },
			["Roguedude|nightslayer"] = { 1, 1, -14, 1438 },
			["Squidgim|nightslayer"] = { 2, 0, 22, 1420 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 281 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 641 },
			["Ariiana|nightslayer"] = { 1, 0, 2, 891 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 347 },
			["Imafuhwicha|nightslayer"] = { 0, 1, -18, 1423 },
			["Swky|nightslayer"] = { 1, 0, 1, 887 },
		},
		[2] = {
			["Theylikemike|dreamscythe"] = { 0, 1, -5, 1438 },
		},
		[3] = {
			["Chadcow|nightslayer"] = { 4, 2, 6, 1436 },
			["Squiji|nightslayer"] = { 3, 1, 10, 1361 },
			["Ziggyzigs|nightslayer"] = { 1, 0, 5, 1435 },
		},
	},
}

