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
	built = 1794481161,
	builtText = "2026-11-12 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Daisyqt|spineshatter"] = { 17, 16, -22, 596 },
			["Izabelyrg|spineshatter"] = { 17, 16, -48, 596 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 656 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 656 },
			["Garad|spineshatter"] = { 11, 2, 103, 679 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 664 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 671 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 679 },
			["Ellilol|thunderstrike"] = { 4, 7, -41, 711 },
			["Shadøwsfall|thunderstrike"] = { 4, 7, -41, 714 },
			["Dewood|spineshatter"] = { 6, 4, 4, 705 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 681 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 705 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 580 },
			["Creamed|spineshatter"] = { 5, 2, -9, 580 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 705 },
			["Votrex|spineshatter"] = { 1, 4, -29, 705 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 705 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 525 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 608 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 711 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 596 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 714 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 596 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 736 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 738 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 656 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 822 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 749 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 782 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 876 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 788 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 792 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 877 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 656 },
			["Entropi|spineshatter"] = { 6, 10, -71, 939 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 926 },
			["Everlost|spineshatter"] = { 8, 5, -15, 790 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 791 },
			["Garad|spineshatter"] = { 11, 2, 103, 679 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 664 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 671 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 679 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 958 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 958 },
			["Dewood|spineshatter"] = { 6, 4, 4, 705 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 681 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 705 },
			["Mitou|spineshatter"] = { 6, 3, 24, 878 },
			["Teruska|spineshatter"] = { 6, 3, 21, 879 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 580 },
			["Creamed|spineshatter"] = { 5, 2, -9, 580 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 1065 },
			["Fedow|spineshatter"] = { 5, 2, -28, 750 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 814 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 995 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 705 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 1065 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 1065 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 949 },
			["Votrex|spineshatter"] = { 1, 4, -29, 705 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 1090 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 779 },
			["Natturall|spineshatter"] = { 2, 2, -13, 1091 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 972 },
			["Eaxlow|thunderstrike"] = { 3, 0, 18, 1345 },
			["Folfirinox|thunderstrike"] = { 3, 0, 19, 1344 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 705 },
			["Minð|thunderstrike"] = { 3, 0, 16, 972 },
			["Rhythmictwo|spineshatter"] = { 0, 3, -14, 1335 },
			["Zlodey|spineshatter"] = { 0, 3, -14, 1334 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 756 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 756 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 525 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 608 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 1042 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 1042 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 905 },
			["Querng|spineshatter"] = { 1, 0, 3, 905 },
		},
	},
}

