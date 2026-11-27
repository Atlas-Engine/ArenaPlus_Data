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
	built = 1795755562,
	builtText = "2026-11-26 11:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Hurtie|spineshatter"] = { 6, 8, -3, 295 },
			["Zanven|spineshatter"] = { 6, 8, -13, 291 },
			["Mblol|spineshatter"] = { 7, 4, 6, 292 },
			["Notagainqt|spineshatter"] = { 7, 4, 7, 277 },
			["Bimbolo|spineshatter"] = { 4, 3, 16, 326 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 326 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 12, 13, -38, 326 },
			["Hurtie|spineshatter"] = { 6, 8, -3, 295 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 455 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 424 },
			["Zanven|spineshatter"] = { 6, 8, -13, 291 },
			["Corness|thunderstrike"] = { 10, 2, 23, 574 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 444 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 575 },
			["Milevabog|spineshatter"] = { 12, 0, 145, 469 },
			["Mblol|spineshatter"] = { 7, 4, 6, 292 },
			["Notagainqt|spineshatter"] = { 7, 4, 7, 277 },
			["Delivers|spineshatter"] = { 7, 0, 47, 612 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 649 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 463 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 326 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 505 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 504 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 345 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 577 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 12, 13, -38, 326 },
			["Hurtie|spineshatter"] = { 6, 8, -3, 295 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 455 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 424 },
			["Zanven|spineshatter"] = { 6, 8, -13, 291 },
			["Corness|thunderstrike"] = { 10, 2, 23, 574 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 444 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 575 },
			["Milevabog|spineshatter"] = { 12, 0, 145, 469 },
			["Mblol|spineshatter"] = { 7, 4, 6, 292 },
			["Notagainqt|spineshatter"] = { 7, 4, 7, 277 },
			["Delivers|spineshatter"] = { 7, 0, 47, 612 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 649 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 463 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 326 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 505 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 504 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 345 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 577 },
		},
	},
}

