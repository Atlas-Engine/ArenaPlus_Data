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
	built = 1794049164,
	builtText = "2026-11-07 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 59 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 59 },
			["Oldp|spineshatter"] = { 1, 1, -18, 61 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 59 },
			["Oldp|spineshatter"] = { 1, 1, -18, 61 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 18, 11, 128, 567 },
			["Sustanøn|spineshatter"] = { 18, 11, 112, 567 },
			["Kenndyman|spineshatter"] = { 15, 11, 85, 704 },
			["Megànføx|spineshatter"] = { 15, 11, 32, 704 },
			["Eyta|spineshatter"] = { 12, 11, 29, 657 },
			["Yodakohl|spineshatter"] = { 12, 11, 29, 657 },
			["Cosmoboy|spineshatter"] = { 12, 8, -19, 660 },
			["Doób|spineshatter"] = { 12, 8, -19, 658 },
			["Shadowpapa|spineshatter"] = { 11, 8, -7, 704 },
			["Longas|thunderstrike"] = { 9, 9, -111, 524 },
			["Ellilol|thunderstrike"] = { 11, 6, 52, 630 },
			["Shadøwsfall|thunderstrike"] = { 11, 6, 52, 635 },
			["Firaa|spineshatter"] = { 5, 9, -71, 702 },
			["Bebøp|spineshatter"] = { 7, 6, -5, 704 },
			["Amzzi|spineshatter"] = { 4, 7, -38, 702 },
			["Baqera|thunderstrike"] = { 1, 6, -50, 645 },
			["Crazyhomeles|thunderstrike"] = { 1, 6, -50, 703 },
			["Garad|spineshatter"] = { 2, 5, -52, 675 },
			["Tyzin|spineshatter"] = { 2, 5, -52, 674 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 552 },
			["Crankshãft|spineshatter"] = { 6, 0, 48, 704 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 566 },
			["Jostix|spineshatter"] = { 6, 0, 48, 704 },
			["Hotmodel|spineshatter"] = { 2, 2, 13, 704 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 59 },
			["Oldp|spineshatter"] = { 1, 1, -18, 61 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, 3, 667 },
			["Siittäjä|thunderstrike"] = { 3, 3, -6, 667 },
			["Iridial|spineshatter"] = { 4, 1, 14, 666 },
			["Maxj|spineshatter"] = { 4, 1, 47, 668 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Demetsky|spineshatter"] = { 19, 13, 27, 754 },
			["Sutlucco|spineshatter"] = { 19, 13, 27, 754 },
			["Orcabrina|spineshatter"] = { 18, 11, 128, 567 },
			["Sustanøn|spineshatter"] = { 18, 11, 112, 567 },
			["Notagainqt|spineshatter"] = { 13, 14, -71, 935 },
			["Kenndyman|spineshatter"] = { 15, 11, 85, 704 },
			["Megànføx|spineshatter"] = { 15, 11, 32, 704 },
			["Everlost|spineshatter"] = { 15, 10, 9, 770 },
			["Farsaroga|spineshatter"] = { 15, 10, 2, 771 },
			["Eyta|spineshatter"] = { 12, 11, 29, 657 },
			["Yodakohl|spineshatter"] = { 12, 11, 29, 657 },
			["Jarnotrolli|spineshatter"] = { 14, 8, 111, 854 },
			["Oldtobye|spineshatter"] = { 14, 8, 30, 855 },
			["Reasonicus|spineshatter"] = { 11, 11, -68, 1064 },
			["Vincentxd|spineshatter"] = { 11, 11, -87, 1064 },
			["Ellilol|thunderstrike"] = { 12, 9, 33, 630 },
			["Shadøwsfall|thunderstrike"] = { 12, 9, 33, 635 },
			["Cosmoboy|spineshatter"] = { 12, 8, -19, 660 },
			["Doób|spineshatter"] = { 12, 8, -19, 658 },
			["Ãäøàáåø|spineshatter"] = { 13, 6, 134, 1108 },
			["Shadowpapa|spineshatter"] = { 11, 8, -7, 704 },
			["Votrex|spineshatter"] = { 13, 6, 145, 1108 },
			["Longas|thunderstrike"] = { 9, 9, -111, 524 },
			["Baguetteftw|spineshatter"] = { 14, 2, 114, 1261 },
			["Druidcoachxx|spineshatter"] = { 6, 10, -44, 884 },
			["Sifodyaz|spineshatter"] = { 6, 10, -12, 884 },
			["Xdskullzz|spineshatter"] = { 14, 2, 138, 1261 },
			["Abuzzed|spineshatter"] = { 5, 10, -77, 847 },
			["Ecrøf|spineshatter"] = { 6, 9, -48, 1181 },
			["Funkyxd|spineshatter"] = { 8, 7, -49, 881 },
			["Psyzerg|spineshatter"] = { 5, 10, -44, 847 },
			["Twatcatcher|spineshatter"] = { 8, 7, -49, 881 },
			["Firaa|spineshatter"] = { 5, 9, -71, 702 },
			["Bebøp|spineshatter"] = { 7, 6, -5, 704 },
			["Koeter|spineshatter"] = { 9, 3, 49, 1193 },
			["Séphiz|spineshatter"] = { 7, 5, 1, 990 },
			["Tamár|spineshatter"] = { 9, 3, 43, 1191 },
			["Amzzi|spineshatter"] = { 4, 7, -38, 702 },
			["Brubru|spineshatter"] = { 4, 7, -79, 1125 },
			["Gushers|spineshatter"] = { 8, 3, 49, 884 },
			["Lôlgroundit|spineshatter"] = { 4, 7, -32, 1064 },
			["Xiaohong|spineshatter"] = { 6, 5, -19, 960 },
			["Youknowz|spineshatter"] = { 8, 3, 56, 884 },
			["Doko|spineshatter"] = { 5, 3, 31, 1011 },
			["Oldp|spineshatter"] = { 3, 5, -73, 61 },
			["Walida|spineshatter"] = { 5, 3, 31, 1011 },
			["Anhedønia|spineshatter"] = { 6, 1, 27, 914 },
			["Baqera|thunderstrike"] = { 1, 6, -50, 645 },
			["Bluebelle|spineshatter"] = { 6, 1, 27, 934 },
			["Crazyhomeles|thunderstrike"] = { 1, 6, -50, 703 },
			["Garad|spineshatter"] = { 2, 5, -52, 675 },
			["Tyzin|spineshatter"] = { 2, 5, -52, 674 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 552 },
			["Crankshãft|spineshatter"] = { 6, 0, 48, 704 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 566 },
			["Jostix|spineshatter"] = { 6, 0, 48, 704 },
			["Mercatore|spineshatter"] = { 4, 2, 27, 861 },
			["Desm|spineshatter"] = { 3, 2, 14, 796 },
			["Makayas|thunderstrike"] = { 2, 3, -24, 1271 },
			["Møøxy|thunderstrike"] = { 2, 3, -24, 1271 },
			["Zralog|spineshatter"] = { 3, 2, -8, 796 },
			["Dahealax|spineshatter"] = { 4, 0, 12, 1012 },
			["Hotmodel|spineshatter"] = { 2, 2, 13, 704 },
			["Psychologue|spineshatter"] = { 4, 0, 12, 1012 },
			["Titanisia|spineshatter"] = { 2, 2, 6, 805 },
			["Kaelolo|spineshatter"] = { 0, 3, -53, 910 },
			["Tobirino|thunderstrike"] = { 2, 1, 12, 790 },
			["Töppis|thunderstrike"] = { 2, 1, 12, 774 },
			["Xeroxd|thunderstrike"] = { 1, 2, 5, 810 },
			["Zuxilon|thunderstrike"] = { 1, 2, -5, 810 },
			["Kuromiczek|spineshatter"] = { 1, 1, -10, 59 },
			["Milkywetspot|spineshatter"] = { 2, 0, 15, 841 },
			["Roge|spineshatter"] = { 2, 0, 18, 1403 },
			["Tbcpveandy|spineshatter"] = { 2, 0, 2, 842 },
			["Vitaøne|spineshatter"] = { 0, 2, -33, 1361 },
			["Vitatwø|spineshatter"] = { 0, 2, -33, 1244 },
			["Bjornesmag|thunderstrike"] = { 1, 0, 9, 1029 },
			["Daydreamer|spineshatter"] = { 1, 0, 2, 884 },
			["Harrypottert|thunderstrike"] = { 1, 0, 8, 1056 },
			["Nutellaskurk|spineshatter"] = { 1, 0, 3, 861 },
			["Remag|spineshatter"] = { 1, 0, 2, 884 },
			["Spartanx|thunderstrike"] = { 1, 0, 8, 1058 },
			["Xolaire|spineshatter"] = { 1, 0, 3, 862 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, 3, 667 },
			["Siittäjä|thunderstrike"] = { 3, 3, -6, 667 },
			["Iridial|spineshatter"] = { 4, 1, 14, 666 },
			["Maxj|spineshatter"] = { 4, 1, 47, 668 },
		},
	},
}

