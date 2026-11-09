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
	built = 1794243564,
	builtText = "2026-11-09 11:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Backup|spineshatter"] = { 8, 2, 31, 35 },
			["Bând|spineshatter"] = { 8, 2, 31, 20 },
			["Udrii|spineshatter"] = { 1, 2, -5, 16 },
			["Darkmid|spineshatter"] = { 0, 2, -15, 14 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Zapahsexa|thunderstrike"] = { 8, 4, -35, 117 },
			["Backup|spineshatter"] = { 8, 2, 31, 35 },
			["Bând|spineshatter"] = { 8, 2, 31, 20 },
			["Agaj|thunderstrike"] = { 4, 2, -5, 164 },
			["Vidykravicka|thunderstrike"] = { 2, 4, -36, 72 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 164 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 164 },
			["Udrii|spineshatter"] = { 1, 2, -5, 16 },
			["Darkmid|spineshatter"] = { 0, 2, -15, 14 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Zapahsexa|thunderstrike"] = { 8, 4, -35, 117 },
			["Backup|spineshatter"] = { 8, 2, 31, 35 },
			["Bând|spineshatter"] = { 8, 2, 31, 20 },
			["Vidykravicka|thunderstrike"] = { 3, 4, -27, 72 },
			["Agaj|thunderstrike"] = { 4, 2, -5, 164 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 164 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 164 },
			["Udrii|spineshatter"] = { 1, 2, -5, 16 },
			["Darkmid|spineshatter"] = { 0, 2, -15, 14 },
			["Dekario|spineshatter"] = { 0, 1, -11, 287 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 267 },
			["Ylime|spineshatter"] = { 0, 1, -11, 286 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Zapahsexa|thunderstrike"] = { 8, 4, -35, 117 },
			["Backup|spineshatter"] = { 8, 2, 31, 35 },
			["Bând|spineshatter"] = { 8, 2, 31, 20 },
			["Vidykravicka|thunderstrike"] = { 3, 4, -27, 72 },
			["Agaj|thunderstrike"] = { 4, 2, -5, 164 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 164 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 164 },
			["Udrii|spineshatter"] = { 1, 2, -5, 16 },
			["Darkmid|spineshatter"] = { 0, 2, -15, 14 },
			["Dekario|spineshatter"] = { 0, 1, -11, 287 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 267 },
			["Ylime|spineshatter"] = { 0, 1, -11, 286 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 28, 21, 92, 1005 },
			["Сократ|anniversary"] = { 28, 21, 94, 1031 },
			["Primár|spineshatter"] = { 23, 21, -108, 1138 },
			["Dotgyneco|thunderstrike"] = { 18, 17, 43, 1171 },
			["Minð|thunderstrike"] = { 18, 17, -77, 1171 },
			["Drainèr|spineshatter"] = { 17, 15, -11, 1192 },
			["Xnatry|spineshatter"] = { 17, 15, -9, 1191 },
			["Shadowpapa|spineshatter"] = { 18, 11, 31, 1183 },
			["Reasonicus|spineshatter"] = { 17, 11, 60, 1296 },
			["Vincentxd|spineshatter"] = { 17, 11, 50, 1295 },
			["Imgæy|spineshatter"] = { 10, 14, -87, 1279 },
			["Asdfghjklzxc|spineshatter"] = { 10, 10, 79, 1064 },
			["Bellael|spineshatter"] = { 10, 10, -116, 1120 },
			["Therín|spineshatter"] = { 13, 7, 86, 1138 },
			["Cosmoboy|spineshatter"] = { 11, 7, 18, 1064 },
			["Deadlyway|spineshatter"] = { 11, 7, 53, 1182 },
			["Doób|spineshatter"] = { 11, 7, 18, 1064 },
			["Garad|spineshatter"] = { 9, 6, 29, 1064 },
			["Ilovejade|spineshatter"] = { 9, 6, -90, 1240 },
			["Invinciblexx|spineshatter"] = { 9, 6, -90, 1239 },
			["Systemhack|spineshatter"] = { 9, 6, -64, 938 },
			["Tyzin|spineshatter"] = { 9, 6, 29, 1064 },
			["Snobillacin|spineshatter"] = { 7, 5, 65, 1107 },
			["Uweboll|spineshatter"] = { 7, 5, 19, 1107 },
			["Zapahsexa|thunderstrike"] = { 8, 4, -35, 117 },
			["Alicenchainz|spineshatter"] = { 7, 4, -6, 1181 },
			["Rejverka|spineshatter"] = { 8, 3, 35, 1168 },
			["Worldemoboss|spineshatter"] = { 8, 3, 1, 938 },
			["Backup|spineshatter"] = { 8, 2, 31, 35 },
			["Bând|spineshatter"] = { 8, 2, 31, 20 },
			["Chingwing|thunderstrike"] = { 5, 5, 7, 1424 },
			["Geheimis|thunderstrike"] = { 5, 5, 20, 1244 },
			["Littlebowpep|spineshatter"] = { 6, 4, 68, 1244 },
			["Minilegg|spineshatter"] = { 6, 4, 2, 1316 },
			["Salvv|thunderstrike"] = { 5, 5, 20, 1286 },
			["Wingching|thunderstrike"] = { 5, 5, 7, 1424 },
			["Ethanpri|thunderstrike"] = { 6, 2, 65, 1244 },
			["Jostix|spineshatter"] = { 3, 5, -35, 1338 },
			["Kzuu|thunderstrike"] = { 6, 2, 64, 1244 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 981 },
			["Mortallovex|spineshatter"] = { 3, 5, 56, 1244 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 971 },
			["Desm|spineshatter"] = { 6, 1, 26, 1269 },
			["Gloomybrook|spineshatter"] = { 2, 5, -28, 1178 },
			["Grimroll|thunderstrike"] = { 3, 4, 1, 1064 },
			["Mashylya|spineshatter"] = { 6, 1, 56, 1244 },
			["Patrickwoo|spineshatter"] = { 2, 5, -28, 1178 },
			["Thelsâ|spineshatter"] = { 2, 5, -68, 1244 },
			["Vetó|thunderstrike"] = { 3, 4, -11, 1131 },
			["Vidykravicka|thunderstrike"] = { 3, 4, -27, 72 },
			["Agaj|thunderstrike"] = { 4, 2, -5, 164 },
			["Demetsky|spineshatter"] = { 2, 4, -25, 1229 },
			["Sutlucco|spineshatter"] = { 2, 4, -25, 1231 },
			["Deeqh|spineshatter"] = { 4, 1, -6, 1424 },
			["Esoteric|thunderstrike"] = { 4, 1, 28, 1064 },
			["Inflamed|spineshatter"] = { 2, 3, -14, 1047 },
			["Nimmsi|thunderstrike"] = { 4, 1, 3, 1123 },
			["Phukkhislife|thunderstrike"] = { 4, 1, 3, 1122 },
			["Roobey|spineshatter"] = { 2, 3, -9, 1045 },
			["Prlee|spineshatter"] = { 0, 4, -47, 1091 },
			["Soulmoo|spineshatter"] = { 0, 4, -33, 1064 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 164 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 164 },
			["Darkmid|spineshatter"] = { 0, 3, -26, 14 },
			["Elkerson|spineshatter"] = { 2, 1, 12, 1214 },
			["Poppercnsap|spineshatter"] = { 2, 1, 12, 1214 },
			["Udrii|spineshatter"] = { 1, 2, -5, 16 },
			["Bananagram|spineshatter"] = { 2, 0, 15, 1361 },
			["Dogwoman|spineshatter"] = { 2, 0, 9, 1424 },
			["Håftbefehl|spineshatter"] = { 2, 0, 13, 1424 },
			["Homerjayx|spineshatter"] = { 1, 1, -16, 1424 },
			["Jaguár|spineshatter"] = { 2, 0, 15, 1360 },
			["Mysteriouz|thunderstrike"] = { 2, 0, 24, 1375 },
			["Tchiin|thunderstrike"] = { 2, 0, 11, 1378 },
			["Anhedønia|spineshatter"] = { 1, 0, 10, 1366 },
			["Bluebelle|spineshatter"] = { 1, 0, 10, 1368 },
			["Dekario|spineshatter"] = { 0, 1, -11, 287 },
			["Fedowjr|spineshatter"] = { 1, 0, 2, 1424 },
			["Glk|spineshatter"] = { 0, 1, 0, 1043 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 884 },
			["Maviax|spineshatter"] = { 1, 0, 12, 1208 },
			["Pipøup|spineshatter"] = { 1, 0, 12, 1217 },
			["Primeglad|spineshatter"] = { 1, 0, 3, 1424 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 267 },
			["Ylime|spineshatter"] = { 0, 1, -11, 286 },
		},
		[2] = {
			["Diodexy|spineshatter"] = { 4, 0, 4, 1215 },
		},
		[3] = {
			["Bonkheim|thunderstrike"] = { 2, 0, 4, 1177 },
			["Cazzette|thunderstrike"] = { 2, 0, 4, 1177 },
			["Cicasaurus|thunderstrike"] = { 2, 0, 4, 1177 },
			["Purgelol|thunderstrike"] = { 2, 0, 4, 1176 },
			["Stiopa|thunderstrike"] = { 2, 0, 4, 1175 },
		},
	},
}

