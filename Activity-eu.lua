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
	built = 1795338044,
	builtText = "2026-11-22 04:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Monklife|garalon"] = { 11, 20, 662, 551 },
			["Yezze|garalon"] = { 12, 8, 0, 574 },
			["Makkezi|shekzeer"] = { 10, 5, 71, 668 },
			["Вялыйкидней|flamegor"] = { 6, 8, 25, 504 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 424 },
			["Idontflinch|garalon"] = { 8, 5, 84, 574 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 624 },
			["Conservé|shekzeer"] = { 8, 4, 45, 583 },
			["Kospi|auberdine"] = { 8, 4, 25, 462 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 462 },
			["Xály|shekzeer"] = { 7, 5, -13, 412 },
			["Zabir|everlook"] = { 8, 4, 21, 574 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 574 },
			["Blèsséd|shekzeer"] = { 8, 3, 120, 664 },
			["Lúná|ook-ook"] = { 4, 7, 35, 475 },
			["Zhili|hoptallus"] = { 3, 7, -1, 394 },
			["Triplecheese|shekzeer"] = { 4, 5, -5, 682 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 449 },
			["Savexx|shekzeer"] = { 5, 3, 27, 574 },
			["Wasabî|auberdine"] = { 7, 1, 44, 449 },
			["Xpa|everlook"] = { 5, 3, 26, 626 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 591 },
			["Marlk|shekzeer"] = { 3, 4, -7, 687 },
			["Srtwhippa|everlook"] = { 3, 4, -13, 690 },
			["Dóris|ook-ook"] = { 3, 3, 13, 459 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 394 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 624 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 394 },
			["Alesant|shekzeer"] = { 2, 2, 26, 712 },
			["Bernadeta|shekzeer"] = { 3, 1, 42, 712 },
			["Fünfgizelp|everlook"] = { 2, 2, 36, 712 },
			["Orestis|norushen"] = { 2, 2, 16, 574 },
			["Weaverok|shekzeer"] = { 3, 1, 27, 713 },
			["Филмарис|flamegor"] = { 3, 1, 10, 574 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 574 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 394 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 579 },
			["Xpu|everlook"] = { 2, 0, 4, 578 },
			["Cuñadita|garalon"] = { 0, 1, -7, 394 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 459 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 668 },
			["Monklife|garalon"] = { 11, 20, 662, 551 },
			["Вялыйкидней|flamegor"] = { 16, 12, 157, 504 },
			["Yezze|garalon"] = { 14, 11, -47, 574 },
			["Bernadeta|shekzeer"] = { 13, 11, 43, 712 },
			["Idontflinch|garalon"] = { 16, 8, 215, 574 },
			["Marlk|shekzeer"] = { 8, 12, -6, 687 },
			["Trolly|shekzeer"] = { 15, 5, 204, 754 },
			["Дэрмейстер|flamegor"] = { 15, 5, 167, 932 },
			["Филмарис|flamegor"] = { 13, 5, 12, 574 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 690 },
			["Xály|shekzeer"] = { 8, 6, -26, 412 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 424 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 624 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 664 },
			["Conservé|shekzeer"] = { 8, 4, 45, 583 },
			["Kospi|auberdine"] = { 8, 4, 25, 462 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 462 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 682 },
			["Zabir|everlook"] = { 8, 4, 21, 574 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 574 },
			["Derxibro|shekzeer"] = { 8, 3, 33, 847 },
			["Lúná|ook-ook"] = { 4, 7, 35, 475 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 713 },
			["Ithildrin|mirage-raceway"] = { 6, 4, 41, 754 },
			["Zhili|hoptallus"] = { 3, 7, -1, 394 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 754 },
			["Fünfgizelp|everlook"] = { 6, 3, 100, 712 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 449 },
			["Savexx|shekzeer"] = { 5, 3, 27, 574 },
			["Wasabî|auberdine"] = { 7, 1, 44, 449 },
			["Xpa|everlook"] = { 5, 3, 26, 626 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 591 },
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 969 },
			["Dóris|ook-ook"] = { 3, 3, 13, 459 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 773 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 737 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 394 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 829 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 970 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 754 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 624 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 394 },
			["Alesant|shekzeer"] = { 2, 2, 26, 712 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 786 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 983 },
			["Orestis|norushen"] = { 2, 2, 16, 574 },
			["Жмуфир|flamegor"] = { 1, 3, -8, 877 },
			["Тнэш|flamegor"] = { 0, 4, -44, 754 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 754 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 1040 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 819 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 754 },
			["Эрмантраутх|flamegor"] = { 2, 1, -3, 880 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 574 },
			["Kadran|shekzeer"] = { 0, 2, -3, 955 },
			["Niallg|shekzeer"] = { 0, 2, -3, 956 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 394 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 835 },
			["Voljiz|shekzeer"] = { 0, 2, -9, 934 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 579 },
			["Xpu|everlook"] = { 2, 0, 4, 578 },
			["Санжик|flamegor"] = { 0, 2, -8, 934 },
			["Ceendare|auberdine"] = { 0, 1, 0, 1114 },
			["Cuñadita|garalon"] = { 0, 1, -7, 394 },
			["Noneedórb|shekzeer"] = { 1, 0, 4, 1211 },
			["Sangore|auberdine"] = { 0, 1, -2, 1114 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 754 },
			["Straviouse|hoptallus"] = { 0, 1, -11, 934 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 459 },
			["Бабелнаодин|flamegor"] = { 1, 0, 4, 902 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 1012 },
			["Павлорион|flamegor"] = { 3, 0, 12, 1017 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 970 },
		},
	},
}

