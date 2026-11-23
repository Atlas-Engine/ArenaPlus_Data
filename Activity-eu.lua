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
	built = 1795446027,
	builtText = "2026-11-23 10:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Snaredog|shekzeer"] = { 2, 1, 38, 33 },
			["Noneedground|shekzeer"] = { 1, 1, 22, 33 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 33 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 33 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 33 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 52 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Snaredog|shekzeer"] = { 2, 1, 38, 33 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 64 },
			["Noneedground|shekzeer"] = { 1, 1, 22, 33 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 63 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 33 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 73 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 33 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 33 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 52 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Snaredog|shekzeer"] = { 2, 1, 38, 33 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 64 },
			["Noneedground|shekzeer"] = { 1, 1, 22, 33 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 63 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 33 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 73 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 33 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 33 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 52 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Snaredog|shekzeer"] = { 2, 1, 38, 33 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 64 },
			["Noneedground|shekzeer"] = { 1, 1, 22, 33 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 63 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 33 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 73 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 33 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 33 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 52 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Click|shekzeer"] = { 12, 12, -17, 933 },
			["Selenagomezy|shekzeer"] = { 12, 12, -17, 933 },
			["Тутэнкаш|flamegor"] = { 8, 16, 49, 1014 },
			["Challedge|garalon"] = { 10, 10, 12, 965 },
			["Elimia|garalon"] = { 10, 10, 12, 965 },
			["Monklife|garalon"] = { 8, 11, 149, 983 },
			["Huanita|shekzeer"] = { 8, 10, -3, 1006 },
			["Snaredog|shekzeer"] = { 14, 4, 300, 33 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 1004 },
			["Crabzxtrapzx|shekzeer"] = { 5, 12, 91, 1329 },
			["Malte|shekzeer"] = { 5, 12, 98, 1328 },
			["Noneedground|shekzeer"] = { 13, 4, 882, 33 },
			["Jakamaestro|shekzeer"] = { 10, 6, 61, 1011 },
			["Mbäppé|auberdine"] = { 13, 3, 233, 989 },
			["Xpa|everlook"] = { 8, 8, 22, 1050 },
			["Gitrdone|shekzeer"] = { 5, 9, -49, 1051 },
			["Orestis|norushen"] = { 6, 8, 54, 987 },
			["Rainbowrïder|shekzeer"] = { 5, 9, -46, 1051 },
			["Egirlshealer|shekzeer"] = { 5, 8, 74, 1036 },
			["Idontflinch|garalon"] = { 10, 3, 90, 1113 },
			["Lastà|everlook"] = { 13, 0, 120, 1271 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 1010 },
			["Srtwhippa|everlook"] = { 6, 6, 51, 961 },
			["Yezze|garalon"] = { 5, 7, -48, 1000 },
			["Egirlmanager|shekzeer"] = { 3, 8, 42, 1113 },
			["Ithildrin|mirage-raceway"] = { 7, 4, 81, 753 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 1293 },
			["Tpriestlx|shekzeer"] = { 9, 2, 33, 1058 },
			["Repuls|mirage-raceway"] = { 5, 5, 49, 982 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 1339 },
			["Oyz|garalon"] = { 3, 6, 55, 1082 },
			["Voljiz|shekzeer"] = { 6, 3, 91, 1113 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 1347 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 933 },
			["Bàdcát|auberdine"] = { 5, 2, 44, 1171 },
			["Bobbysta|auberdine"] = { 5, 2, 33, 1202 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 1347 },
			["Drumåndbåss|shekzeer"] = { 4, 3, 5, 1049 },
			["Gordonslaya|shekzeer"] = { 1, 6, -40, 1076 },
			["Sneatz|garalon"] = { 1, 6, 21, 1201 },
			["Trolly|shekzeer"] = { 5, 2, 65, 753 },
			["Тнэш|flamegor"] = { 4, 3, 5, 1048 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 793 },
			["Kostez|shekzeer"] = { 2, 4, -30, 974 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 999 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 947 },
			["Kospi|auberdine"] = { 1, 4, -20, 943 },
			["Remedy|shekzeer"] = { 5, 0, 28, 947 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 986 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 943 },
			["Ультрашторм|flamegor"] = { 0, 5, -13, 1088 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 1016 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 1394 },
			["Jakamstar|shekzeer"] = { 2, 2, 6, 1140 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 1008 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 1011 },
			["Zabir|everlook"] = { 3, 1, 22, 1435 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 820 },
			["Biggestegoeu|shekzeer"] = { 2, 1, -10, 1160 },
			["Cavitonnee|everlook"] = { 3, 0, 18, 1094 },
			["Domnox|auberdine"] = { 1, 2, -8, 990 },
			["Fiftyzen|everlook"] = { 3, 0, 17, 933 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 1236 },
			["Sapmere|auberdine"] = { 1, 2, -8, 990 },
			["Yhwatch|shekzeer"] = { 2, 1, -10, 1152 },
			["Zok|shekzeer"] = { 0, 3, -15, 960 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 64 },
			["Juicyverÿ|shekzeer"] = { 2, 0, 24, 1113 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 63 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 33 },
			["Эрмантраутх|flamegor"] = { 2, 0, 24, 1156 },
			["Cavernicola|garalon"] = { 0, 1, -11, 1133 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 73 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 33 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 1265 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 33 },
			["ßuckfiddy|shekzeer"] = { 0, 1, -5, 1113 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 52 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 1344 },
			["Sangore|auberdine"] = { 0, 1, 0, 1345 },
		},
	},
}

