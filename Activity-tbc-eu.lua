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
	built = 1794232764,
	builtText = "2026-11-09 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dekario|spineshatter"] = { 0, 1, -11, 107 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 87 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 71 },
			["Ylime|spineshatter"] = { 0, 1, -11, 106 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dekario|spineshatter"] = { 0, 1, -11, 107 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 87 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 71 },
			["Ylime|spineshatter"] = { 0, 1, -11, 106 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dekario|spineshatter"] = { 0, 1, -11, 107 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 704 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 87 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 71 },
			["Ylime|spineshatter"] = { 0, 1, -11, 106 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 33, 23, 93, 825 },
			["Сократ|anniversary"] = { 33, 23, 95, 851 },
			["Primár|spineshatter"] = { 23, 21, -108, 958 },
			["Dotgyneco|thunderstrike"] = { 18, 17, 43, 991 },
			["Minð|thunderstrike"] = { 18, 17, -77, 991 },
			["Drainèr|spineshatter"] = { 17, 15, -11, 1012 },
			["Xnatry|spineshatter"] = { 17, 15, -9, 1011 },
			["Shadowpapa|spineshatter"] = { 18, 11, 31, 1003 },
			["Reasonicus|spineshatter"] = { 17, 11, 60, 1116 },
			["Vincentxd|spineshatter"] = { 17, 11, 50, 1115 },
			["Imgæy|spineshatter"] = { 10, 14, -87, 1099 },
			["Asdfghjklzxc|spineshatter"] = { 10, 10, 79, 884 },
			["Bellael|spineshatter"] = { 10, 10, -116, 940 },
			["Therín|spineshatter"] = { 13, 7, 86, 958 },
			["Cosmoboy|spineshatter"] = { 11, 7, 18, 884 },
			["Deadlyway|spineshatter"] = { 11, 7, 53, 1002 },
			["Doób|spineshatter"] = { 11, 7, 18, 884 },
			["Garad|spineshatter"] = { 9, 6, 29, 884 },
			["Ilovejade|spineshatter"] = { 9, 6, -90, 1060 },
			["Invinciblexx|spineshatter"] = { 9, 6, -90, 1059 },
			["Systemhack|spineshatter"] = { 9, 6, -64, 758 },
			["Tyzin|spineshatter"] = { 9, 6, 29, 884 },
			["Desm|spineshatter"] = { 9, 4, 32, 1089 },
			["Snobillacin|spineshatter"] = { 7, 5, 65, 927 },
			["Uweboll|spineshatter"] = { 7, 5, 19, 927 },
			["Alicenchainz|spineshatter"] = { 7, 4, -6, 1001 },
			["Rejverka|spineshatter"] = { 8, 3, 35, 988 },
			["Worldemoboss|spineshatter"] = { 8, 3, 1, 758 },
			["Chingwing|thunderstrike"] = { 5, 5, 7, 1244 },
			["Geheimis|thunderstrike"] = { 5, 5, 20, 1064 },
			["Littlebowpep|spineshatter"] = { 6, 4, 68, 1064 },
			["Minilegg|spineshatter"] = { 6, 4, 2, 1136 },
			["Salvv|thunderstrike"] = { 5, 5, 20, 1106 },
			["Wingching|thunderstrike"] = { 5, 5, 7, 1244 },
			["Ethanpri|thunderstrike"] = { 6, 2, 65, 1064 },
			["Jostix|spineshatter"] = { 3, 5, -35, 1158 },
			["Kzuu|thunderstrike"] = { 6, 2, 64, 1064 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 801 },
			["Mortallovex|spineshatter"] = { 3, 5, 56, 1064 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 791 },
			["Gloomybrook|spineshatter"] = { 2, 5, -28, 998 },
			["Grimroll|thunderstrike"] = { 3, 4, 1, 884 },
			["Mashylya|spineshatter"] = { 6, 1, 56, 1064 },
			["Patrickwoo|spineshatter"] = { 2, 5, -28, 998 },
			["Thelsâ|spineshatter"] = { 2, 5, -68, 1064 },
			["Vetó|thunderstrike"] = { 3, 4, -11, 951 },
			["Demetsky|spineshatter"] = { 2, 4, -25, 1049 },
			["Sutlucco|spineshatter"] = { 2, 4, -25, 1051 },
			["Zralog|spineshatter"] = { 3, 3, -18, 1279 },
			["Deeqh|spineshatter"] = { 4, 1, -6, 1244 },
			["Esoteric|thunderstrike"] = { 4, 1, 28, 884 },
			["Homerjayx|spineshatter"] = { 4, 1, -16, 1244 },
			["Inflamed|spineshatter"] = { 2, 3, -14, 867 },
			["Nimmsi|thunderstrike"] = { 4, 1, 3, 943 },
			["Phukkhislife|thunderstrike"] = { 4, 1, 3, 942 },
			["Roobey|spineshatter"] = { 2, 3, -9, 865 },
			["Prlee|spineshatter"] = { 0, 4, -47, 911 },
			["Soulmoo|spineshatter"] = { 0, 4, -33, 884 },
			["Elkerson|spineshatter"] = { 2, 1, 12, 1034 },
			["Poppercnsap|spineshatter"] = { 2, 1, 12, 1034 },
			["Bananagram|spineshatter"] = { 2, 0, 15, 1181 },
			["Dogwoman|spineshatter"] = { 2, 0, 9, 1244 },
			["Håftbefehl|spineshatter"] = { 2, 0, 13, 1244 },
			["Jaguár|spineshatter"] = { 2, 0, 15, 1180 },
			["Mysteriouz|thunderstrike"] = { 2, 0, 24, 1195 },
			["Tchiin|thunderstrike"] = { 2, 0, 11, 1198 },
			["Anhedønia|spineshatter"] = { 1, 0, 10, 1186 },
			["Bluebelle|spineshatter"] = { 1, 0, 10, 1188 },
			["Darkmid|spineshatter"] = { 0, 1, -11, 812 },
			["Dekario|spineshatter"] = { 0, 1, -11, 107 },
			["Fedow|spineshatter"] = { 1, 0, 13, 1333 },
			["Fedowjr|spineshatter"] = { 1, 0, 2, 1244 },
			["Glk|spineshatter"] = { 0, 1, 0, 863 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 1333 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 704 },
			["Maviax|spineshatter"] = { 1, 0, 12, 1028 },
			["Pipøup|spineshatter"] = { 1, 0, 12, 1037 },
			["Primeglad|spineshatter"] = { 1, 0, 3, 1244 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 87 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 71 },
			["Watercolor|thunderstrike"] = { 0, 1, -13, 1320 },
			["Ylime|spineshatter"] = { 0, 1, -11, 106 },
			["Zornichka|thunderstrike"] = { 0, 1, -13, 1320 },
		},
		[2] = {
			["Diodexy|spineshatter"] = { 4, 0, 4, 1035 },
		},
		[3] = {
			["Bonkheim|thunderstrike"] = { 2, 0, 4, 997 },
			["Cazzette|thunderstrike"] = { 2, 0, 4, 997 },
			["Cicasaurus|thunderstrike"] = { 2, 0, 4, 997 },
			["Purgelol|thunderstrike"] = { 2, 0, 4, 996 },
			["Stiopa|thunderstrike"] = { 2, 0, 4, 995 },
		},
	},
}

