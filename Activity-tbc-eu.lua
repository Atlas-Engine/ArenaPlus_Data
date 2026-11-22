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
	built = 1795366766,
	builtText = "2026-11-22 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gougerx|spineshatter"] = { 6, 0, 20, 165 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 129 },
			["Foúr|spineshatter"] = { 0, 2, -21, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Aethèl|spineshatter"] = { 6, 0, 34, 207 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 165 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 129 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 224 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 223 },
			["Foúr|spineshatter"] = { 0, 2, -21, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Aethèl|spineshatter"] = { 6, 0, 34, 207 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 165 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 129 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 224 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 223 },
			["Foúr|spineshatter"] = { 0, 2, -21, 165 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 11, 12, -83, 129 },
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 1050 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 1065 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 1065 },
			["Zanven|spineshatter"] = { 6, 8, -50, 960 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 1083 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 1084 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 957 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 1065 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 1157 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 957 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 885 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 1156 },
			["Klinden|spineshatter"] = { 6, 1, 30, 1156 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 207 },
			["Everlost|spineshatter"] = { 2, 4, -6, 1008 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 1004 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 165 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 1245 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 1245 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 224 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 223 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 1050 },
			["Foúr|spineshatter"] = { 0, 2, -21, 165 },
			["Exehn|spineshatter"] = { 1, 0, 1, 1029 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 885 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 1309 },
			["Сократ|anniversary"] = { 0, 1, -13, 1310 },
		},
	},
}

