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
	built = 1795298359,
	builtText = "2026-11-21 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 2, 7, -78, 32 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 6, 7, -59, 32 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 105 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 105 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 169 },
			["Сократ|anniversary"] = { 0, 1, -13, 170 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 6, 7, -59, 32 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 105 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 105 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 169 },
			["Сократ|anniversary"] = { 0, 1, -13, 170 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 6, 7, -59, 32 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 105 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 105 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 465 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 465 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 169 },
			["Сократ|anniversary"] = { 0, 1, -13, 170 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 1223 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 1222 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 1267 },
			["Bimbolo|spineshatter"] = { 16, 13, -2, 32 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 1263 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 1298 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 1298 },
			["Grimroll|thunderstrike"] = { 10, 6, 17, 105 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 1271 },
			["Fedow|spineshatter"] = { 9, 6, -99, 1327 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 1365 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 1321 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 1399 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 1382 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 1400 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 1439 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 1365 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 1185 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 1365 },
			["Bomel|spineshatter"] = { 3, 1, 24, 1389 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 105 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 1325 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 1400 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 465 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 465 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 1326 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 1419 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 1419 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 1185 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 1185 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 1185 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 1185 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 169 },
			["Сократ|anniversary"] = { 0, 1, -13, 170 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 1389 },
		},
	},
}

