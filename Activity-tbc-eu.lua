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
	built = 1794502765,
	builtText = "2026-11-12 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Iog|spineshatter"] = { 1, 1, -7, 180 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 197 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 198 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 180 },
			["Iog|spineshatter"] = { 1, 1, -7, 180 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 197 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 198 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 180 },
			["Iog|spineshatter"] = { 1, 1, -7, 180 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 1071 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 956 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 1074 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 956 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 1096 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 1098 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 1016 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 1182 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 1109 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 1142 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 1236 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 1148 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 1152 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 1237 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 1016 },
			["Entropi|spineshatter"] = { 6, 10, -71, 1299 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 1286 },
			["Everlost|spineshatter"] = { 8, 5, -15, 1151 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 1151 },
			["Garad|spineshatter"] = { 11, 2, 103, 1039 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 1024 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 1031 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 1039 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 1318 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 1318 },
			["Dewood|spineshatter"] = { 6, 4, 4, 1065 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 1041 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 1065 },
			["Mitou|spineshatter"] = { 6, 3, 24, 1238 },
			["Teruska|spineshatter"] = { 6, 3, 21, 1239 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 940 },
			["Creamed|spineshatter"] = { 5, 2, -9, 940 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 1425 },
			["Fedow|spineshatter"] = { 5, 2, -28, 1110 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 1174 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 1355 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 1065 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 1425 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 1425 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 1309 },
			["Votrex|spineshatter"] = { 1, 4, -29, 1065 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 1139 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 1332 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 197 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 1065 },
			["Minð|thunderstrike"] = { 3, 0, 16, 1332 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 198 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 180 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 1117 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 1117 },
			["Iog|spineshatter"] = { 1, 1, -7, 180 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 885 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 968 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 1402 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 1402 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 1265 },
			["Querng|spineshatter"] = { 1, 0, 3, 1265 },
		},
	},
}

