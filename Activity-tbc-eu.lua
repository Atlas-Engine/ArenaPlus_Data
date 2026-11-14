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
	built = 1794653960,
	builtText = "2026-11-14 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Primár|spineshatter"] = { 12, 11, -1, 685 },
			["Notagainqt|spineshatter"] = { 14, 6, 124, 634 },
			["Imgæy|spineshatter"] = { 9, 10, -41, 685 },
			["Mblol|spineshatter"] = { 13, 5, 52, 670 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 706 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 525 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 625 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 705 },
			["Garad|spineshatter"] = { 7, 6, 9, 653 },
			["Orcabrina|spineshatter"] = { 6, 7, -12, 676 },
			["Sustanøn|spineshatter"] = { 6, 7, -11, 685 },
			["Tyzin|spineshatter"] = { 7, 6, 9, 652 },
			["Glk|spineshatter"] = { 1, 5, 2, 705 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 705 },
			["Izcall|spineshatter"] = { 0, 2, -27, 705 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 697 },
		},
		[2] = {
			["Mblol|spineshatter"] = { 2, 0, 8, 705 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 20, 15, 86, 634 },
			["Izabelyrg|spineshatter"] = { 16, 15, 22, 767 },
			["Nutcracky|spineshatter"] = { 22, 7, 64, 960 },
			["Nastycarrote|spineshatter"] = { 16, 10, 131, 838 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 749 },
			["Jarnotrolli|spineshatter"] = { 13, 11, 58, 856 },
			["Oldtobye|spineshatter"] = { 13, 11, 13, 856 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 685 },
			["Primár|spineshatter"] = { 12, 11, -1, 685 },
			["Kirlynn|spineshatter"] = { 13, 8, 21, 845 },
			["Garad|spineshatter"] = { 7, 13, -84, 653 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 652 },
			["Budgetßolg|spineshatter"] = { 13, 5, 70, 822 },
			["Mblol|spineshatter"] = { 13, 5, 52, 670 },
			["Kirkoss|spineshatter"] = { 12, 4, 124, 877 },
			["Zapaxctpaxa|spineshatter"] = { 12, 4, 124, 898 },
			["Überflieger|thunderstrike"] = { 7, 8, -8, 869 },
			["Warriael|thunderstrike"] = { 7, 8, 7, 870 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 706 },
			["Dapqueue|spineshatter"] = { 7, 6, -9, 935 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 525 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 625 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 705 },
			["Funkyxd|spineshatter"] = { 7, 6, -16, 804 },
			["Lebsterr|spineshatter"] = { 12, 1, 114, 822 },
			["Orcabrina|spineshatter"] = { 6, 7, -12, 676 },
			["Sustanøn|spineshatter"] = { 6, 7, -11, 685 },
			["Twatcatcher|spineshatter"] = { 7, 6, -16, 822 },
			["Nutellaskurk|spineshatter"] = { 7, 5, 2, 881 },
			["Xolaire|spineshatter"] = { 7, 5, 0, 880 },
			["Zanven|spineshatter"] = { 6, 6, -34, 876 },
			["Dogwoman|spineshatter"] = { 7, 4, 17, 885 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 916 },
			["Systemhack|spineshatter"] = { 6, 5, -9, 792 },
			["Worldemoboss|spineshatter"] = { 6, 5, -37, 823 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 767 },
			["Bobblegubben|spineshatter"] = { 6, 4, 24, 904 },
			["Yarz|spineshatter"] = { 4, 6, -59, 947 },
			["Livdelz|spineshatter"] = { 3, 6, -38, 864 },
			["Arnesson|spineshatter"] = { 5, 2, 47, 825 },
			["Nppn|spineshatter"] = { 5, 2, 46, 827 },
			["Glk|spineshatter"] = { 1, 5, 2, 705 },
			["Lumskebuksen|thunderstrike"] = { 2, 4, -16, 826 },
			["Requiemit|spineshatter"] = { 2, 4, -35, 885 },
			["Vaeerrys|spineshatter"] = { 3, 3, -4, 885 },
			["Vannah|spineshatter"] = { 2, 4, -35, 885 },
			["Vindzxd|thunderstrike"] = { 2, 4, -22, 826 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 1084 },
			["Eaxlow|thunderstrike"] = { 3, 2, 1, 901 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 930 },
			["Seeyalolz|thunderstrike"] = { 3, 2, 12, 900 },
			["Votrex|spineshatter"] = { 5, 0, 17, 1065 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 931 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 821 },
			["Buuni|spineshatter"] = { 1, 3, -32, 885 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 934 },
			["Northlane|spineshatter"] = { 1, 3, -29, 885 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 934 },
			["Gopvp|spineshatter"] = { 0, 3, -50, 885 },
			["Scratm|spineshatter"] = { 0, 3, -39, 885 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 705 },
			["Izcall|spineshatter"] = { 0, 2, -27, 705 },
			["Moonlightex|spineshatter"] = { 1, 1, -1, 885 },
			["Pstmalone|spineshatter"] = { 0, 2, -21, 885 },
			["Spiderthem|spineshatter"] = { 0, 2, -27, 885 },
			["Thedarkway|spineshatter"] = { 0, 2, -34, 885 },
			["Tinycow|spineshatter"] = { 0, 2, -21, 885 },
			["Xiaohong|spineshatter"] = { 1, 1, 2, 885 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 931 },
			["Cinthya|spineshatter"] = { 1, 0, 2, 885 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 911 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 697 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 2, 2, 4, 885 },
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 925 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 923 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 924 },
			["Kaelolo|spineshatter"] = { 2, 0, 13, 784 },
			["Mblol|spineshatter"] = { 2, 0, 8, 705 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 705 },
		},
	},
}

