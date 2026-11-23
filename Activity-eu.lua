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
	built = 1795435223,
	builtText = "2026-11-23 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bernadeta|shekzeer"] = { 1, 2, -5, 640 },
			["Kalreth|shekzeer"] = { 1, 2, 3, 613 },
			["Trolly|shekzeer"] = { 2, 1, 28, 573 },
			["Ithildrin|mirage-raceway"] = { 0, 1, 0, 573 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Click|shekzeer"] = { 12, 12, -17, 753 },
			["Selenagomezy|shekzeer"] = { 12, 12, -17, 753 },
			["Тутэнкаш|flamegor"] = { 8, 16, 49, 834 },
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 1148 },
			["Malte|shekzeer"] = { 10, 12, 206, 1148 },
			["Challedge|garalon"] = { 10, 10, 12, 785 },
			["Elimia|garalon"] = { 10, 10, 12, 785 },
			["Monklife|garalon"] = { 8, 11, 149, 802 },
			["Huanita|shekzeer"] = { 8, 10, -3, 825 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 824 },
			["Jakamaestro|shekzeer"] = { 10, 6, 61, 831 },
			["Mbäppé|auberdine"] = { 13, 3, 233, 809 },
			["Xpa|everlook"] = { 8, 8, 22, 870 },
			["Noneedground|shekzeer"] = { 12, 3, 860, 734 },
			["Snaredog|shekzeer"] = { 12, 3, 262, 775 },
			["Gitrdone|shekzeer"] = { 5, 9, -49, 871 },
			["Orestis|norushen"] = { 6, 8, 54, 807 },
			["Rainbowrïder|shekzeer"] = { 5, 9, -46, 871 },
			["Egirlshealer|shekzeer"] = { 5, 8, 74, 856 },
			["Idontflinch|garalon"] = { 10, 3, 90, 933 },
			["Lastà|everlook"] = { 13, 0, 120, 1091 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 830 },
			["Srtwhippa|everlook"] = { 6, 6, 51, 781 },
			["Yezze|garalon"] = { 5, 7, -48, 820 },
			["Egirlmanager|shekzeer"] = { 3, 8, 42, 933 },
			["Ithildrin|mirage-raceway"] = { 7, 4, 81, 573 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 1113 },
			["Tpriestlx|shekzeer"] = { 9, 2, 33, 878 },
			["Repuls|mirage-raceway"] = { 5, 5, 49, 802 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 1159 },
			["Oyz|garalon"] = { 3, 6, 55, 902 },
			["Voljiz|shekzeer"] = { 6, 3, 91, 933 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 1167 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 753 },
			["Bàdcát|auberdine"] = { 5, 2, 44, 991 },
			["Bobbysta|auberdine"] = { 5, 2, 33, 1022 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 1167 },
			["Drumåndbåss|shekzeer"] = { 4, 3, 5, 869 },
			["Gordonslaya|shekzeer"] = { 1, 6, -40, 895 },
			["Sneatz|garalon"] = { 1, 6, 21, 1021 },
			["Trolly|shekzeer"] = { 5, 2, 65, 573 },
			["Тнэш|flamegor"] = { 4, 3, 5, 868 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 613 },
			["Kostez|shekzeer"] = { 2, 4, -30, 793 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 819 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 767 },
			["Kospi|auberdine"] = { 1, 4, -20, 763 },
			["Remedy|shekzeer"] = { 5, 0, 28, 767 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 806 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 763 },
			["Ультрашторм|flamegor"] = { 0, 5, -13, 907 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 836 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 1214 },
			["Jakamstar|shekzeer"] = { 2, 2, 6, 960 },
			["Raezin|everlook"] = { 0, 4, -23, 1272 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 828 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 831 },
			["Zabir|everlook"] = { 3, 1, 22, 1255 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 640 },
			["Biggestegoeu|shekzeer"] = { 2, 1, -10, 980 },
			["Cavitonnee|everlook"] = { 3, 0, 18, 914 },
			["Dkv|garalon"] = { 0, 3, -7, 1293 },
			["Domnox|auberdine"] = { 1, 2, -8, 809 },
			["Fiftyzen|everlook"] = { 3, 0, 17, 753 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 1056 },
			["Sapmere|auberdine"] = { 1, 2, -8, 810 },
			["Yhwatch|shekzeer"] = { 2, 1, -10, 972 },
			["Zok|shekzeer"] = { 0, 3, -15, 780 },
			["Juicyverÿ|shekzeer"] = { 2, 0, 24, 933 },
			["Эрмантраутх|flamegor"] = { 2, 0, 24, 976 },
			["Cavernicola|garalon"] = { 0, 1, -11, 953 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 1084 },
			["ßuckfiddy|shekzeer"] = { 0, 1, -5, 933 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 1164 },
			["Sangore|auberdine"] = { 0, 1, 0, 1165 },
		},
	},
}

