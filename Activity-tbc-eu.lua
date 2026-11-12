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
	built = 1794495576,
	builtText = "2026-11-12 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Iog|spineshatter"] = { 1, 1, -7, 60 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 77 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 78 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 60 },
			["Iog|spineshatter"] = { 1, 1, -7, 60 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 77 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 78 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 60 },
			["Iog|spineshatter"] = { 1, 1, -7, 60 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 77 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 78 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 60 },
			["Iog|spineshatter"] = { 1, 1, -7, 60 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 951 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 836 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 954 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 837 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 976 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 978 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 896 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 1062 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 989 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 1023 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 1116 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 1029 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 1032 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 1117 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 896 },
			["Entropi|spineshatter"] = { 6, 10, -71, 1180 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 1166 },
			["Everlost|spineshatter"] = { 8, 5, -15, 1031 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 1031 },
			["Garad|spineshatter"] = { 11, 2, 103, 920 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 904 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 911 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 920 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 1198 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 1198 },
			["Dewood|spineshatter"] = { 6, 4, 4, 946 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 922 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 946 },
			["Mitou|spineshatter"] = { 6, 3, 24, 1118 },
			["Teruska|spineshatter"] = { 6, 3, 21, 1119 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 820 },
			["Creamed|spineshatter"] = { 5, 2, -9, 820 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 1306 },
			["Fedow|spineshatter"] = { 5, 2, -28, 990 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 1055 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 1236 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 946 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 1306 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 1306 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 1189 },
			["Votrex|spineshatter"] = { 1, 4, -29, 946 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 1331 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 1019 },
			["Natturall|spineshatter"] = { 2, 2, -13, 1331 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 1212 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 77 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 946 },
			["Minð|thunderstrike"] = { 3, 0, 16, 1212 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 78 },
			["Cnidr|spineshatter"] = { 1, 1, -10, 60 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 997 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 997 },
			["Iog|spineshatter"] = { 1, 1, -7, 60 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 766 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 848 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 1282 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 1282 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 1145 },
			["Querng|spineshatter"] = { 1, 0, 3, 1145 },
		},
	},
}

