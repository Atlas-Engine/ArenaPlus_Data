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
	built = 1795276823,
	builtText = "2026-11-21 11:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jackynko|hoptallus"] = { 1, 2, 21, 20 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jackynko|hoptallus"] = { 1, 2, 21, 20 },
			["Trolly|shekzeer"] = { 3, 0, 27, 93 },
			["Дэрмейстер|flamegor"] = { 3, 0, 22, 93 },
			["Ceendare|auberdine"] = { 0, 1, 0, 93 },
			["Sangore|auberdine"] = { 0, 1, -2, 93 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fünfgizelp|everlook"] = { 4, 1, 64, 190 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 20 },
			["Trolly|shekzeer"] = { 3, 0, 27, 93 },
			["Дэрмейстер|flamegor"] = { 3, 0, 22, 93 },
			["Ceendare|auberdine"] = { 0, 1, 0, 93 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 191 },
			["Sangore|auberdine"] = { 0, 1, -2, 93 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Trolly|shekzeer"] = { 3, 4, 27, 93 },
			["Fünfgizelp|everlook"] = { 4, 1, 64, 190 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 20 },
			["Дэрмейстер|flamegor"] = { 3, 0, 22, 93 },
			["Ceendare|auberdine"] = { 0, 1, 0, 93 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 191 },
			["Sangore|auberdine"] = { 0, 1, -2, 93 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Kostez|shekzeer"] = { 21, 21, 100, 857 },
			["Дэрмейстер|flamegor"] = { 17, 14, 31, 93 },
			["Fünfgizelp|everlook"] = { 19, 11, 383, 190 },
			["Seaudurine|shekzeer"] = { 23, 4, 98, 1031 },
			["Mwaniel|auberdine"] = { 13, 13, 118, 989 },
			["Wasabî|auberdine"] = { 13, 13, 50, 989 },
			["Савона|flamegor"] = { 12, 14, 15, 1059 },
			["Trolly|shekzeer"] = { 12, 11, 194, 93 },
			["Dkv|garalon"] = { 9, 12, 137, 810 },
			["Ithildrin|mirage-raceway"] = { 13, 8, 128, 813 },
			["Тёмаубивай|flamegor"] = { 13, 8, 184, 926 },
			["Domnox|auberdine"] = { 9, 11, -23, 862 },
			["Kospi|auberdine"] = { 10, 8, 62, 839 },
			["Prayzthebozz|everlook"] = { 11, 7, 462, 983 },
			["Tchaktchac|auberdine"] = { 10, 8, 53, 839 },
			["Yezze|garalon"] = { 11, 7, -50, 984 },
			["Mbäppé|auberdine"] = { 14, 3, 303, 819 },
			["Monomax|shekzeer"] = { 9, 8, 13, 1353 },
			["Repuls|mirage-raceway"] = { 10, 7, 61, 962 },
			["Кэндифлос|flamegor"] = { 2, 14, -89, 1088 },
			["Filmar|shekzeer"] = { 6, 9, 100, 993 },
			["Kadran|shekzeer"] = { 7, 8, 21, 930 },
			["Niallg|shekzeer"] = { 7, 8, 19, 931 },
			["Nossy|hoptallus"] = { 6, 9, -7, 1211 },
			["Sapmere|auberdine"] = { 6, 8, -20, 862 },
			["Вялыйпаладин|flamegor"] = { 8, 6, 19, 1367 },
			["Makkezi|shekzeer"] = { 2, 10, -73, 1012 },
			["Hapless|everlook"] = { 6, 5, -4, 1285 },
			["Ivonsa|garalon"] = { 9, 2, 46, 955 },
			["Lunkkaa|hoptallus"] = { 3, 8, -4, 982 },
			["Zonnmonk|hoptallus"] = { 5, 6, 21, 1206 },
			["Ayvara|shekzeer"] = { 7, 3, 14, 1095 },
			["Kalreth|shekzeer"] = { 7, 3, 61, 848 },
			["Mythrugun|shekzeer"] = { 7, 3, 14, 1033 },
			["Пивнаяшлёндр|flamegor"] = { 9, 1, 34, 813 },
			["Commitment|shekzeer"] = { 6, 3, 64, 1114 },
			["Idontflinch|garalon"] = { 6, 3, 88, 993 },
			["Semiazas|shekzeer"] = { 5, 4, 75, 1173 },
			["Shlouh|shekzeer"] = { 7, 2, 55, 1211 },
			["Weaverok|shekzeer"] = { 3, 6, -39, 1089 },
			["Jooko|hoptallus"] = { 2, 6, -36, 993 },
			["Kackwalker|shekzeer"] = { 3, 5, 42, 1104 },
			["Capcarapkin|shekzeer"] = { 5, 2, 42, 1282 },
			["Guccidaggers|shekzeer"] = { 2, 5, 17, 813 },
			["Healdbyme|shekzeer"] = { 0, 7, -66, 969 },
			["Reginalds|shekzeer"] = { 4, 3, -1, 1036 },
			["Triplecheese|shekzeer"] = { 2, 5, -13, 1112 },
			["Мориконе|flamegor"] = { 5, 2, 35, 1292 },
			["Цианидвектор|flamegor"] = { 5, 2, 50, 1281 },
			["Paloun|auberdine"] = { 3, 3, 12, 1137 },
			["Allanaa|mirage-raceway"] = { 0, 5, 0, 897 },
			["Ceendare|auberdine"] = { 0, 5, 0, 93 },
			["Monkasxd|everlook"] = { 1, 4, 2, 1271 },
			["Sangore|auberdine"] = { 0, 5, -13, 93 },
			["Фазерхх|flamegor"] = { 1, 4, -19, 1271 },
			["Филмарис|flamegor"] = { 3, 2, -7, 993 },
			["Fofii|shekzeer"] = { 2, 2, -2, 1051 },
			["Xály|shekzeer"] = { 0, 4, -40, 893 },
			["Zonya|hoptallus"] = { 1, 3, -21, 1267 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 813 },
			["Grumshado|hoptallus"] = { 1, 2, 1, 957 },
			["Hasunimi|hoptallus"] = { 1, 2, -1, 957 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 20 },
			["Jrabbit|shekzeer"] = { 1, 2, 5, 1074 },
			["Kakalocko|shekzeer"] = { 1, 2, 7, 813 },
			["Kream|shekzeer"] = { 0, 3, -26, 813 },
			["Skyráw|shekzeer"] = { 1, 2, -24, 1082 },
			["Sossos|hoptallus"] = { 1, 2, -3, 982 },
			["Xúén|shekzeer"] = { 0, 3, 0, 1023 },
			["Brazqr|shekzeer"] = { 2, 0, 17, 1237 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 1353 },
			["Ophellia|shekzeer"] = { 2, 0, 31, 1173 },
			["ßlinkd|shekzeer"] = { 2, 0, 17, 1237 },
			["Матиасалегри|flamegor"] = { 2, 0, 17, 1270 },
			["Apologies|shekzeer"] = { 1, 0, 1, 813 },
			["Bozzclqwnx|shekzeer"] = { 1, 0, 12, 965 },
			["Brazqrx|shekzeer"] = { 1, 0, 12, 1067 },
			["Cavernicola|garalon"] = { 0, 1, -10, 996 },
			["Cryoqt|shekzeer"] = { 0, 1, 0, 813 },
			["Jäckynkô|hoptallus"] = { 1, 0, 1, 1206 },
			["Luxzys|shekzeer"] = { 1, 0, 2, 977 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 191 },
			["Orestis|norushen"] = { 0, 1, -3, 1261 },
			["Refresherr|hoptallus"] = { 1, 0, 1, 1209 },
			["Орешкикпивку|flamegor"] = { 0, 1, -7, 1235 },
			["Санекэ|flamegor"] = { 0, 1, -7, 1235 },
			["Тюбик|flamegor"] = { 0, 1, -6, 1243 },
		},
	},
}

