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
	built = 1794657581,
	builtText = "2026-11-14 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Garad|spineshatter"] = { 4, 4, 11, 713 },
			["Tyzin|spineshatter"] = { 4, 4, 11, 712 },
			["Notagainqt|spineshatter"] = { 5, 1, 38, 694 },
			["Davedosx|spineshatter"] = { 1, 3, -34, 586 },
			["Druidcoachx|spineshatter"] = { 1, 3, -27, 685 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 20, 15, 86, 694 },
			["Izabelyrg|spineshatter"] = { 16, 15, 22, 828 },
			["Nutcracky|spineshatter"] = { 22, 7, 64, 1021 },
			["Nastycarrote|spineshatter"] = { 16, 10, 131, 898 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 809 },
			["Jarnotrolli|spineshatter"] = { 13, 11, 58, 916 },
			["Oldtobye|spineshatter"] = { 13, 11, 13, 916 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 746 },
			["Primár|spineshatter"] = { 12, 11, -1, 746 },
			["Kirlynn|spineshatter"] = { 13, 8, 21, 905 },
			["Garad|spineshatter"] = { 7, 13, -84, 713 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 712 },
			["Budgetßolg|spineshatter"] = { 13, 5, 70, 882 },
			["Mblol|spineshatter"] = { 13, 5, 52, 730 },
			["Kirkoss|spineshatter"] = { 12, 4, 124, 938 },
			["Zapaxctpaxa|spineshatter"] = { 12, 4, 124, 958 },
			["Überflieger|thunderstrike"] = { 7, 8, -8, 929 },
			["Warriael|thunderstrike"] = { 7, 8, 7, 930 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 766 },
			["Dapqueue|spineshatter"] = { 7, 6, -9, 995 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 586 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 685 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 766 },
			["Funkyxd|spineshatter"] = { 7, 6, -16, 865 },
			["Lebsterr|spineshatter"] = { 12, 1, 114, 882 },
			["Orcabrina|spineshatter"] = { 6, 7, -12, 736 },
			["Sustanøn|spineshatter"] = { 6, 7, -11, 746 },
			["Twatcatcher|spineshatter"] = { 7, 6, -16, 883 },
			["Nutellaskurk|spineshatter"] = { 7, 5, 2, 941 },
			["Xolaire|spineshatter"] = { 7, 5, 0, 941 },
			["Zanven|spineshatter"] = { 6, 6, -34, 936 },
			["Dogwoman|spineshatter"] = { 7, 4, 17, 946 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 976 },
			["Systemhack|spineshatter"] = { 6, 5, -9, 853 },
			["Worldemoboss|spineshatter"] = { 6, 5, -37, 883 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 828 },
			["Bobblegubben|spineshatter"] = { 6, 4, 24, 965 },
			["Yarz|spineshatter"] = { 4, 6, -59, 1007 },
			["Livdelz|spineshatter"] = { 3, 6, -38, 924 },
			["Arnesson|spineshatter"] = { 5, 2, 47, 885 },
			["Nppn|spineshatter"] = { 5, 2, 46, 887 },
			["Glk|spineshatter"] = { 1, 5, 2, 766 },
			["Lumskebuksen|thunderstrike"] = { 2, 4, -16, 886 },
			["Requiemit|spineshatter"] = { 2, 4, -35, 946 },
			["Vaeerrys|spineshatter"] = { 3, 3, -4, 946 },
			["Vannah|spineshatter"] = { 2, 4, -35, 946 },
			["Vindzxd|thunderstrike"] = { 2, 4, -22, 887 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 1144 },
			["Eaxlow|thunderstrike"] = { 3, 2, 1, 961 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 991 },
			["Seeyalolz|thunderstrike"] = { 3, 2, 12, 960 },
			["Votrex|spineshatter"] = { 5, 0, 17, 1126 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 992 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 882 },
			["Buuni|spineshatter"] = { 1, 3, -32, 946 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 994 },
			["Northlane|spineshatter"] = { 1, 3, -29, 946 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 994 },
			["Gopvp|spineshatter"] = { 0, 3, -50, 946 },
			["Scratm|spineshatter"] = { 0, 3, -39, 946 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 766 },
			["Izcall|spineshatter"] = { 0, 2, -27, 766 },
			["Moonlightex|spineshatter"] = { 1, 1, -1, 946 },
			["Pstmalone|spineshatter"] = { 0, 2, -21, 946 },
			["Spiderthem|spineshatter"] = { 0, 2, -27, 946 },
			["Thedarkway|spineshatter"] = { 0, 2, -34, 946 },
			["Tinycow|spineshatter"] = { 0, 2, -21, 946 },
			["Xiaohong|spineshatter"] = { 1, 1, 2, 946 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 992 },
			["Cinthya|spineshatter"] = { 1, 0, 2, 946 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 971 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 757 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 2, 2, 4, 946 },
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 985 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 983 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 985 },
			["Kaelolo|spineshatter"] = { 2, 0, 13, 844 },
			["Mblol|spineshatter"] = { 2, 0, 8, 766 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 766 },
		},
	},
}

