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
	built = 1794059960,
	builtText = "2026-11-07 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ânälkras|spineshatter"] = { 3, 0, 9, 96 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 102 },
			["Brubru|spineshatter"] = { 2, 0, 5, 172 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 164 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ânälkras|spineshatter"] = { 3, 0, 9, 96 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 102 },
			["Brubru|spineshatter"] = { 2, 0, 5, 172 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 239 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 164 },
			["Oldp|spineshatter"] = { 1, 1, -18, 240 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ânälkras|spineshatter"] = { 3, 0, 9, 96 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 102 },
			["Brubru|spineshatter"] = { 2, 0, 5, 172 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 239 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 164 },
			["Oldp|spineshatter"] = { 1, 1, -18, 240 },
			["Longas|thunderstrike"] = { 0, 1, -16, 704 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Demetsky|spineshatter"] = { 19, 13, 27, 934 },
			["Sutlucco|spineshatter"] = { 19, 13, 27, 934 },
			["Orcabrina|spineshatter"] = { 18, 11, 128, 746 },
			["Sustanøn|spineshatter"] = { 18, 11, 112, 746 },
			["Notagainqt|spineshatter"] = { 13, 14, -71, 1115 },
			["Kenndyman|spineshatter"] = { 15, 11, 85, 884 },
			["Megànføx|spineshatter"] = { 15, 11, 32, 884 },
			["Everlost|spineshatter"] = { 15, 10, 9, 950 },
			["Farsaroga|spineshatter"] = { 15, 10, 2, 951 },
			["Eyta|spineshatter"] = { 12, 11, 29, 837 },
			["Yodakohl|spineshatter"] = { 12, 11, 29, 837 },
			["Jarnotrolli|spineshatter"] = { 14, 8, 111, 1034 },
			["Oldtobye|spineshatter"] = { 14, 8, 30, 1034 },
			["Reasonicus|spineshatter"] = { 11, 11, -68, 1244 },
			["Vincentxd|spineshatter"] = { 11, 11, -87, 1244 },
			["Ellilol|thunderstrike"] = { 12, 9, 33, 810 },
			["Shadøwsfall|thunderstrike"] = { 12, 9, 33, 815 },
			["Cosmoboy|spineshatter"] = { 12, 8, -19, 839 },
			["Doób|spineshatter"] = { 12, 8, -19, 838 },
			["Ãäøàáåø|spineshatter"] = { 13, 6, 134, 1288 },
			["Shadowpapa|spineshatter"] = { 11, 8, -7, 884 },
			["Votrex|spineshatter"] = { 13, 6, 145, 1288 },
			["Longas|thunderstrike"] = { 9, 9, -111, 704 },
			["Druidcoachxx|spineshatter"] = { 6, 10, -44, 1064 },
			["Sifodyaz|spineshatter"] = { 6, 10, -12, 1064 },
			["Abuzzed|spineshatter"] = { 5, 10, -77, 1027 },
			["Ecrøf|spineshatter"] = { 6, 9, -48, 1361 },
			["Funkyxd|spineshatter"] = { 8, 7, -49, 1061 },
			["Psyzerg|spineshatter"] = { 5, 10, -44, 1027 },
			["Twatcatcher|spineshatter"] = { 8, 7, -49, 1061 },
			["Firaa|spineshatter"] = { 5, 9, -71, 882 },
			["Bebøp|spineshatter"] = { 7, 6, -5, 884 },
			["Brubru|spineshatter"] = { 6, 7, -74, 172 },
			["Koeter|spineshatter"] = { 9, 3, 49, 1373 },
			["Séphiz|spineshatter"] = { 7, 5, 1, 1169 },
			["Tamár|spineshatter"] = { 9, 3, 43, 1371 },
			["Amzzi|spineshatter"] = { 4, 7, -38, 882 },
			["Gushers|spineshatter"] = { 8, 3, 49, 1064 },
			["Lôlgroundit|spineshatter"] = { 4, 7, -32, 1244 },
			["Xiaohong|spineshatter"] = { 6, 5, -19, 1140 },
			["Youknowz|spineshatter"] = { 8, 3, 56, 1064 },
			["Doko|spineshatter"] = { 5, 3, 31, 1191 },
			["Oldp|spineshatter"] = { 3, 5, -73, 240 },
			["Walida|spineshatter"] = { 5, 3, 31, 1191 },
			["Anhedønia|spineshatter"] = { 6, 1, 27, 1094 },
			["Baqera|thunderstrike"] = { 1, 6, -50, 825 },
			["Bluebelle|spineshatter"] = { 6, 1, 27, 1114 },
			["Crazyhomeles|thunderstrike"] = { 1, 6, -50, 883 },
			["Garad|spineshatter"] = { 2, 5, -52, 854 },
			["Tyzin|spineshatter"] = { 2, 5, -52, 854 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 732 },
			["Crankshãft|spineshatter"] = { 6, 0, 48, 884 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 746 },
			["Jostix|spineshatter"] = { 6, 0, 48, 884 },
			["Mercatore|spineshatter"] = { 4, 2, 27, 1041 },
			["Desm|spineshatter"] = { 3, 2, 14, 976 },
			["Zralog|spineshatter"] = { 3, 2, -8, 976 },
			["Dahealax|spineshatter"] = { 4, 0, 12, 1192 },
			["Hotmodel|spineshatter"] = { 2, 2, 13, 884 },
			["Psychologue|spineshatter"] = { 4, 0, 12, 1192 },
			["Titanisia|spineshatter"] = { 2, 2, 6, 985 },
			["Ânälkras|spineshatter"] = { 3, 0, 9, 96 },
			["Kaelolo|spineshatter"] = { 0, 3, -53, 1090 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 102 },
			["Tobirino|thunderstrike"] = { 2, 1, 12, 970 },
			["Töppis|thunderstrike"] = { 2, 1, 12, 954 },
			["Xeroxd|thunderstrike"] = { 1, 2, 5, 990 },
			["Zuxilon|thunderstrike"] = { 1, 2, -5, 990 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 239 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 164 },
			["Milkywetspot|spineshatter"] = { 2, 0, 15, 1021 },
			["Tbcpveandy|spineshatter"] = { 2, 0, 2, 1022 },
			["Vitatwø|spineshatter"] = { 0, 2, -33, 1424 },
			["Bjornesmag|thunderstrike"] = { 1, 0, 9, 1209 },
			["Daydreamer|spineshatter"] = { 1, 0, 2, 1064 },
			["Harrypottert|thunderstrike"] = { 1, 0, 8, 1236 },
			["Nutellaskurk|spineshatter"] = { 1, 0, 3, 1041 },
			["Remag|spineshatter"] = { 1, 0, 2, 1064 },
			["Spartanx|thunderstrike"] = { 1, 0, 8, 1238 },
			["Xolaire|spineshatter"] = { 1, 0, 3, 1042 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, 3, 847 },
			["Siittäjä|thunderstrike"] = { 3, 3, -6, 847 },
			["Iridial|spineshatter"] = { 4, 1, 14, 846 },
			["Maxj|spineshatter"] = { 4, 1, 47, 848 },
		},
	},
}

