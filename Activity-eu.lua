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
	built = 1794924040,
	builtText = "2026-11-17 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Markò|shekzeer"] = { 0, 4, 0, 708 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Hopedieslast|shekzeer"] = { 19, 22, 299, 888 },
			["Skyráw|shekzeer"] = { 19, 22, -41, 1001 },
			["Savexx|shekzeer"] = { 10, 16, -22, 765 },
			["Ineo|shekzeer"] = { 8, 17, 21, 1068 },
			["ßonnießlue|shekzeer"] = { 17, 3, 71, 811 },
			["Вялыйхант|flamegor"] = { 8, 12, -65, 997 },
			["Brazqrx|shekzeer"] = { 8, 11, 5, 950 },
			["Idontflinch|garalon"] = { 11, 8, 241, 888 },
			["Reginalds|shekzeer"] = { 8, 9, 33, 971 },
			["Repuls|mirage-raceway"] = { 5, 12, 38, 1056 },
			["Durianlover|shekzeer"] = { 4, 12, -15, 1248 },
			["Филмарис|flamegor"] = { 12, 4, 65, 1068 },
			["Madaurmada|shekzeer"] = { 8, 7, -48, 1277 },
			["Voljix|shekzeer"] = { 8, 7, 31, 888 },
			["Andysgone|shekzeer"] = { 8, 6, -16, 936 },
			["Cõmbustz|shekzeer"] = { 8, 6, 23, 1001 },
			["Keyoo|shekzeer"] = { 9, 5, 101, 900 },
			["Kobra|shekzeer"] = { 8, 6, -16, 919 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 24, 1001 },
			["Hotzalotz|hoptallus"] = { 7, 6, 59, 1100 },
			["Kream|shekzeer"] = { 7, 6, 83, 1020 },
			["Yente|hoptallus"] = { 7, 6, 44, 1101 },
			["Zok|shekzeer"] = { 4, 9, -5, 1339 },
			["Dardanët|mirage-raceway"] = { 6, 6, 14, 1068 },
			["Syncix|everlook"] = { 6, 6, 10, 1112 },
			["Drumåndbåss|shekzeer"] = { 5, 6, -12, 888 },
			["Тнэш|flamegor"] = { 5, 6, -12, 1019 },
			["Ayvara|shekzeer"] = { 6, 4, 29, 998 },
			["Jakamoto|shekzeer"] = { 5, 5, -4, 1282 },
			["Josax|mirage-raceway"] = { 3, 7, -28, 1074 },
			["Kjettbrett|mirage-raceway"] = { 9, 1, 57, 1042 },
			["Mythrugun|shekzeer"] = { 6, 4, 29, 995 },
			["Xpa|everlook"] = { 3, 7, -24, 822 },
			["Anadosova|shekzeer"] = { 6, 3, 57, 1047 },
			["Dotzalotz|hoptallus"] = { 5, 4, 16, 1042 },
			["Fntastic|mirage-raceway"] = { 6, 3, 39, 1358 },
			["Kennyk|shekzeer"] = { 3, 6, -12, 930 },
			["Taylôrswiftx|mirage-raceway"] = { 6, 3, 35, 1331 },
			["Zonnmonk|hoptallus"] = { 5, 4, 7, 1041 },
			["Bobz|auberdine"] = { 4, 4, 19, 1062 },
			["Orkidy|auberdine"] = { 4, 4, 19, 1063 },
			["Vercettixx|shekzeer"] = { 8, 0, 40, 938 },
			["Headshottss|shekzeer"] = { 2, 5, 39, 1076 },
			["Psyçhosoçial|shekzeer"] = { 2, 5, -49, 864 },
			["Tenex|norushen"] = { 2, 5, -17, 1102 },
			["Вялыйпал|flamegor"] = { 7, 0, 54, 1068 },
			["Aironsxx|shekzeer"] = { 4, 2, 29, 1341 },
			["Chandlerbing|shekzeer"] = { 4, 2, 29, 1341 },
			["Holyqiti|mirage-raceway"] = { 2, 3, 39, 1089 },
			["Satåntrapbot|shekzeer"] = { 5, 0, 11, 913 },
			["Tarozjebem|garalon"] = { 2, 3, 2, 1077 },
			["Biggestegoeu|shekzeer"] = { 3, 1, 5, 1319 },
			["Hayvanqt|shekzeer"] = { 4, 0, 81, 888 },
			["Healdbyme|shekzeer"] = { 4, 0, 73, 888 },
			["Markò|shekzeer"] = { 0, 4, 0, 708 },
			["Misann|hoptallus"] = { 0, 4, -19, 909 },
			["Noneedórb|shekzeer"] = { 0, 4, -22, 888 },
			["Orestis|norushen"] = { 0, 4, -18, 1343 },
			["Poisonqiti|mirage-raceway"] = { 1, 3, 21, 888 },
			["Sangore|auberdine"] = { 0, 4, -22, 1160 },
			["Satåna|shekzeer"] = { 4, 0, 9, 1033 },
			["Vêrcêttîx|shekzeer"] = { 4, 0, 10, 1040 },
			["Yhwatch|shekzeer"] = { 3, 1, -2, 1314 },
			["Abdiwallahi|shekzeer"] = { 1, 2, 16, 1084 },
			["Baboonplayér|shekzeer"] = { 3, 0, 30, 1226 },
			["Cavernicola|garalon"] = { 2, 1, 2, 1158 },
			["Crazyskiill|shekzeer"] = { 0, 3, -33, 1371 },
			["Hexencheriff|garalon"] = { 0, 3, -22, 1060 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -1, 1195 },
			["Mists|shekzeer"] = { 3, 0, 11, 1130 },
			["Paladîon|auberdine"] = { 2, 1, 35, 1118 },
			["Supai|shekzeer"] = { 3, 0, 27, 1226 },
			["Weaverok|shekzeer"] = { 0, 3, -36, 1173 },
			["Ÿûÿûÿûÿûÿûÿû|shekzeer"] = { 1, 2, 60, 1075 },
			["Вялыйпаладин|flamegor"] = { 2, 1, 2, 1347 },
			["Эрмантраутх|flamegor"] = { 2, 1, -1, 1195 },
			["Bakomba|shekzeer"] = { 0, 2, -27, 1326 },
			["Deepshelter|shekzeer"] = { 0, 2, -11, 888 },
			["Domnox|auberdine"] = { 0, 2, -20, 1113 },
			["Johny|ook-ook"] = { 1, 1, -5, 1068 },
			["Locknass|shekzeer"] = { 1, 1, 19, 1061 },
			["Madaurpapa|shekzeer"] = { 2, 0, 10, 1157 },
			["Sapmere|auberdine"] = { 0, 2, -20, 1113 },
			["Taillung|shekzeer"] = { 2, 0, 11, 1154 },
			["Totemgodx|shekzeer"] = { 0, 2, -22, 888 },
			["Madapasaax|shekzeer"] = { 1, 0, 8, 1172 },
			["Taopaípaí|auberdine"] = { 0, 1, -4, 1068 },
			["Zhili|hoptallus"] = { 0, 1, -9, 888 },
		},
		[2] = {
			["Lazinka|norushen"] = { 14, 9, 152, 1248 },
			["Luckynova|garalon"] = { 14, 9, 15, 1283 },
			["Totemgodx|shekzeer"] = { 9, 14, 45, 1248 },
			["Голмаш|flamegor"] = { 9, 14, 489, 1068 },
			["Рыкай|flamegor"] = { 14, 9, 77, 1248 },
		},
	},
}

