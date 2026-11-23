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
	built = 1795453227,
	builtText = "2026-11-23 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Voodomann|mirage-raceway"] = { 2, 3, 12, 24 },
			["Вялыйхантер|flamegor"] = { 2, 3, 0, 23 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 20 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Voodomann|mirage-raceway"] = { 2, 3, 12, 24 },
			["Вялыйхантер|flamegor"] = { 2, 3, 0, 23 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 20 },
			["Snaredog|shekzeer"] = { 2, 2, 38, 118 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 104 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 153 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 153 },
			["Derxibro|shekzeer"] = { 1, 0, 5, 112 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 144 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 153 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 172 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Voodomann|mirage-raceway"] = { 2, 3, 12, 24 },
			["Вялыйхантер|flamegor"] = { 2, 3, 0, 23 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 20 },
			["Snaredog|shekzeer"] = { 2, 2, 38, 118 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 104 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 184 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 183 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 153 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 193 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 153 },
			["Derxibro|shekzeer"] = { 1, 0, 5, 112 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 144 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 153 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 172 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Voodomann|mirage-raceway"] = { 2, 3, 12, 24 },
			["Вялыйхантер|flamegor"] = { 2, 3, 0, 23 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 20 },
			["Snaredog|shekzeer"] = { 2, 2, 38, 118 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 104 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 184 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 183 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 153 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 193 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 153 },
			["Derxibro|shekzeer"] = { 1, 0, 5, 112 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 144 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 153 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 172 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Click|shekzeer"] = { 12, 12, -17, 1053 },
			["Selenagomezy|shekzeer"] = { 12, 12, -17, 1053 },
			["Тутэнкаш|flamegor"] = { 8, 16, 49, 1134 },
			["Challedge|garalon"] = { 10, 10, 12, 1085 },
			["Elimia|garalon"] = { 10, 10, 12, 1085 },
			["Monklife|garalon"] = { 8, 11, 149, 1103 },
			["Snaredog|shekzeer"] = { 14, 5, 300, 118 },
			["Huanita|shekzeer"] = { 8, 10, -3, 1126 },
			["Noneedground|shekzeer"] = { 13, 5, 882, 104 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 1124 },
			["Jakamaestro|shekzeer"] = { 10, 6, 61, 1131 },
			["Mbäppé|auberdine"] = { 13, 3, 233, 1109 },
			["Xpa|everlook"] = { 8, 8, 22, 1170 },
			["Gitrdone|shekzeer"] = { 5, 9, -49, 1171 },
			["Orestis|norushen"] = { 6, 8, 54, 1107 },
			["Rainbowrïder|shekzeer"] = { 5, 9, -46, 1171 },
			["Egirlshealer|shekzeer"] = { 5, 8, 74, 1156 },
			["Idontflinch|garalon"] = { 10, 3, 90, 1233 },
			["Lastà|everlook"] = { 13, 0, 120, 1391 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 1130 },
			["Srtwhippa|everlook"] = { 6, 6, 51, 1081 },
			["Yezze|garalon"] = { 5, 7, -48, 1120 },
			["Egirlmanager|shekzeer"] = { 3, 8, 42, 1233 },
			["Ithildrin|mirage-raceway"] = { 7, 4, 81, 873 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 1413 },
			["Tpriestlx|shekzeer"] = { 9, 2, 33, 1178 },
			["Repuls|mirage-raceway"] = { 5, 5, 49, 1102 },
			["Oyz|garalon"] = { 3, 6, 55, 1202 },
			["Voljiz|shekzeer"] = { 6, 3, 91, 1233 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 1053 },
			["Bàdcát|auberdine"] = { 5, 2, 44, 1291 },
			["Bobbysta|auberdine"] = { 5, 2, 33, 1322 },
			["Drumåndbåss|shekzeer"] = { 4, 3, 5, 1169 },
			["Gordonslaya|shekzeer"] = { 1, 6, -40, 1196 },
			["Sneatz|garalon"] = { 1, 6, 21, 1321 },
			["Trolly|shekzeer"] = { 5, 2, 65, 873 },
			["Тнэш|flamegor"] = { 4, 3, 5, 1168 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 913 },
			["Kostez|shekzeer"] = { 2, 4, -30, 1094 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 1119 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 1067 },
			["Kospi|auberdine"] = { 1, 4, -20, 1063 },
			["Remedy|shekzeer"] = { 5, 0, 28, 1067 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 1106 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 1063 },
			["Voodomann|mirage-raceway"] = { 2, 3, 12, 24 },
			["Вялыйхантер|flamegor"] = { 2, 3, 0, 23 },
			["Ультрашторм|flamegor"] = { 0, 5, -13, 1208 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 20 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 1136 },
			["Jakamstar|shekzeer"] = { 2, 2, 6, 1260 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 1128 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 1131 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 940 },
			["Biggestegoeu|shekzeer"] = { 2, 1, -10, 1280 },
			["Cavitonnee|everlook"] = { 3, 0, 18, 1214 },
			["Domnox|auberdine"] = { 1, 2, -8, 1110 },
			["Fiftyzen|everlook"] = { 3, 0, 17, 1053 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 1356 },
			["Sapmere|auberdine"] = { 1, 2, -8, 1110 },
			["Yhwatch|shekzeer"] = { 2, 1, -10, 1272 },
			["Zok|shekzeer"] = { 0, 3, -15, 1080 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 184 },
			["Juicyverÿ|shekzeer"] = { 2, 0, 24, 1233 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 183 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 153 },
			["Эрмантраутх|flamegor"] = { 2, 0, 24, 1276 },
			["Cavernicola|garalon"] = { 0, 1, -11, 1253 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 193 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 153 },
			["Derxibro|shekzeer"] = { 1, 0, 5, 112 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 1385 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 144 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 153 },
			["ßuckfiddy|shekzeer"] = { 0, 1, -5, 1233 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 172 },
		},
	},
}

