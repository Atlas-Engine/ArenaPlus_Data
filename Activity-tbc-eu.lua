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
	built = 1795287564,
	builtText = "2026-11-21 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 285 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 285 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 285 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 285 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 31, 26, -28, 1043 },
			["Shadøwsfall|thunderstrike"] = { 31, 26, -28, 1042 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 1087 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 1083 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 1118 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 1118 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 1090 },
			["Bomel|spineshatter"] = { 9, 7, 3, 1209 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 1091 },
			["Fedow|spineshatter"] = { 9, 6, -99, 1147 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 1185 },
			["Patricia|spineshatter"] = { 9, 2, 57, 1364 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 1141 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 1219 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 1202 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 1220 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 1283 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 1283 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 1259 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 1185 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 1005 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 1185 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 1145 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 1340 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 1365 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 1335 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 1220 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 1413 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 1411 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 285 },
			["Udrii|spineshatter"] = { 0, 3, -25, 1293 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 285 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 1146 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 1239 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 1239 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 1005 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 1005 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 1005 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 1005 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 1209 },
		},
	},
}

