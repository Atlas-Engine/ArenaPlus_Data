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
	built = 1795211965,
	builtText = "2026-11-20 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Meziljie|spineshatter"] = { 6, 0, 45, 23 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 23 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 10, 4, 10, 96 },
			["Shadøwsfall|thunderstrike"] = { 10, 4, 10, 95 },
			["Patricia|spineshatter"] = { 9, 2, 57, 104 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 23 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 23 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 80 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 105 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 75 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 153 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 151 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 19, 14, -42, 96 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, -42, 95 },
			["Mblol|spineshatter"] = { 9, 5, 55, 237 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 105 },
			["Backup|spineshatter"] = { 5, 7, -78, 249 },
			["Bând|spineshatter"] = { 5, 7, -78, 242 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 249 },
			["Patricia|spineshatter"] = { 9, 2, 57, 104 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 285 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 285 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 23 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 23 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 80 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 75 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 153 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 151 },
			["Karoups|spineshatter"] = { 0, 2, -30, 215 },
			["Maxky|spineshatter"] = { 0, 2, -28, 215 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 238 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 19, 14, -42, 96 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, -42, 95 },
			["Mblol|spineshatter"] = { 9, 5, 55, 237 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 105 },
			["Backup|spineshatter"] = { 5, 7, -78, 249 },
			["Bând|spineshatter"] = { 5, 7, -78, 242 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 249 },
			["Patricia|spineshatter"] = { 9, 2, 57, 104 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 285 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 285 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 23 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 23 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 80 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 75 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 153 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 151 },
			["Karoups|spineshatter"] = { 0, 2, -30, 215 },
			["Maxky|spineshatter"] = { 0, 2, -28, 215 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 238 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 19, 14, -42, 96 },
			["Shadøwsfall|thunderstrike"] = { 19, 14, -42, 95 },
			["Rli|spineshatter"] = { 16, 7, 30, 1417 },
			["Summerjam|spineshatter"] = { 16, 7, 31, 1415 },
			["Mblol|spineshatter"] = { 15, 6, 87, 237 },
			["Notagainqt|spineshatter"] = { 15, 6, 87, 105 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 1365 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 1372 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 1293 },
			["Backup|spineshatter"] = { 5, 7, -78, 249 },
			["Bând|spineshatter"] = { 5, 7, -78, 242 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 1427 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 249 },
			["Patricia|spineshatter"] = { 9, 2, 57, 104 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 1426 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 1365 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 285 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 1412 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 285 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 23 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 23 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 1438 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 80 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 1185 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 1302 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 75 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 1365 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 153 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 151 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 1436 },
			["Karoups|spineshatter"] = { 0, 2, -30, 215 },
			["Maxky|spineshatter"] = { 0, 2, -28, 215 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 1365 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 238 },
		},
	},
}

