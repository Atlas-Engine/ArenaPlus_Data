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
	built = 1795813158,
	builtText = "2026-11-27 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 19, 14, 84, 44 },
			["Shadøwsfall|thunderstrike"] = { 5, 7, -57, 55 },
			["Desm|spineshatter"] = { 5, 0, 27, 45 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 45 },
			["Ellilol|thunderstrike"] = { 1, 2, -30, 45 },
			["Mblol|spineshatter"] = { 3, 0, 8, 45 },
			["Ggnextdisc|spineshatter"] = { 1, 0, 8, 45 },
			["Milevabog|spineshatter"] = { 1, 0, 10, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 19, 14, 84, 44 },
			["Ellilol|thunderstrike"] = { 6, 7, -51, 45 },
			["Shadøwsfall|thunderstrike"] = { 6, 7, -51, 55 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 94 },
			["Desm|spineshatter"] = { 5, 0, 27, 45 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 45 },
			["Mblol|spineshatter"] = { 3, 0, 8, 45 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 160 },
			["Miracles|spineshatter"] = { 1, 1, -5, 131 },
			["Gfal|spineshatter"] = { 0, 1, -18, 120 },
			["Ggnextdisc|spineshatter"] = { 1, 0, 8, 45 },
			["Milevabog|spineshatter"] = { 1, 0, 10, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 19, 14, 84, 44 },
			["Ellilol|thunderstrike"] = { 6, 7, -51, 45 },
			["Shadøwsfall|thunderstrike"] = { 6, 7, -51, 55 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 94 },
			["Desm|spineshatter"] = { 5, 0, 27, 45 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 45 },
			["Mblol|spineshatter"] = { 3, 0, 8, 45 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 160 },
			["Miracles|spineshatter"] = { 1, 1, -5, 131 },
			["Gfal|spineshatter"] = { 0, 1, -18, 120 },
			["Ggnextdisc|spineshatter"] = { 1, 0, 8, 45 },
			["Milevabog|spineshatter"] = { 1, 0, 10, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 19, 14, 84, 44 },
			["Ellilol|thunderstrike"] = { 6, 7, -51, 45 },
			["Shadøwsfall|thunderstrike"] = { 6, 7, -51, 55 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 94 },
			["Desm|spineshatter"] = { 5, 0, 27, 45 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 45 },
			["Mblol|spineshatter"] = { 3, 0, 8, 45 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 160 },
			["Miracles|spineshatter"] = { 1, 1, -5, 131 },
			["Gfal|spineshatter"] = { 0, 1, -18, 120 },
			["Ggnextdisc|spineshatter"] = { 1, 0, 8, 45 },
			["Milevabog|spineshatter"] = { 1, 0, 10, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 19, 14, 84, 44 },
			["Bimbolo|spineshatter"] = { 17, 15, -33, 94 },
			["Hurtie|spineshatter"] = { 6, 8, -3, 1255 },
			["Mblol|spineshatter"] = { 10, 4, 14, 45 },
			["Notagainqt|spineshatter"] = { 10, 4, 15, 160 },
			["Zanven|spineshatter"] = { 6, 8, -13, 1251 },
			["Ellilol|thunderstrike"] = { 6, 7, -51, 45 },
			["Milevabog|spineshatter"] = { 13, 0, 155, 45 },
			["Orcabrina|spineshatter"] = { 8, 5, 23, 1415 },
			["Shadøwsfall|thunderstrike"] = { 6, 7, -51, 55 },
			["Sustanøn|spineshatter"] = { 8, 5, 20, 1384 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 104, 45 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 1423 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 1286 },
			["Desm|spineshatter"] = { 5, 0, 27, 45 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 45 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 1305 },
			["Miracles|spineshatter"] = { 1, 1, -5, 131 },
			["Gfal|spineshatter"] = { 0, 1, -18, 120 },
		},
	},
}

