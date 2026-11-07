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
	built = 1794052759,
	builtText = "2026-11-07 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 2, 0, 5, 52 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 2, 0, 5, 52 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 119 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 44 },
			["Oldp|spineshatter"] = { 1, 1, -18, 120 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 2, 0, 5, 52 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 119 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 44 },
			["Oldp|spineshatter"] = { 1, 1, -18, 120 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 12, 9, 84, 626 },
			["Sustanøn|spineshatter"] = { 12, 9, 74, 626 },
			["Ellilol|thunderstrike"] = { 7, 5, 16, 690 },
			["Shadøwsfall|thunderstrike"] = { 7, 5, 16, 695 },
			["Eyta|spineshatter"] = { 4, 6, -7, 717 },
			["Longas|thunderstrike"] = { 4, 6, -108, 584 },
			["Yodakohl|spineshatter"] = { 4, 6, -7, 717 },
			["Cosmoboy|spineshatter"] = { 6, 1, 24, 719 },
			["Doób|spineshatter"] = { 6, 1, 24, 718 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 612 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 626 },
			["Brubru|spineshatter"] = { 2, 0, 5, 52 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 119 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 44 },
			["Oldp|spineshatter"] = { 1, 1, -18, 120 },
			["Baqera|thunderstrike"] = { 0, 1, -10, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Demetsky|spineshatter"] = { 19, 13, 27, 814 },
			["Sutlucco|spineshatter"] = { 19, 13, 27, 814 },
			["Orcabrina|spineshatter"] = { 18, 11, 128, 626 },
			["Sustanøn|spineshatter"] = { 18, 11, 112, 626 },
			["Notagainqt|spineshatter"] = { 13, 14, -71, 995 },
			["Kenndyman|spineshatter"] = { 15, 11, 85, 764 },
			["Megànføx|spineshatter"] = { 15, 11, 32, 764 },
			["Everlost|spineshatter"] = { 15, 10, 9, 830 },
			["Farsaroga|spineshatter"] = { 15, 10, 2, 831 },
			["Eyta|spineshatter"] = { 12, 11, 29, 717 },
			["Yodakohl|spineshatter"] = { 12, 11, 29, 717 },
			["Jarnotrolli|spineshatter"] = { 14, 8, 111, 914 },
			["Oldtobye|spineshatter"] = { 14, 8, 30, 914 },
			["Reasonicus|spineshatter"] = { 11, 11, -68, 1124 },
			["Vincentxd|spineshatter"] = { 11, 11, -87, 1124 },
			["Ellilol|thunderstrike"] = { 12, 9, 33, 690 },
			["Shadøwsfall|thunderstrike"] = { 12, 9, 33, 695 },
			["Cosmoboy|spineshatter"] = { 12, 8, -19, 719 },
			["Doób|spineshatter"] = { 12, 8, -19, 718 },
			["Ãäøàáåø|spineshatter"] = { 13, 6, 134, 1168 },
			["Shadowpapa|spineshatter"] = { 11, 8, -7, 764 },
			["Votrex|spineshatter"] = { 13, 6, 145, 1168 },
			["Longas|thunderstrike"] = { 9, 9, -111, 584 },
			["Baguetteftw|spineshatter"] = { 14, 2, 114, 1321 },
			["Druidcoachxx|spineshatter"] = { 6, 10, -44, 944 },
			["Sifodyaz|spineshatter"] = { 6, 10, -12, 944 },
			["Xdskullzz|spineshatter"] = { 14, 2, 138, 1321 },
			["Abuzzed|spineshatter"] = { 5, 10, -77, 907 },
			["Ecrøf|spineshatter"] = { 6, 9, -48, 1241 },
			["Funkyxd|spineshatter"] = { 8, 7, -49, 941 },
			["Psyzerg|spineshatter"] = { 5, 10, -44, 907 },
			["Twatcatcher|spineshatter"] = { 8, 7, -49, 941 },
			["Firaa|spineshatter"] = { 5, 9, -71, 762 },
			["Bebøp|spineshatter"] = { 7, 6, -5, 764 },
			["Brubru|spineshatter"] = { 6, 7, -74, 52 },
			["Koeter|spineshatter"] = { 9, 3, 49, 1253 },
			["Séphiz|spineshatter"] = { 7, 5, 1, 1049 },
			["Tamár|spineshatter"] = { 9, 3, 43, 1251 },
			["Amzzi|spineshatter"] = { 4, 7, -38, 762 },
			["Gushers|spineshatter"] = { 8, 3, 49, 944 },
			["Lôlgroundit|spineshatter"] = { 4, 7, -32, 1124 },
			["Xiaohong|spineshatter"] = { 6, 5, -19, 1020 },
			["Youknowz|spineshatter"] = { 8, 3, 56, 944 },
			["Doko|spineshatter"] = { 5, 3, 31, 1071 },
			["Oldp|spineshatter"] = { 3, 5, -73, 120 },
			["Walida|spineshatter"] = { 5, 3, 31, 1071 },
			["Anhedønia|spineshatter"] = { 6, 1, 27, 974 },
			["Baqera|thunderstrike"] = { 1, 6, -50, 705 },
			["Bluebelle|spineshatter"] = { 6, 1, 27, 994 },
			["Crazyhomeles|thunderstrike"] = { 1, 6, -50, 763 },
			["Garad|spineshatter"] = { 2, 5, -52, 734 },
			["Tyzin|spineshatter"] = { 2, 5, -52, 734 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 612 },
			["Crankshãft|spineshatter"] = { 6, 0, 48, 764 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 626 },
			["Jostix|spineshatter"] = { 6, 0, 48, 764 },
			["Mercatore|spineshatter"] = { 4, 2, 27, 921 },
			["Desm|spineshatter"] = { 3, 2, 14, 856 },
			["Makayas|thunderstrike"] = { 2, 3, -24, 1331 },
			["Møøxy|thunderstrike"] = { 2, 3, -24, 1331 },
			["Zralog|spineshatter"] = { 3, 2, -8, 856 },
			["Dahealax|spineshatter"] = { 4, 0, 12, 1072 },
			["Hotmodel|spineshatter"] = { 2, 2, 13, 764 },
			["Psychologue|spineshatter"] = { 4, 0, 12, 1072 },
			["Titanisia|spineshatter"] = { 2, 2, 6, 865 },
			["Kaelolo|spineshatter"] = { 0, 3, -53, 970 },
			["Tobirino|thunderstrike"] = { 2, 1, 12, 850 },
			["Töppis|thunderstrike"] = { 2, 1, 12, 834 },
			["Xeroxd|thunderstrike"] = { 1, 2, 5, 870 },
			["Zuxilon|thunderstrike"] = { 1, 2, -5, 870 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 119 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 44 },
			["Milkywetspot|spineshatter"] = { 2, 0, 15, 901 },
			["Tbcpveandy|spineshatter"] = { 2, 0, 2, 902 },
			["Vitaøne|spineshatter"] = { 0, 2, -33, 1421 },
			["Vitatwø|spineshatter"] = { 0, 2, -33, 1304 },
			["Bjornesmag|thunderstrike"] = { 1, 0, 9, 1089 },
			["Daydreamer|spineshatter"] = { 1, 0, 2, 944 },
			["Harrypottert|thunderstrike"] = { 1, 0, 8, 1116 },
			["Nutellaskurk|spineshatter"] = { 1, 0, 3, 921 },
			["Remag|spineshatter"] = { 1, 0, 2, 944 },
			["Spartanx|thunderstrike"] = { 1, 0, 8, 1118 },
			["Xolaire|spineshatter"] = { 1, 0, 3, 922 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, 3, 727 },
			["Siittäjä|thunderstrike"] = { 3, 3, -6, 727 },
			["Iridial|spineshatter"] = { 4, 1, 14, 726 },
			["Maxj|spineshatter"] = { 4, 1, 47, 728 },
		},
	},
}

