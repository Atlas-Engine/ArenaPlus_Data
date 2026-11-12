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
	built = 1794466764,
	builtText = "2026-11-12 01:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Daisyqt|spineshatter"] = { 12, 10, -6, 356 },
			["Izabelyrg|spineshatter"] = { 12, 10, -19, 356 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 340 },
			["Creamed|spineshatter"] = { 5, 2, -9, 340 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 285 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 471 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 356 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 474 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 356 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 496 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 498 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 416 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 509 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 542 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 636 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 548 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 552 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 637 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 416 },
			["Entropi|spineshatter"] = { 6, 10, -71, 699 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 686 },
			["Everlost|spineshatter"] = { 8, 5, -15, 551 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 551 },
			["Garad|spineshatter"] = { 11, 2, 103, 439 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 424 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 431 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 439 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 718 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 718 },
			["Bimbolo|spineshatter"] = { 9, 1, 74, 582 },
			["Dewood|spineshatter"] = { 6, 4, 4, 465 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 441 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 465 },
			["Mitou|spineshatter"] = { 6, 3, 24, 638 },
			["Teruska|spineshatter"] = { 6, 3, 21, 639 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 340 },
			["Creamed|spineshatter"] = { 5, 2, -9, 340 },
			["Fedow|spineshatter"] = { 5, 2, -28, 510 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 574 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 465 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 709 },
			["Votrex|spineshatter"] = { 1, 4, -29, 465 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 539 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 465 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 517 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 517 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 285 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 368 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 665 },
			["Querng|spineshatter"] = { 1, 0, 3, 665 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 471 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 356 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 474 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 356 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 496 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 498 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 416 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 582 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 509 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 542 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 636 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 548 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 552 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 637 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 416 },
			["Entropi|spineshatter"] = { 6, 10, -71, 699 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 686 },
			["Everlost|spineshatter"] = { 8, 5, -15, 551 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 551 },
			["Garad|spineshatter"] = { 11, 2, 103, 439 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 424 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 431 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 439 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 718 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 718 },
			["Dewood|spineshatter"] = { 6, 4, 4, 465 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 441 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 465 },
			["Mitou|spineshatter"] = { 6, 3, 24, 638 },
			["Teruska|spineshatter"] = { 6, 3, 21, 639 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 340 },
			["Creamed|spineshatter"] = { 5, 2, -9, 340 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 825 },
			["Fedow|spineshatter"] = { 5, 2, -28, 510 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 574 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 755 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 465 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 825 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 825 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 709 },
			["Votrex|spineshatter"] = { 1, 4, -29, 465 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 851 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 539 },
			["Natturall|spineshatter"] = { 2, 2, -13, 851 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 732 },
			["Eaxlow|thunderstrike"] = { 3, 0, 18, 1105 },
			["Folfirinox|thunderstrike"] = { 3, 0, 19, 1104 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 465 },
			["Minð|thunderstrike"] = { 3, 0, 16, 732 },
			["Rhythmictwo|spineshatter"] = { 0, 3, -14, 1095 },
			["Zlodey|spineshatter"] = { 0, 3, -14, 1095 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 517 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 517 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 285 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 368 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 802 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 802 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 665 },
			["Querng|spineshatter"] = { 1, 0, 3, 665 },
		},
	},
}

