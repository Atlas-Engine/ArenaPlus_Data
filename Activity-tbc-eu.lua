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
	built = 1795312772,
	builtText = "2026-11-21 08:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Systemhack|spineshatter"] = { 5, 2, 26, 57 },
			["Worldemoboss|spineshatter"] = { 5, 2, 21, 57 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 150 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 166 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 166 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 57 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 166 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 57 },
			["Zanven|spineshatter"] = { 4, 5, -11, 60 },
			["Everlost|spineshatter"] = { 2, 4, -6, 108 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 104 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 150 },
			["Exehn|spineshatter"] = { 1, 0, 1, 129 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 150 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 199 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 166 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 166 },
			["Zanven|spineshatter"] = { 6, 8, -50, 60 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 184 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 184 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 57 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 166 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 258 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 57 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 256 },
			["Klinden|spineshatter"] = { 6, 1, 30, 256 },
			["Everlost|spineshatter"] = { 2, 4, -6, 108 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 104 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 346 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 346 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 150 },
			["Exehn|spineshatter"] = { 1, 0, 1, 129 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 150 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 199 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 166 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 166 },
			["Zanven|spineshatter"] = { 6, 8, -50, 60 },
			["Überflieger|thunderstrike"] = { 7, 6, -7, 166 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 258 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 184 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 184 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 57 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 57 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 256 },
			["Klinden|spineshatter"] = { 6, 1, 30, 256 },
			["Everlost|spineshatter"] = { 2, 4, -6, 108 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 104 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 346 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 346 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 150 },
			["Exehn|spineshatter"] = { 1, 0, 1, 129 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 410 },
			["Сократ|anniversary"] = { 0, 1, -13, 410 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 150 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 199 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 166 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 166 },
			["Zanven|spineshatter"] = { 6, 8, -50, 60 },
			["Überflieger|thunderstrike"] = { 7, 6, -7, 166 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 258 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 184 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 184 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 57 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 57 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 256 },
			["Klinden|spineshatter"] = { 6, 1, 30, 256 },
			["Everlost|spineshatter"] = { 2, 4, -6, 108 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 104 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 346 },
			["Thelsâ|spineshatter"] = { 4, 1, -3, 1426 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 346 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 150 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 1426 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 1426 },
			["Exehn|spineshatter"] = { 1, 0, 1, 129 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 1426 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 1426 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 410 },
			["Сократ|anniversary"] = { 0, 1, -13, 410 },
		},
	},
}

