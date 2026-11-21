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
	built = 1795269562,
	builtText = "2026-11-21 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thelsâ|spineshatter"] = { 4, 1, -3, 705 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 705 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 705 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 705 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 40, 36, -80, 743 },
			["Shadøwsfall|thunderstrike"] = { 40, 36, -80, 742 },
			["Mfkaxx|spineshatter"] = { 19, 12, -4, 787 },
			["Crúyff|spineshatter"] = { 18, 11, 95, 783 },
			["Bimbolo|spineshatter"] = { 17, 10, 81, 790 },
			["Orcabrina|spineshatter"] = { 15, 12, 15, 818 },
			["Sustanøn|spineshatter"] = { 15, 12, 3, 818 },
			["Bomel|spineshatter"] = { 9, 7, 3, 909 },
			["Izabelyrg|spineshatter"] = { 10, 6, 3, 791 },
			["Fedow|spineshatter"] = { 9, 6, -99, 847 },
			["Mblol|spineshatter"] = { 9, 5, 55, 1197 },
			["Notagainqt|spineshatter"] = { 9, 5, 55, 1065 },
			["Backup|spineshatter"] = { 5, 7, -78, 1209 },
			["Bând|spineshatter"] = { 5, 7, -78, 1202 },
			["Marthozug|spineshatter"] = { 9, 2, 90, 885 },
			["Patricia|spineshatter"] = { 9, 2, 57, 1064 },
			["Ctrlaltdad|thunderstrike"] = { 7, 3, 63, 1245 },
			["Ungnevird|thunderstrike"] = { 7, 3, 33, 1245 },
			["Drainèr|spineshatter"] = { 5, 3, -8, 841 },
			["Druidcoachxx|spineshatter"] = { 3, 5, -32, 919 },
			["Soulmoo|spineshatter"] = { 6, 2, 51, 902 },
			["Sunodaix|spineshatter"] = { 3, 5, 0, 920 },
			["Meziljie|spineshatter"] = { 6, 0, 45, 983 },
			["Notnotyou|spineshatter"] = { 6, 0, 45, 983 },
			["Predatorxd|spineshatter"] = { 6, 0, 21, 959 },
			["Rotarepmi|thunderstrike"] = { 3, 3, -12, 885 },
			["Thelsâ|spineshatter"] = { 4, 2, -21, 705 },
			["Vetó|thunderstrike"] = { 3, 3, -3, 885 },
			["Kamilzhgpl|spineshatter"] = { 1, 3, -43, 845 },
			["Lyswr|spineshatter"] = { 1, 3, -34, 1040 },
			["Zalguu|spineshatter"] = { 1, 3, -34, 1035 },
			["Davedosx|spineshatter"] = { 0, 3, -16, 920 },
			["Primeglad|spineshatter"] = { 3, 0, 8, 1113 },
			["Psyzerg|spineshatter"] = { 3, 0, 27, 1111 },
			["Udrii|spineshatter"] = { 0, 3, -25, 993 },
			["Xnatry|spineshatter"] = { 3, 0, 27, 846 },
			["Dogwoman|spineshatter"] = { 1, 1, -14, 939 },
			["Fedowjr|spineshatter"] = { 1, 1, -10, 939 },
			["Jiilu|thunderstrike"] = { 2, 0, 10, 705 },
			["Karoups|spineshatter"] = { 0, 2, -30, 1175 },
			["Maxky|spineshatter"] = { 0, 2, -28, 1175 },
			["Xuckíe|thunderstrike"] = { 1, 1, -15, 705 },
			["Itsrng|spineshatter"] = { 0, 1, 0, 1198 },
			["Jilux|thunderstrike"] = { 0, 1, -20, 705 },
			["Xuckee|thunderstrike"] = { 1, 0, 16, 705 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 0, 1, -15, 909 },
		},
	},
}

