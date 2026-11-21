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
	built = 1795226362,
	builtText = "2026-11-20 08:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 67 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 63 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 98 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 98 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 70 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 71 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 165 },
			["Grimroll|thunderstrike"] = { 4, 6, -27, 123 },
			["Fedow|spineshatter"] = { 3, 6, -99, 127 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 121 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 165 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 165 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 125 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 126 },
			["Thelsâ|spineshatter"] = { 0, 1, -18, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 67 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 63 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 98 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 98 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 70 },
			["Bomel|spineshatter"] = { 9, 7, 3, 189 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 71 },
			["Fedow|spineshatter"] = { 9, 6, -99, 127 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 165 },
			["Patricia|spineshatter"] = { 9, 2, 57, 344 },
			["Grimroll|thunderstrike"] = { 4, 6, -27, 123 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 121 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 199 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 182 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 200 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 263 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 263 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 239 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 165 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 165 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 125 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 320 },
			["Notagainqt|spineshatter"] = { 2, 2, -1, 345 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 315 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 200 },
			["Udrii|spineshatter"] = { 0, 3, -25, 273 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 126 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 219 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 219 },
			["Thelsâ|spineshatter"] = { 0, 1, -18, 165 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 189 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 67 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 63 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 70 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 98 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 98 },
			["Bomel|spineshatter"] = { 9, 7, 3, 189 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 71 },
			["Fedow|spineshatter"] = { 9, 6, -99, 127 },
			["Mblol|spineshatter"] = { 9, 5, 55, 477 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 345 },
			["Backup|spineshatter"] = { 5, 7, -78, 489 },
			["Bând|spineshatter"] = { 5, 7, -78, 482 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 165 },
			["Patricia|spineshatter"] = { 9, 2, 57, 344 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 525 },
			["Grimroll|thunderstrike"] = { 4, 6, -27, 123 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 525 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 121 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 199 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 182 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 200 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 263 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 263 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 239 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 165 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 165 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 125 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 320 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 315 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 200 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 393 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 391 },
			["Udrii|spineshatter"] = { 0, 3, -25, 273 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 126 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 219 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 219 },
			["Karoups|spineshatter"] = { 0, 2, -30, 455 },
			["Maxky|spineshatter"] = { 0, 2, -28, 455 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 478 },
			["Thelsâ|spineshatter"] = { 0, 1, -18, 165 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 189 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mfkaxx|spineshatter"] = { 20, 15, -34, 67 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 63 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 70 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 98 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 98 },
			["Bomel|spineshatter"] = { 9, 7, 3, 189 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 71 },
			["Fedow|spineshatter"] = { 9, 6, -99, 127 },
			["Mblol|spineshatter"] = { 9, 5, 55, 477 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 345 },
			["Backup|spineshatter"] = { 5, 7, -78, 489 },
			["Bând|spineshatter"] = { 5, 7, -78, 482 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 165 },
			["Patricia|spineshatter"] = { 9, 2, 57, 344 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 525 },
			["Grimroll|thunderstrike"] = { 4, 6, -27, 123 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 525 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 121 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 199 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 182 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 200 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 263 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 263 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 239 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 165 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 165 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 125 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 320 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 315 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 200 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 393 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 391 },
			["Udrii|spineshatter"] = { 0, 3, -25, 273 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 126 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 219 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 219 },
			["Karoups|spineshatter"] = { 0, 2, -30, 455 },
			["Maxky|spineshatter"] = { 0, 2, -28, 455 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 478 },
			["Thelsâ|spineshatter"] = { 0, 1, -18, 165 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 189 },
		},
	},
}

