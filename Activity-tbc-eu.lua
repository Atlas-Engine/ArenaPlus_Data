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
	built = 1795233561,
	builtText = "2026-11-20 10:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 143 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 142 },
			["Thelsâ|spineshatter"] = { 4, 1, -3, 105 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 105 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 105 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 105 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 143 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 142 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 187 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 183 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 218 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 218 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 190 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 191 },
			["Fedow|spineshatter"] = { 9, 6, -99, 247 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 285 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 241 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 319 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 302 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 320 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 359 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 285 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 105 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 285 },
			["Bomel|spineshatter"] = { 3, 1, 24, 309 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 245 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 320 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 246 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 339 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 339 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 105 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 105 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 105 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 105 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 309 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 143 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 142 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 187 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 183 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 190 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 218 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 218 },
			["Bomel|spineshatter"] = { 9, 7, 3, 309 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 191 },
			["Fedow|spineshatter"] = { 9, 6, -99, 247 },
			["Mblol|spineshatter"] = { 9, 5, 55, 597 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 465 },
			["Backup|spineshatter"] = { 5, 7, -78, 609 },
			["Bând|spineshatter"] = { 5, 7, -78, 602 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 285 },
			["Patricia|spineshatter"] = { 9, 2, 57, 464 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 645 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 645 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 241 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 319 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 302 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 320 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 383 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 383 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 359 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 285 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 105 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 285 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 245 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 440 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 435 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 320 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 513 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 511 },
			["Udrii|spineshatter"] = { 0, 3, -25, 393 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 246 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 339 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 339 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 105 },
			["Karoups|spineshatter"] = { 0, 2, -30, 575 },
			["Maxky|spineshatter"] = { 0, 2, -28, 575 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 105 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 598 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 105 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 105 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 309 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 143 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 142 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 187 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 183 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 190 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 218 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 218 },
			["Bomel|spineshatter"] = { 9, 7, 3, 309 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 191 },
			["Fedow|spineshatter"] = { 9, 6, -99, 247 },
			["Mblol|spineshatter"] = { 9, 5, 55, 597 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 465 },
			["Backup|spineshatter"] = { 5, 7, -78, 609 },
			["Bând|spineshatter"] = { 5, 7, -78, 602 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 285 },
			["Patricia|spineshatter"] = { 9, 2, 57, 464 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 645 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 645 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 241 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 319 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 302 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 320 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 383 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 383 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 359 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 285 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 105 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 285 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 245 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 440 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 435 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 320 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 513 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 511 },
			["Udrii|spineshatter"] = { 0, 3, -25, 393 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 246 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 339 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 339 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 105 },
			["Karoups|spineshatter"] = { 0, 2, -30, 575 },
			["Maxky|spineshatter"] = { 0, 2, -28, 575 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 105 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 598 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 105 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 105 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 309 },
		},
	},
}

