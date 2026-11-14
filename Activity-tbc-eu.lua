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
	built = 1794675565,
	builtText = "2026-11-14 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Kerpeten|spineshatter"] = { 0, 2, -41, 45 },
			["Querng|spineshatter"] = { 0, 2, -43, 52 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 13, 6, -118, 157 },
			["Notagainqt|spineshatter"] = { 13, 6, -56, 128 },
			["Orcabrina|spineshatter"] = { 7, 4, -22, 101 },
			["Sustanøn|spineshatter"] = { 7, 4, -22, 101 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 165 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 165 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 165 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 45 },
			["Querng|spineshatter"] = { 0, 2, -43, 52 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 13, 6, -118, 157 },
			["Notagainqt|spineshatter"] = { 13, 6, -56, 128 },
			["Orcabrina|spineshatter"] = { 7, 4, -22, 101 },
			["Sustanøn|spineshatter"] = { 7, 4, -22, 101 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 165 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 165 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 165 },
			["Oldp|spineshatter"] = { 4, 4, 4, 257 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 204 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 202 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 226 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 188 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 45 },
			["Querng|spineshatter"] = { 0, 2, -43, 52 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 13, 6, -118, 157 },
			["Notagainqt|spineshatter"] = { 13, 6, -56, 128 },
			["Orcabrina|spineshatter"] = { 7, 4, -22, 101 },
			["Sustanøn|spineshatter"] = { 7, 4, -22, 101 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 165 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 165 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 165 },
			["Oldp|spineshatter"] = { 4, 4, 4, 257 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 204 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 202 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 226 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 188 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 45 },
			["Querng|spineshatter"] = { 0, 2, -43, 52 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 33, 21, 30, 128 },
			["Mblol|spineshatter"] = { 26, 11, -66, 157 },
			["Izabelyrg|spineshatter"] = { 16, 15, 22, 1127 },
			["Nastycarrote|spineshatter"] = { 16, 10, 131, 1198 },
			["Nutcracky|spineshatter"] = { 19, 7, 43, 1320 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 1109 },
			["Jarnotrolli|spineshatter"] = { 13, 11, 58, 1216 },
			["Oldtobye|spineshatter"] = { 13, 11, 13, 1216 },
			["Orcabrina|spineshatter"] = { 13, 11, -34, 101 },
			["Sustanøn|spineshatter"] = { 13, 11, -33, 101 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 1045 },
			["Primár|spineshatter"] = { 12, 11, -1, 1045 },
			["Kirlynn|spineshatter"] = { 13, 8, 21, 1205 },
			["Garad|spineshatter"] = { 7, 13, -84, 1013 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 1012 },
			["Budgetßolg|spineshatter"] = { 13, 5, 70, 1182 },
			["Kirkoss|spineshatter"] = { 12, 4, 124, 1237 },
			["Zapaxctpaxa|spineshatter"] = { 12, 4, 124, 1258 },
			["Überflieger|thunderstrike"] = { 7, 8, -8, 1229 },
			["Warriael|thunderstrike"] = { 7, 8, 7, 1230 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 1066 },
			["Dapqueue|spineshatter"] = { 7, 6, -9, 1295 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 885 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 985 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 1065 },
			["Funkyxd|spineshatter"] = { 7, 6, -16, 1164 },
			["Lebsterr|spineshatter"] = { 12, 1, 114, 1182 },
			["Twatcatcher|spineshatter"] = { 7, 6, -16, 1182 },
			["Nutellaskurk|spineshatter"] = { 7, 5, 2, 1241 },
			["Xolaire|spineshatter"] = { 7, 5, 0, 1240 },
			["Zanven|spineshatter"] = { 6, 6, -34, 1236 },
			["Dogwoman|spineshatter"] = { 7, 4, 17, 1245 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 1276 },
			["Systemhack|spineshatter"] = { 6, 5, -9, 1153 },
			["Worldemoboss|spineshatter"] = { 6, 5, -37, 1183 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 1127 },
			["Bobblegubben|spineshatter"] = { 6, 4, 24, 1264 },
			["Yarz|spineshatter"] = { 4, 6, -59, 1307 },
			["Ellilol|thunderstrike"] = { 5, 4, -21, 165 },
			["Grimroll|thunderstrike"] = { 7, 2, 17, 165 },
			["Livdelz|spineshatter"] = { 3, 6, -38, 1224 },
			["Shadøwsfall|thunderstrike"] = { 5, 4, -21, 165 },
			["Oldp|spineshatter"] = { 4, 4, 4, 257 },
			["Arnesson|spineshatter"] = { 5, 2, 47, 1185 },
			["Nppn|spineshatter"] = { 5, 2, 46, 1187 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 204 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 202 },
			["Glk|spineshatter"] = { 1, 5, 2, 1065 },
			["Lumskebuksen|thunderstrike"] = { 2, 4, -16, 1186 },
			["Requiemit|spineshatter"] = { 2, 4, -35, 1245 },
			["Vaeerrys|spineshatter"] = { 3, 3, -4, 1245 },
			["Vannah|spineshatter"] = { 2, 4, -35, 1245 },
			["Vindzxd|thunderstrike"] = { 2, 4, -22, 1186 },
			["Eaxlow|thunderstrike"] = { 3, 2, 1, 1261 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 1290 },
			["Seeyalolz|thunderstrike"] = { 3, 2, 12, 1260 },
			["Votrex|spineshatter"] = { 5, 0, 17, 1425 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 1291 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 1182 },
			["Buuni|spineshatter"] = { 1, 3, -32, 1245 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 1294 },
			["Northlane|spineshatter"] = { 1, 3, -29, 1245 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 1294 },
			["Gopvp|spineshatter"] = { 0, 3, -50, 1245 },
			["Scratm|spineshatter"] = { 0, 3, -39, 1245 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 226 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 1065 },
			["Hakosukazx|spineshatter"] = { 1, 1, -7, 188 },
			["Izcall|spineshatter"] = { 0, 2, -27, 1065 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 45 },
			["Moonlightex|spineshatter"] = { 1, 1, -1, 1245 },
			["Pstmalone|spineshatter"] = { 0, 2, -21, 1245 },
			["Querng|spineshatter"] = { 0, 2, -43, 52 },
			["Spiderthem|spineshatter"] = { 0, 2, -27, 1245 },
			["Thedarkway|spineshatter"] = { 0, 2, -34, 1245 },
			["Tinycow|spineshatter"] = { 0, 2, -21, 1245 },
			["Xiaohong|spineshatter"] = { 1, 1, 2, 1245 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 1291 },
			["Cinthya|spineshatter"] = { 1, 0, 2, 1245 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 1271 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 1057 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 2, 2, 4, 1245 },
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 1285 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 1283 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 1284 },
			["Kaelolo|spineshatter"] = { 2, 0, 13, 1144 },
			["Mblol|spineshatter"] = { 2, 0, 8, 1065 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 1065 },
		},
	},
}

