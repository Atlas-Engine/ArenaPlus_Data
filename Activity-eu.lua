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

ns.ACTIVITY_BY_REGION["eu"] = {
	built = 1795708837,
	builtText = "2026-11-26 11:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 0, 1, -14, 27 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 3, 1, 19, 13 },
			["Melatonin|everlook"] = { 3, 1, 16, 16 },
			["Batix|shekzeer"] = { 1, 0, 16, 8 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 8 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 8 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 82, 108 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 123 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 108 },
			["Sírpressheal|auberdine"] = { 1, 1, -12, 108 },
			["Skyráw|shekzeer"] = { 0, 1, -14, 27 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 3, 1, 19, 13 },
			["Melatonin|everlook"] = { 3, 1, 16, 16 },
			["Batix|shekzeer"] = { 1, 0, 16, 8 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 8 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 8 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 82, 108 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 123 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 108 },
			["Sírpressheal|auberdine"] = { 1, 1, -12, 108 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 288 },
			["Commitment|shekzeer"] = { 1, 0, 12, 346 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 213 },
			["Skyráw|shekzeer"] = { 0, 1, -14, 27 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 3, 1, 19, 13 },
			["Melatonin|everlook"] = { 3, 1, 16, 16 },
			["Batix|shekzeer"] = { 1, 0, 16, 8 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 8 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 8 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 82, 108 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 123 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 108 },
			["Sírpressheal|auberdine"] = { 1, 1, -12, 108 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 288 },
			["Commitment|shekzeer"] = { 1, 0, 12, 346 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 213 },
			["Skyráw|shekzeer"] = { 0, 1, -14, 27 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 3, 1, 19, 13 },
			["Melatonin|everlook"] = { 3, 1, 16, 16 },
			["Batix|shekzeer"] = { 1, 0, 16, 8 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 8 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 8 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ngmi|shekzeer"] = { 22, 20, 13, 999 },
			["Plåýßøt|shekzeer"] = { 22, 20, 13, 999 },
			["Srtwhippa|everlook"] = { 10, 11, 18, 1000 },
			["Zok|shekzeer"] = { 10, 11, 15, 1000 },
			["Tchaktchac|auberdine"] = { 6, 11, 0, 1069 },
			["Brazqrx|shekzeer"] = { 7, 9, 1, 1048 },
			["Lîllyputaner|everlook"] = { 9, 7, 27, 1057 },
			["Prayzthebozz|everlook"] = { 8, 7, 173, 1042 },
			["Rodnichek|shekzeer"] = { 6, 9, 30, 108 },
			["Xály|shekzeer"] = { 5, 10, -92, 828 },
			["Yezze|garalon"] = { 8, 7, 17, 1042 },
			["Commitment|shekzeer"] = { 9, 5, 26, 346 },
			["Jakamaestro|shekzeer"] = { 7, 7, -19, 1058 },
			["Marlkx|shekzeer"] = { 5, 9, -14, 1126 },
			["Mwaniel|auberdine"] = { 6, 8, 16, 1012 },
			["Wasabî|auberdine"] = { 6, 8, 5, 1013 },
			["Andyskhan|mirage-raceway"] = { 6, 7, 34, 948 },
			["Madaurmada|shekzeer"] = { 7, 6, -37, 1008 },
			["Suspriest|shekzeer"] = { 6, 7, 77, 946 },
			["Guccidaggers|shekzeer"] = { 9, 3, 102, 1008 },
			["Фазерихх|flamegor"] = { 5, 7, 2, 1162 },
			["Satånaz|shekzeer"] = { 11, 0, 25, 1038 },
			["Topshotta|everlook"] = { 4, 7, -29, 1247 },
			["Cuckmycoocon|shekzeer"] = { 6, 4, 106, 1155 },
			["Deepfull|shekzeer"] = { 4, 6, -19, 1268 },
			["Domnox|auberdine"] = { 3, 7, 2, 1069 },
			["Triplepizza|shekzeer"] = { 6, 4, 34, 1154 },
			["Angrycubanx|shekzeer"] = { 5, 4, 20, 1073 },
			["Jakamoto|shekzeer"] = { 5, 4, -9, 1154 },
			["Mists|shekzeer"] = { 9, 0, 19, 1016 },
			["Tastemydmg|shekzeer"] = { 5, 4, 42, 1194 },
			["Tyralíon|shekzeer"] = { 5, 4, 42, 1196 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 123 },
			["Derxibro|shekzeer"] = { 7, 1, 21, 1306 },
			["Dogfight|shekzeer"] = { 4, 4, 41, 1008 },
			["Glamourmw|mirage-raceway"] = { 4, 4, 56, 1123 },
			["Idontflinch|garalon"] = { 7, 1, 30, 1188 },
			["Vercettixx|shekzeer"] = { 8, 0, 37, 985 },
			["Bakomba|shekzeer"] = { 3, 4, -26, 1293 },
			["Blèsséd|shekzeer"] = { 0, 7, -19, 1327 },
			["Durianlover|shekzeer"] = { 3, 4, -10, 1188 },
			["Kospi|auberdine"] = { 3, 4, 7, 1392 },
			["Makkezi|shekzeer"] = { 0, 7, -24, 1336 },
			["Srtdrippa|everlook"] = { 3, 4, 3, 1126 },
			["Hopedieslast|shekzeer"] = { 3, 3, 5, 1188 },
			["Qwanya|shekzeer"] = { 4, 2, 78, 1180 },
			["Biggestegoeu|shekzeer"] = { 4, 1, -1, 924 },
			["Cõmbustz|shekzeer"] = { 2, 3, -10, 1115 },
			["Crazyskill|shekzeer"] = { 3, 2, -1, 108 },
			["Drumåndbåss|shekzeer"] = { 5, 0, 58, 1135 },
			["Ivonsa|garalon"] = { 0, 5, -56, 1001 },
			["Rainbowrider|shekzeer"] = { 2, 3, -15, 1115 },
			["Rainbôwrider|shekzeer"] = { 4, 1, 33, 1064 },
			["Sumtinrother|shekzeer"] = { 4, 1, 34, 1067 },
			["Yhwatch|shekzeer"] = { 4, 1, -1, 923 },
			["Лилрой|flamegor"] = { 0, 5, -21, 1430 },
			["Тнэш|flamegor"] = { 5, 0, 58, 1134 },
			["Jakamstar|shekzeer"] = { 2, 2, 12, 1204 },
			["Juicyverÿ|shekzeer"] = { 3, 1, 20, 1113 },
			["Pippilotta|shekzeer"] = { 2, 2, 6, 1240 },
			["Sugarbear|shekzeer"] = { 1, 3, 24, 1066 },
			["Taopaípaí|auberdine"] = { 0, 4, -30, 1008 },
			["Элементовик|flamegor"] = { 3, 1, 21, 1150 },
			["Bozzclqwnx|shekzeer"] = { 0, 3, -26, 1022 },
			["Cavernicola|garalon"] = { 0, 3, -32, 1067 },
			["Coldcofeesux|shekzeer"] = { 0, 3, -28, 1368 },
			["Djburst|shekzeer"] = { 1, 2, -20, 924 },
			["Gódx|shekzeer"] = { 1, 2, -14, 984 },
			["Semloh|mirage-raceway"] = { 1, 2, -4, 1222 },
			["ßlinkd|shekzeer"] = { 0, 3, -38, 1246 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 1408 },
			["Cherryontop|shekzeer"] = { 1, 1, 18, 1008 },
			["Holmesx|mirage-raceway"] = { 0, 2, -11, 1158 },
			["Orestis|norushen"] = { 0, 2, -21, 1084 },
			["Parkettaszeg|shekzeer"] = { 0, 2, -27, 1329 },
			["Sírpressheal|auberdine"] = { 1, 1, -12, 108 },
			["Straviouse|hoptallus"] = { 0, 2, -19, 1184 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 288 },
			["Brazqr|shekzeer"] = { 0, 1, -11, 1245 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 213 },
			["Èlcapitan|mirage-raceway"] = { 0, 1, -16, 1067 },
			["Froheostern|shekzeer"] = { 0, 1, -12, 1122 },
			["Jakam|shekzeer"] = { 0, 1, -2, 1046 },
			["Kalreth|shekzeer"] = { 0, 1, -18, 900 },
			["Mîlkaa|everlook"] = { 0, 1, -10, 1256 },
			["Skyráw|shekzeer"] = { 0, 1, -14, 27 },
			["Vrctx|shekzeer"] = { 1, 0, 14, 1249 },
			["Zhili|hoptallus"] = { 1, 0, 11, 1368 },
		},
		[2] = {
			["Missgrip|sulfuron"] = { 0, 5, 0, 1368 },
			["Голмаш|flamegor"] = { 0, 5, -11, 1368 },
			["Рыкай|flamegor"] = { 0, 5, -20, 1368 },
			["Gnomidge|hoptallus"] = { 3, 1, 19, 13 },
			["Luckynova|garalon"] = { 4, 0, 16, 1402 },
			["Melatonin|everlook"] = { 3, 1, 16, 16 },
			["Skorpiys|norushen"] = { 4, 0, 30, 1420 },
			["Voljix|shekzeer"] = { 4, 0, 16, 1368 },
			["Therealfq|shekzeer"] = { 2, 0, 3, 8 },
			["Weaverok|shekzeer"] = { 2, 0, 7, 8 },
			["Batix|shekzeer"] = { 1, 0, 16, 8 },
			["Crazyskill|shekzeer"] = { 1, 0, 96, 1373 },
		},
	},
}

