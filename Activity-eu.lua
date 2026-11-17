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
	built = 1794920444,
	builtText = "2026-11-17 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 2, 5, 1, 705 },
			["Markò|shekzeer"] = { 0, 4, 0, 648 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Hopedieslast|shekzeer"] = { 19, 22, 299, 828 },
			["Skyráw|shekzeer"] = { 19, 22, -41, 941 },
			["Savexx|shekzeer"] = { 10, 16, -22, 705 },
			["Ineo|shekzeer"] = { 8, 17, 21, 1008 },
			["ßonnießlue|shekzeer"] = { 17, 3, 71, 751 },
			["Вялыйхант|flamegor"] = { 8, 12, -65, 937 },
			["Brazqrx|shekzeer"] = { 8, 11, 5, 890 },
			["Idontflinch|garalon"] = { 11, 8, 241, 828 },
			["Reginalds|shekzeer"] = { 8, 9, 33, 911 },
			["Repuls|mirage-raceway"] = { 5, 12, 38, 996 },
			["Durianlover|shekzeer"] = { 4, 12, -15, 1188 },
			["Филмарис|flamegor"] = { 12, 4, 65, 1008 },
			["Madaurmada|shekzeer"] = { 8, 7, -48, 1217 },
			["Voljix|shekzeer"] = { 8, 7, 31, 828 },
			["Andysgone|shekzeer"] = { 8, 6, -16, 876 },
			["Cõmbustz|shekzeer"] = { 8, 6, 23, 941 },
			["Keyoo|shekzeer"] = { 9, 5, 101, 840 },
			["Kobra|shekzeer"] = { 8, 6, -16, 859 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 24, 941 },
			["Hotzalotz|hoptallus"] = { 7, 6, 59, 1040 },
			["Kream|shekzeer"] = { 7, 6, 83, 960 },
			["Yente|hoptallus"] = { 7, 6, 44, 1041 },
			["Zok|shekzeer"] = { 4, 9, -5, 1279 },
			["Dardanët|mirage-raceway"] = { 6, 6, 14, 1008 },
			["Syncix|everlook"] = { 6, 6, 10, 1052 },
			["Drumåndbåss|shekzeer"] = { 5, 6, -12, 828 },
			["Тнэш|flamegor"] = { 5, 6, -12, 959 },
			["Ayvara|shekzeer"] = { 6, 4, 29, 938 },
			["Jakamoto|shekzeer"] = { 5, 5, -4, 1222 },
			["Josax|mirage-raceway"] = { 3, 7, -28, 1014 },
			["Kjettbrett|mirage-raceway"] = { 9, 1, 57, 982 },
			["Mythrugun|shekzeer"] = { 6, 4, 29, 935 },
			["Xpa|everlook"] = { 3, 7, -24, 762 },
			["Anadosova|shekzeer"] = { 6, 3, 57, 987 },
			["Dotzalotz|hoptallus"] = { 5, 4, 16, 982 },
			["Fntastic|mirage-raceway"] = { 6, 3, 39, 1298 },
			["Kennyk|shekzeer"] = { 3, 6, -12, 870 },
			["Taylôrswiftx|mirage-raceway"] = { 6, 3, 35, 1272 },
			["Zonnmonk|hoptallus"] = { 5, 4, 7, 981 },
			["Bobz|auberdine"] = { 4, 4, 19, 1002 },
			["Orkidy|auberdine"] = { 4, 4, 19, 1003 },
			["Vercettixx|shekzeer"] = { 8, 0, 40, 879 },
			["Headshottss|shekzeer"] = { 2, 5, 39, 1016 },
			["Psyçhosoçial|shekzeer"] = { 2, 5, -49, 804 },
			["Tenex|norushen"] = { 2, 5, -17, 1042 },
			["Вялыйпал|flamegor"] = { 7, 0, 54, 1008 },
			["Aironsxx|shekzeer"] = { 4, 2, 29, 1281 },
			["Chandlerbing|shekzeer"] = { 4, 2, 29, 1281 },
			["Holyqiti|mirage-raceway"] = { 2, 3, 39, 1029 },
			["Satåntrapbot|shekzeer"] = { 5, 0, 11, 853 },
			["Tarozjebem|garalon"] = { 2, 3, 2, 1017 },
			["Biggestegoeu|shekzeer"] = { 3, 1, 5, 1259 },
			["Hayvanqt|shekzeer"] = { 4, 0, 81, 828 },
			["Healdbyme|shekzeer"] = { 4, 0, 73, 828 },
			["Markò|shekzeer"] = { 0, 4, 0, 648 },
			["Misann|hoptallus"] = { 0, 4, -19, 849 },
			["Noneedórb|shekzeer"] = { 0, 4, -22, 828 },
			["Orestis|norushen"] = { 0, 4, -18, 1283 },
			["Poisonqiti|mirage-raceway"] = { 1, 3, 21, 828 },
			["Sangore|auberdine"] = { 0, 4, -22, 1100 },
			["Satåna|shekzeer"] = { 4, 0, 9, 973 },
			["Vêrcêttîx|shekzeer"] = { 4, 0, 10, 980 },
			["Yhwatch|shekzeer"] = { 3, 1, -2, 1255 },
			["Abdiwallahi|shekzeer"] = { 1, 2, 16, 1024 },
			["Baboonplayér|shekzeer"] = { 3, 0, 30, 1166 },
			["Cavernicola|garalon"] = { 2, 1, 2, 1098 },
			["Crazyskiill|shekzeer"] = { 0, 3, -33, 1311 },
			["Hexencheriff|garalon"] = { 0, 3, -22, 1000 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -1, 1135 },
			["Mists|shekzeer"] = { 3, 0, 11, 1071 },
			["Paladîon|auberdine"] = { 2, 1, 35, 1058 },
			["Supai|shekzeer"] = { 3, 0, 27, 1166 },
			["Weaverok|shekzeer"] = { 0, 3, -36, 1113 },
			["Ÿûÿûÿûÿûÿûÿû|shekzeer"] = { 1, 2, 60, 1015 },
			["Вялыйпаладин|flamegor"] = { 2, 1, 2, 1287 },
			["Эрмантраутх|flamegor"] = { 2, 1, -1, 1135 },
			["Bakomba|shekzeer"] = { 0, 2, -27, 1266 },
			["Deepshelter|shekzeer"] = { 0, 2, -11, 828 },
			["Domnox|auberdine"] = { 0, 2, -20, 1053 },
			["Jakamotô|shekzeer"] = { 2, 0, 17, 1397 },
			["Johny|ook-ook"] = { 1, 1, -5, 1008 },
			["Locknass|shekzeer"] = { 1, 1, 19, 1001 },
			["Madaurpapa|shekzeer"] = { 2, 0, 10, 1097 },
			["Sapmere|auberdine"] = { 0, 2, -20, 1054 },
			["Taillung|shekzeer"] = { 2, 0, 11, 1094 },
			["Totemgodx|shekzeer"] = { 0, 2, -22, 828 },
			["Madapasaax|shekzeer"] = { 1, 0, 8, 1112 },
			["Taopaípaí|auberdine"] = { 0, 1, -4, 1008 },
			["Zhili|hoptallus"] = { 0, 1, -9, 828 },
		},
		[2] = {
			["Lazinka|norushen"] = { 14, 9, 152, 1188 },
			["Luckynova|garalon"] = { 14, 9, 15, 1223 },
			["Totemgodx|shekzeer"] = { 9, 14, 45, 1188 },
			["Голмаш|flamegor"] = { 9, 14, 489, 1008 },
			["Рыкай|flamegor"] = { 14, 9, 77, 1188 },
		},
	},
}

