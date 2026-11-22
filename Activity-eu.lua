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
	built = 1795356042,
	builtText = "2026-11-22 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Zhili|hoptallus"] = { 3, 7, -1, 694 },
			["Xály|shekzeer"] = { 5, 3, 2, 712 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 694 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 694 },
			["Cuñadita|garalon"] = { 0, 1, -7, 694 },
			["Zirkniaq|shekzeer"] = { 0, 1, 0, 694 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 968 },
			["Monklife|garalon"] = { 11, 20, 662, 851 },
			["Вялыйкидней|flamegor"] = { 16, 12, 157, 804 },
			["Yezze|garalon"] = { 14, 11, -47, 874 },
			["Bernadeta|shekzeer"] = { 13, 11, 43, 1012 },
			["Idontflinch|garalon"] = { 16, 8, 215, 874 },
			["Marlk|shekzeer"] = { 8, 12, -6, 987 },
			["Trolly|shekzeer"] = { 15, 5, 204, 1054 },
			["Дэрмейстер|flamegor"] = { 15, 5, 167, 1232 },
			["Филмарис|flamegor"] = { 13, 5, 12, 874 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 990 },
			["Xály|shekzeer"] = { 8, 6, -26, 712 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 724 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 924 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 964 },
			["Conservé|shekzeer"] = { 8, 4, 45, 883 },
			["Kospi|auberdine"] = { 8, 4, 25, 762 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 762 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 982 },
			["Zabir|everlook"] = { 8, 4, 21, 874 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 874 },
			["Derxibro|shekzeer"] = { 8, 3, 33, 1147 },
			["Lúná|ook-ook"] = { 4, 7, 35, 775 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 1013 },
			["Ithildrin|mirage-raceway"] = { 6, 4, 41, 1054 },
			["Zhili|hoptallus"] = { 3, 7, -1, 694 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 1054 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 749 },
			["Savexx|shekzeer"] = { 5, 3, 27, 874 },
			["Wasabî|auberdine"] = { 7, 1, 44, 749 },
			["Xpa|everlook"] = { 5, 3, 26, 926 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 890 },
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 1268 },
			["Dóris|ook-ook"] = { 3, 3, 13, 759 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 1073 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 1037 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 694 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 1129 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 1270 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 1054 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 924 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 694 },
			["Alesant|shekzeer"] = { 2, 2, 26, 1012 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 1086 },
			["Fünfgizelp|everlook"] = { 2, 2, 36, 1012 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 1283 },
			["Orestis|norushen"] = { 2, 2, 16, 874 },
			["Жмуфир|flamegor"] = { 1, 3, -8, 1177 },
			["Тнэш|flamegor"] = { 0, 4, -44, 1054 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 1054 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 1340 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 1119 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 1054 },
			["Эрмантраутх|flamegor"] = { 2, 1, -3, 1180 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 874 },
			["Kadran|shekzeer"] = { 0, 2, -3, 1255 },
			["Niallg|shekzeer"] = { 0, 2, -3, 1256 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 694 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 1135 },
			["Voljiz|shekzeer"] = { 0, 2, -9, 1234 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 879 },
			["Xpu|everlook"] = { 2, 0, 4, 877 },
			["Санжик|flamegor"] = { 0, 2, -8, 1234 },
			["Ceendare|auberdine"] = { 0, 1, 0, 1414 },
			["Cuñadita|garalon"] = { 0, 1, -7, 694 },
			["Sangore|auberdine"] = { 0, 1, -2, 1414 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 1054 },
			["Straviouse|hoptallus"] = { 0, 1, -11, 1234 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 759 },
			["Бабелнаодин|flamegor"] = { 1, 0, 4, 1202 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 1312 },
			["Павлорион|flamegor"] = { 3, 0, 12, 1317 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 1270 },
		},
	},
}

