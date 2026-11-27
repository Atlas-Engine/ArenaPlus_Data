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
	built = 1795737561,
	builtText = "2026-11-26 06:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 4, 3, 16, 26 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 26 },
			["Hurtie|spineshatter"] = { 2, 2, 6, 45 },
			["Mblol|spineshatter"] = { 2, 2, 1, 45 },
			["Notagainqt|spineshatter"] = { 2, 2, 2, 45 },
			["Zanven|spineshatter"] = { 2, 2, 3, 45 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 12, 11, -15, 26 },
			["Orcabrina|spineshatter"] = { 8, 5, 23, 155 },
			["Sustanøn|spineshatter"] = { 8, 5, 20, 124 },
			["Milevabog|spineshatter"] = { 12, 0, 145, 169 },
			["Ggnextdisc|spineshatter"] = { 11, 0, 96, 144 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 163 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 26 },
			["Hurtie|spineshatter"] = { 2, 2, 6, 45 },
			["Mblol|spineshatter"] = { 2, 2, 1, 45 },
			["Notagainqt|spineshatter"] = { 2, 2, 2, 45 },
			["Zanven|spineshatter"] = { 2, 2, 3, 45 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 12, 13, -38, 26 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 155 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 124 },
			["Corness|thunderstrike"] = { 10, 2, 23, 274 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 144 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 275 },
			["Milevabog|spineshatter"] = { 12, 0, 145, 169 },
			["Delivers|spineshatter"] = { 7, 0, 47, 312 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 349 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 163 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 26 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 205 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 204 },
			["Hurtie|spineshatter"] = { 2, 2, 6, 45 },
			["Mblol|spineshatter"] = { 2, 2, 1, 45 },
			["Notagainqt|spineshatter"] = { 2, 2, 2, 45 },
			["Zanven|spineshatter"] = { 2, 2, 3, 45 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 45 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 277 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 12, 13, -38, 26 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 155 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 124 },
			["Corness|thunderstrike"] = { 10, 2, 23, 274 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 144 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 275 },
			["Milevabog|spineshatter"] = { 12, 0, 145, 169 },
			["Delivers|spineshatter"] = { 7, 0, 47, 312 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 349 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 163 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 26 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 205 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 204 },
			["Hurtie|spineshatter"] = { 2, 2, 6, 45 },
			["Mblol|spineshatter"] = { 2, 2, 1, 45 },
			["Notagainqt|spineshatter"] = { 2, 2, 2, 45 },
			["Zanven|spineshatter"] = { 2, 2, 3, 45 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 45 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 277 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 12, 13, -38, 26 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 155 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 124 },
			["Corness|thunderstrike"] = { 10, 2, 23, 274 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 144 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 275 },
			["Milevabog|spineshatter"] = { 12, 0, 145, 169 },
			["Пиноккио|anniversary"] = { 5, 6, -16, 1381 },
			["Сократ|anniversary"] = { 5, 6, -16, 1315 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 1402 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 1403 },
			["Delivers|spineshatter"] = { 7, 0, 47, 312 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 349 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 163 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 26 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 205 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 204 },
			["Hurtie|spineshatter"] = { 2, 2, 6, 45 },
			["Mblol|spineshatter"] = { 2, 2, 1, 45 },
			["Notagainqt|spineshatter"] = { 2, 2, 2, 45 },
			["Zanven|spineshatter"] = { 2, 2, 3, 45 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 45 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 277 },
		},
	},
}

