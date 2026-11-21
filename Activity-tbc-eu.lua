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
	built = 1795244372,
	builtText = "2026-11-21 01:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 323 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 322 },
			["Thelsâ|spineshatter"] = { 4, 1, -3, 286 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 286 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 286 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 286 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 286 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 31, 26, -28, 323 },
			["Shadøwsfall|thunderstrike"] = { 31, 26, -28, 322 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 367 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 363 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 398 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 398 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 371 },
			["Bomel|spineshatter"] = { 9, 7, 3, 489 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 371 },
			["Fedow|spineshatter"] = { 9, 6, -99, 427 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 466 },
			["Patricia|spineshatter"] = { 9, 2, 57, 644 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 421 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 499 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 483 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 500 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 563 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 564 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 539 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 466 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 286 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 466 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 426 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 620 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 646 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 615 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 500 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 694 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 692 },
			["Udrii|spineshatter"] = { 0, 3, -25, 573 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 426 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 519 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 519 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 286 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 286 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 286 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 286 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 489 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 323 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 322 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 367 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 363 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 371 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 398 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 398 },
			["Bomel|spineshatter"] = { 9, 7, 3, 489 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 371 },
			["Fedow|spineshatter"] = { 9, 6, -99, 427 },
			["Mblol|spineshatter"] = { 9, 5, 55, 777 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 646 },
			["Backup|spineshatter"] = { 5, 7, -78, 790 },
			["Bând|spineshatter"] = { 5, 7, -78, 782 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 466 },
			["Patricia|spineshatter"] = { 9, 2, 57, 644 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 826 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 826 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 421 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 499 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 483 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 500 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 563 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 564 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 539 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 466 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 286 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 466 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 426 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 620 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 615 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 500 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 694 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 692 },
			["Udrii|spineshatter"] = { 0, 3, -25, 573 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 426 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 519 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 519 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 286 },
			["Karoups|spineshatter"] = { 0, 2, -30, 755 },
			["Maxky|spineshatter"] = { 0, 2, -28, 755 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 286 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 779 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 286 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 286 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 489 },
		},
	},
}

