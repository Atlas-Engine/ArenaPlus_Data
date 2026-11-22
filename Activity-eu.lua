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
	built = 1795359630,
	builtText = "2026-11-22 10:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 5, 0, 103, 34 },
			["Malte|shekzeer"] = { 5, 0, 108, 34 },
			["Raezin|everlook"] = { 0, 4, -23, 12 },
			["Dkv|garalon"] = { 0, 3, -7, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 5, 0, 103, 34 },
			["Malte|shekzeer"] = { 5, 0, 108, 34 },
			["Raezin|everlook"] = { 0, 4, -23, 12 },
			["Dkv|garalon"] = { 0, 3, -7, 34 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 5, 0, 103, 34 },
			["Malte|shekzeer"] = { 5, 0, 108, 34 },
			["Raezin|everlook"] = { 0, 4, -23, 12 },
			["Dkv|garalon"] = { 0, 3, -7, 34 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Crabzxtrapzx|shekzeer"] = { 5, 0, 103, 34 },
			["Malte|shekzeer"] = { 5, 0, 108, 34 },
			["Raezin|everlook"] = { 0, 4, -23, 12 },
			["Dkv|garalon"] = { 0, 3, -7, 34 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 1028 },
			["Monklife|garalon"] = { 11, 20, 662, 911 },
			["Вялыйкидней|flamegor"] = { 16, 12, 157, 863 },
			["Yezze|garalon"] = { 14, 11, -47, 934 },
			["Bernadeta|shekzeer"] = { 13, 11, 43, 1071 },
			["Idontflinch|garalon"] = { 16, 8, 215, 934 },
			["Marlk|shekzeer"] = { 8, 12, -6, 1047 },
			["Филмарис|flamegor"] = { 13, 5, 12, 934 },
			["Trolly|shekzeer"] = { 12, 5, 177, 1114 },
			["Дэрмейстер|flamegor"] = { 12, 5, 145, 1292 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 1050 },
			["Xály|shekzeer"] = { 8, 6, -26, 772 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 784 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 983 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 1024 },
			["Conservé|shekzeer"] = { 8, 4, 45, 943 },
			["Kospi|auberdine"] = { 8, 4, 25, 822 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 822 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 1042 },
			["Zabir|everlook"] = { 8, 4, 21, 934 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 934 },
			["Derxibro|shekzeer"] = { 8, 3, 33, 1207 },
			["Lúná|ook-ook"] = { 4, 7, 35, 835 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 1073 },
			["Ithildrin|mirage-raceway"] = { 6, 4, 41, 1114 },
			["Zhili|hoptallus"] = { 3, 7, -1, 754 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 1114 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 808 },
			["Savexx|shekzeer"] = { 5, 3, 27, 934 },
			["Wasabî|auberdine"] = { 7, 1, 44, 808 },
			["Xpa|everlook"] = { 5, 3, 26, 986 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 950 },
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 1328 },
			["Dóris|ook-ook"] = { 3, 3, 13, 819 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 1133 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 1097 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 754 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 1189 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 1330 },
			["Crabzxtrapzx|shekzeer"] = { 5, 0, 103, 34 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 1114 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 984 },
			["Malte|shekzeer"] = { 5, 0, 108, 34 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 754 },
			["Alesant|shekzeer"] = { 2, 2, 26, 1072 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 1146 },
			["Fünfgizelp|everlook"] = { 2, 2, 36, 1072 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 1343 },
			["Orestis|norushen"] = { 2, 2, 16, 934 },
			["Raezin|everlook"] = { 0, 4, -23, 12 },
			["Жмуфир|flamegor"] = { 1, 3, -8, 1237 },
			["Тнэш|flamegor"] = { 0, 4, -44, 1114 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 1114 },
			["Dkv|garalon"] = { 0, 3, -7, 34 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 1400 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 1179 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 1114 },
			["Эрмантраутх|flamegor"] = { 2, 1, -3, 1240 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 934 },
			["Kadran|shekzeer"] = { 0, 2, -3, 1315 },
			["Niallg|shekzeer"] = { 0, 2, -3, 1316 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 754 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 1195 },
			["Voljiz|shekzeer"] = { 0, 2, -9, 1294 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 939 },
			["Xpu|everlook"] = { 2, 0, 4, 937 },
			["Санжик|flamegor"] = { 0, 2, -8, 1294 },
			["Cuñadita|garalon"] = { 0, 1, -7, 754 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 1114 },
			["Straviouse|hoptallus"] = { 0, 1, -11, 1294 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 819 },
			["Бабелнаодин|flamegor"] = { 1, 0, 4, 1262 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 1372 },
			["Павлорион|flamegor"] = { 3, 0, 12, 1377 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 1330 },
		},
	},
}

