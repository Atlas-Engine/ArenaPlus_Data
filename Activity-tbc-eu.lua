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
	built = 1794477576,
	builtText = "2026-11-12 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Daisyqt|spineshatter"] = { 17, 16, -22, 537 },
			["Izabelyrg|spineshatter"] = { 17, 16, -48, 536 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 596 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 596 },
			["Druidcoachxx|spineshatter"] = { 10, 6, 31, 689 },
			["Livdelz|spineshatter"] = { 3, 11, -45, 676 },
			["Vaeerrys|spineshatter"] = { 3, 11, -80, 678 },
			["Garad|spineshatter"] = { 11, 2, 103, 620 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 604 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 611 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 620 },
			["Ellilol|thunderstrike"] = { 4, 7, -41, 651 },
			["Shadøwsfall|thunderstrike"] = { 4, 7, -41, 654 },
			["Dewood|spineshatter"] = { 6, 4, 4, 646 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 622 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 646 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 520 },
			["Creamed|spineshatter"] = { 5, 2, -9, 520 },
			["Fedow|spineshatter"] = { 4, 2, -30, 690 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 646 },
			["Votrex|spineshatter"] = { 1, 4, -29, 646 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 719 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 646 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 697 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 697 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 466 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 548 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 651 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 536 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 654 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 537 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 676 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 678 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 596 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 762 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 689 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 723 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 816 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 729 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 732 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 817 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 596 },
			["Entropi|spineshatter"] = { 6, 10, -71, 880 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 866 },
			["Everlost|spineshatter"] = { 8, 5, -15, 731 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 731 },
			["Garad|spineshatter"] = { 11, 2, 103, 620 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 604 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 611 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 620 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 898 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 898 },
			["Dewood|spineshatter"] = { 6, 4, 4, 646 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 622 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 646 },
			["Mitou|spineshatter"] = { 6, 3, 24, 818 },
			["Teruska|spineshatter"] = { 6, 3, 21, 819 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 520 },
			["Creamed|spineshatter"] = { 5, 2, -9, 520 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 1006 },
			["Fedow|spineshatter"] = { 5, 2, -28, 690 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 755 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 936 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 646 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 1006 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 1006 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 889 },
			["Votrex|spineshatter"] = { 1, 4, -29, 646 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 1031 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 719 },
			["Natturall|spineshatter"] = { 2, 2, -13, 1031 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 912 },
			["Eaxlow|thunderstrike"] = { 3, 0, 18, 1286 },
			["Folfirinox|thunderstrike"] = { 3, 0, 19, 1285 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 646 },
			["Minð|thunderstrike"] = { 3, 0, 16, 912 },
			["Rhythmictwo|spineshatter"] = { 0, 3, -14, 1275 },
			["Zlodey|spineshatter"] = { 0, 3, -14, 1275 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 697 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 697 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 466 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 548 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 982 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 982 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 845 },
			["Querng|spineshatter"] = { 1, 0, 3, 845 },
		},
	},
}

