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
	built = 1794513565,
	builtText = "2026-11-12 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 9, -49, 27 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 29 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 9, -49, 27 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 29 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 70 },
			["Udrii|spineshatter"] = { 7, 6, -37, 125 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 47 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 101 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 120 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 70 },
			["Doko|spineshatter"] = { 1, 0, 9, 74 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 165 },
			["Magicién|spineshatter"] = { 1, 0, 9, 165 },
			["Walida|spineshatter"] = { 1, 0, 9, 74 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 9, -49, 27 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 29 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 70 },
			["Udrii|spineshatter"] = { 7, 6, -37, 125 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 47 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 101 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 120 },
			["Dewood|spineshatter"] = { 4, 1, -10, 187 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 186 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 70 },
			["Iog|spineshatter"] = { 1, 1, -7, 360 },
			["Doko|spineshatter"] = { 1, 0, 9, 74 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 165 },
			["Magicién|spineshatter"] = { 1, 0, 9, 165 },
			["Walida|spineshatter"] = { 1, 0, 9, 74 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 9, -49, 27 },
			["Shadøwsfall|thunderstrike"] = { 9, 9, -49, 29 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 70 },
			["Udrii|spineshatter"] = { 7, 6, -37, 125 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 47 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 101 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 120 },
			["Dewood|spineshatter"] = { 4, 1, -10, 187 },
			["Thegreyold|spineshatter"] = { 4, 1, -10, 186 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 70 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 377 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 378 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 360 },
			["Iog|spineshatter"] = { 1, 1, -7, 360 },
			["Doko|spineshatter"] = { 1, 0, 9, 74 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 165 },
			["Magicién|spineshatter"] = { 1, 0, 9, 165 },
			["Walida|spineshatter"] = { 1, 0, 9, 74 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 31, 30, -90, 27 },
			["Shadøwsfall|thunderstrike"] = { 31, 30, -90, 29 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 1136 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 1136 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 1276 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 1278 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 1196 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 1289 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 1322 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 1416 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 1328 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 1332 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 1417 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 1196 },
			["Fedowjr|spineshatter"] = { 10, 6, -24, 70 },
			["Dewood|spineshatter"] = { 10, 5, -6, 187 },
			["Thegreyold|spineshatter"] = { 10, 5, -4, 186 },
			["Everlost|spineshatter"] = { 8, 5, -15, 1331 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 1331 },
			["Garad|spineshatter"] = { 11, 2, 103, 1219 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 1204 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 1211 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 1219 },
			["Udrii|spineshatter"] = { 7, 6, -37, 125 },
			["Druidcoachx|spineshatter"] = { 8, 3, 18, 47 },
			["Bimbolo|spineshatter"] = { 9, 1, 74, 1362 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 1221 },
			["Mitou|spineshatter"] = { 6, 3, 24, 1418 },
			["Teruska|spineshatter"] = { 6, 3, 21, 1419 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 1120 },
			["Creamed|spineshatter"] = { 5, 2, -9, 1120 },
			["Fedow|spineshatter"] = { 5, 2, -28, 1290 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 1354 },
			["Raigecki|spineshatter"] = { 3, 3, 9, 101 },
			["Shrekkyy|spineshatter"] = { 3, 3, 10, 120 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 1245 },
			["Votrex|spineshatter"] = { 1, 4, -29, 1245 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 1319 },
			["Dogwoman|spineshatter"] = { 3, 0, 5, 70 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 377 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 1245 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 378 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 360 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 1297 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 1297 },
			["Iog|spineshatter"] = { 1, 1, -7, 360 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 1065 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 1148 },
			["Doko|spineshatter"] = { 1, 0, 9, 74 },
			["Hordemustdie|spineshatter"] = { 1, 0, 7, 165 },
			["Magicién|spineshatter"] = { 1, 0, 9, 165 },
			["Walida|spineshatter"] = { 1, 0, 9, 74 },
		},
	},
}

