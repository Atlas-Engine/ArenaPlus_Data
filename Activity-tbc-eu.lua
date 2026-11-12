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
	built = 1794488364,
	builtText = "2026-11-12 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Daisyqt|spineshatter"] = { 12, 10, -6, 716 },
			["Izabelyrg|spineshatter"] = { 12, 10, -19, 716 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 700 },
			["Creamed|spineshatter"] = { 5, 2, -9, 700 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 831 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 716 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 834 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 716 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 856 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 858 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 776 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 942 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 869 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 902 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 996 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 908 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 912 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 997 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 776 },
			["Entropi|spineshatter"] = { 6, 10, -71, 1059 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 1046 },
			["Everlost|spineshatter"] = { 8, 5, -15, 911 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 911 },
			["Garad|spineshatter"] = { 11, 2, 103, 799 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 784 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 791 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 799 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 1078 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 1078 },
			["Dewood|spineshatter"] = { 6, 4, 4, 825 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 801 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 825 },
			["Mitou|spineshatter"] = { 6, 3, 24, 998 },
			["Teruska|spineshatter"] = { 6, 3, 21, 999 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 700 },
			["Creamed|spineshatter"] = { 5, 2, -9, 700 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 1185 },
			["Fedow|spineshatter"] = { 5, 2, -28, 870 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 934 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 1115 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 825 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 1185 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 1185 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 1069 },
			["Votrex|spineshatter"] = { 1, 4, -29, 825 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 1211 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 899 },
			["Natturall|spineshatter"] = { 2, 2, -13, 1211 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 1092 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 825 },
			["Minð|thunderstrike"] = { 3, 0, 16, 1092 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 877 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 877 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 645 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 728 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 1162 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 1162 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 1025 },
			["Querng|spineshatter"] = { 1, 0, 3, 1025 },
		},
	},
}

