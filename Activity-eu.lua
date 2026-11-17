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
	built = 1794909632,
	builtText = "2026-11-17 05:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 10, 16, -22, 525 },
			["Brazqrx|shekzeer"] = { 7, 9, 24, 710 },
			["Hopedieslast|shekzeer"] = { 5, 10, 48, 648 },
			["Voljix|shekzeer"] = { 8, 7, 31, 648 },
			["Andysgone|shekzeer"] = { 8, 6, -16, 696 },
			["Kobra|shekzeer"] = { 8, 6, -16, 679 },
			["ßonnießlue|shekzeer"] = { 11, 1, 47, 571 },
			["Xpa|everlook"] = { 3, 7, -24, 582 },
			["Kennyk|shekzeer"] = { 3, 6, -12, 690 },
			["Vercettixx|shekzeer"] = { 8, 0, 40, 698 },
			["Idontflinch|garalon"] = { 3, 4, 63, 648 },
			["Drumåndbåss|shekzeer"] = { 1, 4, -36, 648 },
			["Hayvanqt|shekzeer"] = { 4, 0, 81, 648 },
			["Healdbyme|shekzeer"] = { 4, 0, 73, 648 },
			["Keyoo|shekzeer"] = { 2, 2, 8, 660 },
			["Markò|shekzeer"] = { 0, 4, 0, 468 },
			["Misann|hoptallus"] = { 0, 4, -19, 669 },
			["Noneedórb|shekzeer"] = { 0, 4, -22, 648 },
			["Psyçhosoçial|shekzeer"] = { 0, 4, -41, 624 },
			["Deepshelter|shekzeer"] = { 0, 2, -11, 648 },
			["Satåntrapbot|shekzeer"] = { 2, 0, 8, 673 },
			["Totemgodx|shekzeer"] = { 0, 2, -22, 648 },
			["Poisonqiti|mirage-raceway"] = { 0, 1, 0, 648 },
			["Zhili|hoptallus"] = { 0, 1, -9, 648 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Hopedieslast|shekzeer"] = { 19, 22, 299, 648 },
			["Skyráw|shekzeer"] = { 19, 22, -41, 760 },
			["Savexx|shekzeer"] = { 10, 16, -22, 525 },
			["Ineo|shekzeer"] = { 8, 17, 21, 828 },
			["ßonnießlue|shekzeer"] = { 17, 3, 71, 571 },
			["Вялыйхант|flamegor"] = { 8, 12, -65, 757 },
			["Brazqrx|shekzeer"] = { 8, 11, 5, 710 },
			["Idontflinch|garalon"] = { 11, 8, 241, 648 },
			["Reginalds|shekzeer"] = { 8, 9, 33, 731 },
			["Repuls|mirage-raceway"] = { 5, 12, 38, 816 },
			["Durianlover|shekzeer"] = { 4, 12, -15, 1008 },
			["Филмарис|flamegor"] = { 12, 4, 65, 828 },
			["Madaurmada|shekzeer"] = { 8, 7, -48, 1037 },
			["Voljix|shekzeer"] = { 8, 7, 31, 648 },
			["Andysgone|shekzeer"] = { 8, 6, -16, 696 },
			["Cõmbustz|shekzeer"] = { 8, 6, 23, 761 },
			["Keyoo|shekzeer"] = { 9, 5, 101, 660 },
			["Kobra|shekzeer"] = { 8, 6, -16, 679 },
			["Rainbowrïder|shekzeer"] = { 8, 6, 24, 761 },
			["Hotzalotz|hoptallus"] = { 7, 6, 59, 860 },
			["Kream|shekzeer"] = { 7, 6, 83, 780 },
			["Yente|hoptallus"] = { 7, 6, 44, 861 },
			["Zok|shekzeer"] = { 4, 9, -5, 1098 },
			["Dardanët|mirage-raceway"] = { 6, 6, 14, 828 },
			["Syncix|everlook"] = { 6, 6, 10, 872 },
			["Drumåndbåss|shekzeer"] = { 5, 6, -12, 648 },
			["Тнэш|flamegor"] = { 5, 6, -12, 779 },
			["Ayvara|shekzeer"] = { 6, 4, 29, 758 },
			["Jakamoto|shekzeer"] = { 5, 5, -4, 1042 },
			["Josax|mirage-raceway"] = { 3, 7, -28, 834 },
			["Kjettbrett|mirage-raceway"] = { 9, 1, 57, 802 },
			["Mythrugun|shekzeer"] = { 6, 4, 29, 755 },
			["Xpa|everlook"] = { 3, 7, -24, 582 },
			["Anadosova|shekzeer"] = { 6, 3, 57, 807 },
			["Dotzalotz|hoptallus"] = { 5, 4, 16, 802 },
			["Fntastic|mirage-raceway"] = { 6, 3, 39, 1118 },
			["Kennyk|shekzeer"] = { 3, 6, -12, 690 },
			["Taylôrswiftx|mirage-raceway"] = { 6, 3, 35, 1091 },
			["Zonnmonk|hoptallus"] = { 5, 4, 7, 800 },
			["Bobz|auberdine"] = { 4, 4, 19, 822 },
			["Orkidy|auberdine"] = { 4, 4, 19, 823 },
			["Vercettixx|shekzeer"] = { 8, 0, 40, 698 },
			["Headshottss|shekzeer"] = { 2, 5, 39, 836 },
			["Psyçhosoçial|shekzeer"] = { 2, 5, -49, 624 },
			["Tenex|norushen"] = { 2, 5, -17, 862 },
			["Вялыйпал|flamegor"] = { 7, 0, 54, 828 },
			["Aironsxx|shekzeer"] = { 4, 2, 29, 1101 },
			["Chandlerbing|shekzeer"] = { 4, 2, 29, 1101 },
			["Yhwatch|shekzeer"] = { 4, 2, -19, 1074 },
			["Holyqiti|mirage-raceway"] = { 2, 3, 39, 848 },
			["Satåntrapbot|shekzeer"] = { 5, 0, 11, 673 },
			["Tarozjebem|garalon"] = { 2, 3, 2, 837 },
			["Biggestegoeu|shekzeer"] = { 3, 1, 5, 1079 },
			["Hayvanqt|shekzeer"] = { 4, 0, 81, 648 },
			["Healdbyme|shekzeer"] = { 4, 0, 73, 648 },
			["Markò|shekzeer"] = { 0, 4, 0, 468 },
			["Misann|hoptallus"] = { 0, 4, -19, 669 },
			["Noneedórb|shekzeer"] = { 0, 4, -22, 648 },
			["Orestis|norushen"] = { 0, 4, -18, 1103 },
			["Poisonqiti|mirage-raceway"] = { 1, 3, 21, 648 },
			["Sangore|auberdine"] = { 0, 4, -22, 920 },
			["Satåna|shekzeer"] = { 4, 0, 9, 793 },
			["Vêrcêttîx|shekzeer"] = { 4, 0, 10, 800 },
			["Abdiwallahi|shekzeer"] = { 1, 2, 16, 844 },
			["Baboonplayér|shekzeer"] = { 3, 0, 30, 986 },
			["Cavernicola|garalon"] = { 2, 1, 2, 918 },
			["Crazyskiill|shekzeer"] = { 0, 3, -33, 1131 },
			["Hexencheriff|garalon"] = { 0, 3, -22, 820 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -1, 955 },
			["Mists|shekzeer"] = { 3, 0, 11, 890 },
			["Paladîon|auberdine"] = { 2, 1, 35, 878 },
			["Supai|shekzeer"] = { 3, 0, 27, 985 },
			["Weaverok|shekzeer"] = { 0, 3, -36, 933 },
			["Ÿûÿûÿûÿûÿûÿû|shekzeer"] = { 1, 2, 60, 835 },
			["Вялыйпаладин|flamegor"] = { 2, 1, 2, 1107 },
			["Эрмантраутх|flamegor"] = { 2, 1, -1, 955 },
			["Bakomba|shekzeer"] = { 0, 2, -27, 1086 },
			["Deepshelter|shekzeer"] = { 0, 2, -11, 648 },
			["Domnox|auberdine"] = { 0, 2, -20, 873 },
			["Jakamotô|shekzeer"] = { 2, 0, 17, 1217 },
			["Johny|ook-ook"] = { 1, 1, -5, 828 },
			["Locknass|shekzeer"] = { 1, 1, 19, 821 },
			["Madaurpapa|shekzeer"] = { 2, 0, 10, 917 },
			["Sapmere|auberdine"] = { 0, 2, -20, 873 },
			["Taillung|shekzeer"] = { 2, 0, 11, 914 },
			["Totemgodx|shekzeer"] = { 0, 2, -22, 648 },
			["Madapasaax|shekzeer"] = { 1, 0, 8, 932 },
			["Marlk|shekzeer"] = { 0, 1, -4, 1294 },
			["Taopaípaí|auberdine"] = { 0, 1, -4, 828 },
			["Zhili|hoptallus"] = { 0, 1, -9, 648 },
		},
		[2] = {
			["Lazinka|norushen"] = { 14, 9, 152, 1008 },
			["Luckynova|garalon"] = { 14, 9, 15, 1043 },
			["Totemgodx|shekzeer"] = { 9, 14, 45, 1008 },
			["Голмаш|flamegor"] = { 9, 14, 489, 828 },
			["Рыкай|flamegor"] = { 14, 9, 77, 1008 },
		},
	},
}

