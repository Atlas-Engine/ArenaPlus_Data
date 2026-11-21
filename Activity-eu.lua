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
	built = 1795262429,
	builtText = "2026-11-21 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kospi|auberdine"] = { 10, 8, 62, 599 },
			["Tchaktchac|auberdine"] = { 9, 7, 52, 600 },
			["Mbäppé|auberdine"] = { 12, 3, 257, 579 },
			["Dkv|garalon"] = { 5, 9, 82, 570 },
			["Trolly|shekzeer"] = { 5, 9, 86, 393 },
			["Kadran|shekzeer"] = { 5, 6, 17, 690 },
			["Kostez|shekzeer"] = { 7, 4, 56, 617 },
			["Niallg|shekzeer"] = { 5, 6, 16, 691 },
			["Дэрмейстер|flamegor"] = { 7, 4, 43, 708 },
			["Kalreth|shekzeer"] = { 7, 3, 61, 608 },
			["Пивнаяшлёндр|flamegor"] = { 9, 0, 40, 573 },
			["Fünfgizelp|everlook"] = { 3, 3, 57, 573 },
			["Ithildrin|mirage-raceway"] = { 5, 1, 53, 573 },
			["Тёмаубивай|flamegor"] = { 5, 1, 61, 686 },
			["Allanaa|mirage-raceway"] = { 0, 5, 0, 657 },
			["Xály|shekzeer"] = { 0, 4, -40, 653 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 573 },
			["Domnox|auberdine"] = { 1, 2, -13, 622 },
			["Grumshado|hoptallus"] = { 1, 2, 1, 717 },
			["Hasunimi|hoptallus"] = { 1, 2, -1, 717 },
			["Kakalocko|shekzeer"] = { 1, 2, 7, 573 },
			["Kream|shekzeer"] = { 0, 3, -26, 573 },
			["Sapmere|auberdine"] = { 1, 2, -13, 622 },
			["Guccidaggers|shekzeer"] = { 0, 2, -11, 573 },
			["Apologies|shekzeer"] = { 1, 0, 1, 573 },
			["Cryoqt|shekzeer"] = { 0, 1, 0, 573 },
			["Ivonsa|garalon"] = { 1, 0, 10, 715 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Kostez|shekzeer"] = { 21, 21, 100, 617 },
			["Дэрмейстер|flamegor"] = { 14, 14, 9, 708 },
			["Seaudurine|shekzeer"] = { 23, 4, 98, 791 },
			["Mwaniel|auberdine"] = { 13, 13, 118, 749 },
			["Wasabî|auberdine"] = { 13, 13, 50, 749 },
			["Савона|flamegor"] = { 12, 14, 15, 819 },
			["Fünfgizelp|everlook"] = { 15, 10, 319, 573 },
			["Dkv|garalon"] = { 9, 12, 137, 570 },
			["Ithildrin|mirage-raceway"] = { 13, 8, 128, 573 },
			["Тёмаубивай|flamegor"] = { 13, 8, 184, 686 },
			["Domnox|auberdine"] = { 9, 11, -23, 622 },
			["Trolly|shekzeer"] = { 9, 11, 167, 393 },
			["Kospi|auberdine"] = { 10, 8, 62, 599 },
			["Prayzthebozz|everlook"] = { 11, 7, 462, 744 },
			["Tchaktchac|auberdine"] = { 10, 8, 53, 600 },
			["Yezze|garalon"] = { 11, 7, -50, 744 },
			["Mbäppé|auberdine"] = { 14, 3, 303, 579 },
			["Monomax|shekzeer"] = { 9, 8, 13, 1113 },
			["Repuls|mirage-raceway"] = { 10, 7, 61, 723 },
			["Вялыйпаладин|flamegor"] = { 9, 8, 7, 1127 },
			["Кэндифлос|flamegor"] = { 2, 14, -89, 848 },
			["Filmar|shekzeer"] = { 6, 9, 100, 753 },
			["Kadran|shekzeer"] = { 7, 8, 21, 690 },
			["Niallg|shekzeer"] = { 7, 8, 19, 691 },
			["Nossy|hoptallus"] = { 6, 9, -7, 971 },
			["Sapmere|auberdine"] = { 6, 8, -20, 622 },
			["Makkezi|shekzeer"] = { 2, 10, -73, 772 },
			["Hapless|everlook"] = { 6, 5, -4, 1045 },
			["Ivonsa|garalon"] = { 9, 2, 46, 715 },
			["Lunkkaa|hoptallus"] = { 3, 8, -4, 742 },
			["Shlouh|shekzeer"] = { 9, 2, 79, 971 },
			["Zonnmonk|hoptallus"] = { 5, 6, 21, 966 },
			["Ayvara|shekzeer"] = { 7, 3, 14, 855 },
			["Kalreth|shekzeer"] = { 7, 3, 61, 608 },
			["Mythrugun|shekzeer"] = { 7, 3, 14, 794 },
			["Пивнаяшлёндр|flamegor"] = { 9, 1, 34, 573 },
			["Commitment|shekzeer"] = { 6, 3, 64, 874 },
			["Idontflinch|garalon"] = { 6, 3, 88, 753 },
			["Semiazas|shekzeer"] = { 5, 4, 75, 933 },
			["Weaverok|shekzeer"] = { 3, 6, -39, 849 },
			["Jooko|hoptallus"] = { 2, 6, -36, 753 },
			["Kackwalker|shekzeer"] = { 3, 5, 42, 864 },
			["Capcarapkin|shekzeer"] = { 5, 2, 42, 1042 },
			["Guccidaggers|shekzeer"] = { 2, 5, 17, 573 },
			["Healdbyme|shekzeer"] = { 0, 7, -66, 729 },
			["Reginalds|shekzeer"] = { 4, 3, -1, 796 },
			["Triplecheese|shekzeer"] = { 2, 5, -13, 873 },
			["Мориконе|flamegor"] = { 5, 2, 35, 1052 },
			["Цианидвектор|flamegor"] = { 5, 2, 50, 1041 },
			["Paloun|auberdine"] = { 3, 3, 12, 897 },
			["Allanaa|mirage-raceway"] = { 0, 5, 0, 657 },
			["Monkasxd|everlook"] = { 1, 4, 2, 1031 },
			["Фазерхх|flamegor"] = { 1, 4, -19, 1031 },
			["Филмарис|flamegor"] = { 3, 2, -7, 753 },
			["Ceendare|auberdine"] = { 0, 4, 0, 1173 },
			["Fofii|shekzeer"] = { 2, 2, -2, 811 },
			["Sangore|auberdine"] = { 0, 4, -11, 1173 },
			["Xály|shekzeer"] = { 0, 4, -40, 653 },
			["Zonya|hoptallus"] = { 1, 3, -21, 1027 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 573 },
			["Grumshado|hoptallus"] = { 1, 2, 1, 717 },
			["Hasunimi|hoptallus"] = { 1, 2, -1, 717 },
			["Jrabbit|shekzeer"] = { 1, 2, 5, 834 },
			["Kakalocko|shekzeer"] = { 1, 2, 7, 573 },
			["Kream|shekzeer"] = { 0, 3, -26, 573 },
			["Skyráw|shekzeer"] = { 1, 2, -24, 842 },
			["Sossos|hoptallus"] = { 1, 2, -3, 742 },
			["Xúén|shekzeer"] = { 0, 3, 0, 783 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 1234 },
			["Brazqr|shekzeer"] = { 2, 0, 17, 997 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 1234 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 1113 },
			["Ophellia|shekzeer"] = { 2, 0, 31, 933 },
			["ßlinkd|shekzeer"] = { 2, 0, 17, 997 },
			["Матиасалегри|flamegor"] = { 2, 0, 17, 1030 },
			["Apologies|shekzeer"] = { 1, 0, 1, 573 },
			["Bozzclqwnx|shekzeer"] = { 1, 0, 12, 725 },
			["Brazqrx|shekzeer"] = { 1, 0, 12, 827 },
			["Cavernicola|garalon"] = { 0, 1, -10, 756 },
			["Cryoqt|shekzeer"] = { 0, 1, 0, 573 },
			["Jäckynkô|hoptallus"] = { 1, 0, 1, 967 },
			["Luxzys|shekzeer"] = { 1, 0, 2, 737 },
			["Orestis|norushen"] = { 0, 1, -3, 1021 },
			["Refresherr|hoptallus"] = { 1, 0, 1, 969 },
			["Орешкикпивку|flamegor"] = { 0, 1, -7, 995 },
			["Санекэ|flamegor"] = { 0, 1, -7, 995 },
			["Тюбик|flamegor"] = { 0, 1, -6, 1003 },
		},
	},
}

