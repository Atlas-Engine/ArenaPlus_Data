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
	built = 1795247969,
	builtText = "2026-11-21 02:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thelsâ|spineshatter"] = { 4, 1, -3, 345 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 345 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 345 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 345 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 31, 26, -28, 383 },
			["Shadøwsfall|thunderstrike"] = { 31, 26, -28, 382 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 427 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 423 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 458 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 458 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 431 },
			["Bomel|spineshatter"] = { 9, 7, 3, 549 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 431 },
			["Fedow|spineshatter"] = { 9, 6, -99, 487 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 525 },
			["Patricia|spineshatter"] = { 9, 2, 57, 704 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 481 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 559 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 543 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 560 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 623 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 623 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 599 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 525 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 345 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 525 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 486 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 680 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 705 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 675 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 560 },
			["Udrii|spineshatter"] = { 0, 3, -25, 633 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 486 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 579 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 579 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 345 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 345 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 345 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 345 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 549 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 383 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 382 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 427 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 423 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 431 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 458 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 458 },
			["Bomel|spineshatter"] = { 9, 7, 3, 549 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 431 },
			["Fedow|spineshatter"] = { 9, 6, -99, 487 },
			["Mblol|spineshatter"] = { 9, 5, 55, 837 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 705 },
			["Backup|spineshatter"] = { 5, 7, -78, 850 },
			["Bând|spineshatter"] = { 5, 7, -78, 842 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 525 },
			["Patricia|spineshatter"] = { 9, 2, 57, 704 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 885 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 885 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 481 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 559 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 543 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 560 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 623 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 623 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 599 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 525 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 345 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 525 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 486 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 680 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 675 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 560 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 754 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 752 },
			["Udrii|spineshatter"] = { 0, 3, -25, 633 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 486 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 579 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 579 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 345 },
			["Karoups|spineshatter"] = { 0, 2, -30, 815 },
			["Maxky|spineshatter"] = { 0, 2, -28, 815 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 345 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 838 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 345 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 345 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 549 },
		},
	},
}

