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
	built = 1794056368,
	builtText = "2026-11-07 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 2, 0, 5, 112 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 180 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 104 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 2, 0, 5, 112 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 180 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 104 },
			["Oldp|spineshatter"] = { 1, 1, -18, 181 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 12, 9, 84, 687 },
			["Sustanøn|spineshatter"] = { 12, 9, 74, 687 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 672 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 686 },
			["Brubru|spineshatter"] = { 2, 0, 5, 112 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 180 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 104 },
			["Oldp|spineshatter"] = { 1, 1, -18, 181 },
			["Longas|thunderstrike"] = { 0, 1, -16, 644 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Demetsky|spineshatter"] = { 19, 13, 27, 874 },
			["Sutlucco|spineshatter"] = { 19, 13, 27, 874 },
			["Orcabrina|spineshatter"] = { 18, 11, 128, 687 },
			["Sustanøn|spineshatter"] = { 18, 11, 112, 687 },
			["Notagainqt|spineshatter"] = { 13, 14, -71, 1055 },
			["Kenndyman|spineshatter"] = { 15, 11, 85, 824 },
			["Megànføx|spineshatter"] = { 15, 11, 32, 824 },
			["Everlost|spineshatter"] = { 15, 10, 9, 890 },
			["Farsaroga|spineshatter"] = { 15, 10, 2, 891 },
			["Eyta|spineshatter"] = { 12, 11, 29, 777 },
			["Yodakohl|spineshatter"] = { 12, 11, 29, 777 },
			["Jarnotrolli|spineshatter"] = { 14, 8, 111, 974 },
			["Oldtobye|spineshatter"] = { 14, 8, 30, 975 },
			["Reasonicus|spineshatter"] = { 11, 11, -68, 1184 },
			["Vincentxd|spineshatter"] = { 11, 11, -87, 1184 },
			["Ellilol|thunderstrike"] = { 12, 9, 33, 750 },
			["Shadøwsfall|thunderstrike"] = { 12, 9, 33, 755 },
			["Cosmoboy|spineshatter"] = { 12, 8, -19, 780 },
			["Doób|spineshatter"] = { 12, 8, -19, 779 },
			["Ãäøàáåø|spineshatter"] = { 13, 6, 134, 1229 },
			["Shadowpapa|spineshatter"] = { 11, 8, -7, 824 },
			["Votrex|spineshatter"] = { 13, 6, 145, 1229 },
			["Longas|thunderstrike"] = { 9, 9, -111, 644 },
			["Baguetteftw|spineshatter"] = { 14, 2, 114, 1381 },
			["Druidcoachxx|spineshatter"] = { 6, 10, -44, 1004 },
			["Sifodyaz|spineshatter"] = { 6, 10, -12, 1004 },
			["Xdskullzz|spineshatter"] = { 14, 2, 138, 1381 },
			["Abuzzed|spineshatter"] = { 5, 10, -77, 967 },
			["Ecrøf|spineshatter"] = { 6, 9, -48, 1302 },
			["Funkyxd|spineshatter"] = { 8, 7, -49, 1001 },
			["Psyzerg|spineshatter"] = { 5, 10, -44, 967 },
			["Twatcatcher|spineshatter"] = { 8, 7, -49, 1001 },
			["Firaa|spineshatter"] = { 5, 9, -71, 822 },
			["Bebøp|spineshatter"] = { 7, 6, -5, 824 },
			["Brubru|spineshatter"] = { 6, 7, -74, 112 },
			["Koeter|spineshatter"] = { 9, 3, 49, 1313 },
			["Séphiz|spineshatter"] = { 7, 5, 1, 1110 },
			["Tamár|spineshatter"] = { 9, 3, 43, 1312 },
			["Amzzi|spineshatter"] = { 4, 7, -38, 822 },
			["Gushers|spineshatter"] = { 8, 3, 49, 1004 },
			["Lôlgroundit|spineshatter"] = { 4, 7, -32, 1184 },
			["Xiaohong|spineshatter"] = { 6, 5, -19, 1080 },
			["Youknowz|spineshatter"] = { 8, 3, 56, 1004 },
			["Doko|spineshatter"] = { 5, 3, 31, 1131 },
			["Oldp|spineshatter"] = { 3, 5, -73, 181 },
			["Walida|spineshatter"] = { 5, 3, 31, 1131 },
			["Anhedønia|spineshatter"] = { 6, 1, 27, 1034 },
			["Baqera|thunderstrike"] = { 1, 6, -50, 765 },
			["Bluebelle|spineshatter"] = { 6, 1, 27, 1054 },
			["Crazyhomeles|thunderstrike"] = { 1, 6, -50, 823 },
			["Garad|spineshatter"] = { 2, 5, -52, 795 },
			["Tyzin|spineshatter"] = { 2, 5, -52, 795 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 672 },
			["Crankshãft|spineshatter"] = { 6, 0, 48, 824 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 686 },
			["Jostix|spineshatter"] = { 6, 0, 48, 824 },
			["Mercatore|spineshatter"] = { 4, 2, 27, 981 },
			["Desm|spineshatter"] = { 3, 2, 14, 917 },
			["Makayas|thunderstrike"] = { 2, 3, -24, 1391 },
			["Møøxy|thunderstrike"] = { 2, 3, -24, 1391 },
			["Zralog|spineshatter"] = { 3, 2, -8, 916 },
			["Dahealax|spineshatter"] = { 4, 0, 12, 1132 },
			["Hotmodel|spineshatter"] = { 2, 2, 13, 824 },
			["Psychologue|spineshatter"] = { 4, 0, 12, 1132 },
			["Titanisia|spineshatter"] = { 2, 2, 6, 925 },
			["Kaelolo|spineshatter"] = { 0, 3, -53, 1030 },
			["Tobirino|thunderstrike"] = { 2, 1, 12, 910 },
			["Töppis|thunderstrike"] = { 2, 1, 12, 894 },
			["Xeroxd|thunderstrike"] = { 1, 2, 5, 930 },
			["Zuxilon|thunderstrike"] = { 1, 2, -5, 930 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 180 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 104 },
			["Milkywetspot|spineshatter"] = { 2, 0, 15, 961 },
			["Tbcpveandy|spineshatter"] = { 2, 0, 2, 962 },
			["Vitatwø|spineshatter"] = { 0, 2, -33, 1364 },
			["Bjornesmag|thunderstrike"] = { 1, 0, 9, 1149 },
			["Daydreamer|spineshatter"] = { 1, 0, 2, 1004 },
			["Harrypottert|thunderstrike"] = { 1, 0, 8, 1176 },
			["Nutellaskurk|spineshatter"] = { 1, 0, 3, 981 },
			["Remag|spineshatter"] = { 1, 0, 2, 1004 },
			["Spartanx|thunderstrike"] = { 1, 0, 8, 1178 },
			["Xolaire|spineshatter"] = { 1, 0, 3, 982 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, 3, 787 },
			["Siittäjä|thunderstrike"] = { 3, 3, -6, 787 },
			["Iridial|spineshatter"] = { 4, 1, 14, 786 },
			["Maxj|spineshatter"] = { 4, 1, 47, 788 },
		},
	},
}

