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
	built = 1795251566,
	builtText = "2026-11-21 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 443 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 442 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 487 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 483 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 518 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 518 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 490 },
			["Bomel|spineshatter"] = { 9, 7, 3, 609 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 491 },
			["Fedow|spineshatter"] = { 9, 6, -99, 547 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 585 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 541 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 619 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 602 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 620 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 683 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 683 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 659 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 585 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 405 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 585 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 546 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 620 },
			["Udrii|spineshatter"] = { 0, 3, -25, 693 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 546 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 639 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 639 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 405 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 405 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 405 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 405 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 609 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 443 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 442 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 487 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 483 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 490 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 518 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 518 },
			["Bomel|spineshatter"] = { 9, 7, 3, 609 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 491 },
			["Fedow|spineshatter"] = { 9, 6, -99, 547 },
			["Mblol|spineshatter"] = { 9, 5, 55, 897 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 765 },
			["Backup|spineshatter"] = { 5, 7, -78, 909 },
			["Bând|spineshatter"] = { 5, 7, -78, 902 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 585 },
			["Patricia|spineshatter"] = { 9, 2, 57, 764 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 945 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 945 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 541 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 619 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 602 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 620 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 683 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 683 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 659 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 585 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 405 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 585 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 546 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 740 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 735 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 620 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 813 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 811 },
			["Udrii|spineshatter"] = { 0, 3, -25, 693 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 546 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 639 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 639 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 405 },
			["Karoups|spineshatter"] = { 0, 2, -30, 875 },
			["Maxky|spineshatter"] = { 0, 2, -28, 875 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 405 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 898 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 405 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 405 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 609 },
		},
	},
}

