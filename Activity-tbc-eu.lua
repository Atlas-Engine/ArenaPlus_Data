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
	built = 1794225562,
	builtText = "2026-11-09 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Systemhack|spineshatter"] = { 7, 4, -53, 638 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 681 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 671 },
			["Worldemoboss|spineshatter"] = { 2, 1, -15, 638 },
			["Пиноккио|anniversary"] = { 2, 1, 10, 705 },
			["Darkmid|spineshatter"] = { 0, 1, -11, 691 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 584 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 33, 23, 93, 705 },
			["Сократ|anniversary"] = { 33, 23, 95, 731 },
			["Primár|spineshatter"] = { 23, 21, -108, 838 },
			["Dotgyneco|thunderstrike"] = { 18, 17, 43, 871 },
			["Minð|thunderstrike"] = { 18, 17, -77, 871 },
			["Drainèr|spineshatter"] = { 17, 15, -11, 892 },
			["Xnatry|spineshatter"] = { 17, 15, -9, 891 },
			["Shadowpapa|spineshatter"] = { 18, 11, 31, 883 },
			["Reasonicus|spineshatter"] = { 17, 11, 60, 996 },
			["Vincentxd|spineshatter"] = { 17, 11, 50, 995 },
			["Imgæy|spineshatter"] = { 10, 14, -87, 979 },
			["Asdfghjklzxc|spineshatter"] = { 10, 10, 79, 764 },
			["Bellael|spineshatter"] = { 10, 10, -116, 820 },
			["Therín|spineshatter"] = { 13, 7, 86, 838 },
			["Cosmoboy|spineshatter"] = { 11, 7, 18, 764 },
			["Deadlyway|spineshatter"] = { 11, 7, 53, 882 },
			["Doób|spineshatter"] = { 11, 7, 18, 764 },
			["Garad|spineshatter"] = { 9, 6, 29, 764 },
			["Ilovejade|spineshatter"] = { 9, 6, -90, 940 },
			["Invinciblexx|spineshatter"] = { 9, 6, -90, 939 },
			["Systemhack|spineshatter"] = { 9, 6, -64, 638 },
			["Tyzin|spineshatter"] = { 9, 6, 29, 764 },
			["Desm|spineshatter"] = { 9, 4, 32, 969 },
			["Snobillacin|spineshatter"] = { 7, 5, 65, 807 },
			["Uweboll|spineshatter"] = { 7, 5, 19, 807 },
			["Alicenchainz|spineshatter"] = { 7, 4, -6, 881 },
			["Rejverka|spineshatter"] = { 8, 3, 35, 868 },
			["Worldemoboss|spineshatter"] = { 8, 3, 1, 638 },
			["Chingwing|thunderstrike"] = { 5, 5, 7, 1124 },
			["Geheimis|thunderstrike"] = { 5, 5, 20, 944 },
			["Littlebowpep|spineshatter"] = { 6, 4, 68, 944 },
			["Minilegg|spineshatter"] = { 6, 4, 2, 1016 },
			["Salvv|thunderstrike"] = { 5, 5, 20, 986 },
			["Wingching|thunderstrike"] = { 5, 5, 7, 1124 },
			["Ethanpri|thunderstrike"] = { 6, 2, 65, 944 },
			["Jostix|spineshatter"] = { 3, 5, -35, 1038 },
			["Kzuu|thunderstrike"] = { 6, 2, 64, 944 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 681 },
			["Mortallovex|spineshatter"] = { 3, 5, 56, 944 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 671 },
			["Gloomybrook|spineshatter"] = { 2, 5, -28, 878 },
			["Grimroll|thunderstrike"] = { 3, 4, 1, 764 },
			["Mashylya|spineshatter"] = { 6, 1, 56, 944 },
			["Patrickwoo|spineshatter"] = { 2, 5, -28, 878 },
			["Thelsâ|spineshatter"] = { 2, 5, -68, 944 },
			["Vetó|thunderstrike"] = { 3, 4, -11, 831 },
			["Demetsky|spineshatter"] = { 2, 4, -25, 929 },
			["Sutlucco|spineshatter"] = { 2, 4, -25, 931 },
			["Zralog|spineshatter"] = { 3, 3, -18, 1159 },
			["Deeqh|spineshatter"] = { 4, 1, -6, 1124 },
			["Esoteric|thunderstrike"] = { 4, 1, 28, 764 },
			["Homerjayx|spineshatter"] = { 4, 1, -16, 1124 },
			["Inflamed|spineshatter"] = { 2, 3, -14, 747 },
			["Nimmsi|thunderstrike"] = { 4, 1, 3, 823 },
			["Phukkhislife|thunderstrike"] = { 4, 1, 3, 822 },
			["Roobey|spineshatter"] = { 2, 3, -9, 745 },
			["Prlee|spineshatter"] = { 0, 4, -47, 791 },
			["Soulmoo|spineshatter"] = { 0, 4, -33, 764 },
			["Elkerson|spineshatter"] = { 2, 1, 12, 914 },
			["Poppercnsap|spineshatter"] = { 2, 1, 12, 914 },
			["Bananagram|spineshatter"] = { 2, 0, 15, 1061 },
			["Dogwoman|spineshatter"] = { 2, 0, 9, 1124 },
			["Gushers|spineshatter"] = { 2, 0, 9, 1364 },
			["Håftbefehl|spineshatter"] = { 2, 0, 13, 1124 },
			["Jaguár|spineshatter"] = { 2, 0, 15, 1060 },
			["Mysteriouz|thunderstrike"] = { 2, 0, 24, 1075 },
			["Tchiin|thunderstrike"] = { 2, 0, 11, 1078 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 1369 },
			["Anhedønia|spineshatter"] = { 1, 0, 10, 1066 },
			["Bluebelle|spineshatter"] = { 1, 0, 10, 1068 },
			["Darkmid|spineshatter"] = { 0, 1, -11, 691 },
			["Fedow|spineshatter"] = { 1, 0, 13, 1213 },
			["Fedowjr|spineshatter"] = { 1, 0, 2, 1124 },
			["Glk|spineshatter"] = { 0, 1, 0, 743 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 1213 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 584 },
			["Maviax|spineshatter"] = { 1, 0, 12, 908 },
			["Pipøup|spineshatter"] = { 1, 0, 12, 917 },
			["Primeglad|spineshatter"] = { 1, 0, 3, 1124 },
			["Watercolor|thunderstrike"] = { 0, 1, -13, 1200 },
			["Zornichka|thunderstrike"] = { 0, 1, -13, 1200 },
		},
		[2] = {
			["Diodexy|spineshatter"] = { 4, 0, 4, 915 },
		},
		[3] = {
			["Bonkheim|thunderstrike"] = { 2, 0, 4, 876 },
			["Cazzette|thunderstrike"] = { 2, 0, 4, 877 },
			["Cicasaurus|thunderstrike"] = { 2, 0, 4, 877 },
			["Purgelol|thunderstrike"] = { 2, 0, 4, 876 },
			["Stiopa|thunderstrike"] = { 2, 0, 4, 875 },
		},
	},
}

