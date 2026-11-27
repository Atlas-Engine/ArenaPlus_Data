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
	built = 1795805959,
	builtText = "2026-11-27 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 3, 0, 8, 40 },
			["Shadøwsfall|thunderstrike"] = { 1, 0, 6, 25 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 3, 0, 8, 40 },
			["Shadøwsfall|thunderstrike"] = { 1, 0, 6, 25 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 3, 0, 8, 40 },
			["Shadøwsfall|thunderstrike"] = { 1, 0, 6, 25 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 3, 0, 8, 40 },
			["Shadøwsfall|thunderstrike"] = { 1, 0, 6, 25 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 12, 13, -38, 1166 },
			["Hurtie|spineshatter"] = { 6, 8, -3, 1135 },
			["Notagainqt|spineshatter"] = { 10, 4, 15, 40 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 1295 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 1264 },
			["Zanven|spineshatter"] = { 6, 8, -13, 1131 },
			["Corness|thunderstrike"] = { 10, 2, 23, 1414 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 1284 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 1415 },
			["Milevabog|spineshatter"] = { 12, 0, 145, 1309 },
			["Mblol|spineshatter"] = { 7, 4, 6, 1132 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 1303 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 1166 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 1345 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 1344 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 1185 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 1417 },
			["Shadøwsfall|thunderstrike"] = { 1, 0, 6, 25 },
		},
	},
}

