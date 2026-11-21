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
	built = 1795240763,
	builtText = "2026-11-21 12:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 263 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 262 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 310 },
			["Crúyff|spineshatter"] = { 9, 7, 25, 303 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 311 },
			["Mfkaxx|spineshatter"] = { 9, 7, -16, 307 },
			["Orcabrina|spineshatter"] = { 6, 6, -9, 338 },
			["Sustanøn|spineshatter"] = { 6, 6, -13, 338 },
			["Thelsâ|spineshatter"] = { 4, 1, -3, 225 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 225 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 225 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 225 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 225 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 31, 26, -28, 263 },
			["Shadøwsfall|thunderstrike"] = { 31, 26, -28, 262 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 307 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 303 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 338 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 338 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 310 },
			["Bomel|spineshatter"] = { 9, 7, 3, 429 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 311 },
			["Fedow|spineshatter"] = { 9, 6, -99, 367 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 405 },
			["Patricia|spineshatter"] = { 9, 2, 57, 584 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 361 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 439 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 422 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 440 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 503 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 503 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 479 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 405 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 225 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 405 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 365 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 560 },
			["Mblol|spineshatter"] = { 2, 2, -1, 717 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 585 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 555 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 440 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 633 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 631 },
			["Udrii|spineshatter"] = { 0, 3, -25, 513 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 366 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 459 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 459 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 225 },
			["Karoups|spineshatter"] = { 0, 2, -30, 695 },
			["Maxky|spineshatter"] = { 0, 2, -28, 695 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 225 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 718 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 225 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 225 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 429 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 263 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 262 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 307 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 303 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 310 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 338 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 338 },
			["Bomel|spineshatter"] = { 9, 7, 3, 429 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 311 },
			["Fedow|spineshatter"] = { 9, 6, -99, 367 },
			["Mblol|spineshatter"] = { 9, 5, 55, 717 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 585 },
			["Backup|spineshatter"] = { 5, 7, -78, 729 },
			["Bând|spineshatter"] = { 5, 7, -78, 722 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 405 },
			["Patricia|spineshatter"] = { 9, 2, 57, 584 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 765 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 765 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 361 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 439 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 422 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 440 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 503 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 503 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 479 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 405 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 225 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 405 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 365 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 560 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 555 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 440 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 633 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 631 },
			["Udrii|spineshatter"] = { 0, 3, -25, 513 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 366 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 459 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 459 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 225 },
			["Karoups|spineshatter"] = { 0, 2, -30, 695 },
			["Maxky|spineshatter"] = { 0, 2, -28, 695 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 225 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 718 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 225 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 225 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 429 },
		},
	},
}

