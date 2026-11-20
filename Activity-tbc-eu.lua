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
	built = 1795204766,
	builtText = "2026-11-20 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Primeglad|spineshatter"] = { 3, 0, 8, 33 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 10, -52, 140 },
			["Mblol|spineshatter"] = { 9, 5, 55, 117 },
			["Shadøwsfall|thunderstrike"] = { 6, 7, -60, 140 },
			["Backup|spineshatter"] = { 5, 7, -78, 129 },
			["Bând|spineshatter"] = { 5, 7, -78, 122 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 129 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 165 },
			["Notagainqt|spineshatter"] = { 7, 3, 56, 165 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 165 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 33 },
			["Karoups|spineshatter"] = { 0, 2, -30, 95 },
			["Maxky|spineshatter"] = { 0, 2, -28, 95 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 118 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 10, -52, 140 },
			["Shadøwsfall|thunderstrike"] = { 9, 10, -52, 140 },
			["Mblol|spineshatter"] = { 9, 5, 55, 117 },
			["Backup|spineshatter"] = { 5, 7, -78, 129 },
			["Bând|spineshatter"] = { 5, 7, -78, 122 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 129 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 165 },
			["Notagainqt|spineshatter"] = { 7, 3, 56, 165 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 165 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 33 },
			["Karoups|spineshatter"] = { 0, 2, -30, 95 },
			["Maxky|spineshatter"] = { 0, 2, -28, 95 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 118 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 9, 10, -52, 140 },
			["Shadøwsfall|thunderstrike"] = { 9, 10, -52, 140 },
			["Mblol|spineshatter"] = { 9, 5, 55, 117 },
			["Backup|spineshatter"] = { 5, 7, -78, 129 },
			["Bând|spineshatter"] = { 5, 7, -78, 122 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 129 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 165 },
			["Notagainqt|spineshatter"] = { 7, 3, 56, 165 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 165 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 33 },
			["Karoups|spineshatter"] = { 0, 2, -30, 95 },
			["Maxky|spineshatter"] = { 0, 2, -28, 95 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 118 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 17, 15, -62, 140 },
			["Shadøwsfall|thunderstrike"] = { 17, 15, -62, 140 },
			["Rli|spineshatter"] = { 22, 9, 1, 1297 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 1295 },
			["Forksache|spineshatter"] = { 12, 11, -73, 1331 },
			["Mblol|spineshatter"] = { 15, 6, 87, 117 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 1245 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 1252 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 1341 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 1362 },
			["Notagainqt|spineshatter"] = { 13, 4, 88, 165 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 1173 },
			["Backup|spineshatter"] = { 5, 7, -78, 129 },
			["Bând|spineshatter"] = { 5, 7, -78, 122 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 1307 },
			["Bimbolo|spineshatter"] = { 7, 4, 24, 129 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 1306 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 1245 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 165 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 1292 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 165 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 1410 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 1410 },
			["Karoups|spineshatter"] = { 1, 4, -36, 95 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 1318 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 1065 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 1182 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 1245 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 33 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 1316 },
			["Maxky|spineshatter"] = { 0, 2, -28, 95 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 1245 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 118 },
		},
	},
}

