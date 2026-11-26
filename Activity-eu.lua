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
	built = 1795698026,
	builtText = "2026-11-26 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 33 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 107 },
			["Commitment|shekzeer"] = { 1, 0, 12, 166 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 33 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 107 },
			["Commitment|shekzeer"] = { 1, 0, 12, 166 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 33 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 3, 4, -22, 647 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 107 },
			["Commitment|shekzeer"] = { 1, 0, 12, 166 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 33 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ngmi|shekzeer"] = { 22, 20, 13, 819 },
			["Plåýßøt|shekzeer"] = { 22, 20, 13, 818 },
			["Srtwhippa|everlook"] = { 10, 11, 18, 820 },
			["Zok|shekzeer"] = { 10, 11, 15, 820 },
			["Commitment|shekzeer"] = { 13, 6, 52, 166 },
			["Tchaktchac|auberdine"] = { 6, 11, 0, 889 },
			["Brazqrx|shekzeer"] = { 7, 9, 1, 868 },
			["Lîllyputaner|everlook"] = { 9, 7, 27, 876 },
			["Prayzthebozz|everlook"] = { 8, 7, 173, 862 },
			["Xály|shekzeer"] = { 5, 10, -92, 647 },
			["Yezze|garalon"] = { 8, 7, 17, 862 },
			["Domnox|auberdine"] = { 5, 9, 10, 889 },
			["Jakamaestro|shekzeer"] = { 7, 7, -19, 878 },
			["Marlkx|shekzeer"] = { 5, 9, -14, 946 },
			["Mwaniel|auberdine"] = { 6, 8, 16, 832 },
			["Wasabî|auberdine"] = { 6, 8, 5, 832 },
			["Andyskhan|mirage-raceway"] = { 6, 7, 34, 767 },
			["Madaurmada|shekzeer"] = { 7, 6, -37, 827 },
			["Rodnichek|shekzeer"] = { 6, 7, -36, 881 },
			["Suspriest|shekzeer"] = { 6, 7, 77, 766 },
			["Guccidaggers|shekzeer"] = { 9, 3, 102, 827 },
			["Фазерихх|flamegor"] = { 5, 7, 2, 982 },
			["Satånaz|shekzeer"] = { 11, 0, 25, 858 },
			["Topshotta|everlook"] = { 4, 7, -29, 1066 },
			["Cuckmycoocon|shekzeer"] = { 6, 4, 106, 975 },
			["Deepfull|shekzeer"] = { 4, 6, -19, 1088 },
			["Triplepizza|shekzeer"] = { 6, 4, 34, 974 },
			["Angrycubanx|shekzeer"] = { 5, 4, 20, 892 },
			["Jakamoto|shekzeer"] = { 5, 4, -9, 974 },
			["Mists|shekzeer"] = { 9, 0, 19, 836 },
			["Tastemydmg|shekzeer"] = { 5, 4, 42, 1013 },
			["Tyralíon|shekzeer"] = { 5, 4, 42, 1016 },
			["Derxibro|shekzeer"] = { 7, 1, 21, 1126 },
			["Dogfight|shekzeer"] = { 4, 4, 41, 827 },
			["Glamourmw|mirage-raceway"] = { 4, 4, 56, 943 },
			["Idontflinch|garalon"] = { 7, 1, 30, 1007 },
			["Vercettixx|shekzeer"] = { 8, 0, 37, 805 },
			["Bakomba|shekzeer"] = { 3, 4, -26, 1113 },
			["Blèsséd|shekzeer"] = { 0, 7, -19, 1147 },
			["Durianlover|shekzeer"] = { 3, 4, -10, 1007 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 1268 },
			["Kospi|auberdine"] = { 3, 4, 7, 1211 },
			["Makkezi|shekzeer"] = { 0, 7, -24, 1156 },
			["Srtdrippa|everlook"] = { 3, 4, 3, 946 },
			["Hopedieslast|shekzeer"] = { 3, 3, 5, 1007 },
			["Qwanya|shekzeer"] = { 4, 2, 78, 1000 },
			["Biggestegoeu|shekzeer"] = { 4, 1, -1, 743 },
			["Cõmbustz|shekzeer"] = { 2, 3, -10, 935 },
			["Drumåndbåss|shekzeer"] = { 5, 0, 58, 955 },
			["Ivonsa|garalon"] = { 0, 5, -56, 821 },
			["Rainbowrider|shekzeer"] = { 2, 3, -15, 935 },
			["Rainbôwrider|shekzeer"] = { 4, 1, 33, 883 },
			["Sumtinrother|shekzeer"] = { 4, 1, 34, 887 },
			["Yhwatch|shekzeer"] = { 4, 1, -1, 742 },
			["Лилрой|flamegor"] = { 0, 5, -21, 1250 },
			["Тнэш|flamegor"] = { 5, 0, 58, 954 },
			["Jakamstar|shekzeer"] = { 2, 2, 12, 1024 },
			["Juicyverÿ|shekzeer"] = { 3, 1, 20, 933 },
			["Pippilotta|shekzeer"] = { 2, 2, 6, 1060 },
			["Sapmere|auberdine"] = { 2, 2, 8, 1263 },
			["Sugarbear|shekzeer"] = { 1, 3, 24, 886 },
			["Taopaípaí|auberdine"] = { 0, 4, -30, 827 },
			["Zhili|hoptallus"] = { 1, 3, -1, 1187 },
			["Элементовик|flamegor"] = { 3, 1, 21, 970 },
			["Bozzclqwnx|shekzeer"] = { 0, 3, -26, 842 },
			["Cavernicola|garalon"] = { 0, 3, -32, 886 },
			["Coldcofeesux|shekzeer"] = { 0, 3, -28, 1187 },
			["Djburst|shekzeer"] = { 1, 2, -20, 743 },
			["Gódx|shekzeer"] = { 1, 2, -14, 804 },
			["Mîlkaa|everlook"] = { 1, 2, 0, 1076 },
			["Semloh|mirage-raceway"] = { 1, 2, -4, 1042 },
			["ßlinkd|shekzeer"] = { 0, 3, -38, 1066 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 1227 },
			["Cherryontop|shekzeer"] = { 1, 1, 18, 827 },
			["Crazyskill|shekzeer"] = { 2, 0, 23, 1193 },
			["Holmesx|mirage-raceway"] = { 0, 2, -11, 978 },
			["Orestis|norushen"] = { 0, 2, -21, 904 },
			["Parkettaszeg|shekzeer"] = { 0, 2, -27, 1148 },
			["Straviouse|hoptallus"] = { 0, 2, -19, 1004 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 107 },
			["Brazqr|shekzeer"] = { 0, 1, -11, 1065 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 33 },
			["Èlcapitan|mirage-raceway"] = { 0, 1, -16, 886 },
			["Froheostern|shekzeer"] = { 0, 1, -12, 942 },
			["Jakam|shekzeer"] = { 0, 1, -2, 866 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 1349 },
			["Kalreth|shekzeer"] = { 0, 1, -18, 720 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 1351 },
			["Vrctx|shekzeer"] = { 1, 0, 14, 1069 },
		},
		[2] = {
			["Missgrip|sulfuron"] = { 0, 5, 0, 1187 },
			["Голмаш|flamegor"] = { 0, 5, -11, 1187 },
			["Рыкай|flamegor"] = { 0, 5, -20, 1187 },
			["Luckynova|garalon"] = { 4, 0, 16, 1222 },
			["Skorpiys|norushen"] = { 4, 0, 30, 1240 },
			["Voljix|shekzeer"] = { 4, 0, 16, 1187 },
			["Crazyskill|shekzeer"] = { 1, 0, 96, 1193 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 1238 },
			["Weaverok|shekzeer"] = { 1, 0, 2, 1238 },
		},
	},
}

