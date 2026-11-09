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
	built = 1794221961,
	builtText = "2026-11-09 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Asdfghjklzxc|spineshatter"] = { 10, 8, 85, 704 },
			["Cosmoboy|spineshatter"] = { 11, 7, 18, 704 },
			["Пиноккио|anniversary"] = { 10, 6, 55, 645 },
			["Сократ|anniversary"] = { 10, 6, 55, 671 },
			["Garad|spineshatter"] = { 9, 6, 29, 704 },
			["Systemhack|spineshatter"] = { 9, 6, -64, 578 },
			["Tyzin|spineshatter"] = { 9, 6, 29, 704 },
			["Doób|spineshatter"] = { 8, 6, 5, 704 },
			["Worldemoboss|spineshatter"] = { 8, 3, 1, 578 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 621 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 611 },
			["Grimroll|thunderstrike"] = { 3, 4, 1, 704 },
			["Esoteric|thunderstrike"] = { 4, 1, 28, 704 },
			["Inflamed|spineshatter"] = { 2, 3, -14, 687 },
			["Roobey|spineshatter"] = { 2, 3, -9, 685 },
			["Soulmoo|spineshatter"] = { 0, 4, -33, 704 },
			["Darkmid|spineshatter"] = { 0, 1, -11, 631 },
			["Glk|spineshatter"] = { 0, 1, 0, 683 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 524 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 33, 23, 93, 645 },
			["Сократ|anniversary"] = { 33, 23, 95, 671 },
			["Primár|spineshatter"] = { 23, 21, -108, 778 },
			["Dotgyneco|thunderstrike"] = { 18, 17, 43, 811 },
			["Minð|thunderstrike"] = { 18, 17, -77, 811 },
			["Drainèr|spineshatter"] = { 17, 15, -11, 832 },
			["Xnatry|spineshatter"] = { 17, 15, -9, 831 },
			["Shadowpapa|spineshatter"] = { 18, 11, 31, 823 },
			["Reasonicus|spineshatter"] = { 17, 11, 60, 936 },
			["Vincentxd|spineshatter"] = { 17, 11, 50, 935 },
			["Imgæy|spineshatter"] = { 10, 14, -87, 919 },
			["Asdfghjklzxc|spineshatter"] = { 10, 10, 79, 704 },
			["Bellael|spineshatter"] = { 10, 10, -116, 760 },
			["Therín|spineshatter"] = { 13, 7, 86, 778 },
			["Cosmoboy|spineshatter"] = { 11, 7, 18, 704 },
			["Deadlyway|spineshatter"] = { 11, 7, 53, 822 },
			["Doób|spineshatter"] = { 11, 7, 18, 704 },
			["Garad|spineshatter"] = { 9, 6, 29, 704 },
			["Ilovejade|spineshatter"] = { 9, 6, -90, 880 },
			["Invinciblexx|spineshatter"] = { 9, 6, -90, 879 },
			["Systemhack|spineshatter"] = { 9, 6, -64, 578 },
			["Tyzin|spineshatter"] = { 9, 6, 29, 704 },
			["Desm|spineshatter"] = { 9, 4, 32, 909 },
			["Snobillacin|spineshatter"] = { 7, 5, 65, 747 },
			["Uweboll|spineshatter"] = { 7, 5, 19, 746 },
			["Alicenchainz|spineshatter"] = { 7, 4, -6, 821 },
			["Rejverka|spineshatter"] = { 8, 3, 35, 808 },
			["Worldemoboss|spineshatter"] = { 8, 3, 1, 578 },
			["Chingwing|thunderstrike"] = { 5, 5, 7, 1064 },
			["Geheimis|thunderstrike"] = { 5, 5, 20, 884 },
			["Littlebowpep|spineshatter"] = { 6, 4, 68, 884 },
			["Minilegg|spineshatter"] = { 6, 4, 2, 956 },
			["Salvv|thunderstrike"] = { 5, 5, 20, 926 },
			["Wingching|thunderstrike"] = { 5, 5, 7, 1064 },
			["Ethanpri|thunderstrike"] = { 6, 2, 65, 884 },
			["Jostix|spineshatter"] = { 3, 5, -35, 977 },
			["Kzuu|thunderstrike"] = { 6, 2, 64, 884 },
			["Lifeburst|spineshatter"] = { 7, 1, 57, 621 },
			["Mortallovex|spineshatter"] = { 3, 5, 56, 884 },
			["Woodmanx|spineshatter"] = { 7, 1, 66, 611 },
			["Gloomybrook|spineshatter"] = { 2, 5, -28, 818 },
			["Grimroll|thunderstrike"] = { 3, 4, 1, 704 },
			["Mashylya|spineshatter"] = { 6, 1, 56, 884 },
			["Patrickwoo|spineshatter"] = { 2, 5, -28, 818 },
			["Thelsâ|spineshatter"] = { 2, 5, -68, 884 },
			["Vetó|thunderstrike"] = { 3, 4, -11, 771 },
			["Demetsky|spineshatter"] = { 2, 4, -25, 869 },
			["Sutlucco|spineshatter"] = { 2, 4, -25, 871 },
			["Tsukiyou|thunderstrike"] = { 4, 2, -5, 1418 },
			["Zralog|spineshatter"] = { 3, 3, -18, 1099 },
			["Deeqh|spineshatter"] = { 4, 1, -6, 1064 },
			["Esoteric|thunderstrike"] = { 4, 1, 28, 704 },
			["Homerjayx|spineshatter"] = { 4, 1, -16, 1064 },
			["Inflamed|spineshatter"] = { 2, 3, -14, 687 },
			["Nimmsi|thunderstrike"] = { 4, 1, 3, 763 },
			["Phukkhislife|thunderstrike"] = { 4, 1, 3, 762 },
			["Roobey|spineshatter"] = { 2, 3, -9, 685 },
			["Prlee|spineshatter"] = { 0, 4, -47, 731 },
			["Soulmoo|spineshatter"] = { 0, 4, -33, 704 },
			["Elkerson|spineshatter"] = { 2, 1, 12, 854 },
			["Poppercnsap|spineshatter"] = { 2, 1, 12, 854 },
			["Bananagram|spineshatter"] = { 2, 0, 15, 1000 },
			["Dogwoman|spineshatter"] = { 2, 0, 9, 1064 },
			["Gushers|spineshatter"] = { 2, 0, 9, 1304 },
			["Håftbefehl|spineshatter"] = { 2, 0, 13, 1064 },
			["Jaguár|spineshatter"] = { 2, 0, 15, 1000 },
			["Mysteriouz|thunderstrike"] = { 2, 0, 24, 1015 },
			["Tchiin|thunderstrike"] = { 2, 0, 11, 1018 },
			["Warbunnyx|spineshatter"] = { 2, 0, 6, 1309 },
			["Anhedønia|spineshatter"] = { 1, 0, 10, 1006 },
			["Bluebelle|spineshatter"] = { 1, 0, 10, 1008 },
			["Darkmid|spineshatter"] = { 0, 1, -11, 631 },
			["Fedow|spineshatter"] = { 1, 0, 13, 1153 },
			["Fedowjr|spineshatter"] = { 1, 0, 2, 1064 },
			["Glk|spineshatter"] = { 0, 1, 0, 683 },
			["Haftijr|spineshatter"] = { 1, 0, 15, 1153 },
			["Imzomba|spineshatter"] = { 1, 0, 18, 524 },
			["Maviax|spineshatter"] = { 1, 0, 12, 848 },
			["Pipøup|spineshatter"] = { 1, 0, 12, 857 },
			["Primeglad|spineshatter"] = { 1, 0, 3, 1064 },
			["Watercolor|thunderstrike"] = { 0, 1, -13, 1140 },
			["Zornichka|thunderstrike"] = { 0, 1, -13, 1140 },
		},
		[2] = {
			["Diodexy|spineshatter"] = { 4, 0, 4, 855 },
		},
		[3] = {
			["Bonkheim|thunderstrike"] = { 2, 0, 4, 816 },
			["Cazzette|thunderstrike"] = { 2, 0, 4, 817 },
			["Cicasaurus|thunderstrike"] = { 2, 0, 4, 817 },
			["Purgelol|thunderstrike"] = { 2, 0, 4, 816 },
			["Stiopa|thunderstrike"] = { 2, 0, 4, 815 },
		},
	},
}

