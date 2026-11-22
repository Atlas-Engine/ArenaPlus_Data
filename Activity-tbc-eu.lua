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
	built = 1795305573,
	builtText = "2026-11-21 06:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 30 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 46 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 46 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 46 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 30 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 30 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 46 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 46 },
			["Bimbolo|spineshatter"] = { 4, 10, -89, 79 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 64 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 64 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 46 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 138 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 136 },
			["Klinden|spineshatter"] = { 6, 1, 30, 136 },
			["Zanven|spineshatter"] = { 2, 3, -39, 84 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 30 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 30 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 79 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 46 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 46 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 64 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 64 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 46 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 138 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 136 },
			["Klinden|spineshatter"] = { 6, 1, 30, 136 },
			["Zanven|spineshatter"] = { 2, 3, -39, 84 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 226 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 226 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 30 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 290 },
			["Сократ|anniversary"] = { 0, 1, -13, 290 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 30 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 79 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 46 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 46 },
			["Überflieger|thunderstrike"] = { 7, 6, -7, 46 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 138 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 64 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 64 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 136 },
			["Klinden|spineshatter"] = { 6, 1, 30, 136 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 226 },
			["Zanven|spineshatter"] = { 2, 3, -39, 84 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 226 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 30 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 290 },
			["Сократ|anniversary"] = { 0, 1, -13, 290 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 1343 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 1342 },
			["Bimbolo|spineshatter"] = { 18, 16, -13, 79 },
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 30 },
			["Crúyff|spineshatter"] = { 9, 7, 25, 1383 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 46 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 46 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 1391 },
			["Mfkaxx|spineshatter"] = { 9, 7, -16, 1387 },
			["Überflieger|thunderstrike"] = { 7, 6, -7, 46 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 138 },
			["Orcabrina|spineshatter"] = { 6, 6, -9, 1418 },
			["Sustanøn|spineshatter"] = { 6, 6, -13, 1418 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 64 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 64 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 136 },
			["Klinden|spineshatter"] = { 6, 1, 30, 136 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 226 },
			["Thelsâ|spineshatter"] = { 4, 1, -3, 1306 },
			["Zanven|spineshatter"] = { 2, 3, -39, 84 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 226 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 30 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 1306 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 1306 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 1306 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 1306 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 290 },
			["Сократ|anniversary"] = { 0, 1, -13, 290 },
		},
	},
}

