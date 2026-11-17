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
	built = 1794913225,
	builtText = "2026-11-17 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 10, 16, -22, 585 },
			["Hopedieslast|shekzeer"] = { 5, 10, 48, 707 },
			["Voljix|shekzeer"] = { 8, 7, 31, 707 },
			["ßonnießlue|shekzeer"] = { 11, 1, 47, 631 },
			["Xpa|everlook"] = { 3, 7, -24, 642 },
			["Idontflinch|garalon"] = { 3, 4, 63, 707 },
			["Drumåndbåss|shekzeer"] = { 1, 4, -36, 707 },
			["Hayvanqt|shekzeer"] = { 4, 0, 81, 707 },
			["Healdbyme|shekzeer"] = { 4, 0, 73, 707 },
			["Keyoo|shekzeer"] = { 2, 2, 8, 720 },
			["Markò|shekzeer"] = { 0, 4, 0, 527 },
			["Noneedórb|shekzeer"] = { 0, 4, -22, 707 },
			["Deepshelter|shekzeer"] = { 0, 2, -11, 707 },
			["Psyçhosoçial|shekzeer"] = { 0, 2, -14, 684 },
			["Totemgodx|shekzeer"] = { 0, 2, -22, 707 },
			["Poisonqiti|mirage-raceway"] = { 0, 1, 0, 707 },
			["Zhili|hoptallus"] = { 0, 1, -9, 707 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Hopedieslast|shekzeer"] = { 19, 22, 299, 707 },
			["Skyráw|shekzeer"] = { 19, 22, -41, 820 },
			["Savexx|shekzeer"] = { 10, 16, -22, 585 },
			["Ineo|shekzeer"] = { 8, 17, 21, 887 },
			["ßonnießlue|shekzeer"] = { 17, 3, 71, 631 },
			["Вялыйхант|flamegor"] = { 8, 12, -65, 817 },
			["Brazqrx|shekzeer"] = { 8, 11, 5, 769 },
			["Idontflinch|garalon"] = { 11, 8, 241, 707 },
			["Reginalds|shekzeer"] = { 8, 9, 33, 791 },
			["Repuls|mirage-raceway"] = { 5, 12, 38, 876 },
			["Durianlover|shekzeer"] = { 4, 12, -15, 1067 },
			["Филмарис|flamegor"] = { 12, 4, 65, 887 },
			["Madaurmada|shekzeer"] = { 8, 7, -48, 1097 },
			["Voljix|shekzeer"] = { 8, 7, 31, 707 },
			["Andysgone|shekzeer"] = { 8, 6, -16, 756 },
			["Cõmbustz|shekzeer"] = { 8, 6, 23, 820 },
			["Keyoo|shekzeer"] = { 9, 5, 101, 720 },
			["Kobra|shekzeer"] = { 8, 6, -16, 738 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 24, 821 },
			["Hotzalotz|hoptallus"] = { 7, 6, 59, 920 },
			["Kream|shekzeer"] = { 7, 6, 83, 840 },
			["Yente|hoptallus"] = { 7, 6, 44, 920 },
			["Zok|shekzeer"] = { 4, 9, -5, 1158 },
			["Dardanët|mirage-raceway"] = { 6, 6, 14, 887 },
			["Syncix|everlook"] = { 6, 6, 10, 931 },
			["Drumåndbåss|shekzeer"] = { 5, 6, -12, 707 },
			["Тнэш|flamegor"] = { 5, 6, -12, 839 },
			["Ayvara|shekzeer"] = { 6, 4, 29, 818 },
			["Jakamoto|shekzeer"] = { 5, 5, -4, 1102 },
			["Josax|mirage-raceway"] = { 3, 7, -28, 894 },
			["Kjettbrett|mirage-raceway"] = { 9, 1, 57, 862 },
			["Mythrugun|shekzeer"] = { 6, 4, 29, 815 },
			["Xpa|everlook"] = { 3, 7, -24, 642 },
			["Anadosova|shekzeer"] = { 6, 3, 57, 867 },
			["Dotzalotz|hoptallus"] = { 5, 4, 16, 862 },
			["Fntastic|mirage-raceway"] = { 6, 3, 39, 1178 },
			["Kennyk|shekzeer"] = { 3, 6, -12, 750 },
			["Taylôrswiftx|mirage-raceway"] = { 6, 3, 35, 1151 },
			["Zonnmonk|hoptallus"] = { 5, 4, 7, 860 },
			["Bobz|auberdine"] = { 4, 4, 19, 882 },
			["Orkidy|auberdine"] = { 4, 4, 19, 883 },
			["Vercettixx|shekzeer"] = { 8, 0, 40, 758 },
			["Headshottss|shekzeer"] = { 2, 5, 39, 895 },
			["Psyçhosoçial|shekzeer"] = { 2, 5, -49, 684 },
			["Tenex|norushen"] = { 2, 5, -17, 922 },
			["Вялыйпал|flamegor"] = { 7, 0, 54, 887 },
			["Aironsxx|shekzeer"] = { 4, 2, 29, 1161 },
			["Chandlerbing|shekzeer"] = { 4, 2, 29, 1161 },
			["Yhwatch|shekzeer"] = { 4, 2, -19, 1134 },
			["Holyqiti|mirage-raceway"] = { 2, 3, 39, 908 },
			["Satåntrapbot|shekzeer"] = { 5, 0, 11, 733 },
			["Tarozjebem|garalon"] = { 2, 3, 2, 897 },
			["Biggestegoeu|shekzeer"] = { 3, 1, 5, 1139 },
			["Hayvanqt|shekzeer"] = { 4, 0, 81, 707 },
			["Healdbyme|shekzeer"] = { 4, 0, 73, 707 },
			["Markò|shekzeer"] = { 0, 4, 0, 527 },
			["Misann|hoptallus"] = { 0, 4, -19, 729 },
			["Noneedórb|shekzeer"] = { 0, 4, -22, 707 },
			["Orestis|norushen"] = { 0, 4, -18, 1163 },
			["Poisonqiti|mirage-raceway"] = { 1, 3, 21, 707 },
			["Sangore|auberdine"] = { 0, 4, -22, 980 },
			["Satåna|shekzeer"] = { 4, 0, 9, 853 },
			["Vêrcêttîx|shekzeer"] = { 4, 0, 10, 860 },
			["Abdiwallahi|shekzeer"] = { 1, 2, 16, 903 },
			["Baboonplayér|shekzeer"] = { 3, 0, 30, 1045 },
			["Cavernicola|garalon"] = { 2, 1, 2, 978 },
			["Crazyskiill|shekzeer"] = { 0, 3, -33, 1191 },
			["Hexencheriff|garalon"] = { 0, 3, -22, 880 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -1, 1015 },
			["Mists|shekzeer"] = { 3, 0, 11, 950 },
			["Paladîon|auberdine"] = { 2, 1, 35, 938 },
			["Supai|shekzeer"] = { 3, 0, 27, 1045 },
			["Weaverok|shekzeer"] = { 0, 3, -36, 993 },
			["Ÿûÿûÿûÿûÿûÿû|shekzeer"] = { 1, 2, 60, 894 },
			["Вялыйпаладин|flamegor"] = { 2, 1, 2, 1167 },
			["Эрмантраутх|flamegor"] = { 2, 1, -1, 1015 },
			["Bakomba|shekzeer"] = { 0, 2, -27, 1146 },
			["Deepshelter|shekzeer"] = { 0, 2, -11, 707 },
			["Domnox|auberdine"] = { 0, 2, -20, 933 },
			["Jakamotô|shekzeer"] = { 2, 0, 17, 1276 },
			["Johny|ook-ook"] = { 1, 1, -5, 887 },
			["Locknass|shekzeer"] = { 1, 1, 19, 880 },
			["Madaurpapa|shekzeer"] = { 2, 0, 10, 977 },
			["Sapmere|auberdine"] = { 0, 2, -20, 933 },
			["Taillung|shekzeer"] = { 2, 0, 11, 974 },
			["Totemgodx|shekzeer"] = { 0, 2, -22, 707 },
			["Madapasaax|shekzeer"] = { 1, 0, 8, 992 },
			["Marlk|shekzeer"] = { 0, 1, -4, 1354 },
			["Taopaípaí|auberdine"] = { 0, 1, -4, 887 },
			["Zhili|hoptallus"] = { 0, 1, -9, 707 },
		},
		[2] = {
			["Lazinka|norushen"] = { 14, 9, 152, 1067 },
			["Luckynova|garalon"] = { 14, 9, 15, 1103 },
			["Totemgodx|shekzeer"] = { 9, 14, 45, 1067 },
			["Голмаш|flamegor"] = { 9, 14, 489, 887 },
			["Рыкай|flamegor"] = { 14, 9, 77, 1067 },
		},
	},
}

