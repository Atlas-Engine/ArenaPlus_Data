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
	built = 1795280358,
	builtText = "2026-11-21 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 165 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 165 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 165 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 165 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 923 },
			["Shadøwsfall|thunderstrike"] = { 37, 33, -88, 922 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 967 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 963 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 970 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 998 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 998 },
			["Bomel|spineshatter"] = { 9, 7, 3, 1089 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 971 },
			["Fedow|spineshatter"] = { 9, 6, -99, 1027 },
			["Mblol|spineshatter"] = { 9, 5, 55, 1377 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 1245 },
			["Backup|spineshatter"] = { 5, 7, -78, 1389 },
			["Bând|spineshatter"] = { 5, 7, -78, 1382 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 1065 },
			["Patricia|spineshatter"] = { 9, 2, 57, 1244 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 1425 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 1425 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 1020 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 1099 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 1082 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 1100 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 1163 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 1163 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 1139 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 1065 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 885 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 1065 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 1025 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 1220 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 1215 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 1100 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 1293 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 1291 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 165 },
			["Udrii|spineshatter"] = { 0, 3, -25, 1173 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 165 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 1026 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 1119 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 1119 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 885 },
			["Karoups|spineshatter"] = { 0, 2, -30, 1355 },
			["Maxky|spineshatter"] = { 0, 2, -28, 1355 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 885 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 1378 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 885 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 885 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 1089 },
		},
	},
}

