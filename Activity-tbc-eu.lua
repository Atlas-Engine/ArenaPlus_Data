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
	built = 1795730362,
	builtText = "2026-11-26 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 8, 8, -31, 10 },
			["Orcabrina|spineshatter"] = { 8, 5, 23, 35 },
			["Sustanøn|spineshatter"] = { 8, 5, 20, 4 },
			["Ggnextdisc|spineshatter"] = { 11, 0, 96, 24 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 43 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 8, 10, -54, 10 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 35 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 4 },
			["Corness|thunderstrike"] = { 10, 2, 23, 154 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 24 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 155 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 43 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 85 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 84 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 157 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 8, 10, -54, 10 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 35 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 4 },
			["Corness|thunderstrike"] = { 10, 2, 23, 154 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 24 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 155 },
			["Delivers|spineshatter"] = { 7, 0, 47, 192 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 229 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 43 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 85 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 84 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 157 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 8, 10, -54, 10 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 35 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 4 },
			["Corness|thunderstrike"] = { 10, 2, 23, 154 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 24 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 155 },
			["Delivers|spineshatter"] = { 7, 0, 47, 192 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 229 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 43 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 85 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 84 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 157 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 14, 13, -30, 10 },
			["Пиноккио|anniversary"] = { 14, 8, 4, 1261 },
			["Сократ|anniversary"] = { 14, 8, 4, 1195 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 35 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 4 },
			["Corness|thunderstrike"] = { 10, 2, 23, 154 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 24 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 155 },
			["Izabelyrg|spineshatter"] = { 6, 3, 18, 1380 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 1282 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 1283 },
			["Delivers|spineshatter"] = { 7, 0, 47, 192 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 229 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 43 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 85 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 84 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 1388 },
			["Gushers|spineshatter"] = { 2, 2, 4, 1341 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 1338 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 157 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 1427 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 1365 },
		},
	},
}

