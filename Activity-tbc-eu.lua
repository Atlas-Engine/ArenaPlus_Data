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
	built = 1795262367,
	builtText = "2026-11-21 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 623 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 622 },
			["Bimbolo|spineshatter"] = { 10, 6, 57, 670 },
			["Crúyff|spineshatter"] = { 9, 7, 25, 663 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 671 },
			["Mfkaxx|spineshatter"] = { 9, 7, -16, 667 },
			["Orcabrina|spineshatter"] = { 6, 6, -9, 698 },
			["Sustanøn|spineshatter"] = { 6, 6, -13, 698 },
			["Thelsâ|spineshatter"] = { 4, 1, -3, 585 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 585 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 585 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 585 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 585 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 623 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 622 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 667 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 663 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 670 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 698 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 698 },
			["Bomel|spineshatter"] = { 9, 7, 3, 789 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 671 },
			["Fedow|spineshatter"] = { 9, 6, -99, 727 },
			["Mblol|spineshatter"] = { 9, 5, 55, 1077 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 945 },
			["Backup|spineshatter"] = { 5, 7, -78, 1089 },
			["Bând|spineshatter"] = { 5, 7, -78, 1082 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 765 },
			["Patricia|spineshatter"] = { 9, 2, 57, 944 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 1125 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 1125 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 721 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 799 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 783 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 800 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 863 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 863 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 839 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 765 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 585 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 765 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 726 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 920 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 915 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 800 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 993 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 991 },
			["Udrii|spineshatter"] = { 0, 3, -25, 873 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 726 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 819 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 819 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 585 },
			["Karoups|spineshatter"] = { 0, 2, -30, 1055 },
			["Maxky|spineshatter"] = { 0, 2, -28, 1055 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 585 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 1078 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 585 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 585 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 789 },
		},
	},
}

