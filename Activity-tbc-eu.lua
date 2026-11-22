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
	built = 1795327168,
	builtText = "2026-11-22 12:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Systemhack|spineshatter"] = { 6, 4, 3, 297 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 297 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 225 },
			["Zanven|spineshatter"] = { 4, 5, -11, 300 },
			["Everlost|spineshatter"] = { 2, 4, -6, 348 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 344 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 225 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 390 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 439 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 405 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 405 },
			["Zanven|spineshatter"] = { 6, 8, -50, 300 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 423 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 424 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 297 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 405 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 497 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 297 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 225 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 496 },
			["Klinden|spineshatter"] = { 6, 1, 30, 496 },
			["Everlost|spineshatter"] = { 2, 4, -6, 348 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 344 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 585 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 585 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 390 },
			["Exehn|spineshatter"] = { 1, 0, 1, 369 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 225 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 649 },
			["Сократ|anniversary"] = { 0, 1, -13, 650 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 390 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 439 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 405 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 405 },
			["Zanven|spineshatter"] = { 6, 8, -50, 300 },
			["Überflieger|thunderstrike"] = { 7, 6, -7, 405 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 497 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 423 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 424 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 297 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 297 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 225 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 496 },
			["Klinden|spineshatter"] = { 6, 1, 30, 496 },
			["Everlost|spineshatter"] = { 2, 4, -6, 348 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 344 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 585 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 585 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 390 },
			["Exehn|spineshatter"] = { 1, 0, 1, 369 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 225 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 649 },
			["Сократ|anniversary"] = { 0, 1, -13, 650 },
		},
	},
}

