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
	built = 1795273234,
	builtText = "2026-11-21 10:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Trolly|shekzeer"] = { 3, 0, 27, 34 },
			["Дэрмейстер|flamegor"] = { 3, 0, 22, 34 },
			["Ceendare|auberdine"] = { 0, 1, 0, 34 },
			["Sangore|auberdine"] = { 0, 1, -2, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fünfgizelp|everlook"] = { 4, 1, 64, 130 },
			["Trolly|shekzeer"] = { 3, 0, 27, 34 },
			["Дэрмейстер|flamegor"] = { 3, 0, 22, 34 },
			["Ceendare|auberdine"] = { 0, 1, 0, 34 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 131 },
			["Sangore|auberdine"] = { 0, 1, -2, 34 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fünfgizelp|everlook"] = { 4, 1, 64, 130 },
			["Trolly|shekzeer"] = { 3, 0, 27, 34 },
			["Дэрмейстер|flamegor"] = { 3, 0, 22, 34 },
			["Ceendare|auberdine"] = { 0, 1, 0, 34 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 131 },
			["Sangore|auberdine"] = { 0, 1, -2, 34 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Trolly|shekzeer"] = { 3, 4, 27, 34 },
			["Fünfgizelp|everlook"] = { 4, 1, 64, 130 },
			["Дэрмейстер|flamegor"] = { 3, 0, 22, 34 },
			["Ceendare|auberdine"] = { 0, 1, 0, 34 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 131 },
			["Sangore|auberdine"] = { 0, 1, -2, 34 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Kostez|shekzeer"] = { 21, 21, 100, 797 },
			["Дэрмейстер|flamegor"] = { 17, 14, 31, 34 },
			["Fünfgizelp|everlook"] = { 19, 11, 383, 130 },
			["Seaudurine|shekzeer"] = { 23, 4, 98, 971 },
			["Mwaniel|auberdine"] = { 13, 13, 118, 930 },
			["Wasabî|auberdine"] = { 13, 13, 50, 929 },
			["Савона|flamegor"] = { 12, 14, 15, 999 },
			["Trolly|shekzeer"] = { 12, 11, 194, 34 },
			["Dkv|garalon"] = { 9, 12, 137, 750 },
			["Ithildrin|mirage-raceway"] = { 13, 8, 128, 754 },
			["Тёмаубивай|flamegor"] = { 13, 8, 184, 866 },
			["Domnox|auberdine"] = { 9, 11, -23, 802 },
			["Kospi|auberdine"] = { 10, 8, 62, 779 },
			["Prayzthebozz|everlook"] = { 11, 7, 462, 924 },
			["Tchaktchac|auberdine"] = { 10, 8, 53, 780 },
			["Yezze|garalon"] = { 11, 7, -50, 924 },
			["Mbäppé|auberdine"] = { 14, 3, 303, 760 },
			["Monomax|shekzeer"] = { 9, 8, 13, 1294 },
			["Repuls|mirage-raceway"] = { 10, 7, 61, 903 },
			["Вялыйпаладин|flamegor"] = { 9, 8, 7, 1307 },
			["Кэндифлос|flamegor"] = { 2, 14, -89, 1028 },
			["Filmar|shekzeer"] = { 6, 9, 100, 934 },
			["Kadran|shekzeer"] = { 7, 8, 21, 871 },
			["Niallg|shekzeer"] = { 7, 8, 19, 872 },
			["Nossy|hoptallus"] = { 6, 9, -7, 1152 },
			["Sapmere|auberdine"] = { 6, 8, -20, 802 },
			["Makkezi|shekzeer"] = { 2, 10, -73, 952 },
			["Hapless|everlook"] = { 6, 5, -4, 1225 },
			["Ivonsa|garalon"] = { 9, 2, 46, 895 },
			["Lunkkaa|hoptallus"] = { 3, 8, -4, 922 },
			["Shlouh|shekzeer"] = { 9, 2, 79, 1151 },
			["Zonnmonk|hoptallus"] = { 5, 6, 21, 1146 },
			["Ayvara|shekzeer"] = { 7, 3, 14, 1035 },
			["Kalreth|shekzeer"] = { 7, 3, 61, 788 },
			["Mythrugun|shekzeer"] = { 7, 3, 14, 974 },
			["Пивнаяшлёндр|flamegor"] = { 9, 1, 34, 754 },
			["Commitment|shekzeer"] = { 6, 3, 64, 1054 },
			["Idontflinch|garalon"] = { 6, 3, 88, 934 },
			["Semiazas|shekzeer"] = { 5, 4, 75, 1114 },
			["Weaverok|shekzeer"] = { 3, 6, -39, 1029 },
			["Jooko|hoptallus"] = { 2, 6, -36, 934 },
			["Kackwalker|shekzeer"] = { 3, 5, 42, 1044 },
			["Capcarapkin|shekzeer"] = { 5, 2, 42, 1222 },
			["Guccidaggers|shekzeer"] = { 2, 5, 17, 754 },
			["Healdbyme|shekzeer"] = { 0, 7, -66, 909 },
			["Reginalds|shekzeer"] = { 4, 3, -1, 976 },
			["Triplecheese|shekzeer"] = { 2, 5, -13, 1053 },
			["Мориконе|flamegor"] = { 5, 2, 35, 1232 },
			["Цианидвектор|flamegor"] = { 5, 2, 50, 1221 },
			["Paloun|auberdine"] = { 3, 3, 12, 1077 },
			["Allanaa|mirage-raceway"] = { 0, 5, 0, 838 },
			["Ceendare|auberdine"] = { 0, 5, 0, 34 },
			["Monkasxd|everlook"] = { 1, 4, 2, 1211 },
			["Sangore|auberdine"] = { 0, 5, -13, 34 },
			["Фазерхх|flamegor"] = { 1, 4, -19, 1211 },
			["Филмарис|flamegor"] = { 3, 2, -7, 934 },
			["Fofii|shekzeer"] = { 2, 2, -2, 992 },
			["Xály|shekzeer"] = { 0, 4, -40, 833 },
			["Zonya|hoptallus"] = { 1, 3, -21, 1207 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 754 },
			["Grumshado|hoptallus"] = { 1, 2, 1, 897 },
			["Hasunimi|hoptallus"] = { 1, 2, -1, 898 },
			["Jrabbit|shekzeer"] = { 1, 2, 5, 1014 },
			["Kakalocko|shekzeer"] = { 1, 2, 7, 754 },
			["Kream|shekzeer"] = { 0, 3, -26, 754 },
			["Skyráw|shekzeer"] = { 1, 2, -24, 1022 },
			["Sossos|hoptallus"] = { 1, 2, -3, 922 },
			["Xúén|shekzeer"] = { 0, 3, 0, 963 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 1414 },
			["Brazqr|shekzeer"] = { 2, 0, 17, 1177 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 1414 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 1294 },
			["Ophellia|shekzeer"] = { 2, 0, 31, 1114 },
			["ßlinkd|shekzeer"] = { 2, 0, 17, 1177 },
			["Матиасалегри|flamegor"] = { 2, 0, 17, 1210 },
			["Apologies|shekzeer"] = { 1, 0, 1, 754 },
			["Bozzclqwnx|shekzeer"] = { 1, 0, 12, 906 },
			["Brazqrx|shekzeer"] = { 1, 0, 12, 1007 },
			["Cavernicola|garalon"] = { 0, 1, -10, 936 },
			["Cryoqt|shekzeer"] = { 0, 1, 0, 754 },
			["Jäckynkô|hoptallus"] = { 1, 0, 1, 1147 },
			["Luxzys|shekzeer"] = { 1, 0, 2, 917 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 131 },
			["Orestis|norushen"] = { 0, 1, -3, 1201 },
			["Refresherr|hoptallus"] = { 1, 0, 1, 1149 },
			["Орешкикпивку|flamegor"] = { 0, 1, -7, 1175 },
			["Санекэ|flamegor"] = { 0, 1, -7, 1176 },
			["Тюбик|flamegor"] = { 0, 1, -6, 1183 },
		},
	},
}

