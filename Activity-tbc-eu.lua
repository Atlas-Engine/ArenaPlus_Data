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
	built = 1795283965,
	builtText = "2026-11-21 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 225 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 225 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 225 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 225 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 31, 26, -28, 983 },
			["Shadøwsfall|thunderstrike"] = { 31, 26, -28, 982 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 1027 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 1023 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 1058 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 1058 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 1030 },
			["Bomel|spineshatter"] = { 9, 7, 3, 1149 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 1031 },
			["Fedow|spineshatter"] = { 9, 6, -99, 1087 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 1125 },
			["Patricia|spineshatter"] = { 9, 2, 57, 1304 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 1081 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 1159 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 1142 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 1160 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 1223 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 1223 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 1199 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 1125 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 945 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 1125 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 1086 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 1280 },
			["Mblol|spineshatter"] = { 2, 2, -1, 1437 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 1305 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 1275 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 1160 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 1353 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 1351 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 225 },
			["Udrii|spineshatter"] = { 0, 3, -25, 1233 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 225 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 1086 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 1179 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 1179 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 945 },
			["Karoups|spineshatter"] = { 0, 2, -30, 1415 },
			["Maxky|spineshatter"] = { 0, 2, -28, 1415 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 945 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 1438 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 945 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 945 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 1149 },
		},
	},
}

