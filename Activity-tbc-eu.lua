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
	built = 1794509965,
	builtText = "2026-11-12 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Raigecki|spineshatter"] = { 3, 3, 9, 41 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 10 },
			["Fedowjr|spineshatter"] = { 3, 0, 10, 10 },
			["Doko|spineshatter"] = { 1, 0, 9, 14 },
			["Walida|spineshatter"] = { 1, 0, 9, 14 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fedowjr|spineshatter"] = { 10, 6, -24, 10 },
			["Udrii|spineshatter"] = { 7, 6, -37, 65 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 41 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 60 },
			["Dewood|spineshatter"] = { 4, 1, -10, 127 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 126 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 10 },
			["Doko|spineshatter"] = { 1, 0, 9, 14 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 105 },
			["Magicién|spineshatter"] = { 1, 0, 9, 105 },
			["Walida|spineshatter"] = { 1, 0, 9, 14 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fedowjr|spineshatter"] = { 10, 6, -24, 10 },
			["Udrii|spineshatter"] = { 7, 6, -37, 65 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 41 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 60 },
			["Dewood|spineshatter"] = { 4, 1, -10, 127 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 126 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 10 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 317 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 318 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 300 },
			["Iog|spineshatter"] = { 1, 1, -7, 300 },
			["Doko|spineshatter"] = { 1, 0, 9, 14 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 105 },
			["Magicién|spineshatter"] = { 1, 0, 9, 105 },
			["Walida|spineshatter"] = { 1, 0, 9, 14 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Fedowjr|spineshatter"] = { 10, 6, -24, 10 },
			["Udrii|spineshatter"] = { 7, 6, -37, 65 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 41 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 60 },
			["Dewood|spineshatter"] = { 4, 1, -10, 127 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 126 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 10 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 317 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 318 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 300 },
			["Iog|spineshatter"] = { 1, 1, -7, 300 },
			["Doko|spineshatter"] = { 1, 0, 9, 14 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 105 },
			["Magicién|spineshatter"] = { 1, 0, 9, 105 },
			["Walida|spineshatter"] = { 1, 0, 9, 14 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 1191 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 1076 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 1194 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 1076 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 1216 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 1218 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 1136 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 1229 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 1262 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 1356 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 1268 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 1272 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 1357 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 1136 },
			["Entropi|spineshatter"] = { 6, 10, -71, 1419 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 10 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 1406 },
			["Dewood|spineshatter"] = { 10, 5, -6, 127 },
			["Thegreyold|spineshatter"] = { 10, 5, -4, 126 },
			["Everlost|spineshatter"] = { 8, 5, -15, 1271 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 1271 },
			["Garad|spineshatter"] = { 11, 2, 103, 1159 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 1144 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 1151 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 1159 },
			["Udrii|spineshatter"] = { 7, 6, -37, 65 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 1438 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 1438 },
			["Bimbolo|spineshatter"] = { 9, 1, 74, 1302 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 1161 },
			["Mitou|spineshatter"] = { 6, 3, 24, 1358 },
			["Teruska|spineshatter"] = { 6, 3, 21, 1359 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 1060 },
			["Creamed|spineshatter"] = { 5, 2, -9, 1060 },
			["Fedow|spineshatter"] = { 5, 2, -28, 1230 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 1294 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 41 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 60 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 1185 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 1429 },
			["Votrex|spineshatter"] = { 1, 4, -29, 1185 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 1259 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 10 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 317 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 1185 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 318 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 300 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 1237 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 1237 },
			["Iog|spineshatter"] = { 1, 1, -7, 300 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 1005 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 1088 },
			["Doko|spineshatter"] = { 1, 0, 9, 14 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 105 },
			["Magicién|spineshatter"] = { 1, 0, 9, 105 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 1385 },
			["Querng|spineshatter"] = { 1, 0, 3, 1385 },
			["Walida|spineshatter"] = { 1, 0, 9, 14 },
		},
	},
}

