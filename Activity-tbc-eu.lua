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

ns.ACTIVITY_BY_REGION["tbc-eu"] = {
	built = 1794239961,
	builtText = "2026-11-09 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Vidykravicka|thunderstrike"] = { 2, 4, -36, 12 },
			["Zapahsexa|thunderstrike"] = { 4, 2, -30, 57 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Zapahsexa|thunderstrike"] = { 8, 4, -35, 57 },
			["Agaj|thunderstrike"] = { 4, 2, -5, 104 },
			["Vidykravicka|thunderstrike"] = { 2, 4, -36, 12 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 104 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 104 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Zapahsexa|thunderstrike"] = { 8, 4, -35, 57 },
			["Vidykravicka|thunderstrike"] = { 3, 4, -27, 12 },
			["Agaj|thunderstrike"] = { 4, 2, -5, 104 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 104 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 104 },
			["Dekario|spineshatter"] = { 0, 1, -11, 227 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 207 },
			["Ylime|spineshatter"] = { 0, 1, -11, 226 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Zapahsexa|thunderstrike"] = { 8, 4, -35, 57 },
			["Vidykravicka|thunderstrike"] = { 3, 4, -27, 12 },
			["Agaj|thunderstrike"] = { 4, 2, -5, 104 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 104 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 104 },
			["Dekario|spineshatter"] = { 0, 1, -11, 227 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 207 },
			["Ylime|spineshatter"] = { 0, 1, -11, 226 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 28, 21, 92, 945 },
			["Сократ|anniversary"] = { 28, 21, 94, 971 },
			["Primár|spineshatter"] = { 23, 21, -108, 1078 },
			["Dotgyneco|thunderstrike"] = { 18, 17, 43, 1111 },
			["Minð|thunderstrike"] = { 18, 17, -77, 1111 },
			["Drainèr|spineshatter"] = { 17, 15, -11, 1132 },
			["Xnatry|spineshatter"] = { 17, 15, -9, 1131 },
			["Shadowpapa|spineshatter"] = { 18, 11, 31, 1123 },
			["Reasonicus|spineshatter"] = { 17, 11, 60, 1236 },
			["Vincentxd|spineshatter"] = { 17, 11, 50, 1235 },
			["Imgæy|spineshatter"] = { 10, 14, -87, 1219 },
			["Asdfghjklzxc|spineshatter"] = { 10, 10, 79, 1004 },
			["Bellael|spineshatter"] = { 10, 10, -116, 1060 },
			["Therín|spineshatter"] = { 13, 7, 86, 1078 },
			["Cosmoboy|spineshatter"] = { 11, 7, 18, 1004 },
			["Deadlyway|spineshatter"] = { 11, 7, 53, 1122 },
			["Doób|spineshatter"] = { 11, 7, 18, 1004 },
			["Garad|spineshatter"] = { 9, 6, 29, 1004 },
			["Ilovejade|spineshatter"] = { 9, 6, -90, 1180 },
			["Invinciblexx|spineshatter"] = { 9, 6, -90, 1179 },
			["Systemhack|spineshatter"] = { 9, 6, -64, 878 },
			["Tyzin|spineshatter"] = { 9, 6, 29, 1004 },
			["Desm|spineshatter"] = { 9, 4, 32, 1209 },
			["Snobillacin|spineshatter"] = { 7, 5, 65, 1047 },
			["Uweboll|spineshatter"] = { 7, 5, 19, 1046 },
			["Zapahsexa|thunderstrike"] = { 8, 4, -35, 57 },
			["Alicenchainz|spineshatter"] = { 7, 4, -6, 1121 },
			["Rejverka|spineshatter"] = { 8, 3, 35, 1108 },
			["Worldemoboss|spineshatter"] = { 8, 3, 1, 878 },
			["Chingwing|thunderstrike"] = { 5, 5, 7, 1364 },
			["Geheimis|thunderstrike"] = { 5, 5, 20, 1184 },
			["Littlebowpep|spineshatter"] = { 6, 4, 68, 1184 },
			["Minilegg|spineshatter"] = { 6, 4, 2, 1256 },
			["Salvv|thunderstrike"] = { 5, 5, 20, 1226 },
			["Wingching|thunderstrike"] = { 5, 5, 7, 1364 },
			["Ethanpri|thunderstrike"] = { 6, 2, 65, 1184 },
			["Jostix|spineshatter"] = { 3, 5, -35, 1277 },
			["Kzuu|thunderstrike"] = { 6, 2, 64, 1184 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 921 },
			["Mortallovex|spineshatter"] = { 3, 5, 56, 1184 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 911 },
			["Gloomybrook|spineshatter"] = { 2, 5, -28, 1118 },
			["Grimroll|thunderstrike"] = { 3, 4, 1, 1004 },
			["Mashylya|spineshatter"] = { 6, 1, 56, 1184 },
			["Patrickwoo|spineshatter"] = { 2, 5, -28, 1118 },
			["Thelsâ|spineshatter"] = { 2, 5, -68, 1184 },
			["Vetó|thunderstrike"] = { 3, 4, -11, 1071 },
			["Vidykravicka|thunderstrike"] = { 3, 4, -27, 12 },
			["Agaj|thunderstrike"] = { 4, 2, -5, 104 },
			["Demetsky|spineshatter"] = { 2, 4, -25, 1169 },
			["Sutlucco|spineshatter"] = { 2, 4, -25, 1171 },
			["Zralog|spineshatter"] = { 3, 3, -18, 1399 },
			["Deeqh|spineshatter"] = { 4, 1, -6, 1364 },
			["Esoteric|thunderstrike"] = { 4, 1, 28, 1004 },
			["Homerjayx|spineshatter"] = { 4, 1, -16, 1364 },
			["Inflamed|spineshatter"] = { 2, 3, -14, 987 },
			["Nimmsi|thunderstrike"] = { 4, 1, 3, 1063 },
			["Phukkhislife|thunderstrike"] = { 4, 1, 3, 1062 },
			["Roobey|spineshatter"] = { 2, 3, -9, 985 },
			["Prlee|spineshatter"] = { 0, 4, -47, 1031 },
			["Soulmoo|spineshatter"] = { 0, 4, -33, 1004 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 104 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 104 },
			["Elkerson|spineshatter"] = { 2, 1, 12, 1154 },
			["Poppercnsap|spineshatter"] = { 2, 1, 12, 1154 },
			["Bananagram|spineshatter"] = { 2, 0, 15, 1300 },
			["Dogwoman|spineshatter"] = { 2, 0, 9, 1364 },
			["Håftbefehl|spineshatter"] = { 2, 0, 13, 1364 },
			["Jaguár|spineshatter"] = { 2, 0, 15, 1300 },
			["Mysteriouz|thunderstrike"] = { 2, 0, 24, 1315 },
			["Tchiin|thunderstrike"] = { 2, 0, 11, 1318 },
			["Anhedønia|spineshatter"] = { 1, 0, 10, 1306 },
			["Bluebelle|spineshatter"] = { 1, 0, 10, 1308 },
			["Darkmid|spineshatter"] = { 0, 1, -11, 931 },
			["Dekario|spineshatter"] = { 0, 1, -11, 227 },
			["Fedowjr|spineshatter"] = { 1, 0, 2, 1364 },
			["Glk|spineshatter"] = { 0, 1, 0, 983 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 824 },
			["Maviax|spineshatter"] = { 1, 0, 12, 1148 },
			["Pipøup|spineshatter"] = { 1, 0, 12, 1157 },
			["Primeglad|spineshatter"] = { 1, 0, 3, 1364 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 207 },
			["Ylime|spineshatter"] = { 0, 1, -11, 226 },
		},
		[2] = {
			["Diodexy|spineshatter"] = { 4, 0, 4, 1155 },
		},
		[3] = {
			["Bonkheim|thunderstrike"] = { 2, 0, 4, 1116 },
			["Cazzette|thunderstrike"] = { 2, 0, 4, 1117 },
			["Cicasaurus|thunderstrike"] = { 2, 0, 4, 1117 },
			["Purgelol|thunderstrike"] = { 2, 0, 4, 1116 },
			["Stiopa|thunderstrike"] = { 2, 0, 4, 1115 },
		},
	},
}

