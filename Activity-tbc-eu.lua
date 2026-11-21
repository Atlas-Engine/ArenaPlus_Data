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
	built = 1795294762,
	builtText = "2026-11-21 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 4, 0, 19, 45 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 45 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 4, 0, 19, 45 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 45 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 45 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 109 },
			["Сократ|anniversary"] = { 0, 1, -13, 110 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 4, 0, 19, 45 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 45 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 45 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 109 },
			["Сократ|anniversary"] = { 0, 1, -13, 110 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Grimroll|thunderstrike"] = { 6, 0, 44, 45 },
			["Bimbolo|spineshatter"] = { 4, 0, 19, 45 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 45 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 405 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 405 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 109 },
			["Сократ|anniversary"] = { 0, 1, -13, 110 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 1163 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 1162 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 1207 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 1203 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 1238 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 1238 },
			["Bimbolo|spineshatter"] = { 14, 6, 76, 45 },
			["Bomel|spineshatter"] = { 9, 7, 3, 1329 },
			["Grimroll|thunderstrike"] = { 10, 6, 17, 45 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 1211 },
			["Fedow|spineshatter"] = { 9, 6, -99, 1267 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 1305 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 1261 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 1339 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 1322 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 1340 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 1403 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 1403 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 1379 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 1305 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 1125 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 1305 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 45 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 1265 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 1340 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 405 },
			["Udrii|spineshatter"] = { 0, 3, -25, 1413 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 405 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 1266 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 1359 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 1359 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 1125 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 1125 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 1125 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 1125 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 109 },
			["Сократ|anniversary"] = { 0, 1, -13, 110 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 1329 },
		},
	},
}

