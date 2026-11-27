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
	built = 1795820363,
	builtText = "2026-11-27 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 16, 2, 52, 38 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 37 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 38 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 21, 17, 67, 86 },
			["Shadøwsfall|thunderstrike"] = { 10, 12, -92, 66 },
			["Quernx|spineshatter"] = { 16, 2, 52, 38 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 37 },
			["Ellilol|thunderstrike"] = { 6, 7, -65, 63 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 111 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 113 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 38 },
			["Desm|spineshatter"] = { 5, 0, 27, 165 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 165 },
			["Mblol|spineshatter"] = { 3, 0, 8, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 21, 17, 67, 86 },
			["Ellilol|thunderstrike"] = { 11, 12, -86, 63 },
			["Shadøwsfall|thunderstrike"] = { 11, 12, -86, 66 },
			["Quernx|spineshatter"] = { 16, 2, 52, 38 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 37 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 111 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 113 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 38 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 214 },
			["Desm|spineshatter"] = { 5, 0, 27, 165 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 165 },
			["Mblol|spineshatter"] = { 3, 0, 8, 165 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 280 },
			["Miracles|spineshatter"] = { 1, 1, -5, 251 },
			["Gfal|spineshatter"] = { 0, 1, -18, 240 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 21, 17, 67, 86 },
			["Ellilol|thunderstrike"] = { 11, 12, -86, 63 },
			["Shadøwsfall|thunderstrike"] = { 11, 12, -86, 66 },
			["Quernx|spineshatter"] = { 16, 2, 52, 38 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 37 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 111 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 113 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 38 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 214 },
			["Desm|spineshatter"] = { 5, 0, 27, 165 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 165 },
			["Mblol|spineshatter"] = { 3, 0, 8, 165 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 280 },
			["Miracles|spineshatter"] = { 1, 1, -5, 251 },
			["Gfal|spineshatter"] = { 0, 1, -18, 240 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 21, 17, 67, 86 },
			["Ellilol|thunderstrike"] = { 11, 12, -86, 63 },
			["Shadøwsfall|thunderstrike"] = { 11, 12, -86, 66 },
			["Quernx|spineshatter"] = { 16, 2, 52, 38 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 37 },
			["Bimbolo|spineshatter"] = { 9, 7, -2, 214 },
			["Hurtie|spineshatter"] = { 6, 8, -3, 1375 },
			["Mblol|spineshatter"] = { 10, 4, 14, 165 },
			["Notagainqt|spineshatter"] = { 10, 4, 15, 280 },
			["Zanven|spineshatter"] = { 6, 8, -13, 1371 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 111 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 113 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 38 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 1406 },
			["Desm|spineshatter"] = { 5, 0, 27, 165 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 165 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 1425 },
			["Miracles|spineshatter"] = { 1, 1, -5, 251 },
			["Gfal|spineshatter"] = { 0, 1, -18, 240 },
		},
	},
}

