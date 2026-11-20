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
	built = 1795208367,
	builtText = "2026-11-20 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 10, 4, 10, 36 },
			["Shadøwsfall|thunderstrike"] = { 10, 4, 10, 35 },
			["Patricia|spineshatter"] = { 9, 2, 57, 44 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 45 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 15 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 10, 4, 10, 36 },
			["Shadøwsfall|thunderstrike"] = { 10, 4, 10, 35 },
			["Patricia|spineshatter"] = { 9, 2, 57, 44 },
			["Mblol|spineshatter"] = { 2, 2, -1, 177 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 45 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 15 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 93 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 91 },
			["Karoups|spineshatter"] = { 0, 2, -30, 155 },
			["Maxky|spineshatter"] = { 0, 2, -28, 155 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 178 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 19, 14, -42, 36 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, -42, 35 },
			["Mblol|spineshatter"] = { 9, 5, 55, 177 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 45 },
			["Backup|spineshatter"] = { 5, 7, -78, 189 },
			["Bând|spineshatter"] = { 5, 7, -78, 182 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 189 },
			["Patricia|spineshatter"] = { 9, 2, 57, 44 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 225 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 225 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 15 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 93 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 91 },
			["Karoups|spineshatter"] = { 0, 2, -30, 155 },
			["Maxky|spineshatter"] = { 0, 2, -28, 155 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 178 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 19, 14, -42, 36 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, -42, 35 },
			["Mblol|spineshatter"] = { 9, 5, 55, 177 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 45 },
			["Backup|spineshatter"] = { 5, 7, -78, 189 },
			["Bând|spineshatter"] = { 5, 7, -78, 182 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 189 },
			["Patricia|spineshatter"] = { 9, 2, 57, 44 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 225 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 225 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 15 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 93 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 91 },
			["Karoups|spineshatter"] = { 0, 2, -30, 155 },
			["Maxky|spineshatter"] = { 0, 2, -28, 155 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 178 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 19, 14, -42, 36 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, -42, 35 },
			["Rli|spineshatter"] = { 16, 7, 30, 1357 },
			["Summerjam|spineshatter"] = { 16, 7, 31, 1355 },
			["Mblol|spineshatter"] = { 15, 6, 87, 177 },
			["Notagainqt|spineshatter"] = { 15, 6, 87, 45 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 1305 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 1312 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 1233 },
			["Forksache|spineshatter"] = { 7, 7, -50, 1391 },
			["Snupydawg|spineshatter"] = { 8, 6, 17, 1401 },
			["Zazazazaa|spineshatter"] = { 8, 6, 17, 1422 },
			["Backup|spineshatter"] = { 5, 7, -78, 189 },
			["Bând|spineshatter"] = { 5, 7, -78, 182 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 1367 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 189 },
			["Patricia|spineshatter"] = { 9, 2, 57, 44 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 1366 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 1305 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 225 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 1352 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 225 },
			["Karoups|spineshatter"] = { 1, 4, -36, 155 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 1378 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 1125 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 1242 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 15 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 1305 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 93 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 91 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 1376 },
			["Maxky|spineshatter"] = { 0, 2, -28, 155 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 1305 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 178 },
		},
	},
}

