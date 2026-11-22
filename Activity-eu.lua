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
	built = 1795370434,
	builtText = "2026-11-22 01:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Lastà|everlook"] = { 13, 0, 120, 11 },
			["Mbäppé|auberdine"] = { 13, 0, 233, 10 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 34 },
			["Selenagomezy|shekzeer"] = { 5, 5, -13, 11 },
			["Click|shekzeer"] = { 5, 4, -6, 34 },
			["Voljiz|shekzeer"] = { 6, 2, 91, 34 },
			["Idontflinch|garalon"] = { 4, 0, 29, 34 },
			["Ithildrin|mirage-raceway"] = { 3, 1, 39, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 5, 12, 91, 69 },
			["Malte|shekzeer"] = { 5, 12, 98, 68 },
			["Lastà|everlook"] = { 13, 0, 120, 11 },
			["Mbäppé|auberdine"] = { 13, 0, 233, 10 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 34 },
			["Selenagomezy|shekzeer"] = { 5, 5, -13, 11 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 79 },
			["Click|shekzeer"] = { 5, 4, -6, 34 },
			["Voljiz|shekzeer"] = { 6, 2, 91, 34 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 87 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 87 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 134 },
			["Idontflinch|garalon"] = { 4, 0, 29, 34 },
			["Ithildrin|mirage-raceway"] = { 3, 1, 39, 34 },
			["Zabir|everlook"] = { 3, 1, 22, 175 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 85 },
			["Sangore|auberdine"] = { 0, 1, 0, 85 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 69 },
			["Malte|shekzeer"] = { 10, 12, 206, 68 },
			["Lastà|everlook"] = { 13, 0, 120, 11 },
			["Mbäppé|auberdine"] = { 13, 0, 233, 10 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 34 },
			["Selenagomezy|shekzeer"] = { 5, 5, -13, 11 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 79 },
			["Click|shekzeer"] = { 5, 4, -6, 34 },
			["Voljiz|shekzeer"] = { 6, 2, 91, 34 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 87 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 87 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 134 },
			["Idontflinch|garalon"] = { 4, 0, 29, 34 },
			["Ithildrin|mirage-raceway"] = { 3, 1, 39, 34 },
			["Raezin|everlook"] = { 0, 4, -23, 192 },
			["Zabir|everlook"] = { 3, 1, 22, 175 },
			["Dkv|garalon"] = { 0, 3, -7, 214 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 85 },
			["Sangore|auberdine"] = { 0, 1, 0, 85 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 69 },
			["Malte|shekzeer"] = { 10, 12, 206, 68 },
			["Lastà|everlook"] = { 13, 0, 120, 11 },
			["Mbäppé|auberdine"] = { 13, 0, 233, 10 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 34 },
			["Selenagomezy|shekzeer"] = { 5, 5, -13, 11 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 79 },
			["Click|shekzeer"] = { 5, 4, -6, 34 },
			["Voljiz|shekzeer"] = { 6, 2, 91, 34 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 87 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 87 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 134 },
			["Idontflinch|garalon"] = { 4, 0, 29, 34 },
			["Ithildrin|mirage-raceway"] = { 3, 1, 39, 34 },
			["Raezin|everlook"] = { 0, 4, -23, 192 },
			["Zabir|everlook"] = { 3, 1, 22, 175 },
			["Dkv|garalon"] = { 0, 3, -7, 214 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 85 },
			["Sangore|auberdine"] = { 0, 1, 0, 85 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 1208 },
			["Monklife|garalon"] = { 11, 20, 662, 1091 },
			["Idontflinch|garalon"] = { 17, 8, 213, 34 },
			["Yezze|garalon"] = { 14, 11, -47, 1114 },
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 69 },
			["Malte|shekzeer"] = { 10, 12, 206, 68 },
			["Marlk|shekzeer"] = { 8, 12, -6, 1227 },
			["Вялыйкидней|flamegor"] = { 11, 8, 87, 1043 },
			["Bernadeta|shekzeer"] = { 11, 6, 77, 1252 },
			["Zabir|everlook"] = { 11, 5, 43, 175 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 1230 },
			["Ithildrin|mirage-raceway"] = { 9, 5, 80, 34 },
			["Xály|shekzeer"] = { 8, 6, -26, 952 },
			["Филмарис|flamegor"] = { 10, 4, -1, 1114 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 964 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 1163 },
			["Lastà|everlook"] = { 13, 0, 120, 11 },
			["Mbäppé|auberdine"] = { 13, 0, 233, 10 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 1204 },
			["Conservé|shekzeer"] = { 8, 4, 45, 1123 },
			["Derxibro|shekzeer"] = { 9, 3, 38, 134 },
			["Kospi|auberdine"] = { 8, 4, 25, 1002 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 1002 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 1222 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 1114 },
			["Lúná|ook-ook"] = { 4, 7, 35, 1015 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 34 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 1253 },
			["Selenagomezy|shekzeer"] = { 5, 5, -13, 11 },
			["Zhili|hoptallus"] = { 3, 7, -1, 934 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 79 },
			["Click|shekzeer"] = { 5, 4, -6, 34 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 1294 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 988 },
			["Savexx|shekzeer"] = { 5, 3, 27, 1114 },
			["Voljiz|shekzeer"] = { 6, 2, 91, 34 },
			["Wasabî|auberdine"] = { 7, 1, 44, 988 },
			["Xpa|everlook"] = { 5, 3, 26, 1166 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 1130 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 87 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 87 },
			["Dóris|ook-ook"] = { 3, 3, 13, 999 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 1313 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 1277 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 934 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 1369 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 1294 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 1164 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 934 },
			["Alesant|shekzeer"] = { 2, 2, 26, 1252 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 1326 },
			["Fünfgizelp|everlook"] = { 2, 2, 36, 1252 },
			["Orestis|norushen"] = { 2, 2, 16, 1114 },
			["Raezin|everlook"] = { 0, 4, -23, 192 },
			["Жмуфир|flamegor"] = { 1, 3, -8, 1417 },
			["Тнэш|flamegor"] = { 0, 4, -44, 1294 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 1294 },
			["Dkv|garalon"] = { 0, 3, -7, 214 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 1359 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 1294 },
			["Trolly|shekzeer"] = { 0, 3, 0, 1294 },
			["Эрмантраутх|flamegor"] = { 2, 1, -3, 1420 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 1114 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 934 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 1119 },
			["Xpu|everlook"] = { 2, 0, 4, 1117 },
			["Cuñadita|garalon"] = { 0, 1, -7, 934 },
			["Sambrano|shekzeer"] = { 0, 1, -6, 1375 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 1294 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 999 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 85 },
			["Sangore|auberdine"] = { 0, 1, 0, 85 },
		},
	},
}

