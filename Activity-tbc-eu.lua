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
	built = 1794671962,
	builtText = "2026-11-14 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 6, 3, -8, 40 },
			["Sustanøn|spineshatter"] = { 6, 3, -8, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 13, 6, -118, 97 },
			["Notagainqt|spineshatter"] = { 13, 6, -56, 68 },
			["Orcabrina|spineshatter"] = { 7, 4, -22, 40 },
			["Sustanøn|spineshatter"] = { 7, 4, -22, 41 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 105 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 105 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 105 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 144 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 142 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 166 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 127 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 13, 6, -118, 97 },
			["Notagainqt|spineshatter"] = { 13, 6, -56, 68 },
			["Orcabrina|spineshatter"] = { 7, 4, -22, 40 },
			["Sustanøn|spineshatter"] = { 7, 4, -22, 41 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 105 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 105 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 105 },
			["Oldp|spineshatter"] = { 4, 4, 4, 197 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 144 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 142 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 166 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 127 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 13, 6, -118, 97 },
			["Notagainqt|spineshatter"] = { 13, 6, -56, 68 },
			["Orcabrina|spineshatter"] = { 7, 4, -22, 40 },
			["Sustanøn|spineshatter"] = { 7, 4, -22, 41 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 105 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 105 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 105 },
			["Oldp|spineshatter"] = { 4, 4, 4, 197 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 144 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 142 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 166 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 127 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 33, 21, 30, 68 },
			["Mblol|spineshatter"] = { 26, 11, -66, 97 },
			["Izabelyrg|spineshatter"] = { 16, 15, 22, 1067 },
			["Nastycarrote|spineshatter"] = { 16, 10, 131, 1138 },
			["Nutcracky|spineshatter"] = { 19, 7, 43, 1260 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 1049 },
			["Jarnotrolli|spineshatter"] = { 13, 11, 58, 1156 },
			["Oldtobye|spineshatter"] = { 13, 11, 13, 1156 },
			["Orcabrina|spineshatter"] = { 13, 11, -34, 40 },
			["Sustanøn|spineshatter"] = { 13, 11, -33, 41 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 985 },
			["Primár|spineshatter"] = { 12, 11, -1, 985 },
			["Kirlynn|spineshatter"] = { 13, 8, 21, 1145 },
			["Garad|spineshatter"] = { 7, 13, -84, 953 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 952 },
			["Budgetßolg|spineshatter"] = { 13, 5, 70, 1122 },
			["Kirkoss|spineshatter"] = { 12, 4, 124, 1177 },
			["Zapaxctpaxa|spineshatter"] = { 12, 4, 124, 1198 },
			["Überflieger|thunderstrike"] = { 7, 8, -8, 1169 },
			["Warriael|thunderstrike"] = { 7, 8, 7, 1170 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 1006 },
			["Dapqueue|spineshatter"] = { 7, 6, -9, 1235 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 825 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 925 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 1005 },
			["Funkyxd|spineshatter"] = { 7, 6, -16, 1104 },
			["Lebsterr|spineshatter"] = { 12, 1, 114, 1122 },
			["Twatcatcher|spineshatter"] = { 7, 6, -16, 1122 },
			["Nutellaskurk|spineshatter"] = { 7, 5, 2, 1181 },
			["Xolaire|spineshatter"] = { 7, 5, 0, 1180 },
			["Zanven|spineshatter"] = { 6, 6, -34, 1176 },
			["Dogwoman|spineshatter"] = { 7, 4, 17, 1185 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 1216 },
			["Systemhack|spineshatter"] = { 6, 5, -9, 1092 },
			["Worldemoboss|spineshatter"] = { 6, 5, -37, 1123 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 1067 },
			["Bobblegubben|spineshatter"] = { 6, 4, 24, 1204 },
			["Yarz|spineshatter"] = { 4, 6, -59, 1247 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 105 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 105 },
			["Livdelz|spineshatter"] = { 3, 6, -38, 1164 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 105 },
			["Oldp|spineshatter"] = { 4, 4, 4, 197 },
			["Arnesson|spineshatter"] = { 5, 2, 47, 1125 },
			["Nppn|spineshatter"] = { 5, 2, 46, 1127 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 144 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 142 },
			["Glk|spineshatter"] = { 1, 5, 2, 1005 },
			["Lumskebuksen|thunderstrike"] = { 2, 4, -16, 1126 },
			["Requiemit|spineshatter"] = { 2, 4, -35, 1185 },
			["Vaeerrys|spineshatter"] = { 3, 3, -4, 1185 },
			["Vannah|spineshatter"] = { 2, 4, -35, 1185 },
			["Vindzxd|thunderstrike"] = { 2, 4, -22, 1126 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 1384 },
			["Eaxlow|thunderstrike"] = { 3, 2, 1, 1201 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 1230 },
			["Seeyalolz|thunderstrike"] = { 3, 2, 12, 1200 },
			["Votrex|spineshatter"] = { 5, 0, 17, 1365 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 1231 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 1122 },
			["Buuni|spineshatter"] = { 1, 3, -32, 1185 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 1234 },
			["Northlane|spineshatter"] = { 1, 3, -29, 1185 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 1234 },
			["Gopvp|spineshatter"] = { 0, 3, -50, 1185 },
			["Scratm|spineshatter"] = { 0, 3, -39, 1185 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 166 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 1005 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 127 },
			["Izcall|spineshatter"] = { 0, 2, -27, 1005 },
			["Moonlightex|spineshatter"] = { 1, 1, -1, 1185 },
			["Pstmalone|spineshatter"] = { 0, 2, -21, 1185 },
			["Spiderthem|spineshatter"] = { 0, 2, -27, 1185 },
			["Thedarkway|spineshatter"] = { 0, 2, -34, 1185 },
			["Tinycow|spineshatter"] = { 0, 2, -21, 1185 },
			["Xiaohong|spineshatter"] = { 1, 1, 2, 1185 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 1231 },
			["Cinthya|spineshatter"] = { 1, 0, 2, 1185 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 1211 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 997 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 2, 2, 4, 1185 },
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 1225 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 1223 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 1224 },
			["Kaelolo|spineshatter"] = { 2, 0, 13, 1084 },
			["Mblol|spineshatter"] = { 2, 0, 8, 1005 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 1005 },
		},
	},
}

