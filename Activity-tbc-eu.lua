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
	built = 1795809559,
	builtText = "2026-11-27 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 5, 4, -18, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 5, 4, -18, 34 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 100 },
			["Miracles|spineshatter"] = { 1, 1, -5, 71 },
			["Shadøwsfall|thunderstrike"] = { 1, 0, 6, 85 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 5, 4, -18, 34 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 100 },
			["Miracles|spineshatter"] = { 1, 1, -5, 71 },
			["Shadøwsfall|thunderstrike"] = { 1, 0, 6, 85 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 5, 4, -18, 34 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 100 },
			["Miracles|spineshatter"] = { 1, 1, -5, 71 },
			["Shadøwsfall|thunderstrike"] = { 1, 0, 6, 85 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 17, 17, -56, 34 },
			["Hurtie|spineshatter"] = { 6, 8, -3, 1195 },
			["Notagainqt|spineshatter"] = { 10, 4, 15, 100 },
			["Orcabrina|spineshatter"] = { 9, 5, 40, 1355 },
			["Sustanøn|spineshatter"] = { 9, 5, 37, 1324 },
			["Zanven|spineshatter"] = { 6, 8, -13, 1191 },
			["Ggnextdisc|spineshatter"] = { 12, 0, 106, 1344 },
			["Milevabog|spineshatter"] = { 12, 0, 145, 1369 },
			["Mblol|spineshatter"] = { 7, 4, 6, 1192 },
			["Iogaila|spineshatter"] = { 3, 4, -13, 1363 },
			["Izabelyrg|spineshatter"] = { 4, 3, 3, 1226 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 1405 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 1404 },
			["Flexýa|spineshatter"] = { 1, 2, -21, 1245 },
			["Miracles|spineshatter"] = { 1, 1, -5, 71 },
			["Shadøwsfall|thunderstrike"] = { 1, 0, 6, 85 },
		},
	},
}

