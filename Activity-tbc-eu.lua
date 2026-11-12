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
	built = 1794463163,
	builtText = "2026-11-12 12:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Daisyqt|spineshatter"] = { 12, 10, -6, 296 },
			["Izabelyrg|spineshatter"] = { 12, 10, -19, 296 },
			["Orcabrina|spineshatter"] = { 5, 3, 9, 356 },
			["Sustanøn|spineshatter"] = { 5, 3, 11, 356 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 280 },
			["Creamed|spineshatter"] = { 5, 2, -9, 280 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 225 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 308 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 411 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 296 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 414 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 296 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 436 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 438 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 356 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 522 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 449 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 482 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 576 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 488 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 492 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 577 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 356 },
			["Entropi|spineshatter"] = { 6, 10, -71, 639 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 626 },
			["Everlost|spineshatter"] = { 8, 5, -15, 491 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 491 },
			["Garad|spineshatter"] = { 11, 2, 103, 379 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 364 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 371 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 379 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 658 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 658 },
			["Dewood|spineshatter"] = { 6, 4, 4, 405 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 381 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 405 },
			["Mitou|spineshatter"] = { 6, 3, 24, 578 },
			["Teruska|spineshatter"] = { 6, 3, 21, 579 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 280 },
			["Creamed|spineshatter"] = { 5, 2, -9, 280 },
			["Fedow|spineshatter"] = { 5, 2, -28, 450 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 514 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 695 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 405 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 649 },
			["Votrex|spineshatter"] = { 1, 4, -29, 405 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 479 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 672 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 405 },
			["Minð|thunderstrike"] = { 3, 0, 16, 672 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 456 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 456 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 225 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 308 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 605 },
			["Querng|spineshatter"] = { 1, 0, 3, 605 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 411 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 296 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 414 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 296 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 436 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 438 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 356 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 522 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 449 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 482 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 576 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 488 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 492 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 577 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 356 },
			["Entropi|spineshatter"] = { 6, 10, -71, 639 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 626 },
			["Everlost|spineshatter"] = { 8, 5, -15, 491 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 491 },
			["Garad|spineshatter"] = { 11, 2, 103, 379 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 364 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 371 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 379 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 658 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 658 },
			["Dewood|spineshatter"] = { 6, 4, 4, 405 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 381 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 405 },
			["Mitou|spineshatter"] = { 6, 3, 24, 578 },
			["Teruska|spineshatter"] = { 6, 3, 21, 579 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 280 },
			["Creamed|spineshatter"] = { 5, 2, -9, 280 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 765 },
			["Fedow|spineshatter"] = { 5, 2, -28, 450 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 514 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 695 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 405 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 765 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 765 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 649 },
			["Votrex|spineshatter"] = { 1, 4, -29, 405 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 790 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 479 },
			["Natturall|spineshatter"] = { 2, 2, -13, 791 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 672 },
			["Eaxlow|thunderstrike"] = { 3, 0, 18, 1045 },
			["Folfirinox|thunderstrike"] = { 3, 0, 19, 1044 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 405 },
			["Minð|thunderstrike"] = { 3, 0, 16, 672 },
			["Rhythmictwo|spineshatter"] = { 0, 3, -14, 1035 },
			["Zlodey|spineshatter"] = { 0, 3, -14, 1034 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 456 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 456 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 225 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 308 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 742 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 742 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 605 },
			["Querng|spineshatter"] = { 1, 0, 3, 605 },
		},
	},
}

