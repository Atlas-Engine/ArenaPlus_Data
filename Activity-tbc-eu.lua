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
	built = 1794646765,
	builtText = "2026-11-14 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Nastycarrote|spineshatter"] = { 16, 10, 131, 718 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 629 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 565 },
			["Primár|spineshatter"] = { 12, 11, -1, 565 },
			["Garad|spineshatter"] = { 7, 13, -84, 533 },
			["Notagainqt|spineshatter"] = { 14, 6, 124, 514 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 532 },
			["Izabelyrg|spineshatter"] = { 10, 9, 16, 647 },
			["Mblol|spineshatter"] = { 13, 5, 52, 550 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 586 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 405 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 505 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 585 },
			["Orcabrina|spineshatter"] = { 6, 7, -12, 556 },
			["Sustanøn|spineshatter"] = { 6, 7, -11, 565 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 647 },
			["Budgetßolg|spineshatter"] = { 8, 1, 63, 702 },
			["Lebsterr|spineshatter"] = { 8, 1, 63, 702 },
			["Systemhack|spineshatter"] = { 5, 4, -15, 673 },
			["Worldemoboss|spineshatter"] = { 5, 4, -39, 703 },
			["Funkyxd|spineshatter"] = { 4, 4, -21, 684 },
			["Twatcatcher|spineshatter"] = { 4, 4, -21, 702 },
			["Glk|spineshatter"] = { 1, 5, 2, 585 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 702 },
			["Arnesson|spineshatter"] = { 2, 1, 16, 705 },
			["Lumskebuksen|thunderstrike"] = { 1, 2, -6, 706 },
			["Nppn|spineshatter"] = { 2, 1, 16, 707 },
			["Vindzxd|thunderstrike"] = { 1, 2, -9, 706 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 585 },
			["Izcall|spineshatter"] = { 0, 2, -27, 585 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 577 },
		},
		[2] = {
			["Kaelolo|spineshatter"] = { 2, 0, 13, 664 },
			["Mblol|spineshatter"] = { 2, 0, 8, 585 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 585 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 20, 15, 86, 514 },
			["Izabelyrg|spineshatter"] = { 16, 15, 22, 647 },
			["Nutcracky|spineshatter"] = { 22, 7, 64, 840 },
			["Nastycarrote|spineshatter"] = { 16, 10, 131, 718 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 629 },
			["Jarnotrolli|spineshatter"] = { 13, 11, 58, 736 },
			["Oldtobye|spineshatter"] = { 13, 11, 13, 736 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 565 },
			["Primár|spineshatter"] = { 12, 11, -1, 565 },
			["Kirlynn|spineshatter"] = { 13, 8, 21, 725 },
			["Garad|spineshatter"] = { 7, 13, -84, 533 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 532 },
			["Budgetßolg|spineshatter"] = { 13, 5, 70, 702 },
			["Mblol|spineshatter"] = { 13, 5, 52, 550 },
			["Kirkoss|spineshatter"] = { 12, 4, 124, 757 },
			["Zapaxctpaxa|spineshatter"] = { 12, 4, 124, 778 },
			["Überflieger|thunderstrike"] = { 7, 8, -8, 749 },
			["Warriael|thunderstrike"] = { 7, 8, 7, 750 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 586 },
			["Dapqueue|spineshatter"] = { 7, 6, -9, 815 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 405 },
			["Druidcoachx|spineshatter"] = { 9, 4, 66, 505 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 585 },
			["Funkyxd|spineshatter"] = { 7, 6, -16, 684 },
			["Lebsterr|spineshatter"] = { 12, 1, 114, 702 },
			["Orcabrina|spineshatter"] = { 6, 7, -12, 556 },
			["Sustanøn|spineshatter"] = { 6, 7, -11, 565 },
			["Twatcatcher|spineshatter"] = { 7, 6, -16, 702 },
			["Nutellaskurk|spineshatter"] = { 7, 5, 2, 761 },
			["Xolaire|spineshatter"] = { 7, 5, 0, 760 },
			["Zanven|spineshatter"] = { 6, 6, -34, 756 },
			["Dogwoman|spineshatter"] = { 7, 4, 17, 765 },
			["Fedowjr|spineshatter"] = { 7, 4, 53, 796 },
			["Systemhack|spineshatter"] = { 6, 5, -9, 673 },
			["Worldemoboss|spineshatter"] = { 6, 5, -37, 703 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 647 },
			["Bobblegubben|spineshatter"] = { 6, 4, 24, 784 },
			["Yarz|spineshatter"] = { 4, 6, -59, 827 },
			["Livdelz|spineshatter"] = { 3, 6, -38, 744 },
			["Arnesson|spineshatter"] = { 5, 2, 47, 705 },
			["Nppn|spineshatter"] = { 5, 2, 46, 707 },
			["Glk|spineshatter"] = { 1, 5, 2, 585 },
			["Lumskebuksen|thunderstrike"] = { 2, 4, -16, 706 },
			["Requiemit|spineshatter"] = { 2, 4, -35, 765 },
			["Vaeerrys|spineshatter"] = { 3, 3, -4, 765 },
			["Vannah|spineshatter"] = { 2, 4, -35, 765 },
			["Vindzxd|thunderstrike"] = { 2, 4, -22, 706 },
			["Ãäøàáåø|spineshatter"] = { 5, 0, 17, 964 },
			["Eaxlow|thunderstrike"] = { 3, 2, 1, 781 },
			["Jostar|thunderstrike"] = { 1, 4, -28, 810 },
			["Seeyalolz|thunderstrike"] = { 3, 2, 12, 780 },
			["Votrex|spineshatter"] = { 5, 0, 17, 945 },
			["Zulwi|thunderstrike"] = { 1, 4, -36, 811 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 702 },
			["Buuni|spineshatter"] = { 1, 3, -32, 765 },
			["Kimbøx|spineshatter"] = { 3, 1, 28, 814 },
			["Northlane|spineshatter"] = { 1, 3, -29, 765 },
			["Oldasf|spineshatter"] = { 3, 1, 29, 814 },
			["Gopvp|spineshatter"] = { 0, 3, -50, 765 },
			["Scratm|spineshatter"] = { 0, 3, -39, 765 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 585 },
			["Izcall|spineshatter"] = { 0, 2, -27, 585 },
			["Moonlightex|spineshatter"] = { 1, 1, -1, 765 },
			["Pstmalone|spineshatter"] = { 0, 2, -21, 765 },
			["Spiderthem|spineshatter"] = { 0, 2, -27, 765 },
			["Thedarkway|spineshatter"] = { 0, 2, -34, 765 },
			["Tinycow|spineshatter"] = { 0, 2, -21, 765 },
			["Xiaohong|spineshatter"] = { 1, 1, 2, 765 },
			["Basbijem|spineshatter"] = { 0, 1, -17, 811 },
			["Cinthya|spineshatter"] = { 1, 0, 2, 765 },
			["Marthozug|spineshatter"] = { 0, 1, -10, 791 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 577 },
		},
		[2] = {
			["Bomel|spineshatter"] = { 2, 2, 4, 765 },
			["Jeffbaitzos|spineshatter"] = { 2, 1, -9, 805 },
			["Mejtch|spineshatter"] = { 2, 1, -7, 803 },
			["Skenbar|spineshatter"] = { 2, 1, -7, 804 },
			["Kaelolo|spineshatter"] = { 2, 0, 13, 664 },
			["Mblol|spineshatter"] = { 2, 0, 8, 585 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 585 },
		},
	},
}

