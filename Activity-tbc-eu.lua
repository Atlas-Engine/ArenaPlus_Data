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
	built = 1795816761,
	builtText = "2026-11-27 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ggnextdisc|spineshatter"] = { 5, 6, -22, 51 },
			["Milevabog|spineshatter"] = { 5, 6, 0, 52 },
			["Ellilol|thunderstrike"] = { 5, 5, -35, 3 },
			["Shadøwsfall|thunderstrike"] = { 5, 5, -35, 6 },
			["Thadoraa|spineshatter"] = { 2, 3, -17, 25 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 21, 17, 67, 25 },
			["Ellilol|thunderstrike"] = { 11, 12, -86, 3 },
			["Shadøwsfall|thunderstrike"] = { 10, 12, -92, 6 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 51 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 52 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 154 },
			["Desm|spineshatter"] = { 5, 0, 27, 105 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 105 },
			["Mblol|spineshatter"] = { 3, 0, 8, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 21, 17, 67, 25 },
			["Ellilol|thunderstrike"] = { 11, 12, -86, 3 },
			["Shadøwsfall|thunderstrike"] = { 11, 12, -86, 6 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 51 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 52 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 154 },
			["Desm|spineshatter"] = { 5, 0, 27, 105 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 105 },
			["Mblol|spineshatter"] = { 3, 0, 8, 105 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 220 },
			["Miracles|spineshatter"] = { 1, 1, -5, 191 },
			["Gfal|spineshatter"] = { 0, 1, -18, 180 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 21, 17, 67, 25 },
			["Ellilol|thunderstrike"] = { 11, 12, -86, 3 },
			["Shadøwsfall|thunderstrike"] = { 11, 12, -86, 6 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 51 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 52 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 154 },
			["Desm|spineshatter"] = { 5, 0, 27, 105 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 105 },
			["Mblol|spineshatter"] = { 3, 0, 8, 105 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 220 },
			["Miracles|spineshatter"] = { 1, 1, -5, 191 },
			["Gfal|spineshatter"] = { 0, 1, -18, 180 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 21, 17, 67, 25 },
			["Ellilol|thunderstrike"] = { 11, 12, -86, 3 },
			["Shadøwsfall|thunderstrike"] = { 11, 12, -86, 6 },
			["Bimbolo|spineshatter"] = { 9, 7, -2, 154 },
			["Hurtie|spineshatter"] = { 6, 8, -3, 1315 },
			["Mblol|spineshatter"] = { 10, 4, 14, 105 },
			["Notagainqt|spineshatter"] = { 10, 4, 15, 220 },
			["Zanven|spineshatter"] = { 6, 8, -13, 1311 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 51 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 52 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 1346 },
			["Desm|spineshatter"] = { 5, 0, 27, 105 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 105 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 1365 },
			["Miracles|spineshatter"] = { 1, 1, -5, 191 },
			["Gfal|spineshatter"] = { 0, 1, -18, 180 },
		},
	},
}

