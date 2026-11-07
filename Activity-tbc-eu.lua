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
	built = 1794067164,
	builtText = "2026-11-07 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 1, 5, -63, 4 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 52 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 52 },
			["Druidcoachx|spineshatter"] = { 1, 0, 11, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 1, 8, -100, 4 },
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 78 },
			["Macecarries|thunderstrike"] = { 4, 2, -8, 61 },
			["Druidcoachx|spineshatter"] = { 4, 0, 25, 34 },
			["Reesey|thunderstrike"] = { 2, 1, 4, 104 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 52 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 52 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 104 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 104 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 3, 8, -95, 4 },
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 78 },
			["Macecarries|thunderstrike"] = { 4, 2, -8, 61 },
			["Druidcoachx|spineshatter"] = { 4, 0, 25, 34 },
			["Ânälkras|spineshatter"] = { 3, 0, 9, 216 },
			["Reesey|thunderstrike"] = { 2, 1, 4, 104 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 222 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 359 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 284 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 52 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 52 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 104 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 104 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Brubru|spineshatter"] = { 3, 8, -95, 4 },
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 78 },
			["Macecarries|thunderstrike"] = { 4, 2, -8, 61 },
			["Druidcoachx|spineshatter"] = { 4, 0, 25, 34 },
			["Ânälkras|spineshatter"] = { 3, 0, 9, 216 },
			["Reesey|thunderstrike"] = { 2, 1, 4, 104 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 222 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 359 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 284 },
			["Oldp|spineshatter"] = { 1, 1, -18, 361 },
			["Xeroxd|thunderstrike"] = { 2, 0, 22, 52 },
			["Zuxilon|thunderstrike"] = { 2, 0, 19, 52 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 104 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 104 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Demetsky|spineshatter"] = { 19, 13, 27, 1054 },
			["Sutlucco|spineshatter"] = { 19, 13, 27, 1054 },
			["Orcabrina|spineshatter"] = { 18, 11, 128, 867 },
			["Sustanøn|spineshatter"] = { 18, 11, 112, 867 },
			["Kenndyman|spineshatter"] = { 15, 11, 85, 1004 },
			["Megànføx|spineshatter"] = { 15, 11, 32, 1004 },
			["Everlost|spineshatter"] = { 15, 10, 9, 1070 },
			["Farsaroga|spineshatter"] = { 15, 10, 2, 1071 },
			["Eyta|spineshatter"] = { 12, 11, 29, 957 },
			["Yodakohl|spineshatter"] = { 12, 11, 29, 957 },
			["Brubru|spineshatter"] = { 7, 15, -174, 4 },
			["Jarnotrolli|spineshatter"] = { 14, 8, 111, 1154 },
			["Oldtobye|spineshatter"] = { 14, 8, 30, 1155 },
			["Reasonicus|spineshatter"] = { 11, 11, -68, 1364 },
			["Vincentxd|spineshatter"] = { 11, 11, -87, 1364 },
			["Ellilol|thunderstrike"] = { 12, 9, 33, 930 },
			["Shadøwsfall|thunderstrike"] = { 12, 9, 33, 935 },
			["Cosmoboy|spineshatter"] = { 12, 8, -19, 960 },
			["Doób|spineshatter"] = { 12, 8, -19, 958 },
			["Ãäøàáåø|spineshatter"] = { 13, 6, 134, 1408 },
			["Lôlgroundit|spineshatter"] = { 5, 14, -100, 78 },
			["Shadowpapa|spineshatter"] = { 11, 8, -7, 1004 },
			["Votrex|spineshatter"] = { 13, 6, 145, 1408 },
			["Longas|thunderstrike"] = { 9, 9, -111, 824 },
			["Druidcoachxx|spineshatter"] = { 6, 10, -44, 1184 },
			["Sifodyaz|spineshatter"] = { 6, 10, -12, 1184 },
			["Abuzzed|spineshatter"] = { 5, 10, -77, 1147 },
			["Funkyxd|spineshatter"] = { 8, 7, -49, 1181 },
			["Psyzerg|spineshatter"] = { 5, 10, -44, 1147 },
			["Twatcatcher|spineshatter"] = { 8, 7, -49, 1181 },
			["Firaa|spineshatter"] = { 5, 9, -71, 1002 },
			["Bebøp|spineshatter"] = { 7, 6, -5, 1004 },
			["Notagainqt|spineshatter"] = { 7, 5, -5, 1235 },
			["Séphiz|spineshatter"] = { 7, 5, 1, 1290 },
			["Amzzi|spineshatter"] = { 4, 7, -38, 1002 },
			["Gushers|spineshatter"] = { 8, 3, 49, 1184 },
			["Xiaohong|spineshatter"] = { 6, 5, -19, 1260 },
			["Youknowz|spineshatter"] = { 8, 3, 56, 1184 },
			["Doko|spineshatter"] = { 5, 3, 31, 1311 },
			["Oldp|spineshatter"] = { 3, 5, -73, 361 },
			["Walida|spineshatter"] = { 5, 3, 31, 1311 },
			["Anhedønia|spineshatter"] = { 6, 1, 27, 1214 },
			["Baqera|thunderstrike"] = { 1, 6, -50, 945 },
			["Bluebelle|spineshatter"] = { 6, 1, 27, 1234 },
			["Crazyhomeles|thunderstrike"] = { 1, 6, -50, 1003 },
			["Garad|spineshatter"] = { 2, 5, -52, 975 },
			["Tyzin|spineshatter"] = { 2, 5, -52, 974 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 852 },
			["Crankshãft|spineshatter"] = { 6, 0, 48, 1004 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 866 },
			["Jostix|spineshatter"] = { 6, 0, 48, 1004 },
			["Macecarries|thunderstrike"] = { 4, 2, -8, 61 },
			["Mercatore|spineshatter"] = { 4, 2, 27, 1161 },
			["Desm|spineshatter"] = { 3, 2, 14, 1096 },
			["Xeroxd|thunderstrike"] = { 3, 2, 27, 52 },
			["Zralog|spineshatter"] = { 3, 2, -8, 1096 },
			["Zuxilon|thunderstrike"] = { 3, 2, 14, 52 },
			["Dahealax|spineshatter"] = { 4, 0, 12, 1312 },
			["Druidcoachx|spineshatter"] = { 4, 0, 25, 34 },
			["Hotmodel|spineshatter"] = { 2, 2, 13, 1004 },
			["Psychologue|spineshatter"] = { 4, 0, 12, 1312 },
			["Titanisia|spineshatter"] = { 2, 2, 6, 1105 },
			["Ânälkras|spineshatter"] = { 3, 0, 9, 216 },
			["Kaelolo|spineshatter"] = { 0, 3, -53, 1210 },
			["Reesey|thunderstrike"] = { 2, 1, 4, 104 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 222 },
			["Tobirino|thunderstrike"] = { 2, 1, 12, 1090 },
			["Töppis|thunderstrike"] = { 2, 1, 12, 1074 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 359 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 284 },
			["Milkywetspot|spineshatter"] = { 2, 0, 15, 1141 },
			["Tbcpveandy|spineshatter"] = { 2, 0, 2, 1142 },
			["Bjornesmag|thunderstrike"] = { 1, 0, 9, 1329 },
			["Daydreamer|spineshatter"] = { 1, 0, 2, 1184 },
			["Harrypottert|thunderstrike"] = { 1, 0, 8, 1356 },
			["Nutellaskurk|spineshatter"] = { 1, 0, 3, 1161 },
			["Remag|spineshatter"] = { 1, 0, 2, 1184 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 104 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 104 },
			["Spartanx|thunderstrike"] = { 1, 0, 8, 1358 },
			["Xolaire|spineshatter"] = { 1, 0, 3, 1162 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, 3, 967 },
			["Siittäjä|thunderstrike"] = { 3, 3, -6, 967 },
			["Iridial|spineshatter"] = { 4, 1, 14, 966 },
			["Maxj|spineshatter"] = { 4, 1, 47, 968 },
		},
	},
}

