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
	built = 1795370363,
	builtText = "2026-11-22 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Cinthya|spineshatter"] = { 5, 1, 40, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cinthya|spineshatter"] = { 5, 1, 40, 45 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 69 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 69 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Aethèl|spineshatter"] = { 6, 0, 34, 267 },
			["Cinthya|spineshatter"] = { 5, 1, 40, 45 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 225 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 189 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 284 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 283 },
			["Foúr|spineshatter"] = { 0, 2, -21, 225 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 69 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 69 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Aethèl|spineshatter"] = { 6, 0, 34, 267 },
			["Cinthya|spineshatter"] = { 5, 1, 40, 45 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 225 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 189 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 284 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 283 },
			["Foúr|spineshatter"] = { 0, 2, -21, 225 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 69 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 69 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 11, 12, -83, 189 },
			["Enhbeastx|spineshatter"] = { 11, 8, -38, 1110 },
			["Crymez|thunderstrike"] = { 10, 6, -1, 1125 },
			["Darcula|thunderstrike"] = { 10, 6, -1, 1125 },
			["Zanven|spineshatter"] = { 6, 8, -50, 1020 },
			["Davedosx|spineshatter"] = { 9, 1, 40, 1143 },
			["Milkywetspot|spineshatter"] = { 9, 1, 62, 1144 },
			["Systemhack|spineshatter"] = { 6, 4, 3, 1017 },
			["Überflieger|thunderstrike"] = { 4, 6, -24, 1125 },
			["Warriael|thunderstrike"] = { 4, 6, -19, 1217 },
			["Worldemoboss|spineshatter"] = { 6, 4, -11, 1017 },
			["Baeerrys|spineshatter"] = { 4, 5, -49, 945 },
			["Chuchuma|spineshatter"] = { 6, 1, 30, 1216 },
			["Klinden|spineshatter"] = { 6, 1, 30, 1216 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 267 },
			["Cinthya|spineshatter"] = { 5, 1, 40, 45 },
			["Everlost|spineshatter"] = { 2, 4, -6, 1068 },
			["Farsaroga|spineshatter"] = { 2, 4, -1, 1064 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 225 },
			["Dirtyhotter|thunderstrike"] = { 4, 0, 11, 1305 },
			["Grimroll|thunderstrike"] = { 4, 0, 36, 1305 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 284 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 283 },
			["Bagladybetty|spineshatter"] = { 0, 3, -43, 1109 },
			["Foúr|spineshatter"] = { 0, 2, -21, 225 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 69 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 69 },
			["Exehn|spineshatter"] = { 1, 0, 1, 1088 },
			["Ragnih|spineshatter"] = { 1, 0, 4, 945 },
			["Пиноккио|anniversary"] = { 0, 1, -13, 1369 },
			["Сократ|anniversary"] = { 0, 1, -13, 1370 },
		},
	},
}

