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
	built = 1794668374,
	builtText = "2026-11-14 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 13, 6, -118, 38 },
			["Notagainqt|spineshatter"] = { 13, 6, -56, 8 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 46 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 46 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 46 },
			["Orcabrina|spineshatter"] = { 1, 1, -14, 46 },
			["Sustanøn|spineshatter"] = { 1, 1, -14, 46 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 13, 6, -118, 38 },
			["Notagainqt|spineshatter"] = { 13, 6, -56, 8 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 46 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 46 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 46 },
			["Oldp|spineshatter"] = { 4, 4, 4, 137 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 84 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 83 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 106 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 68 },
			["Orcabrina|spineshatter"] = { 1, 1, -14, 46 },
			["Sustanøn|spineshatter"] = { 1, 1, -14, 46 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 13, 6, -118, 38 },
			["Notagainqt|spineshatter"] = { 13, 6, -56, 8 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 46 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 46 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 46 },
			["Oldp|spineshatter"] = { 4, 4, 4, 137 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 84 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 83 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 106 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 68 },
			["Orcabrina|spineshatter"] = { 1, 1, -14, 46 },
			["Sustanøn|spineshatter"] = { 1, 1, -14, 46 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 13, 6, -118, 38 },
			["Notagainqt|spineshatter"] = { 13, 6, -56, 8 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 46 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 46 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 46 },
			["Oldp|spineshatter"] = { 4, 4, 4, 137 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 84 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 83 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 106 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 68 },
			["Orcabrina|spineshatter"] = { 1, 1, -14, 46 },
			["Sustanøn|spineshatter"] = { 1, 1, -14, 46 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 33, 21, 30, 8 },
			["Mblol|spineshatter"] = { 26, 11, -66, 38 },
			["Izabelyrg|spineshatter"] = { 16, 15, 22, 1008 },
			["Nutcracky|spineshatter"] = { 22, 7, 64, 1200 },
			["Nastycarrote|spineshatter"] = { 16, 10, 131, 1078 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 989 },
			["Jarnotrolli|spineshatter"] = { 13, 11, 58, 1096 },
			["Oldtobye|spineshatter"] = { 13, 11, 13, 1096 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 926 },
			["Primár|spineshatter"] = { 12, 11, -1, 925 },
			["Kirlynn|spineshatter"] = { 13, 8, 21, 1085 },
			["Garad|spineshatter"] = { 7, 13, -84, 893 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 892 },
			["Budgetßolg|spineshatter"] = { 13, 5, 70, 1062 },
			["Kirkoss|spineshatter"] = { 12, 4, 124, 1118 },
			["Zapaxctpaxa|spineshatter"] = { 12, 4, 124, 1138 },
			["Orcabrina|spineshatter"] = { 7, 8, -26, 46 },
			["Sustanøn|spineshatter"] = { 7, 8, -25, 46 },
			["Überflieger|thunderstrike"] = { 7, 8, -8, 1109 },
			["Warriael|thunderstrike"] = { 7, 8, 7, 1110 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 946 },
			["Dapqueue|spineshatter"] = { 7, 6, -9, 1175 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 766 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 865 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 946 },
			["Funkyxd|spineshatter"] = { 7, 6, -16, 1045 },
			["Lebsterr|spineshatter"] = { 12, 1, 114, 1062 },
			["Twatcatcher|spineshatter"] = { 7, 6, -16, 1062 },
			["Nutellaskurk|spineshatter"] = { 7, 5, 2, 1121 },
			["Xolaire|spineshatter"] = { 7, 5, 0, 1121 },
			["Zanven|spineshatter"] = { 6, 6, -34, 1116 },
			["Dogwoman|spineshatter"] = { 7, 4, 17, 1126 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 1156 },
			["Systemhack|spineshatter"] = { 6, 5, -9, 1033 },
			["Worldemoboss|spineshatter"] = { 6, 5, -37, 1063 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 1008 },
			["Bobblegubben|spineshatter"] = { 6, 4, 24, 1145 },
			["Yarz|spineshatter"] = { 4, 6, -59, 1187 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 46 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 46 },
			["Livdelz|spineshatter"] = { 3, 6, -38, 1104 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 46 },
			["Oldp|spineshatter"] = { 4, 4, 4, 137 },
			["Arnesson|spineshatter"] = { 5, 2, 47, 1065 },
			["Nppn|spineshatter"] = { 5, 2, 46, 1067 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 84 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 83 },
			["Glk|spineshatter"] = { 1, 5, 2, 946 },
			["Lumskebuksen|thunderstrike"] = { 2, 4, -16, 1066 },
			["Requiemit|spineshatter"] = { 2, 4, -35, 1126 },
			["Vaeerrys|spineshatter"] = { 3, 3, -4, 1126 },
			["Vannah|spineshatter"] = { 2, 4, -35, 1126 },
			["Vindzxd|thunderstrike"] = { 2, 4, -22, 1066 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 1324 },
			["Eaxlow|thunderstrike"] = { 3, 2, 1, 1141 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 1170 },
			["Seeyalolz|thunderstrike"] = { 3, 2, 12, 1140 },
			["Votrex|spineshatter"] = { 5, 0, 17, 1306 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 1171 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 1062 },
			["Buuni|spineshatter"] = { 1, 3, -32, 1126 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 1174 },
			["Northlane|spineshatter"] = { 1, 3, -29, 1126 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 1174 },
			["Gopvp|spineshatter"] = { 0, 3, -50, 1126 },
			["Scratm|spineshatter"] = { 0, 3, -39, 1126 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 106 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 946 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 68 },
			["Izcall|spineshatter"] = { 0, 2, -27, 946 },
			["Moonlightex|spineshatter"] = { 1, 1, -1, 1126 },
			["Pstmalone|spineshatter"] = { 0, 2, -21, 1126 },
			["Spiderthem|spineshatter"] = { 0, 2, -27, 1126 },
			["Thedarkway|spineshatter"] = { 0, 2, -34, 1126 },
			["Tinycow|spineshatter"] = { 0, 2, -21, 1126 },
			["Xiaohong|spineshatter"] = { 1, 1, 2, 1126 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 1172 },
			["Cinthya|spineshatter"] = { 1, 0, 2, 1126 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 1151 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 937 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 2, 2, 4, 1126 },
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 1165 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 1163 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 1164 },
			["Kaelolo|spineshatter"] = { 2, 0, 13, 1024 },
			["Mblol|spineshatter"] = { 2, 0, 8, 946 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 946 },
		},
	},
}

