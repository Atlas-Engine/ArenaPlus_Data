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
	built = 1795701655,
	builtText = "2026-11-26 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bibeed|shekzeer"] = { 5, 3, 19, 4 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bibeed|shekzeer"] = { 5, 3, 19, 4 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 168 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 93 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bibeed|shekzeer"] = { 5, 3, 19, 4 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 168 },
			["Commitment|shekzeer"] = { 1, 0, 12, 226 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 93 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bibeed|shekzeer"] = { 5, 3, 19, 4 },
			["Xály|shekzeer"] = { 3, 4, -22, 708 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 168 },
			["Commitment|shekzeer"] = { 1, 0, 12, 226 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 93 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ngmi|shekzeer"] = { 22, 20, 13, 879 },
			["Plåýßøt|shekzeer"] = { 22, 20, 13, 879 },
			["Srtwhippa|everlook"] = { 10, 11, 18, 880 },
			["Zok|shekzeer"] = { 10, 11, 15, 881 },
			["Commitment|shekzeer"] = { 12, 6, 41, 226 },
			["Tchaktchac|auberdine"] = { 6, 11, 0, 950 },
			["Brazqrx|shekzeer"] = { 7, 9, 1, 928 },
			["Lîllyputaner|everlook"] = { 9, 7, 27, 937 },
			["Prayzthebozz|everlook"] = { 8, 7, 173, 922 },
			["Xály|shekzeer"] = { 5, 10, -92, 708 },
			["Yezze|garalon"] = { 8, 7, 17, 922 },
			["Domnox|auberdine"] = { 5, 9, 10, 950 },
			["Jakamaestro|shekzeer"] = { 7, 7, -19, 938 },
			["Marlkx|shekzeer"] = { 5, 9, -14, 1007 },
			["Mwaniel|auberdine"] = { 6, 8, 16, 893 },
			["Wasabî|auberdine"] = { 6, 8, 5, 893 },
			["Andyskhan|mirage-raceway"] = { 6, 7, 34, 828 },
			["Madaurmada|shekzeer"] = { 7, 6, -37, 888 },
			["Rodnichek|shekzeer"] = { 6, 7, -36, 941 },
			["Suspriest|shekzeer"] = { 6, 7, 77, 827 },
			["Guccidaggers|shekzeer"] = { 9, 3, 102, 888 },
			["Фазерихх|flamegor"] = { 5, 7, 2, 1042 },
			["Satånaz|shekzeer"] = { 11, 0, 25, 919 },
			["Topshotta|everlook"] = { 4, 7, -29, 1127 },
			["Cuckmycoocon|shekzeer"] = { 6, 4, 106, 1035 },
			["Deepfull|shekzeer"] = { 4, 6, -19, 1148 },
			["Triplepizza|shekzeer"] = { 6, 4, 34, 1034 },
			["Angrycubanx|shekzeer"] = { 5, 4, 20, 953 },
			["Jakamoto|shekzeer"] = { 5, 4, -9, 1034 },
			["Mists|shekzeer"] = { 9, 0, 19, 896 },
			["Tastemydmg|shekzeer"] = { 5, 4, 42, 1074 },
			["Tyralíon|shekzeer"] = { 5, 4, 42, 1076 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 4 },
			["Derxibro|shekzeer"] = { 7, 1, 21, 1187 },
			["Dogfight|shekzeer"] = { 4, 4, 41, 888 },
			["Glamourmw|mirage-raceway"] = { 4, 4, 56, 1003 },
			["Idontflinch|garalon"] = { 7, 1, 30, 1068 },
			["Vercettixx|shekzeer"] = { 8, 0, 37, 865 },
			["Bakomba|shekzeer"] = { 3, 4, -26, 1173 },
			["Blèsséd|shekzeer"] = { 0, 7, -19, 1207 },
			["Durianlover|shekzeer"] = { 3, 4, -10, 1068 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 1329 },
			["Kospi|auberdine"] = { 3, 4, 7, 1272 },
			["Makkezi|shekzeer"] = { 0, 7, -24, 1216 },
			["Srtdrippa|everlook"] = { 3, 4, 3, 1006 },
			["Hopedieslast|shekzeer"] = { 3, 3, 5, 1068 },
			["Qwanya|shekzeer"] = { 4, 2, 78, 1060 },
			["Biggestegoeu|shekzeer"] = { 4, 1, -1, 804 },
			["Cõmbustz|shekzeer"] = { 2, 3, -10, 996 },
			["Drumåndbåss|shekzeer"] = { 5, 0, 58, 1016 },
			["Ivonsa|garalon"] = { 0, 5, -56, 882 },
			["Rainbowrider|shekzeer"] = { 2, 3, -15, 996 },
			["Rainbôwrider|shekzeer"] = { 4, 1, 33, 944 },
			["Sumtinrother|shekzeer"] = { 4, 1, 34, 948 },
			["Yhwatch|shekzeer"] = { 4, 1, -1, 803 },
			["Лилрой|flamegor"] = { 0, 5, -21, 1310 },
			["Тнэш|flamegor"] = { 5, 0, 58, 1014 },
			["Jakamstar|shekzeer"] = { 2, 2, 12, 1084 },
			["Juicyverÿ|shekzeer"] = { 3, 1, 20, 993 },
			["Pippilotta|shekzeer"] = { 2, 2, 6, 1121 },
			["Sapmere|auberdine"] = { 2, 2, 8, 1323 },
			["Sugarbear|shekzeer"] = { 1, 3, 24, 946 },
			["Taopaípaí|auberdine"] = { 0, 4, -30, 888 },
			["Zhili|hoptallus"] = { 1, 3, -1, 1248 },
			["Элементовик|flamegor"] = { 3, 1, 21, 1030 },
			["Bozzclqwnx|shekzeer"] = { 0, 3, -26, 902 },
			["Cavernicola|garalon"] = { 0, 3, -32, 947 },
			["Coldcofeesux|shekzeer"] = { 0, 3, -28, 1248 },
			["Djburst|shekzeer"] = { 1, 2, -20, 804 },
			["Gódx|shekzeer"] = { 1, 2, -14, 864 },
			["Mîlkaa|everlook"] = { 1, 2, 0, 1136 },
			["Semloh|mirage-raceway"] = { 1, 2, -4, 1102 },
			["ßlinkd|shekzeer"] = { 0, 3, -38, 1126 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 1288 },
			["Cherryontop|shekzeer"] = { 1, 1, 18, 888 },
			["Crazyskill|shekzeer"] = { 2, 0, 23, 1254 },
			["Holmesx|mirage-raceway"] = { 0, 2, -11, 1039 },
			["Orestis|norushen"] = { 0, 2, -21, 964 },
			["Parkettaszeg|shekzeer"] = { 0, 2, -27, 1209 },
			["Straviouse|hoptallus"] = { 0, 2, -19, 1065 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 168 },
			["Brazqr|shekzeer"] = { 0, 1, -11, 1125 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 93 },
			["Èlcapitan|mirage-raceway"] = { 0, 1, -16, 947 },
			["Froheostern|shekzeer"] = { 0, 1, -12, 1003 },
			["Jakam|shekzeer"] = { 0, 1, -2, 926 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 1410 },
			["Kalreth|shekzeer"] = { 0, 1, -18, 781 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 1411 },
			["Vrctx|shekzeer"] = { 1, 0, 14, 1129 },
		},
		[2] = {
			["Missgrip|sulfuron"] = { 0, 5, 0, 1248 },
			["Голмаш|flamegor"] = { 0, 5, -11, 1248 },
			["Рыкай|flamegor"] = { 0, 5, -20, 1248 },
			["Luckynova|garalon"] = { 4, 0, 16, 1282 },
			["Skorpiys|norushen"] = { 4, 0, 30, 1300 },
			["Voljix|shekzeer"] = { 4, 0, 16, 1248 },
			["Crazyskill|shekzeer"] = { 1, 0, 96, 1254 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 1299 },
			["Weaverok|shekzeer"] = { 1, 0, 2, 1298 },
		},
	},
}

