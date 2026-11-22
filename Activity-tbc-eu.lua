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
	built = 1795309162,
	builtText = "2026-11-21 07:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 2, 4, -6, 48 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 44 },
			["Systemhack|spineshatter"] = { 1, 2, -23, 47 },
			["Worldemoboss|spineshatter"] = { 1, 2, -32, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 90 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 105 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 105 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 123 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 124 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 105 },
			["Everlost|spineshatter"] = { 2, 4, -6, 48 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 44 },
			["Bimbolo|spineshatter"] = { 2, 3, -11, 139 },
			["Zanven|spineshatter"] = { 2, 3, -39, 144 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 89 },
			["Systemhack|spineshatter"] = { 1, 2, -23, 47 },
			["Worldemoboss|spineshatter"] = { 1, 2, -32, 47 },
			["Exehn|spineshatter"] = { 1, 0, 1, 68 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 90 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 139 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 105 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 105 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 123 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 124 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 105 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 197 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 196 },
			["Klinden|spineshatter"] = { 6, 1, 30, 196 },
			["Everlost|spineshatter"] = { 2, 4, -6, 48 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 44 },
			["Zanven|spineshatter"] = { 2, 3, -39, 144 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 285 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 285 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 89 },
			["Systemhack|spineshatter"] = { 1, 2, -23, 47 },
			["Worldemoboss|spineshatter"] = { 1, 2, -32, 47 },
			["Exehn|spineshatter"] = { 1, 0, 1, 68 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 349 },
			["Сократ|anniversary"] = { 0, 1, -13, 350 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 90 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 139 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 105 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 105 },
			["Überflieger|thunderstrike"] = { 7, 6, -7, 105 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 197 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 123 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 124 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 196 },
			["Klinden|spineshatter"] = { 6, 1, 30, 196 },
			["Everlost|spineshatter"] = { 2, 4, -6, 48 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 44 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 285 },
			["Zanven|spineshatter"] = { 2, 3, -39, 144 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 285 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 89 },
			["Systemhack|spineshatter"] = { 1, 2, -23, 47 },
			["Worldemoboss|spineshatter"] = { 1, 2, -32, 47 },
			["Exehn|spineshatter"] = { 1, 0, 1, 68 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 349 },
			["Сократ|anniversary"] = { 0, 1, -13, 350 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 1403 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 1402 },
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 90 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 139 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 105 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 105 },
			["Überflieger|thunderstrike"] = { 7, 6, -7, 105 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 197 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 123 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 124 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 196 },
			["Klinden|spineshatter"] = { 6, 1, 30, 196 },
			["Everlost|spineshatter"] = { 2, 4, -6, 48 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 44 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 285 },
			["Thelsâ|spineshatter"] = { 4, 1, -3, 1365 },
			["Zanven|spineshatter"] = { 2, 3, -39, 144 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 285 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 89 },
			["Systemhack|spineshatter"] = { 1, 2, -23, 47 },
			["Worldemoboss|spineshatter"] = { 1, 2, -32, 47 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 1365 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 1365 },
			["Exehn|spineshatter"] = { 1, 0, 1, 68 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 1365 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 1365 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 349 },
			["Сократ|anniversary"] = { 0, 1, -13, 350 },
		},
	},
}

