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
	built = 1795733962,
	builtText = "2026-11-26 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 8, 10, -54, 70 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 95 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 64 },
			["Kaelolo|spineshatter"] = { 3, 10, -103, 63 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 84 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 103 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 145 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 144 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 8, 10, -54, 70 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 95 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 64 },
			["Kaelolo|spineshatter"] = { 3, 10, -103, 63 },
			["Corness|thunderstrike"] = { 10, 2, 23, 214 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 84 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 215 },
			["Delivers|spineshatter"] = { 7, 0, 47, 252 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 289 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 103 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 145 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 144 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 217 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 8, 10, -54, 70 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 95 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 64 },
			["Kaelolo|spineshatter"] = { 3, 10, -103, 63 },
			["Corness|thunderstrike"] = { 10, 2, 23, 214 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 84 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 215 },
			["Delivers|spineshatter"] = { 7, 0, 47, 252 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 289 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 103 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 145 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 144 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 217 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 11, 8, -7, 1321 },
			["Bimbolo|spineshatter"] = { 8, 10, -54, 70 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 95 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 64 },
			["Kaelolo|spineshatter"] = { 3, 10, -103, 63 },
			["Сократ|anniversary"] = { 6, 7, -23, 1255 },
			["Corness|thunderstrike"] = { 10, 2, 23, 214 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 84 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 215 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 1342 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 1343 },
			["Delivers|spineshatter"] = { 7, 0, 47, 252 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 289 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 103 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 145 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 144 },
			["Gushers|spineshatter"] = { 2, 2, 4, 1401 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 1398 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 217 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 1425 },
		},
	},
}

