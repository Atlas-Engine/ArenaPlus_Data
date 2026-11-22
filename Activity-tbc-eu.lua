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
	built = 1795316373,
	builtText = "2026-11-21 09:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Baeerrys|spineshatter"] = { 4, 5, -49, 46 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 46 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Systemhack|spineshatter"] = { 6, 4, 3, 117 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 117 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 46 },
			["Zanven|spineshatter"] = { 4, 5, -11, 121 },
			["Everlost|spineshatter"] = { 2, 4, -6, 168 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 164 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 46 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 210 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 226 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 226 },
			["Bimbolo|spineshatter"] = { 4, 10, -89, 259 },
			["Zanven|spineshatter"] = { 6, 8, -50, 121 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 244 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 244 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 117 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 226 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 318 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 117 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 46 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 316 },
			["Klinden|spineshatter"] = { 6, 1, 30, 316 },
			["Everlost|spineshatter"] = { 2, 4, -6, 168 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 164 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 210 },
			["Exehn|spineshatter"] = { 1, 0, 1, 189 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 46 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 210 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 259 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 226 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 226 },
			["Zanven|spineshatter"] = { 6, 8, -50, 121 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 244 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 244 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 117 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 226 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 318 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 117 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 46 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 316 },
			["Klinden|spineshatter"] = { 6, 1, 30, 316 },
			["Everlost|spineshatter"] = { 2, 4, -6, 168 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 164 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 406 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 406 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 210 },
			["Exehn|spineshatter"] = { 1, 0, 1, 189 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 46 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 470 },
			["Сократ|anniversary"] = { 0, 1, -13, 470 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 210 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 259 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 226 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 226 },
			["Zanven|spineshatter"] = { 6, 8, -50, 121 },
			["Überflieger|thunderstrike"] = { 7, 6, -7, 226 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 318 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 244 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 244 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 117 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 117 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 46 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 316 },
			["Klinden|spineshatter"] = { 6, 1, 30, 316 },
			["Everlost|spineshatter"] = { 2, 4, -6, 168 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 164 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 406 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 406 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 210 },
			["Exehn|spineshatter"] = { 1, 0, 1, 189 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 46 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 470 },
			["Сократ|anniversary"] = { 0, 1, -13, 470 },
		},
	},
}

