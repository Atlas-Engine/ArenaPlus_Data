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
	built = 1795438827,
	builtText = "2026-11-23 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bernadeta|shekzeer"] = { 1, 2, -5, 700 },
			["Kalreth|shekzeer"] = { 1, 2, 3, 673 },
			["Trolly|shekzeer"] = { 2, 1, 28, 633 },
			["Ithildrin|mirage-raceway"] = { 0, 1, 0, 633 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Click|shekzeer"] = { 12, 12, -17, 813 },
			["Selenagomezy|shekzeer"] = { 12, 12, -17, 813 },
			["Тутэнкаш|flamegor"] = { 8, 16, 49, 894 },
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 1209 },
			["Malte|shekzeer"] = { 10, 12, 206, 1208 },
			["Challedge|garalon"] = { 10, 10, 12, 845 },
			["Elimia|garalon"] = { 10, 10, 12, 845 },
			["Monklife|garalon"] = { 8, 11, 149, 863 },
			["Huanita|shekzeer"] = { 8, 10, -3, 886 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 884 },
			["Jakamaestro|shekzeer"] = { 10, 6, 61, 891 },
			["Mbäppé|auberdine"] = { 13, 3, 233, 869 },
			["Xpa|everlook"] = { 8, 8, 22, 930 },
			["Noneedground|shekzeer"] = { 12, 3, 860, 794 },
			["Snaredog|shekzeer"] = { 12, 3, 262, 835 },
			["Gitrdone|shekzeer"] = { 5, 9, -49, 931 },
			["Orestis|norushen"] = { 6, 8, 54, 867 },
			["Rainbowrïder|shekzeer"] = { 5, 9, -46, 931 },
			["Egirlshealer|shekzeer"] = { 5, 8, 74, 916 },
			["Idontflinch|garalon"] = { 10, 3, 90, 993 },
			["Lastà|everlook"] = { 13, 0, 120, 1151 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 890 },
			["Srtwhippa|everlook"] = { 6, 6, 51, 841 },
			["Yezze|garalon"] = { 5, 7, -48, 880 },
			["Egirlmanager|shekzeer"] = { 3, 8, 42, 993 },
			["Ithildrin|mirage-raceway"] = { 7, 4, 81, 633 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 1173 },
			["Tpriestlx|shekzeer"] = { 9, 2, 33, 938 },
			["Repuls|mirage-raceway"] = { 5, 5, 49, 862 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 1219 },
			["Oyz|garalon"] = { 3, 6, 55, 962 },
			["Voljiz|shekzeer"] = { 6, 3, 91, 993 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 1227 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 813 },
			["Bàdcát|auberdine"] = { 5, 2, 44, 1051 },
			["Bobbysta|auberdine"] = { 5, 2, 33, 1082 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 1227 },
			["Drumåndbåss|shekzeer"] = { 4, 3, 5, 929 },
			["Gordonslaya|shekzeer"] = { 1, 6, -40, 956 },
			["Sneatz|garalon"] = { 1, 6, 21, 1081 },
			["Trolly|shekzeer"] = { 5, 2, 65, 633 },
			["Тнэш|flamegor"] = { 4, 3, 5, 928 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 673 },
			["Kostez|shekzeer"] = { 2, 4, -30, 854 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 879 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 827 },
			["Kospi|auberdine"] = { 1, 4, -20, 823 },
			["Remedy|shekzeer"] = { 5, 0, 28, 827 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 866 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 823 },
			["Ультрашторм|flamegor"] = { 0, 5, -13, 968 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 896 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 1274 },
			["Jakamstar|shekzeer"] = { 2, 2, 6, 1020 },
			["Raezin|everlook"] = { 0, 4, -23, 1332 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 888 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 891 },
			["Zabir|everlook"] = { 3, 1, 22, 1315 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 700 },
			["Biggestegoeu|shekzeer"] = { 2, 1, -10, 1040 },
			["Cavitonnee|everlook"] = { 3, 0, 18, 974 },
			["Dkv|garalon"] = { 0, 3, -7, 1353 },
			["Domnox|auberdine"] = { 1, 2, -8, 870 },
			["Fiftyzen|everlook"] = { 3, 0, 17, 813 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 1116 },
			["Sapmere|auberdine"] = { 1, 2, -8, 870 },
			["Yhwatch|shekzeer"] = { 2, 1, -10, 1032 },
			["Zok|shekzeer"] = { 0, 3, -15, 840 },
			["Juicyverÿ|shekzeer"] = { 2, 0, 24, 993 },
			["Эрмантраутх|flamegor"] = { 2, 0, 24, 1036 },
			["Cavernicola|garalon"] = { 0, 1, -11, 1013 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 1145 },
			["ßuckfiddy|shekzeer"] = { 0, 1, -5, 993 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 1224 },
			["Sangore|auberdine"] = { 0, 1, 0, 1225 },
		},
	},
}

