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
	built = 1795215566,
	builtText = "2026-11-20 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Sunodaix|spineshatter"] = { 3, 5, 0, 20 },
			["Fedow|spineshatter"] = { 6, 0, 0, 59 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 59 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 20 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 39 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 39 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 9 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 10, 4, 10, 156 },
			["Shadøwsfall|thunderstrike"] = { 10, 4, 10, 155 },
			["Patricia|spineshatter"] = { 9, 2, 57, 164 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 20 },
			["Fedow|spineshatter"] = { 6, 0, 0, 59 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 83 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 83 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 59 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 140 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 165 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 135 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 20 },
			["Udrii|spineshatter"] = { 0, 3, -25, 93 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 39 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 39 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 9 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 19, 14, -42, 156 },
			["Shadøwsfall|thunderstrike"] = { 16, 11, -50, 155 },
			["Mblol|spineshatter"] = { 9, 5, 55, 297 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 165 },
			["Backup|spineshatter"] = { 5, 7, -78, 309 },
			["Bând|spineshatter"] = { 5, 7, -78, 302 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 309 },
			["Patricia|spineshatter"] = { 9, 2, 57, 164 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 345 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 345 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 20 },
			["Fedow|spineshatter"] = { 6, 0, 0, 59 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 83 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 83 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 59 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 140 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 135 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 20 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 213 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 211 },
			["Udrii|spineshatter"] = { 0, 3, -25, 93 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 39 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 39 },
			["Karoups|spineshatter"] = { 0, 2, -30, 275 },
			["Maxky|spineshatter"] = { 0, 2, -28, 275 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 298 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 9 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 19, 14, -42, 156 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, -42, 155 },
			["Mblol|spineshatter"] = { 9, 5, 55, 297 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 165 },
			["Backup|spineshatter"] = { 5, 7, -78, 309 },
			["Bând|spineshatter"] = { 5, 7, -78, 302 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 309 },
			["Patricia|spineshatter"] = { 9, 2, 57, 164 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 345 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 345 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 20 },
			["Fedow|spineshatter"] = { 6, 0, 0, 59 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 83 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 83 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 59 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 140 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 135 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 20 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 213 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 211 },
			["Udrii|spineshatter"] = { 0, 3, -25, 93 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 39 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 39 },
			["Karoups|spineshatter"] = { 0, 2, -30, 275 },
			["Maxky|spineshatter"] = { 0, 2, -28, 275 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 298 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 9 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 19, 14, -42, 156 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, -42, 155 },
			["Mblol|spineshatter"] = { 15, 6, 87, 297 },
			["Notagainqt|spineshatter"] = { 15, 6, 87, 165 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 1425 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 1432 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 1353 },
			["Backup|spineshatter"] = { 5, 7, -78, 309 },
			["Bând|spineshatter"] = { 5, 7, -78, 302 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 309 },
			["Patricia|spineshatter"] = { 9, 2, 57, 164 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 345 },
			["Sunodaix|spineshatter"] = { 3, 7, -24, 20 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 345 },
			["Davedosx|spineshatter"] = { 1, 5, -43, 20 },
			["Fedow|spineshatter"] = { 6, 0, 0, 59 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 83 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 83 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 59 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 140 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 1245 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 1362 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 135 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 213 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 211 },
			["Udrii|spineshatter"] = { 0, 3, -25, 93 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 39 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 39 },
			["Karoups|spineshatter"] = { 0, 2, -30, 275 },
			["Maxky|spineshatter"] = { 0, 2, -28, 275 },
			["Bananagram|spineshatter"] = { 0, 1, -9, 1425 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 298 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 9 },
		},
	},
}

