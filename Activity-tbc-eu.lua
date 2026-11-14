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
	built = 1794664762,
	builtText = "2026-11-14 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Skyreal|spineshatter"] = { 4, 3, 20, 24 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 22 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 46 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Oldp|spineshatter"] = { 4, 4, 4, 77 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 24 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 22 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 46 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Oldp|spineshatter"] = { 4, 4, 4, 77 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 24 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 22 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 46 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Oldp|spineshatter"] = { 4, 4, 4, 77 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 24 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 22 },
			["Davedosx|spineshatter"] = { 1, 3, -34, 705 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 46 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 20, 15, 86, 814 },
			["Izabelyrg|spineshatter"] = { 16, 15, 22, 947 },
			["Nutcracky|spineshatter"] = { 22, 7, 64, 1140 },
			["Nastycarrote|spineshatter"] = { 16, 10, 131, 1018 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 929 },
			["Jarnotrolli|spineshatter"] = { 13, 11, 58, 1036 },
			["Oldtobye|spineshatter"] = { 13, 11, 13, 1036 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 865 },
			["Primár|spineshatter"] = { 12, 11, -1, 865 },
			["Kirlynn|spineshatter"] = { 13, 8, 21, 1025 },
			["Garad|spineshatter"] = { 7, 13, -84, 833 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 832 },
			["Budgetßolg|spineshatter"] = { 13, 5, 70, 1002 },
			["Mblol|spineshatter"] = { 13, 5, 52, 850 },
			["Kirkoss|spineshatter"] = { 12, 4, 124, 1057 },
			["Zapaxctpaxa|spineshatter"] = { 12, 4, 124, 1078 },
			["Überflieger|thunderstrike"] = { 7, 8, -8, 1049 },
			["Warriael|thunderstrike"] = { 7, 8, 7, 1050 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 886 },
			["Dapqueue|spineshatter"] = { 7, 6, -9, 1115 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 705 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 805 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 885 },
			["Funkyxd|spineshatter"] = { 7, 6, -16, 984 },
			["Lebsterr|spineshatter"] = { 12, 1, 114, 1002 },
			["Orcabrina|spineshatter"] = { 6, 7, -12, 856 },
			["Sustanøn|spineshatter"] = { 6, 7, -11, 865 },
			["Twatcatcher|spineshatter"] = { 7, 6, -16, 1002 },
			["Nutellaskurk|spineshatter"] = { 7, 5, 2, 1061 },
			["Xolaire|spineshatter"] = { 7, 5, 0, 1060 },
			["Zanven|spineshatter"] = { 6, 6, -34, 1056 },
			["Dogwoman|spineshatter"] = { 7, 4, 17, 1065 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 1096 },
			["Systemhack|spineshatter"] = { 6, 5, -9, 972 },
			["Worldemoboss|spineshatter"] = { 6, 5, -37, 1003 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 947 },
			["Bobblegubben|spineshatter"] = { 6, 4, 24, 1084 },
			["Yarz|spineshatter"] = { 4, 6, -59, 1127 },
			["Livdelz|spineshatter"] = { 3, 6, -38, 1044 },
			["Oldp|spineshatter"] = { 4, 4, 4, 77 },
			["Arnesson|spineshatter"] = { 5, 2, 47, 1005 },
			["Nppn|spineshatter"] = { 5, 2, 46, 1007 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 24 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 22 },
			["Glk|spineshatter"] = { 1, 5, 2, 885 },
			["Lumskebuksen|thunderstrike"] = { 2, 4, -16, 1006 },
			["Requiemit|spineshatter"] = { 2, 4, -35, 1065 },
			["Vaeerrys|spineshatter"] = { 3, 3, -4, 1065 },
			["Vannah|spineshatter"] = { 2, 4, -35, 1065 },
			["Vindzxd|thunderstrike"] = { 2, 4, -22, 1006 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 1264 },
			["Eaxlow|thunderstrike"] = { 3, 2, 1, 1081 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 1110 },
			["Seeyalolz|thunderstrike"] = { 3, 2, 12, 1080 },
			["Votrex|spineshatter"] = { 5, 0, 17, 1245 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 1111 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 1002 },
			["Buuni|spineshatter"] = { 1, 3, -32, 1065 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 1114 },
			["Northlane|spineshatter"] = { 1, 3, -29, 1065 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 1114 },
			["Gopvp|spineshatter"] = { 0, 3, -50, 1065 },
			["Scratm|spineshatter"] = { 0, 3, -39, 1065 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 46 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 885 },
			["Izcall|spineshatter"] = { 0, 2, -27, 885 },
			["Moonlightex|spineshatter"] = { 1, 1, -1, 1065 },
			["Pstmalone|spineshatter"] = { 0, 2, -21, 1065 },
			["Spiderthem|spineshatter"] = { 0, 2, -27, 1065 },
			["Thedarkway|spineshatter"] = { 0, 2, -34, 1065 },
			["Tinycow|spineshatter"] = { 0, 2, -21, 1065 },
			["Xiaohong|spineshatter"] = { 1, 1, 2, 1065 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 1111 },
			["Cinthya|spineshatter"] = { 1, 0, 2, 1065 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 1091 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 877 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 2, 2, 4, 1065 },
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 1105 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 1103 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 1104 },
			["Kaelolo|spineshatter"] = { 2, 0, 13, 964 },
			["Mblol|spineshatter"] = { 2, 0, 8, 885 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 885 },
		},
	},
}

