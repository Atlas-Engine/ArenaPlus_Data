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
	built = 1794650359,
	builtText = "2026-11-14 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 689 },
			["Primár|spineshatter"] = { 12, 11, -1, 625 },
			["Notagainqt|spineshatter"] = { 14, 6, 124, 574 },
			["Imgæy|spineshatter"] = { 9, 10, -41, 625 },
			["Izabelyrg|spineshatter"] = { 10, 9, 16, 707 },
			["Mblol|spineshatter"] = { 13, 5, 52, 610 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 646 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 465 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 565 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 645 },
			["Garad|spineshatter"] = { 7, 6, 9, 593 },
			["Orcabrina|spineshatter"] = { 6, 7, -12, 616 },
			["Sustanøn|spineshatter"] = { 6, 7, -11, 625 },
			["Tyzin|spineshatter"] = { 7, 6, 9, 592 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 707 },
			["Glk|spineshatter"] = { 1, 5, 2, 645 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 645 },
			["Izcall|spineshatter"] = { 0, 2, -27, 645 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 637 },
		},
		[2] = {
			["Mblol|spineshatter"] = { 2, 0, 8, 645 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 20, 15, 86, 574 },
			["Izabelyrg|spineshatter"] = { 16, 15, 22, 707 },
			["Nutcracky|spineshatter"] = { 22, 7, 64, 900 },
			["Nastycarrote|spineshatter"] = { 16, 10, 131, 778 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 689 },
			["Jarnotrolli|spineshatter"] = { 13, 11, 58, 796 },
			["Oldtobye|spineshatter"] = { 13, 11, 13, 796 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 625 },
			["Primár|spineshatter"] = { 12, 11, -1, 625 },
			["Kirlynn|spineshatter"] = { 13, 8, 21, 785 },
			["Garad|spineshatter"] = { 7, 13, -84, 593 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 592 },
			["Budgetßolg|spineshatter"] = { 13, 5, 70, 762 },
			["Mblol|spineshatter"] = { 13, 5, 52, 610 },
			["Kirkoss|spineshatter"] = { 12, 4, 124, 817 },
			["Zapaxctpaxa|spineshatter"] = { 12, 4, 124, 838 },
			["Überflieger|thunderstrike"] = { 7, 8, -8, 809 },
			["Warriael|thunderstrike"] = { 7, 8, 7, 810 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 646 },
			["Dapqueue|spineshatter"] = { 7, 6, -9, 875 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 465 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 565 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 645 },
			["Funkyxd|spineshatter"] = { 7, 6, -16, 744 },
			["Lebsterr|spineshatter"] = { 12, 1, 114, 762 },
			["Orcabrina|spineshatter"] = { 6, 7, -12, 616 },
			["Sustanøn|spineshatter"] = { 6, 7, -11, 625 },
			["Twatcatcher|spineshatter"] = { 7, 6, -16, 762 },
			["Nutellaskurk|spineshatter"] = { 7, 5, 2, 821 },
			["Xolaire|spineshatter"] = { 7, 5, 0, 820 },
			["Zanven|spineshatter"] = { 6, 6, -34, 816 },
			["Dogwoman|spineshatter"] = { 7, 4, 17, 825 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 856 },
			["Systemhack|spineshatter"] = { 6, 5, -9, 732 },
			["Worldemoboss|spineshatter"] = { 6, 5, -37, 763 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 707 },
			["Bobblegubben|spineshatter"] = { 6, 4, 24, 844 },
			["Yarz|spineshatter"] = { 4, 6, -59, 886 },
			["Livdelz|spineshatter"] = { 3, 6, -38, 804 },
			["Arnesson|spineshatter"] = { 5, 2, 47, 765 },
			["Nppn|spineshatter"] = { 5, 2, 46, 767 },
			["Glk|spineshatter"] = { 1, 5, 2, 645 },
			["Lumskebuksen|thunderstrike"] = { 2, 4, -16, 766 },
			["Requiemit|spineshatter"] = { 2, 4, -35, 825 },
			["Vaeerrys|spineshatter"] = { 3, 3, -4, 825 },
			["Vannah|spineshatter"] = { 2, 4, -35, 825 },
			["Vindzxd|thunderstrike"] = { 2, 4, -22, 766 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 1024 },
			["Eaxlow|thunderstrike"] = { 3, 2, 1, 840 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 870 },
			["Seeyalolz|thunderstrike"] = { 3, 2, 12, 840 },
			["Votrex|spineshatter"] = { 5, 0, 17, 1005 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 871 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 761 },
			["Buuni|spineshatter"] = { 1, 3, -32, 825 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 874 },
			["Northlane|spineshatter"] = { 1, 3, -29, 825 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 874 },
			["Gopvp|spineshatter"] = { 0, 3, -50, 825 },
			["Scratm|spineshatter"] = { 0, 3, -39, 825 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 645 },
			["Izcall|spineshatter"] = { 0, 2, -27, 645 },
			["Moonlightex|spineshatter"] = { 1, 1, -1, 825 },
			["Pstmalone|spineshatter"] = { 0, 2, -21, 825 },
			["Spiderthem|spineshatter"] = { 0, 2, -27, 825 },
			["Thedarkway|spineshatter"] = { 0, 2, -34, 825 },
			["Tinycow|spineshatter"] = { 0, 2, -21, 825 },
			["Xiaohong|spineshatter"] = { 1, 1, 2, 825 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 871 },
			["Cinthya|spineshatter"] = { 1, 0, 2, 825 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 851 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 637 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 2, 2, 4, 825 },
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 865 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 863 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 864 },
			["Kaelolo|spineshatter"] = { 2, 0, 13, 724 },
			["Mblol|spineshatter"] = { 2, 0, 8, 645 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 645 },
		},
	},
}

