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
	built = 1795442436,
	builtText = "2026-11-23 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 4 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 4 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 13 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 4 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 4 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 13 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 4 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 4 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 13 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Trolly|shekzeer"] = { 2, 1, 28, 694 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 4 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 4 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 13 },
			["Ithildrin|mirage-raceway"] = { 0, 1, 0, 694 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Click|shekzeer"] = { 12, 12, -17, 874 },
			["Selenagomezy|shekzeer"] = { 12, 12, -17, 874 },
			["Тутэнкаш|flamegor"] = { 8, 16, 49, 954 },
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 1269 },
			["Malte|shekzeer"] = { 10, 12, 206, 1268 },
			["Challedge|garalon"] = { 10, 10, 12, 905 },
			["Elimia|garalon"] = { 10, 10, 12, 905 },
			["Monklife|garalon"] = { 8, 11, 149, 923 },
			["Huanita|shekzeer"] = { 8, 10, -3, 946 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 945 },
			["Jakamaestro|shekzeer"] = { 10, 6, 61, 952 },
			["Mbäppé|auberdine"] = { 13, 3, 233, 929 },
			["Xpa|everlook"] = { 8, 8, 22, 990 },
			["Noneedground|shekzeer"] = { 12, 3, 860, 855 },
			["Snaredog|shekzeer"] = { 12, 3, 262, 895 },
			["Gitrdone|shekzeer"] = { 5, 9, -49, 991 },
			["Orestis|norushen"] = { 6, 8, 54, 927 },
			["Rainbowrïder|shekzeer"] = { 5, 9, -46, 991 },
			["Egirlshealer|shekzeer"] = { 5, 8, 74, 976 },
			["Idontflinch|garalon"] = { 10, 3, 90, 1054 },
			["Lastà|everlook"] = { 13, 0, 120, 1211 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 950 },
			["Srtwhippa|everlook"] = { 6, 6, 51, 901 },
			["Yezze|garalon"] = { 5, 7, -48, 940 },
			["Egirlmanager|shekzeer"] = { 3, 8, 42, 1054 },
			["Ithildrin|mirage-raceway"] = { 7, 4, 81, 694 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 1234 },
			["Tpriestlx|shekzeer"] = { 9, 2, 33, 998 },
			["Repuls|mirage-raceway"] = { 5, 5, 49, 922 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 1279 },
			["Oyz|garalon"] = { 3, 6, 55, 1022 },
			["Voljiz|shekzeer"] = { 6, 3, 91, 1054 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 1287 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 874 },
			["Bàdcát|auberdine"] = { 5, 2, 44, 1111 },
			["Bobbysta|auberdine"] = { 5, 2, 33, 1142 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 1287 },
			["Drumåndbåss|shekzeer"] = { 4, 3, 5, 990 },
			["Gordonslaya|shekzeer"] = { 1, 6, -40, 1016 },
			["Sneatz|garalon"] = { 1, 6, 21, 1141 },
			["Trolly|shekzeer"] = { 5, 2, 65, 694 },
			["Тнэш|flamegor"] = { 4, 3, 5, 988 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 733 },
			["Kostez|shekzeer"] = { 2, 4, -30, 914 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 939 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 887 },
			["Kospi|auberdine"] = { 1, 4, -20, 883 },
			["Remedy|shekzeer"] = { 5, 0, 28, 887 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 927 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 883 },
			["Ультрашторм|flamegor"] = { 0, 5, -13, 1028 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 956 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 1334 },
			["Jakamstar|shekzeer"] = { 2, 2, 6, 1081 },
			["Raezin|everlook"] = { 0, 4, -23, 1392 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 948 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 951 },
			["Zabir|everlook"] = { 3, 1, 22, 1375 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 760 },
			["Biggestegoeu|shekzeer"] = { 2, 1, -10, 1101 },
			["Cavitonnee|everlook"] = { 3, 0, 18, 1034 },
			["Dkv|garalon"] = { 0, 3, -7, 1414 },
			["Domnox|auberdine"] = { 1, 2, -8, 930 },
			["Fiftyzen|everlook"] = { 3, 0, 17, 874 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 1176 },
			["Sapmere|auberdine"] = { 1, 2, -8, 930 },
			["Yhwatch|shekzeer"] = { 2, 1, -10, 1092 },
			["Zok|shekzeer"] = { 0, 3, -15, 900 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 4 },
			["Juicyverÿ|shekzeer"] = { 2, 0, 24, 1054 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 4 },
			["Эрмантраутх|flamegor"] = { 2, 0, 24, 1096 },
			["Cavernicola|garalon"] = { 0, 1, -11, 1073 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 13 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 1205 },
			["ßuckfiddy|shekzeer"] = { 0, 1, -5, 1054 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 1285 },
			["Sangore|auberdine"] = { 0, 1, 0, 1285 },
		},
	},
}

