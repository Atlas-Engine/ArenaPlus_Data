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
	built = 1794927649,
	builtText = "2026-11-17 10:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Rbgme|norushen"] = { 3, 6, 52, 48 },
			["Screwedup|norushen"] = { 3, 6, 52, 48 },
			["Lazinka|norushen"] = { 3, 4, 52, 48 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 48 },
			["Voljix|shekzeer"] = { 2, 2, -14, 48 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 48 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 48 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rbgme|norushen"] = { 3, 6, 52, 48 },
			["Screwedup|norushen"] = { 3, 6, 52, 48 },
			["Lazinka|norushen"] = { 3, 4, 52, 48 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 48 },
			["Voljix|shekzeer"] = { 2, 2, -14, 48 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 48 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 48 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rbgme|norushen"] = { 3, 6, 52, 48 },
			["Screwedup|norushen"] = { 3, 6, 52, 48 },
			["Lazinka|norushen"] = { 3, 4, 52, 48 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 48 },
			["Voljix|shekzeer"] = { 2, 2, -14, 48 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 48 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 48 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rbgme|norushen"] = { 3, 6, 52, 48 },
			["Screwedup|norushen"] = { 3, 6, 52, 48 },
			["Lazinka|norushen"] = { 3, 4, 52, 48 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 48 },
			["Voljix|shekzeer"] = { 2, 2, -14, 48 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 48 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 48 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Hopedieslast|shekzeer"] = { 19, 22, 299, 948 },
			["Skyráw|shekzeer"] = { 19, 22, -41, 1061 },
			["Savexx|shekzeer"] = { 10, 16, -22, 825 },
			["Ineo|shekzeer"] = { 8, 17, 21, 1128 },
			["Вялыйхант|flamegor"] = { 8, 12, -65, 1057 },
			["Brazqrx|shekzeer"] = { 8, 11, 5, 1010 },
			["Idontflinch|garalon"] = { 11, 8, 241, 948 },
			["Voljix|shekzeer"] = { 10, 9, 17, 48 },
			["Reginalds|shekzeer"] = { 8, 9, 33, 1031 },
			["Repuls|mirage-raceway"] = { 5, 12, 38, 1116 },
			["Филмарис|flamegor"] = { 12, 4, 65, 1128 },
			["Anadosova|shekzeer"] = { 11, 3, 100, 48 },
			["Andysgone|shekzeer"] = { 8, 6, -16, 996 },
			["Cõmbustz|shekzeer"] = { 8, 6, 23, 1061 },
			["Keyoo|shekzeer"] = { 9, 5, 101, 960 },
			["Kobra|shekzeer"] = { 8, 6, -16, 979 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 24, 1061 },
			["ßonnießlue|shekzeer"] = { 11, 3, 33, 871 },
			["Hotzalotz|hoptallus"] = { 7, 6, 59, 1161 },
			["Kream|shekzeer"] = { 7, 6, 83, 1080 },
			["Yente|hoptallus"] = { 7, 6, 44, 1161 },
			["Dardanët|mirage-raceway"] = { 6, 6, 14, 1128 },
			["Syncix|everlook"] = { 6, 6, 10, 1172 },
			["Drumåndbåss|shekzeer"] = { 5, 6, -12, 948 },
			["Тнэш|flamegor"] = { 5, 6, -12, 1079 },
			["Ayvara|shekzeer"] = { 6, 4, 29, 1058 },
			["Jakamoto|shekzeer"] = { 5, 5, -4, 1343 },
			["Josax|mirage-raceway"] = { 3, 7, -28, 1134 },
			["Kjettbrett|mirage-raceway"] = { 9, 1, 57, 1102 },
			["Madaurmada|shekzeer"] = { 5, 5, -26, 1337 },
			["Mythrugun|shekzeer"] = { 6, 4, 29, 1055 },
			["Xpa|everlook"] = { 3, 7, -24, 882 },
			["Dotzalotz|hoptallus"] = { 5, 4, 16, 1102 },
			["Fntastic|mirage-raceway"] = { 6, 3, 39, 1418 },
			["Kennyk|shekzeer"] = { 3, 6, -12, 990 },
			["Rbgme|norushen"] = { 3, 6, 52, 48 },
			["Screwedup|norushen"] = { 3, 6, 52, 48 },
			["Taylôrswiftx|mirage-raceway"] = { 6, 3, 35, 1392 },
			["Zonnmonk|hoptallus"] = { 5, 4, 7, 1101 },
			["Bobz|auberdine"] = { 4, 4, 19, 1122 },
			["Orkidy|auberdine"] = { 4, 4, 19, 1123 },
			["Vercettixx|shekzeer"] = { 8, 0, 40, 999 },
			["Headshottss|shekzeer"] = { 2, 5, 39, 1136 },
			["Lazinka|norushen"] = { 3, 4, 52, 48 },
			["Psyçhosoçial|shekzeer"] = { 2, 5, -49, 924 },
			["Tenex|norushen"] = { 2, 5, -17, 1162 },
			["Вялыйпал|flamegor"] = { 7, 0, 54, 1128 },
			["Aironsxx|shekzeer"] = { 4, 2, 29, 1401 },
			["Chandlerbing|shekzeer"] = { 4, 2, 29, 1401 },
			["Durianlover|shekzeer"] = { 2, 4, -7, 1308 },
			["Holyqiti|mirage-raceway"] = { 2, 3, 39, 1149 },
			["Satåntrapbot|shekzeer"] = { 5, 0, 11, 973 },
			["Tarozjebem|garalon"] = { 2, 3, 2, 1137 },
			["Biggestegoeu|shekzeer"] = { 3, 1, 5, 1379 },
			["Hayvanqt|shekzeer"] = { 4, 0, 81, 948 },
			["Healdbyme|shekzeer"] = { 4, 0, 73, 948 },
			["Markò|shekzeer"] = { 0, 4, 0, 768 },
			["Misann|hoptallus"] = { 0, 4, -19, 969 },
			["Noneedórb|shekzeer"] = { 0, 4, -22, 948 },
			["Orestis|norushen"] = { 0, 4, -18, 1403 },
			["Poisonqiti|mirage-raceway"] = { 1, 3, 21, 948 },
			["Sangore|auberdine"] = { 0, 4, -22, 1220 },
			["Satåna|shekzeer"] = { 4, 0, 9, 1093 },
			["Vêrcêttîx|shekzeer"] = { 4, 0, 10, 1100 },
			["Yhwatch|shekzeer"] = { 3, 1, -2, 1375 },
			["Zok|shekzeer"] = { 2, 2, 3, 1399 },
			["Abdiwallahi|shekzeer"] = { 1, 2, 16, 1144 },
			["Baboonplayér|shekzeer"] = { 3, 0, 30, 1286 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 48 },
			["Cavernicola|garalon"] = { 2, 1, 2, 1218 },
			["Crazyskiill|shekzeer"] = { 0, 3, -33, 1431 },
			["Hexencheriff|garalon"] = { 0, 3, -22, 1120 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -1, 1255 },
			["Mists|shekzeer"] = { 3, 0, 11, 1191 },
			["Paladîon|auberdine"] = { 2, 1, 35, 1178 },
			["Supai|shekzeer"] = { 3, 0, 27, 1286 },
			["Weaverok|shekzeer"] = { 0, 3, -36, 1233 },
			["Ÿûÿûÿûÿûÿûÿû|shekzeer"] = { 1, 2, 60, 1135 },
			["Вялыйпаладин|flamegor"] = { 2, 1, 2, 1407 },
			["Эрмантраутх|flamegor"] = { 2, 1, -1, 1255 },
			["Bakomba|shekzeer"] = { 0, 2, -27, 1386 },
			["Deepshelter|shekzeer"] = { 0, 2, -11, 948 },
			["Domnox|auberdine"] = { 0, 2, -20, 1174 },
			["Johny|ook-ook"] = { 1, 1, -5, 1128 },
			["Locknass|shekzeer"] = { 1, 1, 19, 1121 },
			["Sapmere|auberdine"] = { 0, 2, -20, 1174 },
			["Taillung|shekzeer"] = { 2, 0, 11, 1214 },
			["Totemgodx|shekzeer"] = { 0, 2, -22, 948 },
			["Madapasaax|shekzeer"] = { 1, 0, 8, 1232 },
			["Madaurpapa|shekzeer"] = { 1, 0, 4, 1217 },
			["Taopaípaí|auberdine"] = { 0, 1, -4, 1128 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 48 },
			["Zhili|hoptallus"] = { 0, 1, -9, 948 },
		},
		[2] = {
			["Lazinka|norushen"] = { 14, 9, 152, 1308 },
			["Luckynova|garalon"] = { 14, 9, 15, 1343 },
			["Totemgodx|shekzeer"] = { 9, 14, 45, 1308 },
			["Голмаш|flamegor"] = { 9, 14, 489, 1128 },
			["Рыкай|flamegor"] = { 14, 9, 77, 1308 },
		},
	},
}

