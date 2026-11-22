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
	built = 1795366833,
	builtText = "2026-11-22 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 5, 12, 91, 9 },
			["Malte|shekzeer"] = { 5, 12, 98, 8 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 27 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 27 },
			["Вялыйхант|flamegor"] = { 4, 0, 25, 19 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 25 },
			["Sangore|auberdine"] = { 0, 1, 0, 25 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 9 },
			["Malte|shekzeer"] = { 10, 12, 206, 8 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 19 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 27 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 27 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 74 },
			["Raezin|everlook"] = { 0, 4, -23, 132 },
			["Zabir|everlook"] = { 3, 1, 22, 115 },
			["Dkv|garalon"] = { 0, 3, -7, 154 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 25 },
			["Sangore|auberdine"] = { 0, 1, 0, 25 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 9 },
			["Malte|shekzeer"] = { 10, 12, 206, 8 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 19 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 27 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 27 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 74 },
			["Raezin|everlook"] = { 0, 4, -23, 132 },
			["Zabir|everlook"] = { 3, 1, 22, 115 },
			["Dkv|garalon"] = { 0, 3, -7, 154 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 25 },
			["Sangore|auberdine"] = { 0, 1, 0, 25 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 9 },
			["Malte|shekzeer"] = { 10, 12, 206, 8 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 19 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 27 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 27 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 74 },
			["Raezin|everlook"] = { 0, 4, -23, 132 },
			["Zabir|everlook"] = { 3, 1, 22, 115 },
			["Dkv|garalon"] = { 0, 3, -7, 154 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 25 },
			["Sangore|auberdine"] = { 0, 1, 0, 25 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 1148 },
			["Monklife|garalon"] = { 11, 20, 662, 1031 },
			["Вялыйкидней|flamegor"] = { 16, 12, 157, 983 },
			["Yezze|garalon"] = { 14, 11, -47, 1054 },
			["Bernadeta|shekzeer"] = { 13, 11, 43, 1192 },
			["Idontflinch|garalon"] = { 16, 8, 215, 1054 },
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 9 },
			["Malte|shekzeer"] = { 10, 12, 206, 8 },
			["Marlk|shekzeer"] = { 8, 12, -6, 1167 },
			["Филмарис|flamegor"] = { 13, 5, 12, 1054 },
			["Trolly|shekzeer"] = { 12, 5, 177, 1234 },
			["Дэрмейстер|flamegor"] = { 12, 5, 145, 1412 },
			["Zabir|everlook"] = { 11, 5, 43, 115 },
			["Derxibro|shekzeer"] = { 12, 3, 47, 74 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 1170 },
			["Xály|shekzeer"] = { 8, 6, -26, 892 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 904 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 1103 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 1144 },
			["Conservé|shekzeer"] = { 8, 4, 45, 1063 },
			["Kospi|auberdine"] = { 8, 4, 25, 942 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 942 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 1162 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 1054 },
			["Lúná|ook-ook"] = { 4, 7, 35, 955 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 1193 },
			["Ithildrin|mirage-raceway"] = { 6, 4, 41, 1234 },
			["Zhili|hoptallus"] = { 3, 7, -1, 874 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 19 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 1234 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 928 },
			["Savexx|shekzeer"] = { 5, 3, 27, 1054 },
			["Wasabî|auberdine"] = { 7, 1, 44, 928 },
			["Xpa|everlook"] = { 5, 3, 26, 1106 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 1070 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 27 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 27 },
			["Dóris|ook-ook"] = { 3, 3, 13, 939 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 1253 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 1217 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 874 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 1309 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 1234 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 1104 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 874 },
			["Alesant|shekzeer"] = { 2, 2, 26, 1192 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 1266 },
			["Fünfgizelp|everlook"] = { 2, 2, 36, 1192 },
			["Orestis|norushen"] = { 2, 2, 16, 1054 },
			["Raezin|everlook"] = { 0, 4, -23, 132 },
			["Жмуфир|flamegor"] = { 1, 3, -8, 1357 },
			["Тнэш|flamegor"] = { 0, 4, -44, 1234 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 1234 },
			["Dkv|garalon"] = { 0, 3, -7, 154 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 1299 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 1234 },
			["Эрмантраутх|flamegor"] = { 2, 1, -3, 1360 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 1054 },
			["Kadran|shekzeer"] = { 0, 2, -3, 1435 },
			["Niallg|shekzeer"] = { 0, 2, -3, 1436 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 874 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 1315 },
			["Voljiz|shekzeer"] = { 0, 2, -9, 1414 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 1059 },
			["Xpu|everlook"] = { 2, 0, 4, 1057 },
			["Санжик|flamegor"] = { 0, 2, -8, 1414 },
			["Cuñadita|garalon"] = { 0, 1, -7, 874 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 1234 },
			["Straviouse|hoptallus"] = { 0, 1, -11, 1414 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 939 },
			["Бабелнаодин|flamegor"] = { 1, 0, 4, 1382 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 25 },
			["Sangore|auberdine"] = { 0, 1, 0, 25 },
		},
	},
}

