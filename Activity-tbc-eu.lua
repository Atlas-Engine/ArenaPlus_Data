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
	built = 1794491963,
	builtText = "2026-11-12 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 16 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 18 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 16 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 18 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 16 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 18 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 16 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 18 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 891 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 776 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 894 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 776 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 916 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 918 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 836 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 1002 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 929 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 962 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 1056 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 968 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 972 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 1057 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 836 },
			["Entropi|spineshatter"] = { 6, 10, -71, 1119 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 1106 },
			["Everlost|spineshatter"] = { 8, 5, -15, 971 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 971 },
			["Garad|spineshatter"] = { 11, 2, 103, 859 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 844 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 851 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 859 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 1138 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 1138 },
			["Dewood|spineshatter"] = { 6, 4, 4, 885 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 861 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 885 },
			["Mitou|spineshatter"] = { 6, 3, 24, 1058 },
			["Teruska|spineshatter"] = { 6, 3, 21, 1059 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 760 },
			["Creamed|spineshatter"] = { 5, 2, -9, 760 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 1245 },
			["Fedow|spineshatter"] = { 5, 2, -28, 930 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 994 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 1175 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 885 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 1245 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 1245 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 1129 },
			["Votrex|spineshatter"] = { 1, 4, -29, 885 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 1270 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 959 },
			["Natturall|spineshatter"] = { 2, 2, -13, 1271 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 1152 },
			["Gloomybrook|spineshatter"] = { 2, 1, 13, 16 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 885 },
			["Minð|thunderstrike"] = { 3, 0, 16, 1152 },
			["Patrickwoo|spineshatter"] = { 2, 1, 13, 18 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 936 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 936 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 705 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 788 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 1222 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 1222 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 1085 },
			["Querng|spineshatter"] = { 1, 0, 3, 1085 },
		},
	},
}

