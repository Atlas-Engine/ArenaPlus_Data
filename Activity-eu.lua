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
	built = 1795345231,
	builtText = "2026-11-22 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Monklife|garalon"] = { 11, 20, 662, 671 },
			["Yezze|garalon"] = { 12, 8, 0, 694 },
			["Idontflinch|garalon"] = { 8, 5, 84, 694 },
			["Conservé|shekzeer"] = { 8, 4, 45, 703 },
			["Xály|shekzeer"] = { 7, 5, -13, 532 },
			["Zabir|everlook"] = { 8, 4, 21, 694 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 694 },
			["Lúná|ook-ook"] = { 4, 7, 35, 595 },
			["Zhili|hoptallus"] = { 3, 7, -1, 514 },
			["Вялыйкидней|flamegor"] = { 3, 7, -16, 623 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 568 },
			["Savexx|shekzeer"] = { 5, 3, 27, 694 },
			["Wasabî|auberdine"] = { 7, 1, 44, 568 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 710 },
			["Kospi|auberdine"] = { 5, 2, 11, 582 },
			["Tchaktchac|auberdine"] = { 5, 2, 8, 582 },
			["Dóris|ook-ook"] = { 3, 3, 13, 579 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 514 },
			["Daddylloyd|garalon"] = { 4, 1, 38, 544 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 514 },
			["Orestis|norushen"] = { 2, 2, 16, 694 },
			["Филмарис|flamegor"] = { 3, 1, 10, 694 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 694 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 514 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 699 },
			["Xpu|everlook"] = { 2, 0, 4, 697 },
			["Cuñadita|garalon"] = { 0, 1, -7, 514 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 579 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 788 },
			["Monklife|garalon"] = { 11, 20, 662, 671 },
			["Вялыйкидней|flamegor"] = { 16, 12, 157, 623 },
			["Yezze|garalon"] = { 14, 11, -47, 694 },
			["Bernadeta|shekzeer"] = { 13, 11, 43, 831 },
			["Idontflinch|garalon"] = { 16, 8, 215, 694 },
			["Marlk|shekzeer"] = { 8, 12, -6, 807 },
			["Trolly|shekzeer"] = { 15, 5, 204, 874 },
			["Дэрмейстер|flamegor"] = { 15, 5, 167, 1052 },
			["Филмарис|flamegor"] = { 13, 5, 12, 694 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 810 },
			["Xály|shekzeer"] = { 8, 6, -26, 532 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 544 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 743 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 784 },
			["Conservé|shekzeer"] = { 8, 4, 45, 703 },
			["Kospi|auberdine"] = { 8, 4, 25, 582 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 582 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 802 },
			["Zabir|everlook"] = { 8, 4, 21, 694 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 694 },
			["Derxibro|shekzeer"] = { 8, 3, 33, 967 },
			["Lúná|ook-ook"] = { 4, 7, 35, 595 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 833 },
			["Ithildrin|mirage-raceway"] = { 6, 4, 41, 874 },
			["Zhili|hoptallus"] = { 3, 7, -1, 514 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 874 },
			["Fünfgizelp|everlook"] = { 6, 3, 100, 832 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 568 },
			["Savexx|shekzeer"] = { 5, 3, 27, 694 },
			["Wasabî|auberdine"] = { 7, 1, 44, 568 },
			["Xpa|everlook"] = { 5, 3, 26, 746 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 710 },
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 1088 },
			["Dóris|ook-ook"] = { 3, 3, 13, 579 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 893 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 857 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 514 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 949 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 1090 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 874 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 744 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 514 },
			["Alesant|shekzeer"] = { 2, 2, 26, 832 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 906 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 1103 },
			["Orestis|norushen"] = { 2, 2, 16, 694 },
			["Жмуфир|flamegor"] = { 1, 3, -8, 997 },
			["Тнэш|flamegor"] = { 0, 4, -44, 874 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 874 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 1160 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 939 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 874 },
			["Эрмантраутх|flamegor"] = { 2, 1, -3, 1000 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 694 },
			["Kadran|shekzeer"] = { 0, 2, -3, 1075 },
			["Niallg|shekzeer"] = { 0, 2, -3, 1076 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 514 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 955 },
			["Voljiz|shekzeer"] = { 0, 2, -9, 1054 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 699 },
			["Xpu|everlook"] = { 2, 0, 4, 697 },
			["Санжик|flamegor"] = { 0, 2, -8, 1054 },
			["Ceendare|auberdine"] = { 0, 1, 0, 1234 },
			["Cuñadita|garalon"] = { 0, 1, -7, 514 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 1331 },
			["Sangore|auberdine"] = { 0, 1, -2, 1234 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 874 },
			["Straviouse|hoptallus"] = { 0, 1, -11, 1054 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 579 },
			["Бабелнаодин|flamegor"] = { 1, 0, 4, 1022 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 1132 },
			["Павлорион|flamegor"] = { 3, 0, 12, 1137 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 1090 },
		},
	},
}

