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
	built = 1795694423,
	builtText = "2026-11-26 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 47 },
			["Commitment|shekzeer"] = { 1, 0, 12, 106 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 47 },
			["Commitment|shekzeer"] = { 1, 0, 12, 106 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Andyskhan|mirage-raceway"] = { 3, 4, 30, 707 },
			["Suspriest|shekzeer"] = { 3, 4, 46, 706 },
			["Xály|shekzeer"] = { 3, 4, -22, 587 },
			["Biggestegoeu|shekzeer"] = { 4, 0, 8, 683 },
			["Djburst|shekzeer"] = { 1, 2, -20, 683 },
			["Yhwatch|shekzeer"] = { 3, 0, 6, 682 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 47 },
			["Commitment|shekzeer"] = { 1, 0, 12, 106 },
			["Kalreth|shekzeer"] = { 0, 1, -18, 660 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ngmi|shekzeer"] = { 22, 20, 13, 759 },
			["Plåýßøt|shekzeer"] = { 22, 20, 13, 758 },
			["Srtwhippa|everlook"] = { 10, 11, 18, 760 },
			["Zok|shekzeer"] = { 10, 11, 15, 760 },
			["Commitment|shekzeer"] = { 13, 6, 52, 106 },
			["Tchaktchac|auberdine"] = { 6, 11, 0, 829 },
			["Brazqrx|shekzeer"] = { 7, 9, 1, 808 },
			["Lîllyputaner|everlook"] = { 9, 7, 27, 816 },
			["Prayzthebozz|everlook"] = { 8, 7, 173, 802 },
			["Xály|shekzeer"] = { 5, 10, -92, 587 },
			["Yezze|garalon"] = { 8, 7, 17, 802 },
			["Domnox|auberdine"] = { 5, 9, 10, 829 },
			["Jakamaestro|shekzeer"] = { 7, 7, -19, 818 },
			["Marlkx|shekzeer"] = { 5, 9, -14, 886 },
			["Mwaniel|auberdine"] = { 6, 8, 16, 772 },
			["Wasabî|auberdine"] = { 6, 8, 5, 772 },
			["Andyskhan|mirage-raceway"] = { 6, 7, 34, 707 },
			["Madaurmada|shekzeer"] = { 7, 6, -37, 767 },
			["Rodnichek|shekzeer"] = { 6, 7, -36, 820 },
			["Suspriest|shekzeer"] = { 6, 7, 77, 706 },
			["Guccidaggers|shekzeer"] = { 9, 3, 102, 767 },
			["Фазерихх|flamegor"] = { 5, 7, 2, 922 },
			["Satånaz|shekzeer"] = { 11, 0, 25, 798 },
			["Topshotta|everlook"] = { 4, 7, -29, 1006 },
			["Cuckmycoocon|shekzeer"] = { 6, 4, 106, 914 },
			["Deepfull|shekzeer"] = { 4, 6, -19, 1028 },
			["Triplepizza|shekzeer"] = { 6, 4, 34, 914 },
			["Angrycubanx|shekzeer"] = { 5, 4, 20, 832 },
			["Jakamoto|shekzeer"] = { 5, 4, -9, 913 },
			["Mists|shekzeer"] = { 9, 0, 19, 776 },
			["Tastemydmg|shekzeer"] = { 5, 4, 42, 953 },
			["Tyralíon|shekzeer"] = { 5, 4, 42, 956 },
			["Derxibro|shekzeer"] = { 7, 1, 21, 1066 },
			["Dogfight|shekzeer"] = { 4, 4, 41, 767 },
			["Glamourmw|mirage-raceway"] = { 4, 4, 56, 882 },
			["Idontflinch|garalon"] = { 7, 1, 30, 947 },
			["Vercettixx|shekzeer"] = { 8, 0, 37, 745 },
			["Bakomba|shekzeer"] = { 3, 4, -26, 1053 },
			["Blèsséd|shekzeer"] = { 0, 7, -19, 1087 },
			["Durianlover|shekzeer"] = { 3, 4, -10, 947 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 1208 },
			["Kospi|auberdine"] = { 3, 4, 7, 1151 },
			["Makkezi|shekzeer"] = { 0, 7, -24, 1096 },
			["Srtdrippa|everlook"] = { 3, 4, 3, 886 },
			["Hopedieslast|shekzeer"] = { 3, 3, 5, 947 },
			["Qwanya|shekzeer"] = { 4, 2, 78, 940 },
			["Biggestegoeu|shekzeer"] = { 4, 1, -1, 683 },
			["Cõmbustz|shekzeer"] = { 2, 3, -10, 875 },
			["Drumåndbåss|shekzeer"] = { 5, 0, 58, 895 },
			["Ivonsa|garalon"] = { 0, 5, -56, 761 },
			["Rainbowrider|shekzeer"] = { 2, 3, -15, 875 },
			["Rainbôwrider|shekzeer"] = { 4, 1, 33, 823 },
			["Sumtinrother|shekzeer"] = { 4, 1, 34, 827 },
			["Yhwatch|shekzeer"] = { 4, 1, -1, 682 },
			["Лилрой|flamegor"] = { 0, 5, -21, 1190 },
			["Тнэш|flamegor"] = { 5, 0, 58, 894 },
			["Jakamstar|shekzeer"] = { 2, 2, 12, 964 },
			["Juicyverÿ|shekzeer"] = { 3, 1, 20, 873 },
			["Pippilotta|shekzeer"] = { 2, 2, 6, 1000 },
			["Sapmere|auberdine"] = { 2, 2, 8, 1203 },
			["Sugarbear|shekzeer"] = { 1, 3, 24, 826 },
			["Taopaípaí|auberdine"] = { 0, 4, -30, 767 },
			["Zhili|hoptallus"] = { 1, 3, -1, 1127 },
			["Элементовик|flamegor"] = { 3, 1, 21, 909 },
			["Bozzclqwnx|shekzeer"] = { 0, 3, -26, 781 },
			["Cavernicola|garalon"] = { 0, 3, -32, 826 },
			["Coldcofeesux|shekzeer"] = { 0, 3, -28, 1127 },
			["Djburst|shekzeer"] = { 1, 2, -20, 683 },
			["Gódx|shekzeer"] = { 1, 2, -14, 744 },
			["Mîlkaa|everlook"] = { 1, 2, 0, 1016 },
			["Semloh|mirage-raceway"] = { 1, 2, -4, 982 },
			["ßlinkd|shekzeer"] = { 0, 3, -38, 1006 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 1167 },
			["Cherryontop|shekzeer"] = { 1, 1, 18, 767 },
			["Crazyskill|shekzeer"] = { 2, 0, 23, 1133 },
			["Holmesx|mirage-raceway"] = { 0, 2, -11, 918 },
			["Orestis|norushen"] = { 0, 2, -21, 844 },
			["Parkettaszeg|shekzeer"] = { 0, 2, -27, 1088 },
			["Straviouse|hoptallus"] = { 0, 2, -19, 944 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 47 },
			["Brazqr|shekzeer"] = { 0, 1, -11, 1005 },
			["Èlcapitan|mirage-raceway"] = { 0, 1, -16, 826 },
			["Froheostern|shekzeer"] = { 0, 1, -12, 882 },
			["Jakam|shekzeer"] = { 0, 1, -2, 806 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 1289 },
			["Kalreth|shekzeer"] = { 0, 1, -18, 660 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 1290 },
			["Vrctx|shekzeer"] = { 1, 0, 14, 1009 },
		},
		[2] = {
			["Missgrip|sulfuron"] = { 0, 5, 0, 1127 },
			["Голмаш|flamegor"] = { 0, 5, -11, 1127 },
			["Рыкай|flamegor"] = { 0, 5, -20, 1127 },
			["Luckynova|garalon"] = { 4, 0, 16, 1162 },
			["Skorpiys|norushen"] = { 4, 0, 30, 1180 },
			["Voljix|shekzeer"] = { 4, 0, 16, 1127 },
			["Crazyskill|shekzeer"] = { 1, 0, 96, 1133 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 1178 },
			["Weaverok|shekzeer"] = { 1, 0, 2, 1178 },
		},
	},
}

