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
	built = 1795348828,
	builtText = "2026-11-22 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Zhili|hoptallus"] = { 3, 7, -1, 573 },
			["Вялыйкидней|flamegor"] = { 3, 7, -16, 683 },
			["Lúná|ook-ook"] = { 2, 6, 14, 655 },
			["Xály|shekzeer"] = { 5, 3, 2, 592 },
			["Kospi|auberdine"] = { 5, 2, 11, 642 },
			["Tchaktchac|auberdine"] = { 5, 2, 8, 642 },
			["Wasabî|auberdine"] = { 6, 0, 45, 628 },
			["Daddylloyd|garalon"] = { 4, 1, 38, 604 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 573 },
			["Mwaniel|auberdine"] = { 4, 0, 37, 628 },
			["Dóris|ook-ook"] = { 1, 2, 7, 639 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 573 },
			["Cuñadita|garalon"] = { 0, 1, -7, 573 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 639 },
			["Zirkniaq|shekzeer"] = { 0, 1, 0, 573 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 848 },
			["Monklife|garalon"] = { 11, 20, 662, 731 },
			["Вялыйкидней|flamegor"] = { 16, 12, 157, 683 },
			["Yezze|garalon"] = { 14, 11, -47, 753 },
			["Bernadeta|shekzeer"] = { 13, 11, 43, 891 },
			["Idontflinch|garalon"] = { 16, 8, 215, 753 },
			["Marlk|shekzeer"] = { 8, 12, -6, 867 },
			["Trolly|shekzeer"] = { 15, 5, 204, 933 },
			["Дэрмейстер|flamegor"] = { 15, 5, 167, 1112 },
			["Филмарис|flamegor"] = { 13, 5, 12, 753 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 870 },
			["Xály|shekzeer"] = { 8, 6, -26, 592 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 604 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 803 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 844 },
			["Conservé|shekzeer"] = { 8, 4, 45, 763 },
			["Kospi|auberdine"] = { 8, 4, 25, 642 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 642 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 862 },
			["Zabir|everlook"] = { 8, 4, 21, 753 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 753 },
			["Derxibro|shekzeer"] = { 8, 3, 33, 1027 },
			["Lúná|ook-ook"] = { 4, 7, 35, 655 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 893 },
			["Ithildrin|mirage-raceway"] = { 6, 4, 41, 933 },
			["Zhili|hoptallus"] = { 3, 7, -1, 573 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 933 },
			["Fünfgizelp|everlook"] = { 6, 3, 100, 892 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 628 },
			["Savexx|shekzeer"] = { 5, 3, 27, 753 },
			["Wasabî|auberdine"] = { 7, 1, 44, 628 },
			["Xpa|everlook"] = { 5, 3, 26, 806 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 770 },
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 1148 },
			["Dóris|ook-ook"] = { 3, 3, 13, 639 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 953 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 917 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 573 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 1009 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 1150 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 933 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 804 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 573 },
			["Alesant|shekzeer"] = { 2, 2, 26, 892 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 966 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 1162 },
			["Orestis|norushen"] = { 2, 2, 16, 753 },
			["Жмуфир|flamegor"] = { 1, 3, -8, 1057 },
			["Тнэш|flamegor"] = { 0, 4, -44, 933 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 933 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 1220 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 999 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 933 },
			["Эрмантраутх|flamegor"] = { 2, 1, -3, 1060 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 753 },
			["Kadran|shekzeer"] = { 0, 2, -3, 1135 },
			["Niallg|shekzeer"] = { 0, 2, -3, 1136 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 573 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 1015 },
			["Voljiz|shekzeer"] = { 0, 2, -9, 1113 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 759 },
			["Xpu|everlook"] = { 2, 0, 4, 757 },
			["Санжик|flamegor"] = { 0, 2, -8, 1113 },
			["Ceendare|auberdine"] = { 0, 1, 0, 1293 },
			["Cuñadita|garalon"] = { 0, 1, -7, 573 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 1391 },
			["Sangore|auberdine"] = { 0, 1, -2, 1293 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 933 },
			["Straviouse|hoptallus"] = { 0, 1, -11, 1113 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 639 },
			["Бабелнаодин|flamegor"] = { 1, 0, 4, 1082 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 1192 },
			["Павлорион|flamegor"] = { 3, 0, 12, 1197 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 1150 },
		},
	},
}

