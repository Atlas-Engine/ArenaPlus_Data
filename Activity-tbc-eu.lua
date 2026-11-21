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
	built = 1795255163,
	builtText = "2026-11-21 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 503 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 502 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 547 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 543 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 578 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 578 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 550 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 551 },
			["Fedow|spineshatter"] = { 9, 6, -99, 607 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 645 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 601 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 679 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 662 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 680 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 719 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 645 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 465 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 645 },
			["Bomel|spineshatter"] = { 3, 1, 24, 669 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 605 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 680 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 606 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 699 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 699 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 465 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 465 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 465 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 465 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 669 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 503 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 502 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 547 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 543 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 550 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 578 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 578 },
			["Bomel|spineshatter"] = { 9, 7, 3, 669 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 551 },
			["Fedow|spineshatter"] = { 9, 6, -99, 607 },
			["Mblol|spineshatter"] = { 9, 5, 55, 957 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 825 },
			["Backup|spineshatter"] = { 5, 7, -78, 969 },
			["Bând|spineshatter"] = { 5, 7, -78, 962 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 645 },
			["Patricia|spineshatter"] = { 9, 2, 57, 824 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 1005 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 1005 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 601 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 679 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 662 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 680 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 743 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 743 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 719 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 645 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 465 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 645 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 605 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 800 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 795 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 680 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 873 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 871 },
			["Udrii|spineshatter"] = { 0, 3, -25, 753 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 606 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 699 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 699 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 465 },
			["Karoups|spineshatter"] = { 0, 2, -30, 935 },
			["Maxky|spineshatter"] = { 0, 2, -28, 935 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 465 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 958 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 465 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 465 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 669 },
		},
	},
}

