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
	built = 1795355961,
	builtText = "2026-11-22 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Aethèl|spineshatter"] = { 6, 0, 34, 27 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 44 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 43 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Aethèl|spineshatter"] = { 6, 0, 34, 27 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 44 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 43 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Aethèl|spineshatter"] = { 6, 0, 34, 27 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 44 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 43 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Baeerrys|spineshatter"] = { 4, 5, -49, 705 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 27 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 44 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 43 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 870 },
			["Bimbolo|spineshatter"] = { 8, 10, -70, 919 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 885 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 885 },
			["Zanven|spineshatter"] = { 6, 8, -50, 780 },
			["Überflieger|thunderstrike"] = { 7, 6, -7, 885 },
			["Warriael|thunderstrike"] = { 7, 6, 0, 977 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 903 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 904 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 777 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 777 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 705 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 976 },
			["Klinden|spineshatter"] = { 6, 1, 30, 976 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 27 },
			["Everlost|spineshatter"] = { 2, 4, -6, 828 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 824 },
			["Grimroll|thunderstrike"] = { 6, 0, 44, 1065 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 1065 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 44 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 43 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 869 },
			["Exehn|spineshatter"] = { 1, 0, 1, 848 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 705 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 1129 },
			["Сократ|anniversary"] = { 0, 1, -13, 1130 },
		},
	},
}

