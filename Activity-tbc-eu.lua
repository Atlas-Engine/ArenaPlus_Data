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
	built = 1794499181,
	builtText = "2026-11-12 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 137 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 138 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 120 },
			["Iog|spineshatter"] = { 1, 1, -7, 120 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 137 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 138 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 120 },
			["Iog|spineshatter"] = { 1, 1, -7, 120 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 137 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 138 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 120 },
			["Iog|spineshatter"] = { 1, 1, -7, 120 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 1011 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 896 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 1014 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 897 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 1036 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 1039 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 957 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 1122 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 1049 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 1083 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 1176 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 1089 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 1092 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 1177 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 956 },
			["Entropi|spineshatter"] = { 6, 10, -71, 1240 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 1226 },
			["Everlost|spineshatter"] = { 8, 5, -15, 1091 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 1091 },
			["Garad|spineshatter"] = { 11, 2, 103, 980 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 964 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 971 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 980 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 1258 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 1258 },
			["Dewood|spineshatter"] = { 6, 4, 4, 1006 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 982 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 1006 },
			["Mitou|spineshatter"] = { 6, 3, 24, 1178 },
			["Teruska|spineshatter"] = { 6, 3, 21, 1179 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 880 },
			["Creamed|spineshatter"] = { 5, 2, -9, 880 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 1366 },
			["Fedow|spineshatter"] = { 5, 2, -28, 1050 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 1115 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 1296 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 1006 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 1366 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 1366 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 1249 },
			["Votrex|spineshatter"] = { 1, 4, -29, 1006 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 1391 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 1079 },
			["Natturall|spineshatter"] = { 2, 2, -13, 1391 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 1272 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 137 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 1006 },
			["Minð|thunderstrike"] = { 3, 0, 16, 1272 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 138 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 120 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 1057 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 1057 },
			["Iog|spineshatter"] = { 1, 1, -7, 120 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 826 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 908 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 1342 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 1342 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 1205 },
			["Querng|spineshatter"] = { 1, 0, 3, 1205 },
		},
	},
}

