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
	built = 1793923118,
	builtText = "2026-11-05 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Stabse|dreamscythe"] = { 6, 2, 78, 341 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Stabse|dreamscythe"] = { 6, 2, 78, 341 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 415 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 521 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 480 },
			["Fremi|nightslayer"] = { 3, 1, 25, 430 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 479 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 430 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 341 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 701 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 407 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Woodbugss|nightslayer"] = { 14, 18, 75, 1164 },
			["Stickerzx|nightslayer"] = { 15, 16, 23, 1090 },
			["Boxxing|nightslayer"] = { 17, 12, -3, 1314 },
			["Ébay|nightslayer"] = { 17, 11, -36, 1318 },
			["Stoggimeistr|nightslayer"] = { 13, 15, 1, 1090 },
			["Bohagons|nightslayer"] = { 16, 10, -37, 1132 },
			["Chugzila|nightslayer"] = { 16, 10, -37, 1132 },
			["Ragequitqtt|nightslayer"] = { 12, 12, -24, 1421 },
			["ßraxtør|nightslayer"] = { 12, 12, -24, 1421 },
			["Pvperxz|nightslayer"] = { 9, 14, -19, 1407 },
			["Ashlol|nightslayer"] = { 11, 10, 34, 1165 },
			["Driftz|nightslayer"] = { 7, 11, -1, 1408 },
			["Ashleybankz|nightslayer"] = { 9, 6, 28, 1251 },
			["Leafless|nightslayer"] = { 9, 6, 28, 1286 },
			["Yodead|nightslayer"] = { 6, 6, -14, 1137 },
			["Bubballos|nightslayer"] = { 8, 3, 0, 1054 },
			["Peacemanlol|nightslayer"] = { 8, 3, -25, 1025 },
			["Christofferr|dreamscythe"] = { 3, 7, -39, 1241 },
			["Dokurowow|dreamscythe"] = { 4, 6, -15, 1061 },
			["Morepower|nightslayer"] = { 6, 4, 5, 1219 },
			["Nefitatemata|dreamscythe"] = { 4, 6, -15, 1061 },
			["Tabula|dreamscythe"] = { 3, 7, -38, 1241 },
			["Redalertt|nightslayer"] = { 6, 2, 55, 1398 },
			["Reddhots|nightslayer"] = { 6, 2, 54, 1398 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 341 },
			["Leftténclear|nightslayer"] = { 7, 0, 61, 1140 },
			["Lls|nightslayer"] = { 3, 4, -40, 1421 },
			["Psilocybé|nightslayer"] = { 6, 1, -7, 1241 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 415 },
			["Angelniu|nightslayer"] = { 3, 3, 35, 1052 },
			["Gódféáríng|nightslayer"] = { 5, 1, -7, 1421 },
			["Hutudz|nightslayer"] = { 3, 3, 33, 881 },
			["Lilburrxo|nightslayer"] = { 4, 2, 17, 1316 },
			["Llamallamaa|dreamscythe"] = { 3, 3, -7, 1421 },
			["Mewandya|nightslayer"] = { 4, 2, 41, 1312 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 521 },
			["Chromattic|nightslayer"] = { 3, 2, -13, 1225 },
			["Grannygamer|nightslayer"] = { 5, 0, 48, 1061 },
			["Spry|nightslayer"] = { 3, 2, -13, 1226 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 480 },
			["Bcupz|nightslayer"] = { 2, 2, 24, 1421 },
			["Fremi|nightslayer"] = { 3, 1, 25, 430 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 479 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 430 },
			["Djbuttercupx|nightslayer"] = { 2, 1, 26, 1421 },
			["Minixboy|nightslayer"] = { 1, 2, -5, 1433 },
			["Twofeetjimmy|nightslayer"] = { 2, 1, 21, 1114 },
			["Freezetard|nightslayer"] = { 0, 2, -21, 1421 },
			["Healdyf|nightslayer"] = { 2, 0, 15, 1061 },
			["Healobot|nightslayer"] = { 1, 1, -1, 1241 },
			["Hillarybankz|nightslayer"] = { 1, 1, 3, 1383 },
			["Inyokid|nightslayer"] = { 1, 1, 4, 1392 },
			["Kytara|nightslayer"] = { 0, 2, -19, 1139 },
			["Mcjonwald|nightslayer"] = { 1, 1, -1, 1241 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 341 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 701 },
			["Ariiana|nightslayer"] = { 1, 0, 2, 951 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 407 },
			["Swky|nightslayer"] = { 1, 0, 1, 947 },
		},
		[3] = {
			["Squiji|nightslayer"] = { 3, 1, 10, 1421 },
		},
	},
}

