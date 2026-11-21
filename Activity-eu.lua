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
	built = 1795269630,
	builtText = "2026-11-21 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fünfgizelp|everlook"] = { 4, 1, 64, 70 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 71 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fünfgizelp|everlook"] = { 4, 1, 64, 70 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 71 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dkv|garalon"] = { 5, 9, 82, 690 },
			["Trolly|shekzeer"] = { 5, 9, 86, 514 },
			["Fünfgizelp|everlook"] = { 7, 4, 121, 70 },
			["Пивнаяшлёндр|flamegor"] = { 9, 0, 40, 694 },
			["Ithildrin|mirage-raceway"] = { 5, 1, 53, 694 },
			["Mbäppé|auberdine"] = { 6, 0, 123, 699 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 694 },
			["Kakalocko|shekzeer"] = { 1, 2, 7, 694 },
			["Kospi|auberdine"] = { 1, 2, -2, 719 },
			["Kream|shekzeer"] = { 0, 3, -26, 694 },
			["Tchaktchac|auberdine"] = { 1, 2, -3, 720 },
			["Guccidaggers|shekzeer"] = { 0, 2, -11, 694 },
			["Apologies|shekzeer"] = { 1, 0, 1, 694 },
			["Cryoqt|shekzeer"] = { 0, 1, 0, 694 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 71 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Kostez|shekzeer"] = { 21, 21, 100, 737 },
			["Fünfgizelp|everlook"] = { 19, 11, 383, 70 },
			["Дэрмейстер|flamegor"] = { 14, 14, 9, 828 },
			["Seaudurine|shekzeer"] = { 23, 4, 98, 911 },
			["Mwaniel|auberdine"] = { 13, 13, 118, 869 },
			["Wasabî|auberdine"] = { 13, 13, 50, 869 },
			["Савона|flamegor"] = { 12, 14, 15, 939 },
			["Dkv|garalon"] = { 9, 12, 137, 690 },
			["Ithildrin|mirage-raceway"] = { 13, 8, 128, 694 },
			["Тёмаубивай|flamegor"] = { 13, 8, 184, 806 },
			["Domnox|auberdine"] = { 9, 11, -23, 742 },
			["Trolly|shekzeer"] = { 9, 11, 167, 514 },
			["Kospi|auberdine"] = { 10, 8, 62, 719 },
			["Prayzthebozz|everlook"] = { 11, 7, 462, 864 },
			["Tchaktchac|auberdine"] = { 10, 8, 53, 720 },
			["Yezze|garalon"] = { 11, 7, -50, 864 },
			["Mbäppé|auberdine"] = { 14, 3, 303, 699 },
			["Monomax|shekzeer"] = { 9, 8, 13, 1234 },
			["Repuls|mirage-raceway"] = { 10, 7, 61, 843 },
			["Вялыйпаладин|flamegor"] = { 9, 8, 7, 1247 },
			["Кэндифлос|flamegor"] = { 2, 14, -89, 968 },
			["Filmar|shekzeer"] = { 6, 9, 100, 874 },
			["Kadran|shekzeer"] = { 7, 8, 21, 810 },
			["Niallg|shekzeer"] = { 7, 8, 19, 811 },
			["Nossy|hoptallus"] = { 6, 9, -7, 1091 },
			["Sapmere|auberdine"] = { 6, 8, -20, 742 },
			["Makkezi|shekzeer"] = { 2, 10, -73, 892 },
			["Hapless|everlook"] = { 6, 5, -4, 1165 },
			["Ivonsa|garalon"] = { 9, 2, 46, 835 },
			["Lunkkaa|hoptallus"] = { 3, 8, -4, 862 },
			["Shlouh|shekzeer"] = { 9, 2, 79, 1091 },
			["Zonnmonk|hoptallus"] = { 5, 6, 21, 1086 },
			["Ayvara|shekzeer"] = { 7, 3, 14, 975 },
			["Kalreth|shekzeer"] = { 7, 3, 61, 728 },
			["Mythrugun|shekzeer"] = { 7, 3, 14, 914 },
			["Пивнаяшлёндр|flamegor"] = { 9, 1, 34, 694 },
			["Commitment|shekzeer"] = { 6, 3, 64, 994 },
			["Idontflinch|garalon"] = { 6, 3, 88, 874 },
			["Semiazas|shekzeer"] = { 5, 4, 75, 1054 },
			["Weaverok|shekzeer"] = { 3, 6, -39, 969 },
			["Jooko|hoptallus"] = { 2, 6, -36, 874 },
			["Kackwalker|shekzeer"] = { 3, 5, 42, 984 },
			["Capcarapkin|shekzeer"] = { 5, 2, 42, 1162 },
			["Guccidaggers|shekzeer"] = { 2, 5, 17, 694 },
			["Healdbyme|shekzeer"] = { 0, 7, -66, 849 },
			["Reginalds|shekzeer"] = { 4, 3, -1, 916 },
			["Triplecheese|shekzeer"] = { 2, 5, -13, 993 },
			["Мориконе|flamegor"] = { 5, 2, 35, 1172 },
			["Цианидвектор|flamegor"] = { 5, 2, 50, 1161 },
			["Paloun|auberdine"] = { 3, 3, 12, 1017 },
			["Allanaa|mirage-raceway"] = { 0, 5, 0, 777 },
			["Monkasxd|everlook"] = { 1, 4, 2, 1151 },
			["Фазерхх|flamegor"] = { 1, 4, -19, 1151 },
			["Филмарис|flamegor"] = { 3, 2, -7, 874 },
			["Ceendare|auberdine"] = { 0, 4, 0, 1293 },
			["Fofii|shekzeer"] = { 2, 2, -2, 931 },
			["Sangore|auberdine"] = { 0, 4, -11, 1293 },
			["Xály|shekzeer"] = { 0, 4, -40, 773 },
			["Zonya|hoptallus"] = { 1, 3, -21, 1147 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 694 },
			["Grumshado|hoptallus"] = { 1, 2, 1, 837 },
			["Hasunimi|hoptallus"] = { 1, 2, -1, 837 },
			["Jrabbit|shekzeer"] = { 1, 2, 5, 954 },
			["Kakalocko|shekzeer"] = { 1, 2, 7, 694 },
			["Kream|shekzeer"] = { 0, 3, -26, 694 },
			["Skyráw|shekzeer"] = { 1, 2, -24, 962 },
			["Sossos|hoptallus"] = { 1, 2, -3, 862 },
			["Xúén|shekzeer"] = { 0, 3, 0, 903 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 1354 },
			["Brazqr|shekzeer"] = { 2, 0, 17, 1117 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 1354 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 1234 },
			["Ophellia|shekzeer"] = { 2, 0, 31, 1054 },
			["ßlinkd|shekzeer"] = { 2, 0, 17, 1117 },
			["Матиасалегри|flamegor"] = { 2, 0, 17, 1150 },
			["Apologies|shekzeer"] = { 1, 0, 1, 694 },
			["Bozzclqwnx|shekzeer"] = { 1, 0, 12, 845 },
			["Brazqrx|shekzeer"] = { 1, 0, 12, 947 },
			["Cavernicola|garalon"] = { 0, 1, -10, 876 },
			["Cryoqt|shekzeer"] = { 0, 1, 0, 694 },
			["Jäckynkô|hoptallus"] = { 1, 0, 1, 1087 },
			["Luxzys|shekzeer"] = { 1, 0, 2, 857 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 71 },
			["Orestis|norushen"] = { 0, 1, -3, 1141 },
			["Refresherr|hoptallus"] = { 1, 0, 1, 1089 },
			["Орешкикпивку|flamegor"] = { 0, 1, -7, 1115 },
			["Санекэ|flamegor"] = { 0, 1, -7, 1116 },
			["Тюбик|flamegor"] = { 0, 1, -6, 1123 },
		},
	},
}

