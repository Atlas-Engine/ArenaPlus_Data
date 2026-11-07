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
	built = 1794063560,
	builtText = "2026-11-07 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 18 },
			["Brubru|spineshatter"] = { 0, 3, -37, 44 },
			["Druidcoachx|spineshatter"] = { 3, 0, 14, 44 },
			["Macecarries|thunderstrike"] = { 2, 1, 4, 44 },
			["Reesey|thunderstrike"] = { 2, 1, 4, 44 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 44 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 18 },
			["Ânälkras|spineshatter"] = { 3, 0, 9, 156 },
			["Brubru|spineshatter"] = { 0, 3, -37, 44 },
			["Druidcoachx|spineshatter"] = { 3, 0, 14, 44 },
			["Macecarries|thunderstrike"] = { 2, 1, 4, 44 },
			["Reesey|thunderstrike"] = { 2, 1, 4, 44 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 162 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 44 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 44 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 18 },
			["Brubru|spineshatter"] = { 2, 3, -32, 44 },
			["Ânälkras|spineshatter"] = { 3, 0, 9, 156 },
			["Druidcoachx|spineshatter"] = { 3, 0, 14, 44 },
			["Macecarries|thunderstrike"] = { 2, 1, 4, 44 },
			["Reesey|thunderstrike"] = { 2, 1, 4, 44 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 162 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 299 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 224 },
			["Oldp|spineshatter"] = { 1, 1, -18, 300 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 44 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 44 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Lôlgroundit|spineshatter"] = { 1, 7, -68, 18 },
			["Brubru|spineshatter"] = { 2, 3, -32, 44 },
			["Ânälkras|spineshatter"] = { 3, 0, 9, 156 },
			["Druidcoachx|spineshatter"] = { 3, 0, 14, 44 },
			["Macecarries|thunderstrike"] = { 2, 1, 4, 44 },
			["Reesey|thunderstrike"] = { 2, 1, 4, 44 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 162 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 299 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 224 },
			["Oldp|spineshatter"] = { 1, 1, -18, 300 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 44 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 44 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Demetsky|spineshatter"] = { 19, 13, 27, 994 },
			["Sutlucco|spineshatter"] = { 19, 13, 27, 994 },
			["Orcabrina|spineshatter"] = { 18, 11, 128, 806 },
			["Sustanøn|spineshatter"] = { 18, 11, 112, 806 },
			["Kenndyman|spineshatter"] = { 15, 11, 85, 944 },
			["Megànføx|spineshatter"] = { 15, 11, 32, 944 },
			["Everlost|spineshatter"] = { 15, 10, 9, 1010 },
			["Farsaroga|spineshatter"] = { 15, 10, 2, 1011 },
			["Eyta|spineshatter"] = { 12, 11, 29, 897 },
			["Yodakohl|spineshatter"] = { 12, 11, 29, 897 },
			["Jarnotrolli|spineshatter"] = { 14, 8, 111, 1094 },
			["Oldtobye|spineshatter"] = { 14, 8, 30, 1094 },
			["Reasonicus|spineshatter"] = { 11, 11, -68, 1304 },
			["Vincentxd|spineshatter"] = { 11, 11, -87, 1304 },
			["Ellilol|thunderstrike"] = { 12, 9, 33, 870 },
			["Shadøwsfall|thunderstrike"] = { 12, 9, 33, 875 },
			["Cosmoboy|spineshatter"] = { 12, 8, -19, 899 },
			["Doób|spineshatter"] = { 12, 8, -19, 898 },
			["Ãäøàáåø|spineshatter"] = { 13, 6, 134, 1348 },
			["Lôlgroundit|spineshatter"] = { 5, 14, -100, 18 },
			["Shadowpapa|spineshatter"] = { 11, 8, -7, 944 },
			["Votrex|spineshatter"] = { 13, 6, 145, 1348 },
			["Longas|thunderstrike"] = { 9, 9, -111, 764 },
			["Notagainqt|spineshatter"] = { 9, 8, -42, 1175 },
			["Brubru|spineshatter"] = { 6, 10, -111, 44 },
			["Druidcoachxx|spineshatter"] = { 6, 10, -44, 1124 },
			["Sifodyaz|spineshatter"] = { 6, 10, -12, 1124 },
			["Abuzzed|spineshatter"] = { 5, 10, -77, 1087 },
			["Funkyxd|spineshatter"] = { 8, 7, -49, 1121 },
			["Psyzerg|spineshatter"] = { 5, 10, -44, 1087 },
			["Twatcatcher|spineshatter"] = { 8, 7, -49, 1121 },
			["Firaa|spineshatter"] = { 5, 9, -71, 942 },
			["Bebøp|spineshatter"] = { 7, 6, -5, 944 },
			["Séphiz|spineshatter"] = { 7, 5, 1, 1229 },
			["Amzzi|spineshatter"] = { 4, 7, -38, 942 },
			["Gushers|spineshatter"] = { 8, 3, 49, 1124 },
			["Xiaohong|spineshatter"] = { 6, 5, -19, 1200 },
			["Youknowz|spineshatter"] = { 8, 3, 56, 1124 },
			["Doko|spineshatter"] = { 5, 3, 31, 1251 },
			["Oldp|spineshatter"] = { 3, 5, -73, 300 },
			["Walida|spineshatter"] = { 5, 3, 31, 1251 },
			["Anhedønia|spineshatter"] = { 6, 1, 27, 1154 },
			["Baqera|thunderstrike"] = { 1, 6, -50, 885 },
			["Bluebelle|spineshatter"] = { 6, 1, 27, 1174 },
			["Crazyhomeles|thunderstrike"] = { 1, 6, -50, 943 },
			["Garad|spineshatter"] = { 2, 5, -52, 914 },
			["Tyzin|spineshatter"] = { 2, 5, -52, 914 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 792 },
			["Crankshãft|spineshatter"] = { 6, 0, 48, 944 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 806 },
			["Jostix|spineshatter"] = { 6, 0, 48, 944 },
			["Koeter|spineshatter"] = { 6, 0, 52, 1433 },
			["Mercatore|spineshatter"] = { 4, 2, 27, 1101 },
			["Tamár|spineshatter"] = { 6, 0, 50, 1431 },
			["Desm|spineshatter"] = { 3, 2, 14, 1036 },
			["Ecrøf|spineshatter"] = { 2, 3, -32, 1421 },
			["Zralog|spineshatter"] = { 3, 2, -8, 1036 },
			["Dahealax|spineshatter"] = { 4, 0, 12, 1252 },
			["Hotmodel|spineshatter"] = { 2, 2, 13, 944 },
			["Psychologue|spineshatter"] = { 4, 0, 12, 1252 },
			["Titanisia|spineshatter"] = { 2, 2, 6, 1045 },
			["Ânälkras|spineshatter"] = { 3, 0, 9, 156 },
			["Druidcoachx|spineshatter"] = { 3, 0, 14, 44 },
			["Kaelolo|spineshatter"] = { 0, 3, -53, 1150 },
			["Macecarries|thunderstrike"] = { 2, 1, 4, 44 },
			["Reesey|thunderstrike"] = { 2, 1, 4, 44 },
			["Stonedness|spineshatter"] = { 3, 0, 10, 162 },
			["Tobirino|thunderstrike"] = { 2, 1, 12, 1030 },
			["Töppis|thunderstrike"] = { 2, 1, 12, 1014 },
			["Xeroxd|thunderstrike"] = { 1, 2, 5, 1050 },
			["Zuxilon|thunderstrike"] = { 1, 2, -5, 1050 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 299 },
			["Meramoon|spineshatter"] = { 2, 0, 4, 224 },
			["Milkywetspot|spineshatter"] = { 2, 0, 15, 1081 },
			["Tbcpveandy|spineshatter"] = { 2, 0, 2, 1082 },
			["Bjornesmag|thunderstrike"] = { 1, 0, 9, 1269 },
			["Daydreamer|spineshatter"] = { 1, 0, 2, 1124 },
			["Harrypottert|thunderstrike"] = { 1, 0, 8, 1296 },
			["Nutellaskurk|spineshatter"] = { 1, 0, 3, 1101 },
			["Remag|spineshatter"] = { 1, 0, 2, 1124 },
			["Shadowdanz|spineshatter"] = { 1, 0, 4, 44 },
			["Sonnyxx|spineshatter"] = { 1, 0, 4, 44 },
			["Spartanx|thunderstrike"] = { 1, 0, 8, 1298 },
			["Xolaire|spineshatter"] = { 1, 0, 3, 1102 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, 3, 907 },
			["Siittäjä|thunderstrike"] = { 3, 3, -6, 907 },
			["Iridial|spineshatter"] = { 4, 1, 14, 906 },
			["Maxj|spineshatter"] = { 4, 1, 47, 908 },
		},
	},
}

