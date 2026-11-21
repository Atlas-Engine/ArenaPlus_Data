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
	built = 1795265964,
	builtText = "2026-11-21 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, -38, 683 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, -38, 682 },
			["Thelsâ|spineshatter"] = { 4, 1, -3, 645 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 645 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 645 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 645 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 683 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 682 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 727 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 723 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 730 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 758 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 758 },
			["Bomel|spineshatter"] = { 9, 7, 3, 849 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 731 },
			["Fedow|spineshatter"] = { 9, 6, -99, 787 },
			["Mblol|spineshatter"] = { 9, 5, 55, 1137 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 1005 },
			["Backup|spineshatter"] = { 5, 7, -78, 1149 },
			["Bând|spineshatter"] = { 5, 7, -78, 1142 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 825 },
			["Patricia|spineshatter"] = { 9, 2, 57, 1004 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 1185 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 1185 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 781 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 859 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 842 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 860 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 923 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 923 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 899 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 825 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 645 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 825 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 785 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 980 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 975 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 860 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 1053 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 1051 },
			["Udrii|spineshatter"] = { 0, 3, -25, 933 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 786 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 879 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 879 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 645 },
			["Karoups|spineshatter"] = { 0, 2, -30, 1115 },
			["Maxky|spineshatter"] = { 0, 2, -28, 1115 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 645 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 1138 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 645 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 645 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 849 },
		},
	},
}

