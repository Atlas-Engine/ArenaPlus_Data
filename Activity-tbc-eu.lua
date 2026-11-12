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

ns.ACTIVITY_BY_REGION["tbc-eu"] = {
	built = 1794506364,
	builtText = "2026-11-12 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Fedowjr|spineshatter"] = { 7, 6, -34, 5 },
			["Udrii|spineshatter"] = { 7, 6, -37, 5 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 45 },
			["Magicién|spineshatter"] = { 1, 0, 9, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fedowjr|spineshatter"] = { 7, 6, -34, 5 },
			["Udrii|spineshatter"] = { 7, 6, -37, 5 },
			["Dewood|spineshatter"] = { 4, 1, -10, 67 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 66 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 45 },
			["Magicién|spineshatter"] = { 1, 0, 9, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fedowjr|spineshatter"] = { 7, 6, -34, 5 },
			["Udrii|spineshatter"] = { 7, 6, -37, 5 },
			["Dewood|spineshatter"] = { 4, 1, -10, 67 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 66 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 257 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 258 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 240 },
			["Iog|spineshatter"] = { 1, 1, -7, 240 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 45 },
			["Magicién|spineshatter"] = { 1, 0, 9, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Fedowjr|spineshatter"] = { 7, 6, -34, 5 },
			["Udrii|spineshatter"] = { 7, 6, -37, 5 },
			["Dewood|spineshatter"] = { 4, 1, -10, 67 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 66 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 257 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 258 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 240 },
			["Iog|spineshatter"] = { 1, 1, -7, 240 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 45 },
			["Magicién|spineshatter"] = { 1, 0, 9, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 1131 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 1016 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 1134 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 1016 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 1156 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 1158 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 1076 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 1242 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 1169 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 1202 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 1296 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 1208 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 1212 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 1297 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 1076 },
			["Entropi|spineshatter"] = { 6, 10, -71, 1359 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 1346 },
			["Dewood|spineshatter"] = { 10, 5, -6, 67 },
			["Thegreyold|spineshatter"] = { 10, 5, -4, 66 },
			["Everlost|spineshatter"] = { 8, 5, -15, 1211 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 1211 },
			["Fedowjr|spineshatter"] = { 7, 6, -34, 5 },
			["Garad|spineshatter"] = { 11, 2, 103, 1099 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 1084 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 1091 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 1099 },
			["Udrii|spineshatter"] = { 7, 6, -37, 5 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 1378 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 1378 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 1101 },
			["Mitou|spineshatter"] = { 6, 3, 24, 1298 },
			["Teruska|spineshatter"] = { 6, 3, 21, 1299 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 1000 },
			["Creamed|spineshatter"] = { 5, 2, -9, 1000 },
			["Fedow|spineshatter"] = { 5, 2, -28, 1170 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 1234 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 1415 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 1125 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 1369 },
			["Votrex|spineshatter"] = { 1, 4, -29, 1125 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 1199 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 1392 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 257 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 1125 },
			["Minð|thunderstrike"] = { 3, 0, 16, 1392 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 258 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 240 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 1177 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 1177 },
			["Iog|spineshatter"] = { 1, 1, -7, 240 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 945 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 1028 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 45 },
			["Magicién|spineshatter"] = { 1, 0, 9, 45 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 1325 },
			["Querng|spineshatter"] = { 1, 0, 3, 1325 },
		},
	},
}

