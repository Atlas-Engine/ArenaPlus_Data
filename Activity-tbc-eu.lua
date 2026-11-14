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
	built = 1794661165,
	builtText = "2026-11-14 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Oldp|spineshatter"] = { 4, 4, 4, 17 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Oldp|spineshatter"] = { 4, 4, 4, 17 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Oldp|spineshatter"] = { 4, 4, 4, 17 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Oldp|spineshatter"] = { 4, 4, 4, 17 },
			["Davedosx|spineshatter"] = { 1, 3, -34, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 20, 15, 86, 754 },
			["Izabelyrg|spineshatter"] = { 16, 15, 22, 887 },
			["Nutcracky|spineshatter"] = { 22, 7, 64, 1080 },
			["Nastycarrote|spineshatter"] = { 16, 10, 131, 958 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 869 },
			["Jarnotrolli|spineshatter"] = { 13, 11, 58, 976 },
			["Oldtobye|spineshatter"] = { 13, 11, 13, 976 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 805 },
			["Primár|spineshatter"] = { 12, 11, -1, 805 },
			["Kirlynn|spineshatter"] = { 13, 8, 21, 965 },
			["Garad|spineshatter"] = { 7, 13, -84, 773 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 772 },
			["Budgetßolg|spineshatter"] = { 13, 5, 70, 942 },
			["Mblol|spineshatter"] = { 13, 5, 52, 790 },
			["Kirkoss|spineshatter"] = { 12, 4, 124, 997 },
			["Zapaxctpaxa|spineshatter"] = { 12, 4, 124, 1018 },
			["Überflieger|thunderstrike"] = { 7, 8, -8, 989 },
			["Warriael|thunderstrike"] = { 7, 8, 7, 990 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 826 },
			["Dapqueue|spineshatter"] = { 7, 6, -9, 1055 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 645 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 745 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 825 },
			["Funkyxd|spineshatter"] = { 7, 6, -16, 924 },
			["Lebsterr|spineshatter"] = { 12, 1, 114, 942 },
			["Orcabrina|spineshatter"] = { 6, 7, -12, 796 },
			["Sustanøn|spineshatter"] = { 6, 7, -11, 805 },
			["Twatcatcher|spineshatter"] = { 7, 6, -16, 942 },
			["Nutellaskurk|spineshatter"] = { 7, 5, 2, 1001 },
			["Xolaire|spineshatter"] = { 7, 5, 0, 1000 },
			["Zanven|spineshatter"] = { 6, 6, -34, 996 },
			["Dogwoman|spineshatter"] = { 7, 4, 17, 1005 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 1036 },
			["Systemhack|spineshatter"] = { 6, 5, -9, 913 },
			["Worldemoboss|spineshatter"] = { 6, 5, -37, 943 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 887 },
			["Bobblegubben|spineshatter"] = { 6, 4, 24, 1024 },
			["Yarz|spineshatter"] = { 4, 6, -59, 1067 },
			["Livdelz|spineshatter"] = { 3, 6, -38, 984 },
			["Oldp|spineshatter"] = { 4, 4, 4, 17 },
			["Arnesson|spineshatter"] = { 5, 2, 47, 945 },
			["Nppn|spineshatter"] = { 5, 2, 46, 947 },
			["Glk|spineshatter"] = { 1, 5, 2, 825 },
			["Lumskebuksen|thunderstrike"] = { 2, 4, -16, 946 },
			["Requiemit|spineshatter"] = { 2, 4, -35, 1005 },
			["Vaeerrys|spineshatter"] = { 3, 3, -4, 1005 },
			["Vannah|spineshatter"] = { 2, 4, -35, 1005 },
			["Vindzxd|thunderstrike"] = { 2, 4, -22, 946 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 1204 },
			["Eaxlow|thunderstrike"] = { 3, 2, 1, 1021 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 1050 },
			["Seeyalolz|thunderstrike"] = { 3, 2, 12, 1020 },
			["Votrex|spineshatter"] = { 5, 0, 17, 1185 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 1051 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 942 },
			["Buuni|spineshatter"] = { 1, 3, -32, 1005 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 1054 },
			["Northlane|spineshatter"] = { 1, 3, -29, 1005 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 1054 },
			["Gopvp|spineshatter"] = { 0, 3, -50, 1005 },
			["Scratm|spineshatter"] = { 0, 3, -39, 1005 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 825 },
			["Izcall|spineshatter"] = { 0, 2, -27, 825 },
			["Moonlightex|spineshatter"] = { 1, 1, -1, 1005 },
			["Pstmalone|spineshatter"] = { 0, 2, -21, 1005 },
			["Spiderthem|spineshatter"] = { 0, 2, -27, 1005 },
			["Thedarkway|spineshatter"] = { 0, 2, -34, 1005 },
			["Tinycow|spineshatter"] = { 0, 2, -21, 1005 },
			["Xiaohong|spineshatter"] = { 1, 1, 2, 1005 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 1051 },
			["Cinthya|spineshatter"] = { 1, 0, 2, 1005 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 1031 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 817 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 2, 2, 4, 1005 },
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 1045 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 1043 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 1044 },
			["Kaelolo|spineshatter"] = { 2, 0, 13, 904 },
			["Mblol|spineshatter"] = { 2, 0, 8, 825 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 825 },
		},
	},
}

