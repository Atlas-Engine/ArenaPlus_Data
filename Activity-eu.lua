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
	built = 1795449621,
	builtText = "2026-11-23 11:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Derxibro|shekzeer"] = { 1, 0, 5, 52 },
			["Noneedground|shekzeer"] = { 0, 1, 0, 44 },
			["Snaredog|shekzeer"] = { 0, 1, 0, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Snaredog|shekzeer"] = { 2, 2, 38, 58 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 44 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 124 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 123 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 93 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 132 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 93 },
			["Derxibro|shekzeer"] = { 1, 0, 5, 52 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 84 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 93 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 112 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Snaredog|shekzeer"] = { 2, 2, 38, 58 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 44 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 124 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 123 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 93 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 132 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 93 },
			["Derxibro|shekzeer"] = { 1, 0, 5, 52 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 84 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 93 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 112 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Snaredog|shekzeer"] = { 2, 2, 38, 58 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 44 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 124 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 123 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 93 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 132 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 93 },
			["Derxibro|shekzeer"] = { 1, 0, 5, 52 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 84 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 93 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 112 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Click|shekzeer"] = { 12, 12, -17, 993 },
			["Selenagomezy|shekzeer"] = { 12, 12, -17, 993 },
			["Тутэнкаш|flamegor"] = { 8, 16, 49, 1074 },
			["Challedge|garalon"] = { 10, 10, 12, 1025 },
			["Elimia|garalon"] = { 10, 10, 12, 1025 },
			["Monklife|garalon"] = { 8, 11, 149, 1042 },
			["Snaredog|shekzeer"] = { 14, 5, 300, 58 },
			["Huanita|shekzeer"] = { 8, 10, -3, 1065 },
			["Noneedground|shekzeer"] = { 13, 5, 882, 44 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 1064 },
			["Crabzxtrapzx|shekzeer"] = { 5, 12, 91, 1388 },
			["Malte|shekzeer"] = { 5, 12, 98, 1388 },
			["Jakamaestro|shekzeer"] = { 10, 6, 61, 1071 },
			["Mbäppé|auberdine"] = { 13, 3, 233, 1049 },
			["Xpa|everlook"] = { 8, 8, 22, 1110 },
			["Gitrdone|shekzeer"] = { 5, 9, -49, 1111 },
			["Orestis|norushen"] = { 6, 8, 54, 1047 },
			["Rainbowrïder|shekzeer"] = { 5, 9, -46, 1111 },
			["Egirlshealer|shekzeer"] = { 5, 8, 74, 1096 },
			["Idontflinch|garalon"] = { 10, 3, 90, 1173 },
			["Lastà|everlook"] = { 13, 0, 120, 1331 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 1070 },
			["Srtwhippa|everlook"] = { 6, 6, 51, 1021 },
			["Yezze|garalon"] = { 5, 7, -48, 1060 },
			["Egirlmanager|shekzeer"] = { 3, 8, 42, 1173 },
			["Ithildrin|mirage-raceway"] = { 7, 4, 81, 813 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 1353 },
			["Tpriestlx|shekzeer"] = { 9, 2, 33, 1118 },
			["Repuls|mirage-raceway"] = { 5, 5, 49, 1042 },
			["Oyz|garalon"] = { 3, 6, 55, 1142 },
			["Voljiz|shekzeer"] = { 6, 3, 91, 1173 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 1407 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 993 },
			["Bàdcát|auberdine"] = { 5, 2, 44, 1231 },
			["Bobbysta|auberdine"] = { 5, 2, 33, 1262 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 1407 },
			["Drumåndbåss|shekzeer"] = { 4, 3, 5, 1109 },
			["Gordonslaya|shekzeer"] = { 1, 6, -40, 1135 },
			["Sneatz|garalon"] = { 1, 6, 21, 1261 },
			["Trolly|shekzeer"] = { 5, 2, 65, 813 },
			["Тнэш|flamegor"] = { 4, 3, 5, 1108 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 852 },
			["Kostez|shekzeer"] = { 2, 4, -30, 1033 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 1059 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 1007 },
			["Kospi|auberdine"] = { 1, 4, -20, 1003 },
			["Remedy|shekzeer"] = { 5, 0, 28, 1006 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 1046 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 1003 },
			["Ультрашторм|flamegor"] = { 0, 5, -13, 1147 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 1076 },
			["Jakamstar|shekzeer"] = { 2, 2, 6, 1200 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 1068 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 1071 },
			["Вялыйхант|flamegor"] = { 4, 0, 25, 1399 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 880 },
			["Biggestegoeu|shekzeer"] = { 2, 1, -10, 1220 },
			["Cavitonnee|everlook"] = { 3, 0, 18, 1154 },
			["Domnox|auberdine"] = { 1, 2, -8, 1049 },
			["Fiftyzen|everlook"] = { 3, 0, 17, 993 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 1296 },
			["Sapmere|auberdine"] = { 1, 2, -8, 1049 },
			["Yhwatch|shekzeer"] = { 2, 1, -10, 1212 },
			["Zok|shekzeer"] = { 0, 3, -15, 1020 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 124 },
			["Juicyverÿ|shekzeer"] = { 2, 0, 24, 1173 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 123 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 93 },
			["Эрмантраутх|flamegor"] = { 2, 0, 24, 1216 },
			["Cavernicola|garalon"] = { 0, 1, -11, 1193 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 132 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 93 },
			["Derxibro|shekzeer"] = { 1, 0, 5, 52 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 1324 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 84 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 93 },
			["ßuckfiddy|shekzeer"] = { 0, 1, -5, 1173 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 112 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 1404 },
			["Sangore|auberdine"] = { 0, 1, 0, 1405 },
		},
	},
}

