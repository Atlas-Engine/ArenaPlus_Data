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
	built = 1794470365,
	builtText = "2026-11-12 02:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Missnevèr|spineshatter"] = { 2, 0, 10, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 531 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 416 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 534 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 416 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 556 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 558 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 476 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 569 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 602 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 696 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 608 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 612 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 697 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 476 },
			["Everlost|spineshatter"] = { 8, 5, -15, 611 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 611 },
			["Garad|spineshatter"] = { 11, 2, 103, 499 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 484 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 491 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 499 },
			["Bimbolo|spineshatter"] = { 9, 1, 74, 642 },
			["Dewood|spineshatter"] = { 6, 4, 4, 525 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 501 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 525 },
			["Mitou|spineshatter"] = { 6, 3, 24, 698 },
			["Teruska|spineshatter"] = { 6, 3, 21, 699 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 400 },
			["Creamed|spineshatter"] = { 5, 2, -9, 400 },
			["Fedow|spineshatter"] = { 5, 2, -28, 570 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 634 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 525 },
			["Votrex|spineshatter"] = { 1, 4, -29, 525 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 599 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 525 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 577 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 577 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 345 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 428 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 531 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 416 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 534 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 416 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 556 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 558 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 476 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 642 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 569 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 602 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 696 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 608 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 612 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 697 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 476 },
			["Entropi|spineshatter"] = { 6, 10, -71, 759 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 746 },
			["Everlost|spineshatter"] = { 8, 5, -15, 611 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 611 },
			["Garad|spineshatter"] = { 11, 2, 103, 499 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 484 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 491 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 499 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 778 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 778 },
			["Dewood|spineshatter"] = { 6, 4, 4, 525 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 501 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 525 },
			["Mitou|spineshatter"] = { 6, 3, 24, 698 },
			["Teruska|spineshatter"] = { 6, 3, 21, 699 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 400 },
			["Creamed|spineshatter"] = { 5, 2, -9, 400 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 885 },
			["Fedow|spineshatter"] = { 5, 2, -28, 570 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 634 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 815 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 525 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 885 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 885 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 769 },
			["Votrex|spineshatter"] = { 1, 4, -29, 525 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 911 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 599 },
			["Natturall|spineshatter"] = { 2, 2, -13, 911 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 792 },
			["Eaxlow|thunderstrike"] = { 3, 0, 18, 1165 },
			["Folfirinox|thunderstrike"] = { 3, 0, 19, 1164 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 525 },
			["Minð|thunderstrike"] = { 3, 0, 16, 792 },
			["Rhythmictwo|spineshatter"] = { 0, 3, -14, 1155 },
			["Zlodey|spineshatter"] = { 0, 3, -14, 1155 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 577 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 577 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 345 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 428 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 862 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 862 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 725 },
			["Querng|spineshatter"] = { 1, 0, 3, 725 },
		},
	},
}

