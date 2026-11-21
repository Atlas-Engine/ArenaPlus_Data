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
	built = 1795258765,
	builtText = "2026-11-21 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 563 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 562 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 607 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 603 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 638 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 638 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 610 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 611 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 705 },
			["Fedow|spineshatter"] = { 3, 6, -99, 667 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 661 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 705 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 525 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 705 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 666 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 666 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 525 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 525 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 525 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 525 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 563 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 562 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 607 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 603 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 610 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 638 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 638 },
			["Bomel|spineshatter"] = { 9, 7, 3, 729 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 611 },
			["Fedow|spineshatter"] = { 9, 6, -99, 667 },
			["Mblol|spineshatter"] = { 9, 5, 55, 1017 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 885 },
			["Backup|spineshatter"] = { 5, 7, -78, 1029 },
			["Bând|spineshatter"] = { 5, 7, -78, 1022 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 705 },
			["Patricia|spineshatter"] = { 9, 2, 57, 884 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 1065 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 1065 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 661 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 739 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 722 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 740 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 803 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 803 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 779 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 705 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 525 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 705 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 666 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 860 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 855 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 740 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 933 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 931 },
			["Udrii|spineshatter"] = { 0, 3, -25, 813 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 666 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 759 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 759 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 525 },
			["Karoups|spineshatter"] = { 0, 2, -30, 995 },
			["Maxky|spineshatter"] = { 0, 2, -28, 995 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 525 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 1018 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 525 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 525 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 729 },
		},
	},
}

