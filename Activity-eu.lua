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
	built = 1795374037,
	builtText = "2026-11-22 02:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Froheostern|shekzeer"] = { 3, 0, 6, 36 },
			["Orestis|norushen"] = { 0, 1, -4, 8 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 5, 12, 91, 129 },
			["Malte|shekzeer"] = { 5, 12, 98, 128 },
			["Lastà|everlook"] = { 13, 0, 120, 71 },
			["Mbäppé|auberdine"] = { 13, 0, 233, 70 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 94 },
			["Selenagomezy|shekzeer"] = { 5, 5, -13, 71 },
			["Click|shekzeer"] = { 5, 4, -6, 94 },
			["Voljiz|shekzeer"] = { 6, 2, 91, 94 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 147 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 147 },
			["Idontflinch|garalon"] = { 4, 0, 29, 94 },
			["Ithildrin|mirage-raceway"] = { 3, 1, 39, 94 },
			["Вялыйхант|flamegor"] = { 4, 0, 25, 139 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 36 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 65 },
			["Orestis|norushen"] = { 0, 1, -4, 8 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 145 },
			["Sangore|auberdine"] = { 0, 1, 0, 145 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 129 },
			["Malte|shekzeer"] = { 10, 12, 206, 128 },
			["Lastà|everlook"] = { 13, 0, 120, 71 },
			["Mbäppé|auberdine"] = { 13, 0, 233, 70 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 94 },
			["Selenagomezy|shekzeer"] = { 5, 5, -13, 71 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 139 },
			["Click|shekzeer"] = { 5, 4, -6, 94 },
			["Voljiz|shekzeer"] = { 6, 2, 91, 94 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 147 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 147 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 194 },
			["Idontflinch|garalon"] = { 4, 0, 29, 94 },
			["Ithildrin|mirage-raceway"] = { 3, 1, 39, 94 },
			["Raezin|everlook"] = { 0, 4, -23, 252 },
			["Zabir|everlook"] = { 3, 1, 22, 235 },
			["Dkv|garalon"] = { 0, 3, -7, 274 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 36 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 65 },
			["Orestis|norushen"] = { 0, 1, -4, 8 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 145 },
			["Sangore|auberdine"] = { 0, 1, 0, 145 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 129 },
			["Malte|shekzeer"] = { 10, 12, 206, 128 },
			["Lastà|everlook"] = { 13, 0, 120, 71 },
			["Mbäppé|auberdine"] = { 13, 0, 233, 70 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 94 },
			["Selenagomezy|shekzeer"] = { 5, 5, -13, 71 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 139 },
			["Click|shekzeer"] = { 5, 4, -6, 94 },
			["Voljiz|shekzeer"] = { 6, 2, 91, 94 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 147 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 147 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 194 },
			["Idontflinch|garalon"] = { 4, 0, 29, 94 },
			["Ithildrin|mirage-raceway"] = { 3, 1, 39, 94 },
			["Raezin|everlook"] = { 0, 4, -23, 252 },
			["Zabir|everlook"] = { 3, 1, 22, 235 },
			["Dkv|garalon"] = { 0, 3, -7, 274 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 36 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 65 },
			["Orestis|norushen"] = { 0, 1, -4, 8 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 145 },
			["Sangore|auberdine"] = { 0, 1, 0, 145 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 1268 },
			["Monklife|garalon"] = { 11, 20, 662, 1151 },
			["Idontflinch|garalon"] = { 17, 8, 213, 94 },
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 129 },
			["Malte|shekzeer"] = { 10, 12, 206, 128 },
			["Marlk|shekzeer"] = { 8, 12, -6, 1287 },
			["Yezze|garalon"] = { 12, 8, 0, 1174 },
			["Вялыйкидней|flamegor"] = { 11, 8, 87, 1104 },
			["Bernadeta|shekzeer"] = { 11, 6, 77, 1312 },
			["Zabir|everlook"] = { 11, 5, 43, 235 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 1290 },
			["Ithildrin|mirage-raceway"] = { 9, 5, 80, 94 },
			["Xály|shekzeer"] = { 8, 6, -26, 1012 },
			["Филмарис|flamegor"] = { 10, 4, -1, 1174 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 1024 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 1223 },
			["Lastà|everlook"] = { 13, 0, 120, 71 },
			["Mbäppé|auberdine"] = { 13, 0, 233, 70 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 1264 },
			["Conservé|shekzeer"] = { 8, 4, 45, 1183 },
			["Kospi|auberdine"] = { 8, 4, 25, 1062 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 1062 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 1282 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 1174 },
			["Lúná|ook-ook"] = { 4, 7, 35, 1075 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 94 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 1313 },
			["Selenagomezy|shekzeer"] = { 5, 5, -13, 71 },
			["Zhili|hoptallus"] = { 3, 7, -1, 994 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 139 },
			["Click|shekzeer"] = { 5, 4, -6, 94 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 1354 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 1049 },
			["Savexx|shekzeer"] = { 5, 3, 27, 1174 },
			["Voljiz|shekzeer"] = { 6, 2, 91, 94 },
			["Wasabî|auberdine"] = { 7, 1, 44, 1048 },
			["Xpa|everlook"] = { 5, 3, 26, 1226 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 1190 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 147 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 147 },
			["Dóris|ook-ook"] = { 3, 3, 13, 1059 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 1373 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 1337 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 994 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 1429 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 1354 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 1224 },
			["Orestis|norushen"] = { 2, 3, 12, 8 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 994 },
			["Alesant|shekzeer"] = { 2, 2, 26, 1312 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 194 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 1386 },
			["Fünfgizelp|everlook"] = { 2, 2, 36, 1312 },
			["Raezin|everlook"] = { 0, 4, -23, 252 },
			["Тнэш|flamegor"] = { 0, 4, -44, 1354 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 1354 },
			["Dkv|garalon"] = { 0, 3, -7, 274 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 36 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 1419 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 1354 },
			["Trolly|shekzeer"] = { 0, 3, 0, 1354 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 1174 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 994 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 1179 },
			["Xpu|everlook"] = { 2, 0, 4, 1177 },
			["Cuñadita|garalon"] = { 0, 1, -7, 994 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 65 },
			["Sambrano|shekzeer"] = { 0, 1, -6, 1435 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 1354 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 1059 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 145 },
			["Sangore|auberdine"] = { 0, 1, 0, 145 },
		},
	},
}

