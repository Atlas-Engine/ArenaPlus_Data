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
	built = 1795705232,
	builtText = "2026-11-26 10:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 82, 48 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 48 },
			["Sírpressheal|auberdine"] = { 1, 1, -12, 48 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 82, 48 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 63 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 48 },
			["Sírpressheal|auberdine"] = { 1, 1, -12, 48 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 153 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 82, 48 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 63 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 48 },
			["Sírpressheal|auberdine"] = { 1, 1, -12, 48 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 228 },
			["Commitment|shekzeer"] = { 1, 0, 12, 286 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 153 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 82, 48 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 63 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 48 },
			["Sírpressheal|auberdine"] = { 1, 1, -12, 48 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 228 },
			["Commitment|shekzeer"] = { 1, 0, 12, 286 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 153 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ngmi|shekzeer"] = { 22, 20, 13, 939 },
			["Plåýßøt|shekzeer"] = { 22, 20, 13, 939 },
			["Srtwhippa|everlook"] = { 10, 11, 18, 940 },
			["Zok|shekzeer"] = { 10, 11, 15, 940 },
			["Tchaktchac|auberdine"] = { 6, 11, 0, 1009 },
			["Brazqrx|shekzeer"] = { 7, 9, 1, 988 },
			["Lîllyputaner|everlook"] = { 9, 7, 27, 997 },
			["Prayzthebozz|everlook"] = { 8, 7, 173, 982 },
			["Rodnichek|shekzeer"] = { 6, 9, 30, 48 },
			["Xály|shekzeer"] = { 5, 10, -92, 768 },
			["Yezze|garalon"] = { 8, 7, 17, 982 },
			["Commitment|shekzeer"] = { 9, 5, 26, 286 },
			["Domnox|auberdine"] = { 5, 9, 10, 1009 },
			["Jakamaestro|shekzeer"] = { 7, 7, -19, 998 },
			["Marlkx|shekzeer"] = { 5, 9, -14, 1066 },
			["Mwaniel|auberdine"] = { 6, 8, 16, 952 },
			["Wasabî|auberdine"] = { 6, 8, 5, 953 },
			["Andyskhan|mirage-raceway"] = { 6, 7, 34, 888 },
			["Madaurmada|shekzeer"] = { 7, 6, -37, 948 },
			["Suspriest|shekzeer"] = { 6, 7, 77, 886 },
			["Guccidaggers|shekzeer"] = { 9, 3, 102, 948 },
			["Фазерихх|flamegor"] = { 5, 7, 2, 1102 },
			["Satånaz|shekzeer"] = { 11, 0, 25, 978 },
			["Topshotta|everlook"] = { 4, 7, -29, 1186 },
			["Cuckmycoocon|shekzeer"] = { 6, 4, 106, 1095 },
			["Deepfull|shekzeer"] = { 4, 6, -19, 1208 },
			["Triplepizza|shekzeer"] = { 6, 4, 34, 1094 },
			["Angrycubanx|shekzeer"] = { 5, 4, 20, 1012 },
			["Jakamoto|shekzeer"] = { 5, 4, -9, 1094 },
			["Mists|shekzeer"] = { 9, 0, 19, 956 },
			["Tastemydmg|shekzeer"] = { 5, 4, 42, 1133 },
			["Tyralíon|shekzeer"] = { 5, 4, 42, 1136 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 63 },
			["Derxibro|shekzeer"] = { 7, 1, 21, 1246 },
			["Dogfight|shekzeer"] = { 4, 4, 41, 948 },
			["Glamourmw|mirage-raceway"] = { 4, 4, 56, 1063 },
			["Idontflinch|garalon"] = { 7, 1, 30, 1128 },
			["Vercettixx|shekzeer"] = { 8, 0, 37, 925 },
			["Bakomba|shekzeer"] = { 3, 4, -26, 1233 },
			["Blèsséd|shekzeer"] = { 0, 7, -19, 1267 },
			["Durianlover|shekzeer"] = { 3, 4, -10, 1128 },
			["Kospi|auberdine"] = { 3, 4, 7, 1332 },
			["Makkezi|shekzeer"] = { 0, 7, -24, 1276 },
			["Srtdrippa|everlook"] = { 3, 4, 3, 1066 },
			["Hopedieslast|shekzeer"] = { 3, 3, 5, 1128 },
			["Qwanya|shekzeer"] = { 4, 2, 78, 1120 },
			["Biggestegoeu|shekzeer"] = { 4, 1, -1, 863 },
			["Cõmbustz|shekzeer"] = { 2, 3, -10, 1055 },
			["Crazyskill|shekzeer"] = { 3, 2, -1, 48 },
			["Drumåndbåss|shekzeer"] = { 5, 0, 58, 1075 },
			["Ivonsa|garalon"] = { 0, 5, -56, 941 },
			["Rainbowrider|shekzeer"] = { 2, 3, -15, 1055 },
			["Rainbôwrider|shekzeer"] = { 4, 1, 33, 1004 },
			["Sumtinrother|shekzeer"] = { 4, 1, 34, 1007 },
			["Yhwatch|shekzeer"] = { 4, 1, -1, 863 },
			["Лилрой|flamegor"] = { 0, 5, -21, 1370 },
			["Тнэш|flamegor"] = { 5, 0, 58, 1074 },
			["Jakamstar|shekzeer"] = { 2, 2, 12, 1144 },
			["Juicyverÿ|shekzeer"] = { 3, 1, 20, 1053 },
			["Kakalocko|shekzeer"] = { 1, 3, -4, 1388 },
			["Pippilotta|shekzeer"] = { 2, 2, 6, 1180 },
			["Sapmere|auberdine"] = { 2, 2, 8, 1383 },
			["Sugarbear|shekzeer"] = { 1, 3, 24, 1006 },
			["Taopaípaí|auberdine"] = { 0, 4, -30, 948 },
			["Элементовик|flamegor"] = { 3, 1, 21, 1090 },
			["Bozzclqwnx|shekzeer"] = { 0, 3, -26, 962 },
			["Cavernicola|garalon"] = { 0, 3, -32, 1007 },
			["Coldcofeesux|shekzeer"] = { 0, 3, -28, 1308 },
			["Djburst|shekzeer"] = { 1, 2, -20, 863 },
			["Gódx|shekzeer"] = { 1, 2, -14, 924 },
			["Mîlkaa|everlook"] = { 1, 2, 0, 1196 },
			["Semloh|mirage-raceway"] = { 1, 2, -4, 1162 },
			["ßlinkd|shekzeer"] = { 0, 3, -38, 1186 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 1347 },
			["Cherryontop|shekzeer"] = { 1, 1, 18, 948 },
			["Holmesx|mirage-raceway"] = { 0, 2, -11, 1098 },
			["Orestis|norushen"] = { 0, 2, -21, 1024 },
			["Parkettaszeg|shekzeer"] = { 0, 2, -27, 1269 },
			["Sírpressheal|auberdine"] = { 1, 1, -12, 48 },
			["Straviouse|hoptallus"] = { 0, 2, -19, 1124 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 228 },
			["Brazqr|shekzeer"] = { 0, 1, -11, 1185 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 153 },
			["Èlcapitan|mirage-raceway"] = { 0, 1, -16, 1006 },
			["Froheostern|shekzeer"] = { 0, 1, -12, 1062 },
			["Jakam|shekzeer"] = { 0, 1, -2, 986 },
			["Kalreth|shekzeer"] = { 0, 1, -18, 840 },
			["Vrctx|shekzeer"] = { 1, 0, 14, 1189 },
			["Zhili|hoptallus"] = { 1, 0, 11, 1308 },
		},
		[2] = {
			["Missgrip|sulfuron"] = { 0, 5, 0, 1308 },
			["Голмаш|flamegor"] = { 0, 5, -11, 1308 },
			["Рыкай|flamegor"] = { 0, 5, -20, 1308 },
			["Luckynova|garalon"] = { 4, 0, 16, 1342 },
			["Skorpiys|norushen"] = { 4, 0, 30, 1360 },
			["Voljix|shekzeer"] = { 4, 0, 16, 1308 },
			["Crazyskill|shekzeer"] = { 1, 0, 96, 1313 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 1358 },
			["Weaverok|shekzeer"] = { 1, 0, 2, 1358 },
		},
	},
}

