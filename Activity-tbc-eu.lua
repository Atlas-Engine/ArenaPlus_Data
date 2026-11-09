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
	built = 1794236373,
	builtText = "2026-11-09 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Agaj|thunderstrike"] = { 4, 2, -5, 45 },
			["Zapahsexa|thunderstrike"] = { 4, 2, -5, 45 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 45 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Agaj|thunderstrike"] = { 4, 2, -5, 45 },
			["Zapahsexa|thunderstrike"] = { 4, 2, -5, 45 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 45 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 45 },
			["Dekario|spineshatter"] = { 0, 1, -11, 167 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 147 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 131 },
			["Ylime|spineshatter"] = { 0, 1, -11, 166 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Agaj|thunderstrike"] = { 4, 2, -5, 45 },
			["Zapahsexa|thunderstrike"] = { 4, 2, -5, 45 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 45 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 45 },
			["Dekario|spineshatter"] = { 0, 1, -11, 167 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 147 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 131 },
			["Ylime|spineshatter"] = { 0, 1, -11, 166 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Agaj|thunderstrike"] = { 4, 2, -5, 45 },
			["Zapahsexa|thunderstrike"] = { 4, 2, -5, 45 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 45 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 45 },
			["Dekario|spineshatter"] = { 0, 1, -11, 167 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 147 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 131 },
			["Ylime|spineshatter"] = { 0, 1, -11, 166 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 28, 21, 92, 885 },
			["Сократ|anniversary"] = { 28, 21, 94, 911 },
			["Primár|spineshatter"] = { 23, 21, -108, 1018 },
			["Dotgyneco|thunderstrike"] = { 18, 17, 43, 1051 },
			["Minð|thunderstrike"] = { 18, 17, -77, 1051 },
			["Drainèr|spineshatter"] = { 17, 15, -11, 1072 },
			["Xnatry|spineshatter"] = { 17, 15, -9, 1072 },
			["Shadowpapa|spineshatter"] = { 18, 11, 31, 1063 },
			["Reasonicus|spineshatter"] = { 17, 11, 60, 1176 },
			["Vincentxd|spineshatter"] = { 17, 11, 50, 1175 },
			["Imgæy|spineshatter"] = { 10, 14, -87, 1159 },
			["Asdfghjklzxc|spineshatter"] = { 10, 10, 79, 945 },
			["Bellael|spineshatter"] = { 10, 10, -116, 1000 },
			["Therín|spineshatter"] = { 13, 7, 86, 1018 },
			["Cosmoboy|spineshatter"] = { 11, 7, 18, 945 },
			["Deadlyway|spineshatter"] = { 11, 7, 53, 1062 },
			["Doób|spineshatter"] = { 11, 7, 18, 945 },
			["Garad|spineshatter"] = { 9, 6, 29, 945 },
			["Ilovejade|spineshatter"] = { 9, 6, -90, 1120 },
			["Invinciblexx|spineshatter"] = { 9, 6, -90, 1119 },
			["Systemhack|spineshatter"] = { 9, 6, -64, 818 },
			["Tyzin|spineshatter"] = { 9, 6, 29, 945 },
			["Desm|spineshatter"] = { 9, 4, 32, 1149 },
			["Snobillacin|spineshatter"] = { 7, 5, 65, 987 },
			["Uweboll|spineshatter"] = { 7, 5, 19, 987 },
			["Alicenchainz|spineshatter"] = { 7, 4, -6, 1062 },
			["Rejverka|spineshatter"] = { 8, 3, 35, 1048 },
			["Worldemoboss|spineshatter"] = { 8, 3, 1, 818 },
			["Chingwing|thunderstrike"] = { 5, 5, 7, 1305 },
			["Geheimis|thunderstrike"] = { 5, 5, 20, 1125 },
			["Littlebowpep|spineshatter"] = { 6, 4, 68, 1125 },
			["Minilegg|spineshatter"] = { 6, 4, 2, 1196 },
			["Salvv|thunderstrike"] = { 5, 5, 20, 1166 },
			["Wingching|thunderstrike"] = { 5, 5, 7, 1305 },
			["Ethanpri|thunderstrike"] = { 6, 2, 65, 1125 },
			["Jostix|spineshatter"] = { 3, 5, -35, 1218 },
			["Kzuu|thunderstrike"] = { 6, 2, 64, 1125 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 861 },
			["Mortallovex|spineshatter"] = { 3, 5, 56, 1125 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 851 },
			["Gloomybrook|spineshatter"] = { 2, 5, -28, 1058 },
			["Grimroll|thunderstrike"] = { 3, 4, 1, 945 },
			["Mashylya|spineshatter"] = { 6, 1, 56, 1125 },
			["Patrickwoo|spineshatter"] = { 2, 5, -28, 1058 },
			["Thelsâ|spineshatter"] = { 2, 5, -68, 1125 },
			["Vetó|thunderstrike"] = { 3, 4, -11, 1011 },
			["Agaj|thunderstrike"] = { 4, 2, -5, 45 },
			["Demetsky|spineshatter"] = { 2, 4, -25, 1109 },
			["Sutlucco|spineshatter"] = { 2, 4, -25, 1111 },
			["Zapahsexa|thunderstrike"] = { 4, 2, -5, 45 },
			["Zralog|spineshatter"] = { 3, 3, -18, 1339 },
			["Deeqh|spineshatter"] = { 4, 1, -6, 1305 },
			["Esoteric|thunderstrike"] = { 4, 1, 28, 945 },
			["Homerjayx|spineshatter"] = { 4, 1, -16, 1305 },
			["Inflamed|spineshatter"] = { 2, 3, -14, 927 },
			["Nimmsi|thunderstrike"] = { 4, 1, 3, 1004 },
			["Phukkhislife|thunderstrike"] = { 4, 1, 3, 1002 },
			["Roobey|spineshatter"] = { 2, 3, -9, 925 },
			["Prlee|spineshatter"] = { 0, 4, -47, 971 },
			["Soulmoo|spineshatter"] = { 0, 4, -33, 945 },
			["Azzaraa|spineshatter"] = { 2, 1, -5, 45 },
			["Bearwhale|spineshatter"] = { 2, 1, -5, 45 },
			["Elkerson|spineshatter"] = { 2, 1, 12, 1095 },
			["Poppercnsap|spineshatter"] = { 2, 1, 12, 1094 },
			["Bananagram|spineshatter"] = { 2, 0, 15, 1241 },
			["Dogwoman|spineshatter"] = { 2, 0, 9, 1305 },
			["Håftbefehl|spineshatter"] = { 2, 0, 13, 1305 },
			["Jaguár|spineshatter"] = { 2, 0, 15, 1240 },
			["Mysteriouz|thunderstrike"] = { 2, 0, 24, 1255 },
			["Tchiin|thunderstrike"] = { 2, 0, 11, 1258 },
			["Anhedønia|spineshatter"] = { 1, 0, 10, 1247 },
			["Bluebelle|spineshatter"] = { 1, 0, 10, 1248 },
			["Darkmid|spineshatter"] = { 0, 1, -11, 872 },
			["Dekario|spineshatter"] = { 0, 1, -11, 167 },
			["Fedow|spineshatter"] = { 1, 0, 13, 1394 },
			["Fedowjr|spineshatter"] = { 1, 0, 2, 1305 },
			["Glk|spineshatter"] = { 0, 1, 0, 923 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 1393 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 765 },
			["Maviax|spineshatter"] = { 1, 0, 12, 1088 },
			["Pipøup|spineshatter"] = { 1, 0, 12, 1097 },
			["Primeglad|spineshatter"] = { 1, 0, 3, 1305 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 147 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 131 },
			["Watercolor|thunderstrike"] = { 0, 1, -13, 1381 },
			["Ylime|spineshatter"] = { 0, 1, -11, 166 },
			["Zornichka|thunderstrike"] = { 0, 1, -13, 1381 },
		},
		[2] = {
			["Diodexy|spineshatter"] = { 4, 0, 4, 1095 },
		},
		[3] = {
			["Bonkheim|thunderstrike"] = { 2, 0, 4, 1057 },
			["Cazzette|thunderstrike"] = { 2, 0, 4, 1057 },
			["Cicasaurus|thunderstrike"] = { 2, 0, 4, 1057 },
			["Purgelol|thunderstrike"] = { 2, 0, 4, 1057 },
			["Stiopa|thunderstrike"] = { 2, 0, 4, 1055 },
		},
	},
}

