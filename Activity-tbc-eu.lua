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
	built = 1795276757,
	builtText = "2026-11-21 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 105 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 105 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 105 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 105 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 863 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 862 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 907 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 903 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 910 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 938 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 938 },
			["Bomel|spineshatter"] = { 9, 7, 3, 1029 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 911 },
			["Fedow|spineshatter"] = { 9, 6, -99, 967 },
			["Mblol|spineshatter"] = { 9, 5, 55, 1317 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 1185 },
			["Backup|spineshatter"] = { 5, 7, -78, 1329 },
			["Bând|spineshatter"] = { 5, 7, -78, 1322 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 1005 },
			["Patricia|spineshatter"] = { 9, 2, 57, 1184 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 1365 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 1365 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 960 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 1039 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 1022 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 1040 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 1103 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 1103 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 1079 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 1005 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 825 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 1005 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 965 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 1160 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 1155 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 1040 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 1233 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 1231 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 105 },
			["Udrii|spineshatter"] = { 0, 3, -25, 1113 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 105 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 966 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 1059 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 1059 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 825 },
			["Karoups|spineshatter"] = { 0, 2, -30, 1295 },
			["Maxky|spineshatter"] = { 0, 2, -28, 1295 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 825 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 1318 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 825 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 825 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 1029 },
		},
	},
}

