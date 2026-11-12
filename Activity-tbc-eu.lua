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
	built = 1794473962,
	builtText = "2026-11-12 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 476 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 476 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 536 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 668 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 672 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 536 },
			["Druidcoachxx|spineshatter"] = { 10, 6, 31, 629 },
			["Sifodyaz|spineshatter"] = { 10, 6, 52, 662 },
			["Livdelz|spineshatter"] = { 3, 11, -45, 616 },
			["Vaeerrys|spineshatter"] = { 3, 11, -80, 618 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 671 },
			["Garad|spineshatter"] = { 11, 2, 103, 559 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 544 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 551 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 559 },
			["Ellilol|thunderstrike"] = { 4, 7, -41, 591 },
			["Shadøwsfall|thunderstrike"] = { 4, 7, -41, 594 },
			["Bimbolo|spineshatter"] = { 9, 1, 74, 702 },
			["Dewood|spineshatter"] = { 6, 4, 4, 585 },
			["Everlost|spineshatter"] = { 8, 2, 34, 670 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 561 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 585 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 460 },
			["Creamed|spineshatter"] = { 5, 2, -9, 460 },
			["Fedow|spineshatter"] = { 4, 2, -30, 630 },
			["Predatorxd|spineshatter"] = { 4, 2, -17, 694 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 585 },
			["Votrex|spineshatter"] = { 1, 4, -29, 585 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 659 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 585 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 636 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 636 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 405 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 488 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 591 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 476 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 594 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 476 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 616 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 618 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 536 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 702 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 629 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 662 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 756 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 668 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 672 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 757 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 536 },
			["Entropi|spineshatter"] = { 6, 10, -71, 819 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 806 },
			["Everlost|spineshatter"] = { 8, 5, -15, 670 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 671 },
			["Garad|spineshatter"] = { 11, 2, 103, 559 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 544 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 551 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 559 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 838 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 838 },
			["Dewood|spineshatter"] = { 6, 4, 4, 585 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 561 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 585 },
			["Mitou|spineshatter"] = { 6, 3, 24, 758 },
			["Teruska|spineshatter"] = { 6, 3, 21, 759 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 460 },
			["Creamed|spineshatter"] = { 5, 2, -9, 460 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 945 },
			["Fedow|spineshatter"] = { 5, 2, -28, 630 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 694 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 875 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 585 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 945 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 945 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 829 },
			["Votrex|spineshatter"] = { 1, 4, -29, 585 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 970 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 659 },
			["Natturall|spineshatter"] = { 2, 2, -13, 971 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 852 },
			["Eaxlow|thunderstrike"] = { 3, 0, 18, 1225 },
			["Folfirinox|thunderstrike"] = { 3, 0, 19, 1224 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 585 },
			["Minð|thunderstrike"] = { 3, 0, 16, 852 },
			["Rhythmictwo|spineshatter"] = { 0, 3, -14, 1215 },
			["Zlodey|spineshatter"] = { 0, 3, -14, 1214 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 636 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 636 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 405 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 488 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 922 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 922 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 785 },
			["Querng|spineshatter"] = { 1, 0, 3, 785 },
		},
	},
}

