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
	built = 1794931227,
	builtText = "2026-11-17 11:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Aironsxx|shekzeer"] = { 0, 2, -10, 55 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 55 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rbgme|norushen"] = { 3, 6, 52, 107 },
			["Screwedup|norushen"] = { 3, 6, 52, 107 },
			["Lazinka|norushen"] = { 3, 4, 52, 107 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 107 },
			["Voljix|shekzeer"] = { 2, 2, -14, 107 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 107 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 55 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 55 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 107 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rbgme|norushen"] = { 3, 6, 52, 107 },
			["Screwedup|norushen"] = { 3, 6, 52, 107 },
			["Lazinka|norushen"] = { 3, 4, 52, 107 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 107 },
			["Voljix|shekzeer"] = { 2, 2, -14, 107 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 107 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 55 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 55 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 107 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rbgme|norushen"] = { 3, 6, 52, 107 },
			["Screwedup|norushen"] = { 3, 6, 52, 107 },
			["Lazinka|norushen"] = { 3, 4, 52, 107 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 107 },
			["Voljix|shekzeer"] = { 2, 2, -14, 107 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 107 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 55 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 55 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 107 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Hopedieslast|shekzeer"] = { 19, 22, 299, 1007 },
			["Skyráw|shekzeer"] = { 19, 22, -41, 1120 },
			["Savexx|shekzeer"] = { 10, 16, -22, 885 },
			["Ineo|shekzeer"] = { 8, 17, 21, 1187 },
			["Вялыйхант|flamegor"] = { 8, 12, -65, 1117 },
			["Brazqrx|shekzeer"] = { 8, 11, 5, 1069 },
			["Idontflinch|garalon"] = { 11, 8, 241, 1007 },
			["Voljix|shekzeer"] = { 10, 9, 17, 107 },
			["Reginalds|shekzeer"] = { 8, 9, 33, 1091 },
			["Repuls|mirage-raceway"] = { 5, 12, 38, 1176 },
			["Филмарис|flamegor"] = { 12, 4, 65, 1187 },
			["Anadosova|shekzeer"] = { 11, 3, 100, 107 },
			["Andysgone|shekzeer"] = { 8, 6, -16, 1056 },
			["Cõmbustz|shekzeer"] = { 8, 6, 23, 1120 },
			["Keyoo|shekzeer"] = { 9, 5, 101, 1020 },
			["Kobra|shekzeer"] = { 8, 6, -16, 1038 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 24, 1121 },
			["ßonnießlue|shekzeer"] = { 11, 3, 33, 931 },
			["Hotzalotz|hoptallus"] = { 7, 6, 59, 1220 },
			["Kream|shekzeer"] = { 7, 6, 83, 1140 },
			["Yente|hoptallus"] = { 7, 6, 44, 1220 },
			["Dardanët|mirage-raceway"] = { 6, 6, 14, 1187 },
			["Syncix|everlook"] = { 6, 6, 10, 1231 },
			["Drumåndbåss|shekzeer"] = { 5, 6, -12, 1007 },
			["Тнэш|flamegor"] = { 5, 6, -12, 1139 },
			["Ayvara|shekzeer"] = { 6, 4, 29, 1118 },
			["Jakamoto|shekzeer"] = { 5, 5, -4, 1402 },
			["Josax|mirage-raceway"] = { 3, 7, -28, 1194 },
			["Kjettbrett|mirage-raceway"] = { 9, 1, 57, 1162 },
			["Madaurmada|shekzeer"] = { 5, 5, -26, 1397 },
			["Mythrugun|shekzeer"] = { 6, 4, 29, 1115 },
			["Xpa|everlook"] = { 3, 7, -24, 942 },
			["Dotzalotz|hoptallus"] = { 5, 4, 16, 1162 },
			["Kennyk|shekzeer"] = { 3, 6, -12, 1050 },
			["Rbgme|norushen"] = { 3, 6, 52, 107 },
			["Screwedup|norushen"] = { 3, 6, 52, 107 },
			["Zonnmonk|hoptallus"] = { 5, 4, 7, 1160 },
			["Bobz|auberdine"] = { 4, 4, 19, 1182 },
			["Orkidy|auberdine"] = { 4, 4, 19, 1183 },
			["Vercettixx|shekzeer"] = { 8, 0, 40, 1058 },
			["Headshottss|shekzeer"] = { 2, 5, 39, 1195 },
			["Lazinka|norushen"] = { 3, 4, 52, 107 },
			["Psyçhosoçial|shekzeer"] = { 2, 5, -49, 984 },
			["Tenex|norushen"] = { 2, 5, -17, 1222 },
			["Вялыйпал|flamegor"] = { 7, 0, 54, 1187 },
			["Durianlover|shekzeer"] = { 2, 4, -7, 1367 },
			["Holyqiti|mirage-raceway"] = { 2, 3, 39, 1208 },
			["Satåntrapbot|shekzeer"] = { 5, 0, 11, 1033 },
			["Tarozjebem|garalon"] = { 2, 3, 2, 1197 },
			["Biggestegoeu|shekzeer"] = { 3, 1, 5, 1439 },
			["Hayvanqt|shekzeer"] = { 4, 0, 81, 1007 },
			["Healdbyme|shekzeer"] = { 4, 0, 73, 1007 },
			["Markò|shekzeer"] = { 0, 4, 0, 827 },
			["Misann|hoptallus"] = { 0, 4, -19, 1029 },
			["Noneedórb|shekzeer"] = { 0, 4, -22, 1007 },
			["Poisonqiti|mirage-raceway"] = { 1, 3, 21, 1007 },
			["Sangore|auberdine"] = { 0, 4, -22, 1280 },
			["Satåna|shekzeer"] = { 4, 0, 9, 1153 },
			["Vêrcêttîx|shekzeer"] = { 4, 0, 10, 1160 },
			["Yhwatch|shekzeer"] = { 3, 1, -2, 1434 },
			["Abdiwallahi|shekzeer"] = { 1, 2, 16, 1203 },
			["Baboonplayér|shekzeer"] = { 3, 0, 30, 1345 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 107 },
			["Cavernicola|garalon"] = { 2, 1, 2, 1278 },
			["Hexencheriff|garalon"] = { 0, 3, -22, 1180 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -1, 1315 },
			["Mists|shekzeer"] = { 3, 0, 11, 1250 },
			["Paladîon|auberdine"] = { 2, 1, 35, 1238 },
			["Supai|shekzeer"] = { 3, 0, 27, 1345 },
			["Weaverok|shekzeer"] = { 0, 3, -36, 1293 },
			["Ÿûÿûÿûÿûÿûÿû|shekzeer"] = { 1, 2, 60, 1195 },
			["Эрмантраутх|flamegor"] = { 2, 1, -1, 1315 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 55 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 55 },
			["Deepshelter|shekzeer"] = { 0, 2, -11, 1007 },
			["Domnox|auberdine"] = { 0, 2, -20, 1233 },
			["Johny|ook-ook"] = { 1, 1, -5, 1187 },
			["Locknass|shekzeer"] = { 1, 1, 19, 1181 },
			["Sapmere|auberdine"] = { 0, 2, -20, 1233 },
			["Taillung|shekzeer"] = { 2, 0, 11, 1274 },
			["Totemgodx|shekzeer"] = { 0, 2, -22, 1007 },
			["Madapasaax|shekzeer"] = { 1, 0, 8, 1292 },
			["Madaurpapa|shekzeer"] = { 1, 0, 4, 1277 },
			["Taopaípaí|auberdine"] = { 0, 1, -4, 1187 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 107 },
			["Zhili|hoptallus"] = { 0, 1, -9, 1007 },
		},
		[2] = {
			["Lazinka|norushen"] = { 14, 9, 152, 1367 },
			["Luckynova|garalon"] = { 14, 9, 15, 1403 },
			["Totemgodx|shekzeer"] = { 9, 14, 45, 1367 },
			["Голмаш|flamegor"] = { 9, 14, 489, 1187 },
			["Рыкай|flamegor"] = { 14, 9, 77, 1367 },
		},
	},
}

