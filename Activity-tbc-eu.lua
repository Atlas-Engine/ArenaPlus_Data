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
	built = 1795237163,
	builtText = "2026-11-20 11:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Thelsâ|spineshatter"] = { 4, 1, -3, 165 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 165 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 165 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 165 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 203 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 202 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 247 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 243 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 278 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 278 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 250 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 251 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 345 },
			["Fedow|spineshatter"] = { 3, 6, -99, 307 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 301 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 345 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 165 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 345 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 305 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 306 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 165 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 165 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 165 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 203 },
			["Shadøwsfall|thunderstrike"] = { 37, 33, -88, 202 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 247 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 243 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 250 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 278 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 278 },
			["Bomel|spineshatter"] = { 9, 7, 3, 369 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 251 },
			["Fedow|spineshatter"] = { 9, 6, -99, 307 },
			["Mblol|spineshatter"] = { 9, 5, 55, 657 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 525 },
			["Backup|spineshatter"] = { 5, 7, -78, 669 },
			["Bând|spineshatter"] = { 5, 7, -78, 662 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 345 },
			["Patricia|spineshatter"] = { 9, 2, 57, 524 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 705 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 705 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 301 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 379 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 362 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 380 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 443 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 443 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 419 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 345 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 165 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 345 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 305 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 500 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 495 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 380 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 573 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 571 },
			["Udrii|spineshatter"] = { 0, 3, -25, 453 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 306 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 399 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 399 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 165 },
			["Karoups|spineshatter"] = { 0, 2, -30, 635 },
			["Maxky|spineshatter"] = { 0, 2, -28, 635 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 165 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 658 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 165 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 165 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 369 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 203 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 202 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 247 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 243 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 250 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 278 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 278 },
			["Bomel|spineshatter"] = { 9, 7, 3, 369 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 251 },
			["Fedow|spineshatter"] = { 9, 6, -99, 307 },
			["Mblol|spineshatter"] = { 9, 5, 55, 657 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 525 },
			["Backup|spineshatter"] = { 5, 7, -78, 669 },
			["Bând|spineshatter"] = { 5, 7, -78, 662 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 345 },
			["Patricia|spineshatter"] = { 9, 2, 57, 524 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 705 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 705 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 301 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 379 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 362 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 380 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 443 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 443 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 419 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 345 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 165 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 345 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 305 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 500 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 495 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 380 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 573 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 571 },
			["Udrii|spineshatter"] = { 0, 3, -25, 453 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 306 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 399 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 399 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 165 },
			["Karoups|spineshatter"] = { 0, 2, -30, 635 },
			["Maxky|spineshatter"] = { 0, 2, -28, 635 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 165 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 658 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 165 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 165 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 369 },
		},
	},
}

