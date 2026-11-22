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
	built = 1795341637,
	builtText = "2026-11-22 05:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Monklife|garalon"] = { 11, 20, 662, 611 },
			["Yezze|garalon"] = { 12, 8, 0, 634 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 484 },
			["Idontflinch|garalon"] = { 8, 5, 84, 634 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 683 },
			["Conservé|shekzeer"] = { 8, 4, 45, 643 },
			["Kospi|auberdine"] = { 8, 4, 25, 522 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 522 },
			["Xály|shekzeer"] = { 7, 5, -13, 472 },
			["Zabir|everlook"] = { 8, 4, 21, 634 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 634 },
			["Lúná|ook-ook"] = { 4, 7, 35, 535 },
			["Zhili|hoptallus"] = { 3, 7, -1, 454 },
			["Вялыйкидней|flamegor"] = { 3, 7, -16, 564 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 509 },
			["Savexx|shekzeer"] = { 5, 3, 27, 634 },
			["Wasabî|auberdine"] = { 7, 1, 44, 508 },
			["Xpa|everlook"] = { 5, 3, 26, 686 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 650 },
			["Dóris|ook-ook"] = { 3, 3, 13, 519 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 454 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 684 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 454 },
			["Orestis|norushen"] = { 2, 2, 16, 634 },
			["Филмарис|flamegor"] = { 3, 1, 10, 634 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 634 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 454 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 639 },
			["Xpu|everlook"] = { 2, 0, 4, 637 },
			["Cuñadita|garalon"] = { 0, 1, -7, 454 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 519 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 728 },
			["Monklife|garalon"] = { 11, 20, 662, 611 },
			["Вялыйкидней|flamegor"] = { 16, 12, 157, 564 },
			["Yezze|garalon"] = { 14, 11, -47, 634 },
			["Bernadeta|shekzeer"] = { 13, 11, 43, 772 },
			["Idontflinch|garalon"] = { 16, 8, 215, 634 },
			["Marlk|shekzeer"] = { 8, 12, -6, 747 },
			["Trolly|shekzeer"] = { 15, 5, 204, 814 },
			["Дэрмейстер|flamegor"] = { 15, 5, 167, 992 },
			["Филмарис|flamegor"] = { 13, 5, 12, 634 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 750 },
			["Xály|shekzeer"] = { 8, 6, -26, 472 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 484 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 683 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 724 },
			["Conservé|shekzeer"] = { 8, 4, 45, 643 },
			["Kospi|auberdine"] = { 8, 4, 25, 522 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 522 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 742 },
			["Zabir|everlook"] = { 8, 4, 21, 634 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 634 },
			["Derxibro|shekzeer"] = { 8, 3, 33, 907 },
			["Lúná|ook-ook"] = { 4, 7, 35, 535 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 773 },
			["Ithildrin|mirage-raceway"] = { 6, 4, 41, 814 },
			["Zhili|hoptallus"] = { 3, 7, -1, 454 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 814 },
			["Fünfgizelp|everlook"] = { 6, 3, 100, 772 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 509 },
			["Savexx|shekzeer"] = { 5, 3, 27, 634 },
			["Wasabî|auberdine"] = { 7, 1, 44, 508 },
			["Xpa|everlook"] = { 5, 3, 26, 686 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 650 },
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 1028 },
			["Dóris|ook-ook"] = { 3, 3, 13, 519 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 833 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 797 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 454 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 889 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 1030 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 814 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 684 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 454 },
			["Alesant|shekzeer"] = { 2, 2, 26, 772 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 846 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 1043 },
			["Orestis|norushen"] = { 2, 2, 16, 634 },
			["Жмуфир|flamegor"] = { 1, 3, -8, 937 },
			["Тнэш|flamegor"] = { 0, 4, -44, 814 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 814 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 1100 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 879 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 814 },
			["Эрмантраутх|flamegor"] = { 2, 1, -3, 940 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 634 },
			["Kadran|shekzeer"] = { 0, 2, -3, 1015 },
			["Niallg|shekzeer"] = { 0, 2, -3, 1016 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 454 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 895 },
			["Voljiz|shekzeer"] = { 0, 2, -9, 994 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 639 },
			["Xpu|everlook"] = { 2, 0, 4, 637 },
			["Санжик|flamegor"] = { 0, 2, -8, 994 },
			["Ceendare|auberdine"] = { 0, 1, 0, 1174 },
			["Cuñadita|garalon"] = { 0, 1, -7, 454 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 1271 },
			["Sangore|auberdine"] = { 0, 1, -2, 1174 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 814 },
			["Straviouse|hoptallus"] = { 0, 1, -11, 994 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 519 },
			["Бабелнаодин|flamegor"] = { 1, 0, 4, 962 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 1072 },
			["Павлорион|flamegor"] = { 3, 0, 12, 1077 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 1030 },
		},
	},
}

