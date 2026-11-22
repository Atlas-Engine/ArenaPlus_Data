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
	built = 1795363240,
	builtText = "2026-11-22 11:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 2, 4, -30, 4 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 14 },
			["Zabir|everlook"] = { 3, 1, 22, 55 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 2, 4, -30, 4 },
			["Crabzxtrapzx|shekzeer"] = { 5, 0, 103, 94 },
			["Malte|shekzeer"] = { 5, 0, 108, 94 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 14 },
			["Raezin|everlook"] = { 0, 4, -23, 72 },
			["Zabir|everlook"] = { 3, 1, 22, 55 },
			["Dkv|garalon"] = { 0, 3, -7, 94 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 2, 4, -30, 4 },
			["Crabzxtrapzx|shekzeer"] = { 5, 0, 103, 94 },
			["Malte|shekzeer"] = { 5, 0, 108, 94 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 14 },
			["Raezin|everlook"] = { 0, 4, -23, 72 },
			["Zabir|everlook"] = { 3, 1, 22, 55 },
			["Dkv|garalon"] = { 0, 3, -7, 94 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 2, 4, -30, 4 },
			["Crabzxtrapzx|shekzeer"] = { 5, 0, 103, 94 },
			["Malte|shekzeer"] = { 5, 0, 108, 94 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 14 },
			["Raezin|everlook"] = { 0, 4, -23, 72 },
			["Zabir|everlook"] = { 3, 1, 22, 55 },
			["Dkv|garalon"] = { 0, 3, -7, 94 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 1088 },
			["Monklife|garalon"] = { 11, 20, 662, 971 },
			["Вялыйкидней|flamegor"] = { 16, 12, 157, 924 },
			["Yezze|garalon"] = { 14, 11, -47, 994 },
			["Bernadeta|shekzeer"] = { 13, 11, 43, 1132 },
			["Idontflinch|garalon"] = { 16, 8, 215, 994 },
			["Marlk|shekzeer"] = { 8, 12, -6, 1107 },
			["Филмарис|flamegor"] = { 13, 5, 12, 994 },
			["Trolly|shekzeer"] = { 12, 5, 177, 1174 },
			["Дэрмейстер|flamegor"] = { 12, 5, 145, 1352 },
			["Zabir|everlook"] = { 11, 5, 43, 55 },
			["Derxibro|shekzeer"] = { 12, 3, 47, 14 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 1110 },
			["Xály|shekzeer"] = { 8, 6, -26, 832 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 844 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 1044 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 1084 },
			["Conservé|shekzeer"] = { 8, 4, 45, 1003 },
			["Kospi|auberdine"] = { 8, 4, 25, 882 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 882 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 1102 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 994 },
			["Lúná|ook-ook"] = { 4, 7, 35, 895 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 1133 },
			["Ithildrin|mirage-raceway"] = { 6, 4, 41, 1174 },
			["Zhili|hoptallus"] = { 3, 7, -1, 814 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 1174 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 869 },
			["Savexx|shekzeer"] = { 5, 3, 27, 994 },
			["Wasabî|auberdine"] = { 7, 1, 44, 868 },
			["Xpa|everlook"] = { 5, 3, 26, 1046 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 1010 },
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 1388 },
			["Dóris|ook-ook"] = { 3, 3, 13, 879 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 1193 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 1157 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 814 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 1249 },
			["Вялыйхант|flamegor"] = { 2, 4, -30, 4 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 1390 },
			["Crabzxtrapzx|shekzeer"] = { 5, 0, 103, 94 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 1174 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 1044 },
			["Malte|shekzeer"] = { 5, 0, 108, 94 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 814 },
			["Alesant|shekzeer"] = { 2, 2, 26, 1132 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 1206 },
			["Fünfgizelp|everlook"] = { 2, 2, 36, 1132 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 1403 },
			["Orestis|norushen"] = { 2, 2, 16, 994 },
			["Raezin|everlook"] = { 0, 4, -23, 72 },
			["Жмуфир|flamegor"] = { 1, 3, -8, 1297 },
			["Тнэш|flamegor"] = { 0, 4, -44, 1174 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 1174 },
			["Dkv|garalon"] = { 0, 3, -7, 94 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 1239 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 1174 },
			["Эрмантраутх|flamegor"] = { 2, 1, -3, 1300 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 994 },
			["Kadran|shekzeer"] = { 0, 2, -3, 1375 },
			["Niallg|shekzeer"] = { 0, 2, -3, 1376 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 814 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 1255 },
			["Voljiz|shekzeer"] = { 0, 2, -9, 1354 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 999 },
			["Xpu|everlook"] = { 2, 0, 4, 997 },
			["Санжик|flamegor"] = { 0, 2, -8, 1354 },
			["Cuñadita|garalon"] = { 0, 1, -7, 814 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 1174 },
			["Straviouse|hoptallus"] = { 0, 1, -11, 1354 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 879 },
			["Бабелнаодин|flamegor"] = { 1, 0, 4, 1322 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 1432 },
			["Павлорион|flamegor"] = { 3, 0, 12, 1437 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 1390 },
		},
	},
}

