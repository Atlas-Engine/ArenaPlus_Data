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
	built = 1795377565,
	builtText = "2026-11-22 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cinthya|spineshatter"] = { 13, 3, 44, 94 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cinthya|spineshatter"] = { 13, 3, 44, 94 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 345 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 309 },
			["Foúr|spineshatter"] = { 0, 2, -21, 345 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 189 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 189 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cinthya|spineshatter"] = { 13, 3, 44, 94 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 387 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 345 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 309 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 404 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 403 },
			["Foúr|spineshatter"] = { 0, 2, -21, 345 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 189 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 189 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 11, 12, -83, 309 },
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 1230 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 94 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 1245 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 1245 },
			["Zanven|spineshatter"] = { 6, 8, -50, 1140 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 1263 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 1264 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 1137 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 1245 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 1337 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 1137 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 1065 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 1336 },
			["Klinden|spineshatter"] = { 6, 1, 30, 1336 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 387 },
			["Everlost|spineshatter"] = { 2, 4, -6, 1188 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 1184 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 345 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 1425 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 1425 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 404 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 403 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 1229 },
			["Foúr|spineshatter"] = { 0, 2, -21, 345 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 189 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 189 },
			["Exehn|spineshatter"] = { 1, 0, 1, 1209 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 1065 },
		},
	},
}

