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
	built = 1794484763,
	builtText = "2026-11-12 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Daisyqt|spineshatter"] = { 12, 10, -6, 656 },
			["Izabelyrg|spineshatter"] = { 12, 10, -19, 656 },
			["Orcabrina|spineshatter"] = { 5, 3, 9, 716 },
			["Sustanøn|spineshatter"] = { 5, 3, 11, 716 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 640 },
			["Creamed|spineshatter"] = { 5, 2, -9, 640 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 585 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 668 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 22, 21, -41, 771 },
			["Izabelyrg|spineshatter"] = { 26, 17, 3, 656 },
			["Shadøwsfall|thunderstrike"] = { 22, 21, -41, 774 },
			["Daisyqt|spineshatter"] = { 17, 16, -22, 656 },
			["Livdelz|spineshatter"] = { 10, 13, 21, 796 },
			["Vaeerrys|spineshatter"] = { 10, 13, -51, 798 },
			["Sustanøn|spineshatter"] = { 13, 9, 21, 716 },
			["Bimbolo|spineshatter"] = { 14, 7, 35, 882 },
			["Druidcoachxx|spineshatter"] = { 13, 8, 30, 809 },
			["Sifodyaz|spineshatter"] = { 13, 8, 62, 842 },
			["Kirkoss|spineshatter"] = { 9, 10, 24, 936 },
			["Reasonicus|spineshatter"] = { 11, 8, 60, 848 },
			["Vincentxd|spineshatter"] = { 11, 8, 59, 852 },
			["Zapaxctpaxa|spineshatter"] = { 9, 10, 23, 937 },
			["Orcabrina|spineshatter"] = { 11, 7, 26, 716 },
			["Entropi|spineshatter"] = { 6, 10, -71, 999 },
			["Kongsverre|spineshatter"] = { 6, 10, -71, 986 },
			["Everlost|spineshatter"] = { 8, 5, -15, 851 },
			["Farsaroga|spineshatter"] = { 8, 5, -15, 851 },
			["Garad|spineshatter"] = { 11, 2, 103, 739 },
			["Moscuerta|spineshatter"] = { 9, 4, 129, 724 },
			["Systemhack|spineshatter"] = { 9, 4, -20, 731 },
			["Tyzin|spineshatter"] = { 11, 2, 103, 739 },
			["Überflieger|thunderstrike"] = { 5, 6, -29, 1018 },
			["Warriael|thunderstrike"] = { 5, 6, -15, 1018 },
			["Dewood|spineshatter"] = { 6, 4, 4, 765 },
			["Shortfatdumb|spineshatter"] = { 5, 5, 76, 741 },
			["Thegreyold|spineshatter"] = { 6, 4, 6, 765 },
			["Mitou|spineshatter"] = { 6, 3, 24, 938 },
			["Teruska|spineshatter"] = { 6, 3, 21, 939 },
			["Babawarhammr|spineshatter"] = { 5, 2, 19, 640 },
			["Creamed|spineshatter"] = { 5, 2, -9, 640 },
			["Dexeen|thunderstrike"] = { 6, 1, 5, 1125 },
			["Fedow|spineshatter"] = { 5, 2, -28, 810 },
			["Predatorxd|spineshatter"] = { 5, 2, -14, 874 },
			["Raugaj|spineshatter"] = { 6, 1, 45, 1055 },
			["Ãäøàáåø|spineshatter"] = { 1, 4, -30, 765 },
			["Darktimesx|spineshatter"] = { 5, 0, 25, 1125 },
			["Drainkzeon|spineshatter"] = { 5, 0, 25, 1125 },
			["Punisherx|spineshatter"] = { 0, 5, -80, 1009 },
			["Votrex|spineshatter"] = { 1, 4, -29, 765 },
			["Ânälkras|spineshatter"] = { 2, 2, -16, 1150 },
			["Hølychad|spineshatter"] = { 2, 2, 0, 839 },
			["Natturall|spineshatter"] = { 2, 2, -13, 1151 },
			["Dotgyneco|thunderstrike"] = { 3, 0, 17, 1032 },
			["Eaxlow|thunderstrike"] = { 3, 0, 18, 1405 },
			["Folfirinox|thunderstrike"] = { 3, 0, 19, 1404 },
			["Kerpeten|spineshatter"] = { 0, 3, -65, 765 },
			["Minð|thunderstrike"] = { 3, 0, 16, 1032 },
			["Rhythmictwo|spineshatter"] = { 0, 3, -14, 1395 },
			["Zlodey|spineshatter"] = { 0, 3, -14, 1394 },
			["Ilovejade|spineshatter"] = { 1, 1, -23, 816 },
			["Invinciblexx|spineshatter"] = { 1, 1, -23, 816 },
			["Missnevèr|spineshatter"] = { 2, 0, 10, 585 },
			["Notagainqt|spineshatter"] = { 2, 0, 16, 668 },
			["Bananagram|spineshatter"] = { 0, 1, 0, 1102 },
			["Jaguár|spineshatter"] = { 1, 0, 7, 1102 },
			["Mileysaprus|spineshatter"] = { 1, 0, 5, 965 },
			["Querng|spineshatter"] = { 1, 0, 3, 965 },
		},
	},
}

