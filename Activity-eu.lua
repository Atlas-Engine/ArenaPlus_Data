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
	built = 1795280425,
	builtText = "2026-11-21 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 8 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 10 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 22 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 52 },
			["Павлорион|flamegor"] = { 3, 0, 12, 57 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 10 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 8 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 10 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 22 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 80 },
			["Trolly|shekzeer"] = { 3, 0, 27, 153 },
			["Дэрмейстер|flamegor"] = { 3, 0, 22, 153 },
			["Ceendare|auberdine"] = { 0, 1, 0, 153 },
			["Sangore|auberdine"] = { 0, 1, -2, 153 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 52 },
			["Павлорион|flamegor"] = { 3, 0, 12, 57 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 10 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 8 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 10 },
			["Fünfgizelp|everlook"] = { 4, 1, 64, 250 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 22 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 80 },
			["Trolly|shekzeer"] = { 3, 0, 27, 153 },
			["Дэрмейстер|flamegor"] = { 3, 0, 22, 153 },
			["Ceendare|auberdine"] = { 0, 1, 0, 153 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 251 },
			["Sangore|auberdine"] = { 0, 1, -2, 153 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 52 },
			["Павлорион|flamegor"] = { 3, 0, 12, 57 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 10 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Trolly|shekzeer"] = { 3, 4, 27, 153 },
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 8 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 10 },
			["Fünfgizelp|everlook"] = { 4, 1, 64, 250 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 22 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 80 },
			["Дэрмейстер|flamegor"] = { 3, 0, 22, 153 },
			["Ceendare|auberdine"] = { 0, 1, 0, 153 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 251 },
			["Sangore|auberdine"] = { 0, 1, -2, 153 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 52 },
			["Павлорион|flamegor"] = { 3, 0, 12, 57 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 10 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Kostez|shekzeer"] = { 21, 21, 100, 917 },
			["Дэрмейстер|flamegor"] = { 17, 14, 31, 153 },
			["Fünfgizelp|everlook"] = { 19, 11, 383, 250 },
			["Seaudurine|shekzeer"] = { 23, 4, 98, 1091 },
			["Mwaniel|auberdine"] = { 13, 13, 118, 1049 },
			["Wasabî|auberdine"] = { 13, 13, 50, 1049 },
			["Савона|flamegor"] = { 12, 14, 15, 1119 },
			["Trolly|shekzeer"] = { 12, 11, 194, 153 },
			["Dkv|garalon"] = { 9, 12, 137, 870 },
			["Ithildrin|mirage-raceway"] = { 13, 8, 128, 873 },
			["Тёмаубивай|flamegor"] = { 13, 8, 184, 986 },
			["Domnox|auberdine"] = { 7, 11, -29, 922 },
			["Kospi|auberdine"] = { 10, 8, 62, 899 },
			["Prayzthebozz|everlook"] = { 11, 7, 462, 1044 },
			["Tchaktchac|auberdine"] = { 10, 8, 53, 899 },
			["Yezze|garalon"] = { 11, 7, -50, 1044 },
			["Mbäppé|auberdine"] = { 14, 3, 303, 879 },
			["Monomax|shekzeer"] = { 9, 8, 13, 1413 },
			["Repuls|mirage-raceway"] = { 10, 7, 61, 1022 },
			["Кэндифлос|flamegor"] = { 2, 14, -89, 1148 },
			["Filmar|shekzeer"] = { 6, 9, 100, 1053 },
			["Kadran|shekzeer"] = { 7, 8, 21, 990 },
			["Niallg|shekzeer"] = { 7, 8, 19, 991 },
			["Nossy|hoptallus"] = { 6, 9, -7, 1271 },
			["Вялыйпаладин|flamegor"] = { 8, 6, 19, 1427 },
			["Capcarapkin|shekzeer"] = { 6, 7, -13, 8 },
			["Цианидвектор|flamegor"] = { 6, 7, 0, 10 },
			["Makkezi|shekzeer"] = { 2, 10, -73, 1072 },
			["Sapmere|auberdine"] = { 4, 8, -26, 922 },
			["Ivonsa|garalon"] = { 9, 2, 46, 1015 },
			["Lunkkaa|hoptallus"] = { 3, 8, -4, 1042 },
			["Zonnmonk|hoptallus"] = { 5, 6, 21, 1266 },
			["Ayvara|shekzeer"] = { 7, 3, 14, 1155 },
			["Kalreth|shekzeer"] = { 7, 3, 61, 908 },
			["Mythrugun|shekzeer"] = { 7, 3, 14, 1094 },
			["Пивнаяшлёндр|flamegor"] = { 9, 1, 34, 873 },
			["Commitment|shekzeer"] = { 6, 3, 64, 1174 },
			["Idontflinch|garalon"] = { 6, 3, 88, 1053 },
			["Semiazas|shekzeer"] = { 5, 4, 75, 1233 },
			["Shlouh|shekzeer"] = { 7, 2, 55, 1271 },
			["Weaverok|shekzeer"] = { 3, 6, -39, 1149 },
			["Jooko|hoptallus"] = { 2, 6, -36, 1053 },
			["Kackwalker|shekzeer"] = { 3, 5, 42, 1164 },
			["Guccidaggers|shekzeer"] = { 2, 5, 17, 873 },
			["Healdbyme|shekzeer"] = { 0, 7, -66, 1029 },
			["Reginalds|shekzeer"] = { 4, 3, -1, 1096 },
			["Triplecheese|shekzeer"] = { 2, 5, -13, 1172 },
			["Мориконе|flamegor"] = { 5, 2, 35, 1352 },
			["Hapless|everlook"] = { 4, 2, 24, 1345 },
			["Paloun|auberdine"] = { 3, 3, 12, 1197 },
			["Allanaa|mirage-raceway"] = { 0, 5, 0, 957 },
			["Monkasxd|everlook"] = { 1, 4, 2, 1331 },
			["Фазерхх|flamegor"] = { 1, 4, -19, 1331 },
			["Филмарис|flamegor"] = { 3, 2, -7, 1053 },
			["Fofii|shekzeer"] = { 2, 2, -2, 1111 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 22 },
			["Xály|shekzeer"] = { 0, 4, -40, 953 },
			["Zonya|hoptallus"] = { 1, 3, -21, 1327 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 873 },
			["Grumshado|hoptallus"] = { 1, 2, 1, 1017 },
			["Hasunimi|hoptallus"] = { 1, 2, -1, 1017 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 80 },
			["Jrabbit|shekzeer"] = { 1, 2, 5, 1134 },
			["Kakalocko|shekzeer"] = { 1, 2, 7, 873 },
			["Kream|shekzeer"] = { 0, 3, -26, 873 },
			["Skyráw|shekzeer"] = { 1, 2, -24, 1142 },
			["Sossos|hoptallus"] = { 1, 2, -3, 1042 },
			["Xúén|shekzeer"] = { 0, 3, 0, 1083 },
			["Brazqr|shekzeer"] = { 2, 0, 17, 1297 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 1413 },
			["Ophellia|shekzeer"] = { 2, 0, 31, 1233 },
			["ßlinkd|shekzeer"] = { 2, 0, 17, 1297 },
			["Матиасалегри|flamegor"] = { 2, 0, 17, 1330 },
			["Apologies|shekzeer"] = { 1, 0, 1, 873 },
			["Bozzclqwnx|shekzeer"] = { 1, 0, 12, 1025 },
			["Brazqrx|shekzeer"] = { 1, 0, 12, 1127 },
			["Cavernicola|garalon"] = { 0, 1, -10, 1056 },
			["Ceendare|auberdine"] = { 0, 1, 0, 153 },
			["Cryoqt|shekzeer"] = { 0, 1, 0, 873 },
			["Jäckynkô|hoptallus"] = { 1, 0, 1, 1267 },
			["Luxzys|shekzeer"] = { 1, 0, 2, 1037 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 251 },
			["Orestis|norushen"] = { 0, 1, -3, 1321 },
			["Refresherr|hoptallus"] = { 1, 0, 1, 1269 },
			["Sangore|auberdine"] = { 0, 1, -2, 153 },
			["Орешкикпивку|flamegor"] = { 0, 1, -7, 1295 },
			["Санекэ|flamegor"] = { 0, 1, -7, 1295 },
			["Тюбик|flamegor"] = { 0, 1, -6, 1303 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 52 },
			["Павлорион|flamegor"] = { 3, 0, 12, 57 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 10 },
		},
	},
}

