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
	built = 1794218358,
	builtText = "2026-11-09 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Asdfghjklzxc|spineshatter"] = { 10, 8, 85, 644 },
			["Bellael|spineshatter"] = { 10, 8, -88, 700 },
			["Cosmoboy|spineshatter"] = { 11, 7, 18, 644 },
			["Primár|spineshatter"] = { 10, 6, -34, 718 },
			["Therín|spineshatter"] = { 10, 6, 58, 718 },
			["Пиноккио|anniversary"] = { 10, 6, 55, 585 },
			["Сократ|anniversary"] = { 10, 6, 55, 611 },
			["Garad|spineshatter"] = { 9, 6, 29, 644 },
			["Systemhack|spineshatter"] = { 9, 6, -64, 518 },
			["Tyzin|spineshatter"] = { 9, 6, 29, 644 },
			["Doób|spineshatter"] = { 8, 6, 5, 644 },
			["Snobillacin|spineshatter"] = { 7, 5, 65, 687 },
			["Uweboll|spineshatter"] = { 7, 5, 19, 686 },
			["Worldemoboss|spineshatter"] = { 8, 3, 1, 518 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 561 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 551 },
			["Grimroll|thunderstrike"] = { 3, 4, 1, 644 },
			["Vetó|thunderstrike"] = { 3, 4, -11, 710 },
			["Esoteric|thunderstrike"] = { 4, 1, 28, 644 },
			["Inflamed|spineshatter"] = { 2, 3, -14, 627 },
			["Nimmsi|thunderstrike"] = { 4, 1, 3, 703 },
			["Phukkhislife|thunderstrike"] = { 4, 1, 3, 701 },
			["Roobey|spineshatter"] = { 2, 3, -9, 625 },
			["Prlee|spineshatter"] = { 0, 4, -47, 670 },
			["Soulmoo|spineshatter"] = { 0, 4, -33, 644 },
			["Darkmid|spineshatter"] = { 0, 1, -11, 571 },
			["Glk|spineshatter"] = { 0, 1, 0, 623 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 464 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 33, 23, 93, 585 },
			["Сократ|anniversary"] = { 33, 23, 95, 611 },
			["Primár|spineshatter"] = { 23, 21, -108, 718 },
			["Dotgyneco|thunderstrike"] = { 18, 17, 43, 751 },
			["Minð|thunderstrike"] = { 18, 17, -77, 751 },
			["Drainèr|spineshatter"] = { 17, 15, -11, 772 },
			["Xnatry|spineshatter"] = { 17, 15, -9, 771 },
			["Shadowpapa|spineshatter"] = { 18, 11, 31, 763 },
			["Reasonicus|spineshatter"] = { 17, 11, 60, 876 },
			["Vincentxd|spineshatter"] = { 17, 11, 50, 874 },
			["Imgæy|spineshatter"] = { 10, 14, -87, 859 },
			["Asdfghjklzxc|spineshatter"] = { 10, 10, 79, 644 },
			["Bellael|spineshatter"] = { 10, 10, -116, 700 },
			["Therín|spineshatter"] = { 13, 7, 86, 718 },
			["Cosmoboy|spineshatter"] = { 11, 7, 18, 644 },
			["Deadlyway|spineshatter"] = { 11, 7, 53, 762 },
			["Doób|spineshatter"] = { 11, 7, 18, 644 },
			["Garad|spineshatter"] = { 9, 6, 29, 644 },
			["Ilovejade|spineshatter"] = { 9, 6, -90, 820 },
			["Invinciblexx|spineshatter"] = { 9, 6, -90, 819 },
			["Systemhack|spineshatter"] = { 9, 6, -64, 518 },
			["Tyzin|spineshatter"] = { 9, 6, 29, 644 },
			["Desm|spineshatter"] = { 9, 4, 32, 849 },
			["Snobillacin|spineshatter"] = { 7, 5, 65, 687 },
			["Uweboll|spineshatter"] = { 7, 5, 19, 686 },
			["Alicenchainz|spineshatter"] = { 7, 4, -6, 761 },
			["Rejverka|spineshatter"] = { 8, 3, 35, 748 },
			["Worldemoboss|spineshatter"] = { 8, 3, 1, 518 },
			["Chingwing|thunderstrike"] = { 5, 5, 7, 1004 },
			["Geheimis|thunderstrike"] = { 5, 5, 20, 824 },
			["Littlebowpep|spineshatter"] = { 6, 4, 68, 824 },
			["Minilegg|spineshatter"] = { 6, 4, 2, 896 },
			["Salvv|thunderstrike"] = { 5, 5, 20, 866 },
			["Wingching|thunderstrike"] = { 5, 5, 7, 1004 },
			["Ethanpri|thunderstrike"] = { 6, 2, 65, 824 },
			["Jostix|spineshatter"] = { 3, 5, -35, 917 },
			["Kzuu|thunderstrike"] = { 6, 2, 64, 824 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 561 },
			["Mortallovex|spineshatter"] = { 3, 5, 56, 824 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 551 },
			["Gloomybrook|spineshatter"] = { 2, 5, -28, 758 },
			["Grimroll|thunderstrike"] = { 3, 4, 1, 644 },
			["Mashylya|spineshatter"] = { 6, 1, 56, 824 },
			["Patrickwoo|spineshatter"] = { 2, 5, -28, 758 },
			["Thelsâ|spineshatter"] = { 2, 5, -68, 824 },
			["Vetó|thunderstrike"] = { 3, 4, -11, 710 },
			["Demetsky|spineshatter"] = { 2, 4, -25, 809 },
			["Sutlucco|spineshatter"] = { 2, 4, -25, 811 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 1358 },
			["Zralog|spineshatter"] = { 3, 3, -18, 1039 },
			["Deeqh|spineshatter"] = { 4, 1, -6, 1004 },
			["Esoteric|thunderstrike"] = { 4, 1, 28, 644 },
			["Homerjayx|spineshatter"] = { 4, 1, -16, 1004 },
			["Inflamed|spineshatter"] = { 2, 3, -14, 627 },
			["Nimmsi|thunderstrike"] = { 4, 1, 3, 703 },
			["Phukkhislife|thunderstrike"] = { 4, 1, 3, 701 },
			["Roobey|spineshatter"] = { 2, 3, -9, 625 },
			["Prlee|spineshatter"] = { 0, 4, -47, 670 },
			["Soulmoo|spineshatter"] = { 0, 4, -33, 644 },
			["Elkerson|spineshatter"] = { 2, 1, 12, 794 },
			["Poppercnsap|spineshatter"] = { 2, 1, 12, 794 },
			["Bananagram|spineshatter"] = { 2, 0, 15, 940 },
			["Dogwoman|spineshatter"] = { 2, 0, 9, 1004 },
			["Gushers|spineshatter"] = { 2, 0, 9, 1244 },
			["Håftbefehl|spineshatter"] = { 2, 0, 13, 1004 },
			["Jaguár|spineshatter"] = { 2, 0, 15, 940 },
			["Mysteriouz|thunderstrike"] = { 2, 0, 24, 955 },
			["Tchiin|thunderstrike"] = { 2, 0, 11, 958 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 1249 },
			["Anhedønia|spineshatter"] = { 1, 0, 10, 946 },
			["Bluebelle|spineshatter"] = { 1, 0, 10, 947 },
			["Darkmid|spineshatter"] = { 0, 1, -11, 571 },
			["Fedow|spineshatter"] = { 1, 0, 13, 1093 },
			["Fedowjr|spineshatter"] = { 1, 0, 2, 1004 },
			["Glk|spineshatter"] = { 0, 1, 0, 623 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 1093 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 464 },
			["Maviax|spineshatter"] = { 1, 0, 12, 788 },
			["Pipøup|spineshatter"] = { 1, 0, 12, 797 },
			["Primeglad|spineshatter"] = { 1, 0, 3, 1004 },
			["Watercolor|thunderstrike"] = { 0, 1, -13, 1080 },
			["Zornichka|thunderstrike"] = { 0, 1, -13, 1080 },
		},
		[2] = {
			["Diodexy|spineshatter"] = { 4, 0, 4, 795 },
		},
		[3] = {
			["Bonkheim|thunderstrike"] = { 2, 0, 4, 756 },
			["Cazzette|thunderstrike"] = { 2, 0, 4, 757 },
			["Cicasaurus|thunderstrike"] = { 2, 0, 4, 757 },
			["Purgelol|thunderstrike"] = { 2, 0, 4, 756 },
			["Stiopa|thunderstrike"] = { 2, 0, 4, 755 },
		},
	},
}

