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
	built = 1794045588,
	builtText = "2026-11-07 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Demetsky|spineshatter"] = { 19, 13, 27, 694 },
			["Sutlucco|spineshatter"] = { 19, 13, 27, 694 },
			["Orcabrina|spineshatter"] = { 18, 11, 128, 507 },
			["Sustanøn|spineshatter"] = { 18, 11, 112, 507 },
			["Kenndyman|spineshatter"] = { 15, 11, 85, 645 },
			["Megànføx|spineshatter"] = { 15, 11, 32, 645 },
			["Everlost|spineshatter"] = { 15, 10, 9, 710 },
			["Farsaroga|spineshatter"] = { 15, 10, 2, 712 },
			["Eyta|spineshatter"] = { 12, 11, 29, 597 },
			["Yodakohl|spineshatter"] = { 12, 11, 29, 598 },
			["Cosmoboy|spineshatter"] = { 12, 8, -19, 600 },
			["Doób|spineshatter"] = { 12, 8, -19, 599 },
			["Shadowpapa|spineshatter"] = { 11, 8, -7, 645 },
			["Longas|thunderstrike"] = { 9, 9, -111, 465 },
			["Ellilol|thunderstrike"] = { 11, 6, 52, 570 },
			["Shadøwsfall|thunderstrike"] = { 11, 6, 52, 576 },
			["Firaa|spineshatter"] = { 5, 9, -71, 642 },
			["Bebøp|spineshatter"] = { 7, 6, -5, 645 },
			["Amzzi|spineshatter"] = { 4, 7, -38, 642 },
			["Baqera|thunderstrike"] = { 1, 6, -50, 586 },
			["Crazyhomeles|thunderstrike"] = { 1, 6, -50, 643 },
			["Garad|spineshatter"] = { 2, 5, -52, 615 },
			["Tyzin|spineshatter"] = { 2, 5, -52, 615 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 492 },
			["Crankshãft|spineshatter"] = { 6, 0, 48, 645 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 507 },
			["Jostix|spineshatter"] = { 6, 0, 48, 645 },
			["Hotmodel|spineshatter"] = { 2, 2, 13, 645 },
			["Töppis|thunderstrike"] = { 2, 1, 12, 714 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, 3, 607 },
			["Siittäjä|thunderstrike"] = { 3, 3, -6, 607 },
			["Iridial|spineshatter"] = { 4, 1, 14, 606 },
			["Maxj|spineshatter"] = { 4, 1, 47, 609 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Demetsky|spineshatter"] = { 19, 13, 27, 694 },
			["Sutlucco|spineshatter"] = { 19, 13, 27, 694 },
			["Orcabrina|spineshatter"] = { 18, 11, 128, 507 },
			["Sustanøn|spineshatter"] = { 18, 11, 112, 507 },
			["Notagainqt|spineshatter"] = { 13, 14, -71, 876 },
			["Kenndyman|spineshatter"] = { 15, 11, 85, 645 },
			["Megànføx|spineshatter"] = { 15, 11, 32, 645 },
			["Everlost|spineshatter"] = { 15, 10, 9, 710 },
			["Farsaroga|spineshatter"] = { 15, 10, 2, 712 },
			["Eyta|spineshatter"] = { 12, 11, 29, 597 },
			["Yodakohl|spineshatter"] = { 12, 11, 29, 598 },
			["Jarnotrolli|spineshatter"] = { 14, 8, 111, 795 },
			["Oldtobye|spineshatter"] = { 14, 8, 30, 795 },
			["Reasonicus|spineshatter"] = { 11, 11, -68, 1005 },
			["Vincentxd|spineshatter"] = { 11, 11, -87, 1005 },
			["Ellilol|thunderstrike"] = { 12, 9, 33, 570 },
			["Shadøwsfall|thunderstrike"] = { 12, 9, 33, 576 },
			["Cosmoboy|spineshatter"] = { 12, 8, -19, 600 },
			["Doób|spineshatter"] = { 12, 8, -19, 599 },
			["Ãäøàáåø|spineshatter"] = { 13, 6, 134, 1049 },
			["Shadowpapa|spineshatter"] = { 11, 8, -7, 645 },
			["Votrex|spineshatter"] = { 13, 6, 145, 1049 },
			["Longas|thunderstrike"] = { 9, 9, -111, 465 },
			["Baguetteftw|spineshatter"] = { 14, 2, 114, 1201 },
			["Druidcoachxx|spineshatter"] = { 6, 10, -44, 825 },
			["Sifodyaz|spineshatter"] = { 6, 10, -12, 825 },
			["Xdskullzz|spineshatter"] = { 14, 2, 138, 1202 },
			["Abuzzed|spineshatter"] = { 5, 10, -77, 787 },
			["Ecrøf|spineshatter"] = { 6, 9, -48, 1122 },
			["Funkyxd|spineshatter"] = { 8, 7, -49, 821 },
			["Psyzerg|spineshatter"] = { 5, 10, -44, 787 },
			["Twatcatcher|spineshatter"] = { 8, 7, -49, 822 },
			["Firaa|spineshatter"] = { 5, 9, -71, 642 },
			["Bebøp|spineshatter"] = { 7, 6, -5, 645 },
			["Koeter|spineshatter"] = { 9, 3, 49, 1133 },
			["Séphiz|spineshatter"] = { 7, 5, 1, 930 },
			["Tamár|spineshatter"] = { 9, 3, 43, 1132 },
			["Amzzi|spineshatter"] = { 4, 7, -38, 642 },
			["Brubru|spineshatter"] = { 4, 7, -79, 1066 },
			["Gushers|spineshatter"] = { 8, 3, 49, 825 },
			["Lôlgroundit|spineshatter"] = { 4, 7, -32, 1005 },
			["Xiaohong|spineshatter"] = { 6, 5, -19, 900 },
			["Youknowz|spineshatter"] = { 8, 3, 56, 825 },
			["Doko|spineshatter"] = { 5, 3, 31, 951 },
			["Walida|spineshatter"] = { 5, 3, 31, 951 },
			["Anhedønia|spineshatter"] = { 6, 1, 27, 855 },
			["Baqera|thunderstrike"] = { 1, 6, -50, 586 },
			["Bluebelle|spineshatter"] = { 6, 1, 27, 874 },
			["Crazyhomeles|thunderstrike"] = { 1, 6, -50, 643 },
			["Garad|spineshatter"] = { 2, 5, -52, 615 },
			["Tyzin|spineshatter"] = { 2, 5, -52, 615 },
			["Cøunterwømen|spineshatter"] = { 5, 1, 3, 492 },
			["Crankshãft|spineshatter"] = { 6, 0, 48, 645 },
			["Etoireezy|spineshatter"] = { 5, 1, 33, 507 },
			["Jostix|spineshatter"] = { 6, 0, 48, 645 },
			["Mercatore|spineshatter"] = { 4, 2, 27, 802 },
			["Oldp|spineshatter"] = { 2, 4, -55, 938 },
			["Desm|spineshatter"] = { 3, 2, 14, 737 },
			["Makayas|thunderstrike"] = { 2, 3, -24, 1211 },
			["Møøxy|thunderstrike"] = { 2, 3, -24, 1211 },
			["Zralog|spineshatter"] = { 3, 2, -8, 737 },
			["Dahealax|spineshatter"] = { 4, 0, 12, 953 },
			["Hotmodel|spineshatter"] = { 2, 2, 13, 645 },
			["Psychologue|spineshatter"] = { 4, 0, 12, 952 },
			["Titanisia|spineshatter"] = { 2, 2, 6, 745 },
			["Kaelolo|spineshatter"] = { 0, 3, -53, 851 },
			["Roge|spineshatter"] = { 3, 0, 22, 1344 },
			["Tobirino|thunderstrike"] = { 2, 1, 12, 730 },
			["Töppis|thunderstrike"] = { 2, 1, 12, 714 },
			["Xeroxd|thunderstrike"] = { 1, 2, 5, 750 },
			["Zuxilon|thunderstrike"] = { 1, 2, -5, 750 },
			["Milkywetspot|spineshatter"] = { 2, 0, 15, 782 },
			["Tbcpveandy|spineshatter"] = { 2, 0, 2, 782 },
			["Vitaøne|spineshatter"] = { 0, 2, -33, 1302 },
			["Vitatwø|spineshatter"] = { 0, 2, -33, 1185 },
			["Bjornesmag|thunderstrike"] = { 1, 0, 9, 970 },
			["Daydreamer|spineshatter"] = { 1, 0, 2, 825 },
			["Harrypottert|thunderstrike"] = { 1, 0, 8, 997 },
			["Nutellaskurk|spineshatter"] = { 1, 0, 3, 801 },
			["Remag|spineshatter"] = { 1, 0, 2, 825 },
			["Spartanx|thunderstrike"] = { 1, 0, 8, 999 },
			["Xolaire|spineshatter"] = { 1, 0, 3, 803 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, 3, 607 },
			["Siittäjä|thunderstrike"] = { 3, 3, -6, 607 },
			["Iridial|spineshatter"] = { 4, 1, 14, 606 },
			["Maxj|spineshatter"] = { 4, 1, 47, 609 },
		},
	},
}

