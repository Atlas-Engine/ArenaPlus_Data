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
	built = 1795266029,
	builtText = "2026-11-21 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Fünfgizelp|everlook"] = { 4, 1, 64, 10 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 11 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fünfgizelp|everlook"] = { 4, 1, 64, 10 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 11 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fünfgizelp|everlook"] = { 4, 1, 64, 10 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 11 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kospi|auberdine"] = { 10, 8, 62, 659 },
			["Tchaktchac|auberdine"] = { 9, 7, 52, 660 },
			["Mbäppé|auberdine"] = { 12, 3, 257, 639 },
			["Dkv|garalon"] = { 5, 9, 82, 630 },
			["Trolly|shekzeer"] = { 5, 9, 86, 453 },
			["Fünfgizelp|everlook"] = { 7, 4, 121, 10 },
			["Kostez|shekzeer"] = { 7, 4, 56, 677 },
			["Kalreth|shekzeer"] = { 7, 3, 61, 668 },
			["Пивнаяшлёндр|flamegor"] = { 9, 0, 40, 633 },
			["Ithildrin|mirage-raceway"] = { 5, 1, 53, 633 },
			["Allanaa|mirage-raceway"] = { 0, 5, 0, 717 },
			["Xály|shekzeer"] = { 0, 4, -40, 713 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 633 },
			["Domnox|auberdine"] = { 1, 2, -13, 682 },
			["Kakalocko|shekzeer"] = { 1, 2, 7, 633 },
			["Kream|shekzeer"] = { 0, 3, -26, 633 },
			["Sapmere|auberdine"] = { 1, 2, -13, 682 },
			["Guccidaggers|shekzeer"] = { 0, 2, -11, 633 },
			["Apologies|shekzeer"] = { 1, 0, 1, 633 },
			["Cryoqt|shekzeer"] = { 0, 1, 0, 633 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 11 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Kostez|shekzeer"] = { 21, 21, 100, 677 },
			["Fünfgizelp|everlook"] = { 19, 11, 383, 10 },
			["Дэрмейстер|flamegor"] = { 14, 14, 9, 768 },
			["Seaudurine|shekzeer"] = { 23, 4, 98, 851 },
			["Mwaniel|auberdine"] = { 13, 13, 118, 809 },
			["Wasabî|auberdine"] = { 13, 13, 50, 809 },
			["Савона|flamegor"] = { 12, 14, 15, 879 },
			["Dkv|garalon"] = { 9, 12, 137, 630 },
			["Ithildrin|mirage-raceway"] = { 13, 8, 128, 633 },
			["Тёмаубивай|flamegor"] = { 13, 8, 184, 746 },
			["Domnox|auberdine"] = { 9, 11, -23, 682 },
			["Trolly|shekzeer"] = { 9, 11, 167, 453 },
			["Kospi|auberdine"] = { 10, 8, 62, 659 },
			["Prayzthebozz|everlook"] = { 11, 7, 462, 804 },
			["Tchaktchac|auberdine"] = { 10, 8, 53, 660 },
			["Yezze|garalon"] = { 11, 7, -50, 804 },
			["Mbäppé|auberdine"] = { 14, 3, 303, 639 },
			["Monomax|shekzeer"] = { 9, 8, 13, 1173 },
			["Repuls|mirage-raceway"] = { 10, 7, 61, 783 },
			["Вялыйпаладин|flamegor"] = { 9, 8, 7, 1187 },
			["Кэндифлос|flamegor"] = { 2, 14, -89, 908 },
			["Filmar|shekzeer"] = { 6, 9, 100, 813 },
			["Kadran|shekzeer"] = { 7, 8, 21, 750 },
			["Niallg|shekzeer"] = { 7, 8, 19, 751 },
			["Nossy|hoptallus"] = { 6, 9, -7, 1031 },
			["Sapmere|auberdine"] = { 6, 8, -20, 682 },
			["Makkezi|shekzeer"] = { 2, 10, -73, 832 },
			["Hapless|everlook"] = { 6, 5, -4, 1105 },
			["Ivonsa|garalon"] = { 9, 2, 46, 775 },
			["Lunkkaa|hoptallus"] = { 3, 8, -4, 802 },
			["Shlouh|shekzeer"] = { 9, 2, 79, 1031 },
			["Zonnmonk|hoptallus"] = { 5, 6, 21, 1026 },
			["Ayvara|shekzeer"] = { 7, 3, 14, 915 },
			["Kalreth|shekzeer"] = { 7, 3, 61, 668 },
			["Mythrugun|shekzeer"] = { 7, 3, 14, 854 },
			["Пивнаяшлёндр|flamegor"] = { 9, 1, 34, 633 },
			["Commitment|shekzeer"] = { 6, 3, 64, 934 },
			["Idontflinch|garalon"] = { 6, 3, 88, 813 },
			["Semiazas|shekzeer"] = { 5, 4, 75, 993 },
			["Weaverok|shekzeer"] = { 3, 6, -39, 909 },
			["Jooko|hoptallus"] = { 2, 6, -36, 813 },
			["Kackwalker|shekzeer"] = { 3, 5, 42, 924 },
			["Capcarapkin|shekzeer"] = { 5, 2, 42, 1102 },
			["Guccidaggers|shekzeer"] = { 2, 5, 17, 633 },
			["Healdbyme|shekzeer"] = { 0, 7, -66, 789 },
			["Reginalds|shekzeer"] = { 4, 3, -1, 856 },
			["Triplecheese|shekzeer"] = { 2, 5, -13, 933 },
			["Мориконе|flamegor"] = { 5, 2, 35, 1112 },
			["Цианидвектор|flamegor"] = { 5, 2, 50, 1101 },
			["Paloun|auberdine"] = { 3, 3, 12, 957 },
			["Allanaa|mirage-raceway"] = { 0, 5, 0, 717 },
			["Monkasxd|everlook"] = { 1, 4, 2, 1091 },
			["Фазерхх|flamegor"] = { 1, 4, -19, 1091 },
			["Филмарис|flamegor"] = { 3, 2, -7, 813 },
			["Ceendare|auberdine"] = { 0, 4, 0, 1233 },
			["Fofii|shekzeer"] = { 2, 2, -2, 871 },
			["Sangore|auberdine"] = { 0, 4, -11, 1233 },
			["Xály|shekzeer"] = { 0, 4, -40, 713 },
			["Zonya|hoptallus"] = { 1, 3, -21, 1087 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 633 },
			["Grumshado|hoptallus"] = { 1, 2, 1, 777 },
			["Hasunimi|hoptallus"] = { 1, 2, -1, 777 },
			["Jrabbit|shekzeer"] = { 1, 2, 5, 894 },
			["Kakalocko|shekzeer"] = { 1, 2, 7, 633 },
			["Kream|shekzeer"] = { 0, 3, -26, 633 },
			["Skyráw|shekzeer"] = { 1, 2, -24, 902 },
			["Sossos|hoptallus"] = { 1, 2, -3, 802 },
			["Xúén|shekzeer"] = { 0, 3, 0, 843 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 1294 },
			["Brazqr|shekzeer"] = { 2, 0, 17, 1057 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 1294 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 1173 },
			["Ophellia|shekzeer"] = { 2, 0, 31, 993 },
			["ßlinkd|shekzeer"] = { 2, 0, 17, 1057 },
			["Матиасалегри|flamegor"] = { 2, 0, 17, 1090 },
			["Apologies|shekzeer"] = { 1, 0, 1, 633 },
			["Bozzclqwnx|shekzeer"] = { 1, 0, 12, 785 },
			["Brazqrx|shekzeer"] = { 1, 0, 12, 887 },
			["Cavernicola|garalon"] = { 0, 1, -10, 816 },
			["Cryoqt|shekzeer"] = { 0, 1, 0, 633 },
			["Jäckynkô|hoptallus"] = { 1, 0, 1, 1027 },
			["Luxzys|shekzeer"] = { 1, 0, 2, 797 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 11 },
			["Orestis|norushen"] = { 0, 1, -3, 1081 },
			["Refresherr|hoptallus"] = { 1, 0, 1, 1029 },
			["Орешкикпивку|flamegor"] = { 0, 1, -7, 1055 },
			["Санекэ|flamegor"] = { 0, 1, -7, 1055 },
			["Тюбик|flamegor"] = { 0, 1, -6, 1063 },
		},
	},
}

