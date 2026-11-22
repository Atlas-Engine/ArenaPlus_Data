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
	built = 1795352451,
	builtText = "2026-11-22 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Zhili|hoptallus"] = { 3, 7, -1, 634 },
			["Xály|shekzeer"] = { 5, 3, 2, 652 },
			["Kospi|auberdine"] = { 5, 2, 11, 702 },
			["Tchaktchac|auberdine"] = { 5, 2, 8, 702 },
			["Daddylloyd|garalon"] = { 4, 1, 38, 665 },
			["Lúná|ook-ook"] = { 2, 3, 32, 715 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 634 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 634 },
			["Cuñadita|garalon"] = { 0, 1, -7, 634 },
			["Dóris|ook-ook"] = { 1, 0, 14, 700 },
			["Mwaniel|auberdine"] = { 1, 0, 15, 689 },
			["Wasabî|auberdine"] = { 1, 0, 14, 689 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 700 },
			["Zirkniaq|shekzeer"] = { 0, 1, 0, 634 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Makkezi|shekzeer"] = { 16, 18, 112, 908 },
			["Monklife|garalon"] = { 11, 20, 662, 791 },
			["Вялыйкидней|flamegor"] = { 16, 12, 157, 744 },
			["Yezze|garalon"] = { 14, 11, -47, 814 },
			["Bernadeta|shekzeer"] = { 13, 11, 43, 952 },
			["Idontflinch|garalon"] = { 16, 8, 215, 814 },
			["Marlk|shekzeer"] = { 8, 12, -6, 928 },
			["Trolly|shekzeer"] = { 15, 5, 204, 994 },
			["Дэрмейстер|flamegor"] = { 15, 5, 167, 1173 },
			["Филмарис|flamegor"] = { 13, 5, 12, 814 },
			["Srtwhippa|everlook"] = { 6, 9, -24, 931 },
			["Xály|shekzeer"] = { 8, 6, -26, 652 },
			["Daddylloyd|garalon"] = { 8, 5, 54, 665 },
			["Keyoo|shekzeer"] = { 8, 5, 26, 864 },
			["Blèsséd|shekzeer"] = { 8, 4, 120, 905 },
			["Conservé|shekzeer"] = { 8, 4, 45, 823 },
			["Kospi|auberdine"] = { 8, 4, 25, 702 },
			["Tchaktchac|auberdine"] = { 8, 4, 19, 702 },
			["Triplecheese|shekzeer"] = { 5, 7, -1, 922 },
			["Zabir|everlook"] = { 8, 4, 21, 814 },
			["Хаулдженкинс|flamegor"] = { 8, 4, 39, 814 },
			["Derxibro|shekzeer"] = { 8, 3, 33, 1087 },
			["Lúná|ook-ook"] = { 4, 7, 35, 715 },
			["Weaverok|shekzeer"] = { 6, 5, 23, 953 },
			["Ithildrin|mirage-raceway"] = { 6, 4, 41, 994 },
			["Zhili|hoptallus"] = { 3, 7, -1, 634 },
			["Dalbaiob|shekzeer"] = { 8, 1, 49, 994 },
			["Mwaniel|auberdine"] = { 7, 1, 53, 689 },
			["Savexx|shekzeer"] = { 5, 3, 27, 814 },
			["Wasabî|auberdine"] = { 7, 1, 44, 689 },
			["Xpa|everlook"] = { 5, 3, 26, 866 },
			["Вялыйхантер|flamegor"] = { 3, 5, -38, 831 },
			["Capcarapkin|shekzeer"] = { 1, 5, -55, 1209 },
			["Dóris|ook-ook"] = { 3, 3, 13, 700 },
			["Warcrimes|shekzeer"] = { 2, 4, -14, 1013 },
			["Ziggemaster|shekzeer"] = { 3, 3, 3, 978 },
			["Zirkniaq|shekzeer"] = { 3, 3, 38, 634 },
			["Аллроуд|flamegor"] = { 4, 2, 21, 1069 },
			["Цианидвектор|flamegor"] = { 1, 5, -50, 1210 },
			["Durianlover|shekzeer"] = { 2, 3, -4, 994 },
			["Kalreth|shekzeer"] = { 0, 5, -42, 865 },
			["Totemgodx|shekzeer"] = { 4, 1, 48, 634 },
			["Alesant|shekzeer"] = { 2, 2, 26, 952 },
			["Drumåndbåss|shekzeer"] = { 0, 4, -44, 1027 },
			["Fünfgizelp|everlook"] = { 2, 2, 36, 953 },
			["Jäckynkôô|hoptallus"] = { 1, 3, -26, 1223 },
			["Orestis|norushen"] = { 2, 2, 16, 814 },
			["Жмуфир|flamegor"] = { 1, 3, -8, 1117 },
			["Тнэш|flamegor"] = { 0, 4, -44, 994 },
			["Ayvara|shekzeer"] = { 3, 0, 34, 994 },
			["Jackynko|hoptallus"] = { 1, 2, 21, 1281 },
			["Juicyverÿ|shekzeer"] = { 2, 1, -3, 1059 },
			["Mythrugun|shekzeer"] = { 3, 0, 34, 994 },
			["Эрмантраутх|flamegor"] = { 2, 1, -3, 1120 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -21, 814 },
			["Kadran|shekzeer"] = { 0, 2, -3, 1195 },
			["Niallg|shekzeer"] = { 0, 2, -3, 1196 },
			["Ophoizx|shekzeer"] = { 0, 2, -12, 634 },
			["Sambrano|shekzeer"] = { 0, 2, -12, 1075 },
			["Voljiz|shekzeer"] = { 0, 2, -9, 1174 },
			["Wheelkick|shekzeer"] = { 2, 0, 4, 819 },
			["Xpu|everlook"] = { 2, 0, 4, 818 },
			["Санжик|flamegor"] = { 0, 2, -8, 1174 },
			["Ceendare|auberdine"] = { 0, 1, 0, 1354 },
			["Cuñadita|garalon"] = { 0, 1, -7, 634 },
			["Sangore|auberdine"] = { 0, 1, -2, 1354 },
			["Semiazas|shekzeer"] = { 0, 1, -13, 994 },
			["Straviouse|hoptallus"] = { 0, 1, -11, 1174 },
			["Wutàngclan|ook-ook"] = { 1, 0, 13, 700 },
			["Бабелнаодин|flamegor"] = { 1, 0, 4, 1142 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 3, 0, 1252 },
			["Павлорион|flamegor"] = { 3, 0, 12, 1257 },
			["Цианидвектор|flamegor"] = { 3, 0, 25, 1210 },
		},
	},
}

