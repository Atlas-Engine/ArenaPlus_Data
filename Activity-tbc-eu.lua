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
	built = 1795291157,
	builtText = "2026-11-21 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 0, 1, -13, 49 },
			["Сократ|anniversary"] = { 0, 1, -13, 50 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 0, 1, -13, 49 },
			["Сократ|anniversary"] = { 0, 1, -13, 50 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 345 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 345 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 49 },
			["Сократ|anniversary"] = { 0, 1, -13, 50 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 345 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 345 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 49 },
			["Сократ|anniversary"] = { 0, 1, -13, 50 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 31, 26, -28, 1103 },
			["Shadøwsfall|thunderstrike"] = { 31, 26, -28, 1102 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 1147 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 1143 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 1178 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 1178 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 1150 },
			["Bomel|spineshatter"] = { 9, 7, 3, 1269 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 1151 },
			["Fedow|spineshatter"] = { 9, 6, -99, 1207 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 1245 },
			["Patricia|spineshatter"] = { 9, 2, 57, 1424 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 1200 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 1279 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 1262 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 1280 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 1343 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 1343 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 1319 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 1245 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 1065 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 1245 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 1205 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 1400 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 1425 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 1395 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 1280 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 345 },
			["Udrii|spineshatter"] = { 0, 3, -25, 1353 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 345 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 1206 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 1299 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 1299 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 1065 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 1065 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 1065 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 1065 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 49 },
			["Сократ|anniversary"] = { 0, 1, -13, 50 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 1269 },
		},
	},
}

