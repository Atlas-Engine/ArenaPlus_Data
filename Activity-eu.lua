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
	built = 1794934832,
	builtText = "2026-11-17 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Semiazas|shekzeer"] = { 5, 6, 61, 35 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 3, 5 },
			["Эрмантраутх|flamegor"] = { 1, 0, 3, 6 },
		},
		[2] = {
			["Luckynova|garalon"] = { 2, 1, 4, 21 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Semiazas|shekzeer"] = { 5, 6, 61, 35 },
			["Rbgme|norushen"] = { 3, 6, 52, 168 },
			["Screwedup|norushen"] = { 3, 6, 52, 168 },
			["Lazinka|norushen"] = { 3, 4, 52, 168 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 168 },
			["Voljix|shekzeer"] = { 2, 2, -14, 168 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 168 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 115 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 115 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 3, 5 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 168 },
			["Эрмантраутх|flamegor"] = { 1, 0, 3, 6 },
		},
		[2] = {
			["Luckynova|garalon"] = { 2, 1, 4, 21 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Semiazas|shekzeer"] = { 5, 6, 61, 35 },
			["Rbgme|norushen"] = { 3, 6, 52, 168 },
			["Screwedup|norushen"] = { 3, 6, 52, 168 },
			["Lazinka|norushen"] = { 3, 4, 52, 168 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 168 },
			["Voljix|shekzeer"] = { 2, 2, -14, 168 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 168 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 115 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 115 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 3, 5 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 168 },
			["Эрмантраутх|flamegor"] = { 1, 0, 3, 6 },
		},
		[2] = {
			["Luckynova|garalon"] = { 2, 1, 4, 21 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Semiazas|shekzeer"] = { 5, 6, 61, 35 },
			["Rbgme|norushen"] = { 3, 6, 52, 168 },
			["Screwedup|norushen"] = { 3, 6, 52, 168 },
			["Lazinka|norushen"] = { 3, 4, 52, 168 },
			["Anadosova|shekzeer"] = { 5, 0, 43, 168 },
			["Voljix|shekzeer"] = { 2, 2, -14, 168 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 168 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 115 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 115 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 3, 5 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 168 },
			["Эрмантраутх|flamegor"] = { 1, 0, 3, 6 },
		},
		[2] = {
			["Luckynova|garalon"] = { 2, 1, 4, 21 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Hopedieslast|shekzeer"] = { 19, 22, 299, 1068 },
			["Skyráw|shekzeer"] = { 19, 22, -41, 1180 },
			["Savexx|shekzeer"] = { 10, 16, -22, 945 },
			["Ineo|shekzeer"] = { 8, 17, 21, 1248 },
			["Вялыйхант|flamegor"] = { 8, 12, -65, 1177 },
			["Brazqrx|shekzeer"] = { 8, 11, 5, 1130 },
			["Idontflinch|garalon"] = { 11, 8, 241, 1068 },
			["Voljix|shekzeer"] = { 10, 9, 17, 168 },
			["Reginalds|shekzeer"] = { 8, 9, 33, 1151 },
			["Repuls|mirage-raceway"] = { 5, 12, 38, 1236 },
			["Филмарис|flamegor"] = { 12, 4, 65, 1248 },
			["Anadosova|shekzeer"] = { 11, 3, 100, 168 },
			["Andysgone|shekzeer"] = { 8, 6, -16, 1116 },
			["Cõmbustz|shekzeer"] = { 8, 6, 23, 1181 },
			["Keyoo|shekzeer"] = { 9, 5, 101, 1080 },
			["Kobra|shekzeer"] = { 8, 6, -16, 1099 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 24, 1181 },
			["ßonnießlue|shekzeer"] = { 11, 3, 33, 991 },
			["Hotzalotz|hoptallus"] = { 7, 6, 59, 1280 },
			["Kream|shekzeer"] = { 7, 6, 83, 1200 },
			["Yente|hoptallus"] = { 7, 6, 44, 1281 },
			["Dardanët|mirage-raceway"] = { 6, 6, 14, 1248 },
			["Syncix|everlook"] = { 6, 6, 10, 1292 },
			["Drumåndbåss|shekzeer"] = { 5, 6, -12, 1068 },
			["Semiazas|shekzeer"] = { 5, 6, 61, 35 },
			["Тнэш|flamegor"] = { 5, 6, -12, 1199 },
			["Ayvara|shekzeer"] = { 6, 4, 29, 1178 },
			["Josax|mirage-raceway"] = { 3, 7, -28, 1254 },
			["Kjettbrett|mirage-raceway"] = { 9, 1, 57, 1222 },
			["Mythrugun|shekzeer"] = { 6, 4, 29, 1175 },
			["Xpa|everlook"] = { 3, 7, -24, 1002 },
			["Dotzalotz|hoptallus"] = { 5, 4, 16, 1222 },
			["Kennyk|shekzeer"] = { 3, 6, -12, 1110 },
			["Rbgme|norushen"] = { 3, 6, 52, 168 },
			["Screwedup|norushen"] = { 3, 6, 52, 168 },
			["Zonnmonk|hoptallus"] = { 5, 4, 7, 1220 },
			["Bobz|auberdine"] = { 4, 4, 19, 1242 },
			["Orkidy|auberdine"] = { 4, 4, 19, 1243 },
			["Vercettixx|shekzeer"] = { 8, 0, 40, 1118 },
			["Headshottss|shekzeer"] = { 2, 5, 39, 1256 },
			["Lazinka|norushen"] = { 3, 4, 52, 168 },
			["Psyçhosoçial|shekzeer"] = { 2, 5, -49, 1044 },
			["Tenex|norushen"] = { 2, 5, -17, 1282 },
			["Вялыйпал|flamegor"] = { 7, 0, 54, 1248 },
			["Durianlover|shekzeer"] = { 2, 4, -7, 1428 },
			["Holyqiti|mirage-raceway"] = { 2, 3, 39, 1268 },
			["Satåntrapbot|shekzeer"] = { 5, 0, 11, 1093 },
			["Tarozjebem|garalon"] = { 2, 3, 2, 1257 },
			["Hayvanqt|shekzeer"] = { 4, 0, 81, 1068 },
			["Healdbyme|shekzeer"] = { 4, 0, 73, 1068 },
			["Juicyverÿ|shekzeer"] = { 3, 1, 2, 5 },
			["Markò|shekzeer"] = { 0, 4, 0, 888 },
			["Misann|hoptallus"] = { 0, 4, -19, 1089 },
			["Noneedórb|shekzeer"] = { 0, 4, -22, 1068 },
			["Poisonqiti|mirage-raceway"] = { 1, 3, 21, 1068 },
			["Sangore|auberdine"] = { 0, 4, -22, 1340 },
			["Satåna|shekzeer"] = { 4, 0, 9, 1213 },
			["Vêrcêttîx|shekzeer"] = { 4, 0, 10, 1220 },
			["Эрмантраутх|flamegor"] = { 3, 1, 2, 6 },
			["Abdiwallahi|shekzeer"] = { 1, 2, 16, 1264 },
			["Baboonplayér|shekzeer"] = { 3, 0, 30, 1406 },
			["Bloodmoney|shekzeer"] = { 1, 2, -17, 168 },
			["Cavernicola|garalon"] = { 2, 1, 2, 1338 },
			["Hexencheriff|garalon"] = { 0, 3, -22, 1240 },
			["Mists|shekzeer"] = { 3, 0, 11, 1310 },
			["Paladîon|auberdine"] = { 2, 1, 35, 1298 },
			["Supai|shekzeer"] = { 3, 0, 27, 1405 },
			["Weaverok|shekzeer"] = { 0, 3, -36, 1353 },
			["Ÿûÿûÿûÿûÿûÿû|shekzeer"] = { 1, 2, 60, 1255 },
			["Aironsxx|shekzeer"] = { 0, 2, -10, 115 },
			["Chandlerbing|shekzeer"] = { 0, 2, -10, 115 },
			["Deepshelter|shekzeer"] = { 0, 2, -11, 1068 },
			["Domnox|auberdine"] = { 0, 2, -20, 1293 },
			["Locknass|shekzeer"] = { 1, 1, 19, 1241 },
			["Sapmere|auberdine"] = { 0, 2, -20, 1293 },
			["Taillung|shekzeer"] = { 2, 0, 11, 1334 },
			["Totemgodx|shekzeer"] = { 0, 2, -22, 1068 },
			["Johny|ook-ook"] = { 0, 1, -9, 1248 },
			["Madapasaax|shekzeer"] = { 1, 0, 8, 1352 },
			["Madaurpapa|shekzeer"] = { 1, 0, 4, 1337 },
			["Taopaípaí|auberdine"] = { 0, 1, -4, 1248 },
			["Voljiz|shekzeer"] = { 0, 1, -11, 168 },
			["Zhili|hoptallus"] = { 0, 1, -9, 1068 },
		},
		[2] = {
			["Lazinka|norushen"] = { 14, 9, 152, 1428 },
			["Totemgodx|shekzeer"] = { 9, 14, 45, 1428 },
			["Голмаш|flamegor"] = { 9, 14, 489, 1248 },
			["Рыкай|flamegor"] = { 14, 9, 77, 1428 },
			["Luckynova|garalon"] = { 2, 1, 4, 21 },
		},
	},
}

