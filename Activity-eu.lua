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
	built = 1794916833,
	builtText = "2026-11-17 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Xpa|everlook"] = { 2, 6, -3, 702 },
			["Savexx|shekzeer"] = { 2, 5, 1, 645 },
			["ßonnießlue|shekzeer"] = { 6, 1, -3, 691 },
			["Markò|shekzeer"] = { 0, 4, 0, 588 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Hopedieslast|shekzeer"] = { 19, 22, 299, 768 },
			["Skyráw|shekzeer"] = { 19, 22, -41, 880 },
			["Savexx|shekzeer"] = { 10, 16, -22, 645 },
			["Ineo|shekzeer"] = { 8, 17, 21, 948 },
			["ßonnießlue|shekzeer"] = { 17, 3, 71, 691 },
			["Вялыйхант|flamegor"] = { 8, 12, -65, 877 },
			["Brazqrx|shekzeer"] = { 8, 11, 5, 830 },
			["Idontflinch|garalon"] = { 11, 8, 241, 768 },
			["Reginalds|shekzeer"] = { 8, 9, 33, 851 },
			["Repuls|mirage-raceway"] = { 5, 12, 38, 936 },
			["Durianlover|shekzeer"] = { 4, 12, -15, 1128 },
			["Филмарис|flamegor"] = { 12, 4, 65, 948 },
			["Madaurmada|shekzeer"] = { 8, 7, -48, 1157 },
			["Voljix|shekzeer"] = { 8, 7, 31, 768 },
			["Andysgone|shekzeer"] = { 8, 6, -16, 816 },
			["Cõmbustz|shekzeer"] = { 8, 6, 23, 881 },
			["Keyoo|shekzeer"] = { 9, 5, 101, 780 },
			["Kobra|shekzeer"] = { 8, 6, -16, 799 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 24, 881 },
			["Hotzalotz|hoptallus"] = { 7, 6, 59, 980 },
			["Kream|shekzeer"] = { 7, 6, 83, 900 },
			["Yente|hoptallus"] = { 7, 6, 44, 981 },
			["Zok|shekzeer"] = { 4, 9, -5, 1218 },
			["Dardanët|mirage-raceway"] = { 6, 6, 14, 948 },
			["Syncix|everlook"] = { 6, 6, 10, 992 },
			["Drumåndbåss|shekzeer"] = { 5, 6, -12, 768 },
			["Тнэш|flamegor"] = { 5, 6, -12, 899 },
			["Ayvara|shekzeer"] = { 6, 4, 29, 878 },
			["Jakamoto|shekzeer"] = { 5, 5, -4, 1162 },
			["Josax|mirage-raceway"] = { 3, 7, -28, 954 },
			["Kjettbrett|mirage-raceway"] = { 9, 1, 57, 922 },
			["Mythrugun|shekzeer"] = { 6, 4, 29, 875 },
			["Xpa|everlook"] = { 3, 7, -24, 702 },
			["Anadosova|shekzeer"] = { 6, 3, 57, 927 },
			["Dotzalotz|hoptallus"] = { 5, 4, 16, 922 },
			["Fntastic|mirage-raceway"] = { 6, 3, 39, 1238 },
			["Kennyk|shekzeer"] = { 3, 6, -12, 810 },
			["Taylôrswiftx|mirage-raceway"] = { 6, 3, 35, 1211 },
			["Zonnmonk|hoptallus"] = { 5, 4, 7, 920 },
			["Bobz|auberdine"] = { 4, 4, 19, 942 },
			["Orkidy|auberdine"] = { 4, 4, 19, 943 },
			["Vercettixx|shekzeer"] = { 8, 0, 40, 818 },
			["Headshottss|shekzeer"] = { 2, 5, 39, 956 },
			["Psyçhosoçial|shekzeer"] = { 2, 5, -49, 744 },
			["Tenex|norushen"] = { 2, 5, -17, 982 },
			["Вялыйпал|flamegor"] = { 7, 0, 54, 948 },
			["Aironsxx|shekzeer"] = { 4, 2, 29, 1221 },
			["Chandlerbing|shekzeer"] = { 4, 2, 29, 1221 },
			["Yhwatch|shekzeer"] = { 4, 2, -19, 1194 },
			["Holyqiti|mirage-raceway"] = { 2, 3, 39, 968 },
			["Satåntrapbot|shekzeer"] = { 5, 0, 11, 793 },
			["Tarozjebem|garalon"] = { 2, 3, 2, 957 },
			["Biggestegoeu|shekzeer"] = { 3, 1, 5, 1199 },
			["Hayvanqt|shekzeer"] = { 4, 0, 81, 768 },
			["Healdbyme|shekzeer"] = { 4, 0, 73, 768 },
			["Markò|shekzeer"] = { 0, 4, 0, 588 },
			["Misann|hoptallus"] = { 0, 4, -19, 789 },
			["Noneedórb|shekzeer"] = { 0, 4, -22, 768 },
			["Orestis|norushen"] = { 0, 4, -18, 1223 },
			["Poisonqiti|mirage-raceway"] = { 1, 3, 21, 768 },
			["Sangore|auberdine"] = { 0, 4, -22, 1040 },
			["Satåna|shekzeer"] = { 4, 0, 9, 913 },
			["Vêrcêttîx|shekzeer"] = { 4, 0, 10, 920 },
			["Abdiwallahi|shekzeer"] = { 1, 2, 16, 964 },
			["Baboonplayér|shekzeer"] = { 3, 0, 30, 1106 },
			["Cavernicola|garalon"] = { 2, 1, 2, 1038 },
			["Crazyskiill|shekzeer"] = { 0, 3, -33, 1251 },
			["Hexencheriff|garalon"] = { 0, 3, -22, 940 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -1, 1075 },
			["Mists|shekzeer"] = { 3, 0, 11, 1010 },
			["Paladîon|auberdine"] = { 2, 1, 35, 998 },
			["Supai|shekzeer"] = { 3, 0, 27, 1106 },
			["Weaverok|shekzeer"] = { 0, 3, -36, 1053 },
			["Ÿûÿûÿûÿûÿûÿû|shekzeer"] = { 1, 2, 60, 955 },
			["Вялыйпаладин|flamegor"] = { 2, 1, 2, 1227 },
			["Эрмантраутх|flamegor"] = { 2, 1, -1, 1075 },
			["Bakomba|shekzeer"] = { 0, 2, -27, 1206 },
			["Deepshelter|shekzeer"] = { 0, 2, -11, 768 },
			["Domnox|auberdine"] = { 0, 2, -20, 993 },
			["Jakamotô|shekzeer"] = { 2, 0, 17, 1337 },
			["Johny|ook-ook"] = { 1, 1, -5, 948 },
			["Locknass|shekzeer"] = { 1, 1, 19, 941 },
			["Madaurpapa|shekzeer"] = { 2, 0, 10, 1037 },
			["Sapmere|auberdine"] = { 0, 2, -20, 993 },
			["Taillung|shekzeer"] = { 2, 0, 11, 1034 },
			["Totemgodx|shekzeer"] = { 0, 2, -22, 768 },
			["Madapasaax|shekzeer"] = { 1, 0, 8, 1052 },
			["Marlk|shekzeer"] = { 0, 1, -4, 1414 },
			["Taopaípaí|auberdine"] = { 0, 1, -4, 948 },
			["Zhili|hoptallus"] = { 0, 1, -9, 768 },
		},
		[2] = {
			["Lazinka|norushen"] = { 14, 9, 152, 1128 },
			["Luckynova|garalon"] = { 14, 9, 15, 1163 },
			["Totemgodx|shekzeer"] = { 9, 14, 45, 1128 },
			["Голмаш|flamegor"] = { 9, 14, 489, 948 },
			["Рыкай|flamegor"] = { 14, 9, 77, 1128 },
		},
	},
}

