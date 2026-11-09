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
	built = 1794229161,
	builtText = "2026-11-09 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dekario|spineshatter"] = { 0, 1, -11, 47 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 27 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 11 },
			["Ylime|spineshatter"] = { 0, 1, -11, 46 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dekario|spineshatter"] = { 0, 1, -11, 47 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 27 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 11 },
			["Ylime|spineshatter"] = { 0, 1, -11, 46 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dekario|spineshatter"] = { 0, 1, -11, 47 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 27 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 11 },
			["Ylime|spineshatter"] = { 0, 1, -11, 46 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Systemhack|spineshatter"] = { 2, 2, -42, 698 },
			["Worldemoboss|spineshatter"] = { 2, 1, -15, 698 },
			["Dekario|spineshatter"] = { 0, 1, -11, 47 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 644 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 27 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 11 },
			["Ylime|spineshatter"] = { 0, 1, -11, 46 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 33, 23, 93, 765 },
			["Сократ|anniversary"] = { 33, 23, 95, 791 },
			["Primár|spineshatter"] = { 23, 21, -108, 898 },
			["Dotgyneco|thunderstrike"] = { 18, 17, 43, 931 },
			["Minð|thunderstrike"] = { 18, 17, -77, 931 },
			["Drainèr|spineshatter"] = { 17, 15, -11, 952 },
			["Xnatry|spineshatter"] = { 17, 15, -9, 951 },
			["Shadowpapa|spineshatter"] = { 18, 11, 31, 943 },
			["Reasonicus|spineshatter"] = { 17, 11, 60, 1056 },
			["Vincentxd|spineshatter"] = { 17, 11, 50, 1055 },
			["Imgæy|spineshatter"] = { 10, 14, -87, 1039 },
			["Asdfghjklzxc|spineshatter"] = { 10, 10, 79, 824 },
			["Bellael|spineshatter"] = { 10, 10, -116, 880 },
			["Therín|spineshatter"] = { 13, 7, 86, 898 },
			["Cosmoboy|spineshatter"] = { 11, 7, 18, 824 },
			["Deadlyway|spineshatter"] = { 11, 7, 53, 942 },
			["Doób|spineshatter"] = { 11, 7, 18, 824 },
			["Garad|spineshatter"] = { 9, 6, 29, 824 },
			["Ilovejade|spineshatter"] = { 9, 6, -90, 1000 },
			["Invinciblexx|spineshatter"] = { 9, 6, -90, 999 },
			["Systemhack|spineshatter"] = { 9, 6, -64, 698 },
			["Tyzin|spineshatter"] = { 9, 6, 29, 824 },
			["Desm|spineshatter"] = { 9, 4, 32, 1029 },
			["Snobillacin|spineshatter"] = { 7, 5, 65, 867 },
			["Uweboll|spineshatter"] = { 7, 5, 19, 866 },
			["Alicenchainz|spineshatter"] = { 7, 4, -6, 941 },
			["Rejverka|spineshatter"] = { 8, 3, 35, 928 },
			["Worldemoboss|spineshatter"] = { 8, 3, 1, 698 },
			["Chingwing|thunderstrike"] = { 5, 5, 7, 1184 },
			["Geheimis|thunderstrike"] = { 5, 5, 20, 1004 },
			["Littlebowpep|spineshatter"] = { 6, 4, 68, 1004 },
			["Minilegg|spineshatter"] = { 6, 4, 2, 1076 },
			["Salvv|thunderstrike"] = { 5, 5, 20, 1046 },
			["Wingching|thunderstrike"] = { 5, 5, 7, 1184 },
			["Ethanpri|thunderstrike"] = { 6, 2, 65, 1004 },
			["Jostix|spineshatter"] = { 3, 5, -35, 1097 },
			["Kzuu|thunderstrike"] = { 6, 2, 64, 1004 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 741 },
			["Mortallovex|spineshatter"] = { 3, 5, 56, 1004 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 731 },
			["Gloomybrook|spineshatter"] = { 2, 5, -28, 938 },
			["Grimroll|thunderstrike"] = { 3, 4, 1, 824 },
			["Mashylya|spineshatter"] = { 6, 1, 56, 1004 },
			["Patrickwoo|spineshatter"] = { 2, 5, -28, 938 },
			["Thelsâ|spineshatter"] = { 2, 5, -68, 1004 },
			["Vetó|thunderstrike"] = { 3, 4, -11, 891 },
			["Demetsky|spineshatter"] = { 2, 4, -25, 989 },
			["Sutlucco|spineshatter"] = { 2, 4, -25, 991 },
			["Zralog|spineshatter"] = { 3, 3, -18, 1219 },
			["Deeqh|spineshatter"] = { 4, 1, -6, 1184 },
			["Esoteric|thunderstrike"] = { 4, 1, 28, 824 },
			["Homerjayx|spineshatter"] = { 4, 1, -16, 1184 },
			["Inflamed|spineshatter"] = { 2, 3, -14, 807 },
			["Nimmsi|thunderstrike"] = { 4, 1, 3, 883 },
			["Phukkhislife|thunderstrike"] = { 4, 1, 3, 882 },
			["Roobey|spineshatter"] = { 2, 3, -9, 805 },
			["Prlee|spineshatter"] = { 0, 4, -47, 851 },
			["Soulmoo|spineshatter"] = { 0, 4, -33, 824 },
			["Elkerson|spineshatter"] = { 2, 1, 12, 974 },
			["Poppercnsap|spineshatter"] = { 2, 1, 12, 974 },
			["Bananagram|spineshatter"] = { 2, 0, 15, 1120 },
			["Dogwoman|spineshatter"] = { 2, 0, 9, 1184 },
			["Gushers|spineshatter"] = { 2, 0, 9, 1424 },
			["Håftbefehl|spineshatter"] = { 2, 0, 13, 1184 },
			["Jaguár|spineshatter"] = { 2, 0, 15, 1120 },
			["Mysteriouz|thunderstrike"] = { 2, 0, 24, 1135 },
			["Tchiin|thunderstrike"] = { 2, 0, 11, 1138 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 1429 },
			["Anhedønia|spineshatter"] = { 1, 0, 10, 1126 },
			["Bluebelle|spineshatter"] = { 1, 0, 10, 1128 },
			["Darkmid|spineshatter"] = { 0, 1, -11, 751 },
			["Dekario|spineshatter"] = { 0, 1, -11, 47 },
			["Fedow|spineshatter"] = { 1, 0, 13, 1273 },
			["Fedowjr|spineshatter"] = { 1, 0, 2, 1184 },
			["Glk|spineshatter"] = { 0, 1, 0, 803 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 1273 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 644 },
			["Maviax|spineshatter"] = { 1, 0, 12, 968 },
			["Pipøup|spineshatter"] = { 1, 0, 12, 977 },
			["Primeglad|spineshatter"] = { 1, 0, 3, 1184 },
			["Rubyjunior|thunderstrike"] = { 1, 0, 13, 27 },
			["Vidykravicka|thunderstrike"] = { 1, 0, 9, 11 },
			["Watercolor|thunderstrike"] = { 0, 1, -13, 1260 },
			["Ylime|spineshatter"] = { 0, 1, -11, 46 },
			["Zornichka|thunderstrike"] = { 0, 1, -13, 1260 },
		},
		[2] = {
			["Diodexy|spineshatter"] = { 4, 0, 4, 975 },
		},
		[3] = {
			["Bonkheim|thunderstrike"] = { 2, 0, 4, 936 },
			["Cazzette|thunderstrike"] = { 2, 0, 4, 937 },
			["Cicasaurus|thunderstrike"] = { 2, 0, 4, 937 },
			["Purgelol|thunderstrike"] = { 2, 0, 4, 936 },
			["Stiopa|thunderstrike"] = { 2, 0, 4, 935 },
		},
	},
}

