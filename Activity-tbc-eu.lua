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
	built = 1795273170,
	builtText = "2026-11-21 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 46 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 46 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 46 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 46 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 46 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 46 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Überflieger|thunderstrike"] = { 3, 0, 17, 46 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 46 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 803 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 802 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 847 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 843 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 851 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 878 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 878 },
			["Bomel|spineshatter"] = { 9, 7, 3, 969 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 851 },
			["Fedow|spineshatter"] = { 9, 6, -99, 907 },
			["Mblol|spineshatter"] = { 9, 5, 55, 1257 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 1126 },
			["Backup|spineshatter"] = { 5, 7, -78, 1270 },
			["Bând|spineshatter"] = { 5, 7, -78, 1262 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 946 },
			["Patricia|spineshatter"] = { 9, 2, 57, 1124 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 1306 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 1306 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 901 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 979 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 963 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 980 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 1043 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 1044 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 1019 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 946 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 766 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 946 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 906 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 1100 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 1095 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 980 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 1174 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 1172 },
			["Überflieger|thunderstrike"] = { 3, 0, 17, 46 },
			["Udrii|spineshatter"] = { 0, 3, -25, 1053 },
			["Warriael|thunderstrike"] = { 3, 0, 19, 46 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 906 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 999 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 999 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 766 },
			["Karoups|spineshatter"] = { 0, 2, -30, 1235 },
			["Maxky|spineshatter"] = { 0, 2, -28, 1235 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 766 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 1258 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 766 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 766 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 969 },
		},
	},
}

